#values of vkvishnu and ami variables
vkvishnu = ["visnu1","visnu2","visnu3"]
ami=["ami-08df646e18b182346","ami-09de362f44ba0a166","ami-05c8ca4485f8b138a"]

# values of MAP variable
MAP={
    "owner1"= {"ami"="ami-09de362f44ba0a166", 
                "instance_type":"t2.micro",
                "name":"visnu-1"
                }
    
    "owner2"={"ami"="ami-05c8ca4485f8b138a",
                "instance_type":"t2.micro",
                "name":"visnu-2"
                }
}

# values of NestedMAP variable
NestedMAP={

    "owner11"= {"ami"={"ami"="ami-09de362f44ba0a166"}, 
                "instance_type":"t2.micro",
                "name":"visnu-1"
                }
    
    "owner12"={"ami"={"ami"="ami-05c8ca4485f8b138a"},
                "instance_type":"t2.micro",
                "name":"visnu-2"
                }
}

# values of var_vpc variable
var_vpc = {
    "owner21"="vkvisnu1",
    "owner22"="vkvisnu2"
}

#values of vol_var variable
vol_var = [ "volume1","volume2" ]