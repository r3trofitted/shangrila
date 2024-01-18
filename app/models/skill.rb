class Skill
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :stat, :string
  attribute :score, :integer
  attribute :basic, :boolean, default: false
  attribute :costly, :boolean, default: false
  attribute :group, :boolean, default: false
  attribute :parent, Skill, default: nil

  def name    = super.to_sym
  def stat    = super&.to_sym
  def basic?  = !!basic
  def costly? = !!costly
  def group?  = !!group

  def to_s
    "#{name} (#{stat}): #{score}"
  end

  def human_name
    Skill.human_attribute_name name # FIXME – calling +human_attribute_name+ is clumsy
  end

  concerning :Type do
    class_methods do
      def cast(value)
        Skill.new(name: value) if value.present? # SLIME
      end
    end
  end

  concerning :Registry do
    class SkillSet < Set
      # TODO
    end

    class_methods do
      def from_list(name, stat_or_definition)
        definition = Array(stat_or_definition)

        basic  = definition.delete(:basic)
        costly = definition.delete(:costly)
        group  = definition.delete(:group)
        stat   = definition.find { _1.in? Character::STATS }

        Skill.new name: name, stat:, basic:, costly:, group:
      end

      def all
        @all ||= SkillSet.new(LIST.map { |name, definition| from_list(name, definition) })
      end
    end

    LIST = {
      accounting: :int,
      acting: :cool,
      air_vehicle_tech: :tech,
      animal_handling: :int,
      archery: :ref,
      athletics: [:dex, :basic],
      autofire: [:ref, :costly],
      basic_tech: :tech,
      brawling: [:dex, :basic],
      bribery: :cool,
      bureaucracy: :int,
      business: :int,
      composition: :int,
      conceal_and_reveal_object: :int,
      concentration: :will,
      contortionist: :dex,
      conversation: [:emp, :basic],
      criminology: :int,
      cryptography: :int,
      cybertech: :tech,
      dance: :dex,
      deduction: :int,
      demolitions: [:tech, :costly],
      drive_land_vehicle: :ref,
      education: [:int, :basic],
      electronics_and_security_tech: [:tech, :costly],
      endurance: :will,
      evasion: [:dex, :costly],
      first_aid: [:tech, :basic],
      forgery: :tech,
      gamble: :int,
      handgun: :ref,
      heavy_weapons: [:ref, :costly],
      human_perception: [:emp, :basic],
      interrogation: :cool,
      land_vehicle_tech: :tech,
      language: [:int, :group],
      library_search: :int,
      lipreading: :int,
      local_expert: [:int, :group],
      martial_arts: [:dex, :costly, :group],
      melee_weapon: :dex,
      paint_or_draw_or_sculpt: :tech,
      paramedic: [:tech, :costly],
      perception: [:int, :basic],
      personal_grooming: :cool,
      persuasion: [:cool, :basic],
      photography_and_film: :tech,
      pick_lock: :tech,
      pick_pocket: :tech,
      pilot_air_vehicle: [:ref, :costly],
      pilot_sea_vehicle: :ref,
      play_instrument: [:emp, :group],
      resist_torture_or_drugs: :will,
      riding: :ref,
      science: [:int, :group],
      sea_vehicle_tech: :tech,
      shoulder_arms: :ref,
      stealth: [:dex, :basic],
      streetwise: :cool,
      tactics: :int,
      tracking: :int,
      trading: :cool,
      wardrobe_and_style: :cool,
      weapons_tech: :tech,
      wilderness_survival: :int
    }
  end
end
