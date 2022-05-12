migrate :aggressive_npc, :boon do
  insert(:name, %{triton assassin})
  insert(:name, %{triton brawler})
  insert(:name, %{triton fanatic})
  insert(:name, %{triton warden})
  insert(:name, %{triton warlock})
end

migrate :undead, :aggressive_npc do
  insert(:name, %{ethereal triton psionicist})
  insert(:name, %{spectral triton protector})
end

migrate :boon do
  insert(:name, %{triton psionicist})
  insert(:name, %{triton protector})
  insert(:exclude, %{ethereal triton psionicist})
end

migrate :skin, :furrier do
  create_key(:exclude)
  insert(:name, %{curved black claw})
  insert(:name, %{black claw})
  insert(:exclude, %{black claw})
  insert(:exclude, %{bundle of curved black claw})

  insert(:name, %{darkened triton hide})
  insert(:name, %{triton hide})
  insert(:exclude, %{triton hide})
  insert(:exclude, %{bundle of darkened triton hide})

  insert(:name, %{thick triton spine})
  insert(:name, %{triton spine})
  insert(:exclude, %{triton spine})
  insert(:exclude, %{bundle of thick triton spine})
end