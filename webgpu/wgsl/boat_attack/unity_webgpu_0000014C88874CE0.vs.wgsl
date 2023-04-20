diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  unity_InstanceCount : i32,
}

struct TerrainArray_Type {
  /* @offset(0) */
  x_TerrainPatchInstanceData : vec4<f32>,
}

alias Arr = array<TerrainArray_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_Terrain {
  /* @offset(0) */
  TerrainArray : Arr,
}

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
}

alias Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_1,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat2 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_35 : UnityInstancing_Terrain;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlatu1 : vec4<u32>;

@group(1) @binding(3) var<uniform> x_67 : x_Terrain;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(0) var x_TerrainHeightmapTexture : texture_2d<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_123 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_152 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_27 : vec4<f32> = in_POSITION0;
  let x_36 : i32 = u_xlati0;
  let x_39 : vec4<f32> = x_35.TerrainArray[x_36].x_TerrainPatchInstanceData;
  u_xlat2 = (vec2<f32>(x_27.x, x_27.y) + vec2<f32>(x_39.x, x_39.y));
  let x_44 : vec2<f32> = u_xlat2;
  let x_45 : i32 = u_xlati0;
  let x_47 : vec4<f32> = x_35.TerrainArray[x_45].x_TerrainPatchInstanceData;
  let x_49 : vec2<f32> = (x_44 * vec2<f32>(x_47.z, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_50.z, x_50.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_60 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_55.x, x_55.y)));
  let x_61 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_60.x, x_60.y, x_61.z, x_61.w);
  let x_63 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = x_67.x_TerrainHeightmapScale;
  let x_72 : vec2<f32> = (vec2<f32>(x_63.x, x_63.y) * vec2<f32>(x_70.x, x_70.z));
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_86 : vec4<u32> = u_xlatu1;
  let x_90 : u32 = u_xlatu1.w;
  let x_92 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_86.x, x_86.y)), bitcast<i32>(x_90));
  u_xlat4 = vec2<f32>(x_92.x, x_92.y);
  let x_97 : f32 = u_xlat4.y;
  let x_101 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_97 * 256.0f) + x_101);
  let x_105 : f32 = u_xlat4.x;
  let x_108 : f32 = x_67.x_TerrainHeightmapScale.y;
  u_xlat4.x = (x_105 * x_108);
  let x_112 : f32 = u_xlat4.x;
  u_xlat4.x = (x_112 * 0.00389105058275163174f);
  let x_117 : vec2<f32> = u_xlat4;
  let x_126 : vec4<f32> = x_123.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_117.x, x_117.x, x_117.x, x_117.x) * x_126);
  let x_129 : vec4<f32> = x_123.unity_ObjectToWorld[0i];
  let x_130 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_129 * vec4<f32>(x_130.x, x_130.x, x_130.x, x_130.x)) + x_133);
  let x_137 : vec4<f32> = x_123.unity_ObjectToWorld[2i];
  let x_138 : vec4<f32> = u_xlat0;
  let x_141 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_137 * vec4<f32>(x_138.y, x_138.y, x_138.y, x_138.y)) + x_141);
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = x_123.unity_ObjectToWorld[3i];
  u_xlat0 = (x_143 + x_146);
  let x_148 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = x_152.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_148.y, x_148.y, x_148.y, x_148.y) * x_154);
  let x_157 : vec4<f32> = x_152.unity_MatrixVP[0i];
  let x_158 : vec4<f32> = u_xlat0;
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_157 * vec4<f32>(x_158.x, x_158.x, x_158.x, x_158.x)) + x_161);
  let x_164 : vec4<f32> = x_152.unity_MatrixVP[2i];
  let x_165 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_164 * vec4<f32>(x_165.z, x_165.z, x_165.z, x_165.z)) + x_168);
  let x_175 : vec4<f32> = x_152.unity_MatrixVP[3i];
  let x_176 : vec4<f32> = u_xlat0;
  let x_179 : vec4<f32> = u_xlat1;
  gl_Position = ((x_175 * vec4<f32>(x_176.w, x_176.w, x_176.w, x_176.w)) + x_179);
  let x_186 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_186;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position);
}


const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;

