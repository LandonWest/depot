# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create!(title: 'Bazooka',
  description:
    %{<p>
        Bazooka is the common name for a man-portable recoil-less antitank rocket launcher weapon, widely fielded by the United States Army. Also referred to as the "Stovepipe", the innovative bazooka was among the first generation of rocket-propelled anti-tank weapons used in infantry combat. Featuring a solid rocket motor for propulsion, it allowed for high-explosive anti-tank (HEAT) warheads to be delivered against armored vehicles, machine gun nests, and fortified bunkers at ranges beyond that of a standard thrown grenade or mine. The bazooka also fired a HESH round, effective against buildings and tank armor. The universally applied nickname arose from the M1 variant's vague resemblance to the musical instrument called a "bazooka" invented and popularized by 1930s U.S. comedian Bob Burns.
      </p>},
  image_url:   'bazooka.jpg',
  price: 1306.99)
# . . .
Product.create!(title: 'Tommy Gun',
  description:
    %{<p>
        The Thompson submachine gun is an American submachine gun, favored by soldiers, criminals, police and civilians alike for its large .45 ACP cartridge, accuracy, and high volume of automatic fire. It has since gained popularity among civilian collectors for its historical significance. It has had, and continues to have, considerable significance in popular culture, especially in works about the U.S.'s Prohibition era and World War II, and hence is among the best-known firearms in recent history.
      </p>},
  image_url: 'tommygun.jpg',
  price: 1498.95)
# . . .

Product.create!(title: 'Springfield M1911 Pistol',
  description:
    %{<p>
        The M1911 is a single-action, semi-automatic, magazine-fed, recoil-operated pistol chambered for the .45 ACP cartridge.[1] It served as the standard-issue sidearm for the United States Armed Forces from 1911 to 1986. It was first used in later stages of the Philippine–American War, and was widely used in World War I, World War II, the Korean War, and the Vietnam War. The pistol's formal designation as of 1940 was Automatic Pistol, Caliber .45, M1911 for the original model of 1911 or Automatic Pistol, Caliber .45, M1911A1 for the M1911A1, adopted in 1924. The designation changed to Pistol, Caliber .45, Automatic, M1911A1 in the Vietnam era.
      </p>},
  image_url: '1911.jpg',
  price: 988.99)
