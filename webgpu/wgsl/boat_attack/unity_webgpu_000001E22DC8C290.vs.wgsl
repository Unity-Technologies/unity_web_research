const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct TerrainArray_Type {
  x_TerrainPatchInstanceData : vec4<f32>,
}

type Arr = array<TerrainArray_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_Terrain {
  TerrainArray : Arr,
}

struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
  @size(8)
  padding : u32,
  x_TerrainHeightmapRecipSize : vec4<f32>,
  x_TerrainHeightmapScale : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

type Arr_2 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_2,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(8) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(9) var<uniform> x_35 : UnityInstancing_Terrain;

@group(1) @binding(3) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_71 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(23) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(0) @binding(22) var x_TerrainHeightmapTexture : texture_2d<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(7) var<uniform> x_303 : VGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

@group(1) @binding(4) var<uniform> x_452 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat4 : vec2<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlatu1 : vec4<u32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlatb12 : bool;
  var x_325 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat13 : f32;
  var x_391 : f32;
  var x_403 : f32;
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
  u_xlat4 = (vec2<f32>(x_27.x, x_27.y) + vec2<f32>(x_39.x, x_39.y));
  let x_44 : vec2<f32> = u_xlat4;
  let x_45 : i32 = u_xlati0;
  let x_47 : vec4<f32> = x_35.TerrainArray[x_45].x_TerrainPatchInstanceData;
  let x_49 : vec2<f32> = (x_44 * vec2<f32>(x_47.z, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_50.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_57.x_TerrainHeightmapRecipSize;
  u_xlat8 = (vec2<f32>(x_53.x, x_53.y) * vec2<f32>(x_60.z, x_60.w));
  let x_65 : vec2<f32> = u_xlat8;
  let x_74 : vec4<f32> = x_71.unity_LightmapST;
  let x_78 : vec4<f32> = x_71.unity_LightmapST;
  let x_80 : vec2<f32> = ((x_65 * vec2<f32>(x_74.x, x_74.y)) + vec2<f32>(x_78.z, x_78.w));
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_81.x, x_81.y, x_80.x, x_80.y);
  let x_83 : vec2<f32> = u_xlat8;
  let x_84 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_87 : vec2<f32> = u_xlat8;
  let x_90 : vec4<f32> = x_57.x_Splat0_ST;
  let x_94 : vec4<f32> = x_57.x_Splat0_ST;
  let x_96 : vec2<f32> = ((x_87 * vec2<f32>(x_90.x, x_90.y)) + vec2<f32>(x_94.z, x_94.w));
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_96.x, x_96.y, x_97.z, x_97.w);
  let x_99 : vec2<f32> = u_xlat8;
  let x_102 : vec4<f32> = x_57.x_Splat1_ST;
  let x_106 : vec4<f32> = x_57.x_Splat1_ST;
  let x_108 : vec2<f32> = ((x_99 * vec2<f32>(x_102.x, x_102.y)) + vec2<f32>(x_106.z, x_106.w));
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_109.x, x_109.y, x_108.x, x_108.y);
  let x_112 : vec2<f32> = u_xlat8;
  let x_115 : vec4<f32> = x_57.x_Splat2_ST;
  let x_119 : vec4<f32> = x_57.x_Splat2_ST;
  let x_121 : vec2<f32> = ((x_112 * vec2<f32>(x_115.x, x_115.y)) + vec2<f32>(x_119.z, x_119.w));
  let x_122 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
  let x_124 : vec2<f32> = u_xlat8;
  let x_127 : vec4<f32> = x_57.x_Splat3_ST;
  let x_131 : vec4<f32> = x_57.x_Splat3_ST;
  let x_133 : vec2<f32> = ((x_124 * vec2<f32>(x_127.x, x_127.y)) + vec2<f32>(x_131.z, x_131.w));
  let x_134 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_134.x, x_134.y, x_133.x, x_133.y);
  let x_139 : vec4<f32> = u_xlat0;
  let x_144 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_139.x, x_139.y)));
  let x_145 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_144.x, x_144.y, x_145.z, x_145.w);
  let x_147 : vec4<f32> = u_xlat0;
  let x_151 : vec4<f32> = x_57.x_TerrainHeightmapScale;
  let x_153 : vec2<f32> = (vec2<f32>(x_147.x, x_147.y) * vec2<f32>(x_151.x, x_151.z));
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_154.z, x_154.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_168 : vec4<u32> = u_xlatu1;
  let x_172 : u32 = u_xlatu1.w;
  let x_174 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_168.x, x_168.y)), bitcast<i32>(x_172));
  u_xlat2 = vec3<f32>(x_174.x, x_174.y, x_174.z);
  let x_178 : vec4<u32> = u_xlatu1;
  let x_182 : u32 = u_xlatu1.w;
  let x_184 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_178.x, x_178.y)), bitcast<i32>(x_182));
  u_xlat8 = vec2<f32>(x_184.x, x_184.y);
  let x_189 : f32 = u_xlat8.y;
  let x_193 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_189 * 256.0f) + x_193);
  let x_197 : f32 = u_xlat8.x;
  let x_200 : f32 = x_57.x_TerrainHeightmapScale.y;
  u_xlat8.x = (x_197 * x_200);
  let x_204 : f32 = u_xlat8.x;
  u_xlat8.x = (x_204 * 0.00389105058f);
  let x_209 : vec2<f32> = u_xlat8;
  let x_213 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  let x_215 : vec3<f32> = (vec3<f32>(x_209.x, x_209.x, x_209.x) * vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_219 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_221 : vec4<f32> = u_xlat0;
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.x, x_221.x, x_221.x)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_226.x, x_227.y, x_226.y, x_226.z);
  let x_231 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_233 : vec4<f32> = u_xlat0;
  let x_236 : vec4<f32> = u_xlat0;
  let x_238 : vec3<f32> = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233.y, x_233.y, x_233.y)) + vec3<f32>(x_236.x, x_236.z, x_236.w));
  let x_239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = x_71.unity_ObjectToWorld[3i];
  let x_247 : vec3<f32> = (vec3<f32>(x_241.x, x_241.y, x_241.z) + vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_250.z, x_250.x, x_250.y, x_250.z) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_258 : vec4<f32> = u_xlat1;
  let x_261 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_258.z, x_258.z, x_258.z) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_265 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_267 : vec4<f32> = u_xlat1;
  let x_270 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_267.y, x_267.y, x_267.y)) + x_270);
  let x_273 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_275 : vec4<f32> = u_xlat1;
  let x_278 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275.w, x_275.w, x_275.w)) + x_278);
  let x_281 : vec3<f32> = u_xlat2;
  let x_282 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_281, x_282);
  let x_284 : f32 = u_xlat12;
  u_xlat12 = max(x_284, 1.17549435e-37f);
  let x_287 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_287);
  let x_289 : f32 = u_xlat12;
  let x_291 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_289, x_289, x_289) * x_291);
  let x_294 : vec3<f32> = u_xlat2;
  let x_295 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_298 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = x_303.x_WorldSpaceCameraPos;
  u_xlat3 = (-(vec3<f32>(x_298.x, x_298.y, x_298.z)) + x_306);
  let x_308 : vec3<f32> = u_xlat3;
  let x_309 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_308, x_309);
  let x_311 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_311);
  let x_313 : f32 = u_xlat12;
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_313, x_313, x_313) * x_315);
  let x_321 : f32 = x_303.unity_OrthoParams.w;
  u_xlatb12 = (x_321 == 0.0f);
  let x_324 : bool = u_xlatb12;
  if (x_324) {
    let x_329 : f32 = u_xlat3.x;
    x_325 = x_329;
  } else {
    let x_332 : f32 = x_303.unity_MatrixV[0i].z;
    x_325 = x_332;
  }
  let x_333 : f32 = x_325;
  vs_TEXCOORD3.w = x_333;
  let x_337 : vec4<f32> = u_xlat1;
  u_xlat9 = (vec2<f32>(x_337.z, x_337.w) * vec2<f32>(1.0f, 0.0f));
  let x_342 : vec4<f32> = u_xlat1;
  let x_346 : vec2<f32> = u_xlat9;
  let x_348 : vec2<f32> = ((vec2<f32>(x_342.x, x_342.y) * vec2<f32>(0.0f, 1.0f)) + -(x_346));
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_348.x, x_348.y, x_349.z, x_349.w);
  let x_352 : vec4<f32> = u_xlat1;
  let x_355 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat5 = (vec3<f32>(x_352.y, x_352.y, x_352.y) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_359 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_361 : vec4<f32> = u_xlat1;
  let x_364 : vec3<f32> = u_xlat5;
  let x_365 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_361.x, x_361.x, x_361.x)) + x_364);
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_369.x, x_369.y, x_369.z), vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : f32 = u_xlat13;
  u_xlat13 = max(x_374, 1.17549435e-37f);
  let x_376 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_376);
  let x_378 : f32 = u_xlat13;
  let x_380 : vec4<f32> = u_xlat1;
  let x_382 : vec3<f32> = (vec3<f32>(x_378, x_378, x_378) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : vec4<f32> = u_xlat1;
  let x_387 : vec3<f32> = vec3<f32>(x_386.x, x_386.y, x_386.z);
  let x_388 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : bool = u_xlatb12;
  if (x_390) {
    let x_395 : f32 = u_xlat3.y;
    x_391 = x_395;
  } else {
    let x_398 : f32 = x_303.unity_MatrixV[1i].z;
    x_391 = x_398;
  }
  let x_399 : f32 = x_391;
  vs_TEXCOORD4.w = x_399;
  let x_402 : bool = u_xlatb12;
  if (x_402) {
    let x_407 : f32 = u_xlat3.z;
    x_403 = x_407;
  } else {
    let x_410 : f32 = x_303.unity_MatrixV[2i].z;
    x_403 = x_410;
  }
  let x_411 : f32 = x_403;
  vs_TEXCOORD5.w = x_411;
  let x_413 : vec4<f32> = u_xlat1;
  let x_415 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_413.y, x_413.z, x_413.x) * vec3<f32>(x_415.z, x_415.x, x_415.y));
  let x_418 : vec3<f32> = u_xlat2;
  let x_420 : vec4<f32> = u_xlat1;
  let x_423 : vec3<f32> = u_xlat3;
  let x_425 : vec3<f32> = ((vec3<f32>(x_418.y, x_418.z, x_418.x) * vec3<f32>(x_420.z, x_420.x, x_420.y)) + -(x_423));
  let x_426 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = x_71.unity_WorldTransformParams.w;
  u_xlatb12 = (x_429 >= 0.0f);
  let x_431 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_431);
  let x_433 : f32 = u_xlat12;
  let x_435 : vec4<f32> = u_xlat1;
  let x_437 : vec3<f32> = (vec3<f32>(x_433, x_433, x_433) * vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_442 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_442.x, x_442.y, x_442.z);
  vs_TEXCOORD6 = 0.0f;
  let x_446 : vec4<f32> = u_xlat0;
  let x_454 : vec4<f32> = x_452.x_MainLightWorldToShadow[0i][1i];
  let x_456 : vec3<f32> = (vec3<f32>(x_446.y, x_446.y, x_446.y) * vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_460 : vec4<f32> = x_452.x_MainLightWorldToShadow[0i][0i];
  let x_462 : vec4<f32> = u_xlat0;
  let x_465 : vec4<f32> = u_xlat1;
  let x_467 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_462.x, x_462.x, x_462.x)) + vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_471 : vec4<f32> = x_452.x_MainLightWorldToShadow[0i][2i];
  let x_473 : vec4<f32> = u_xlat0;
  let x_476 : vec4<f32> = u_xlat1;
  let x_478 : vec3<f32> = ((vec3<f32>(x_471.x, x_471.y, x_471.z) * vec3<f32>(x_473.z, x_473.z, x_473.z)) + vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_482 : vec4<f32> = u_xlat1;
  let x_485 : vec4<f32> = x_452.x_MainLightWorldToShadow[0i][3i];
  let x_487 : vec3<f32> = (vec3<f32>(x_482.x, x_482.y, x_482.z) + vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec4<f32> = vs_TEXCOORD8;
  vs_TEXCOORD8 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  vs_TEXCOORD8.w = 0.0f;
  let x_491 : vec4<f32> = u_xlat0;
  let x_494 : vec4<f32> = x_303.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_491.y, x_491.y, x_491.y, x_491.y) * x_494);
  let x_497 : vec4<f32> = x_303.unity_MatrixVP[0i];
  let x_498 : vec4<f32> = u_xlat0;
  let x_501 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_497 * vec4<f32>(x_498.x, x_498.x, x_498.x, x_498.x)) + x_501);
  let x_504 : vec4<f32> = x_303.unity_MatrixVP[2i];
  let x_505 : vec4<f32> = u_xlat0;
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_504 * vec4<f32>(x_505.z, x_505.z, x_505.z, x_505.z)) + x_508);
  let x_514 : vec4<f32> = u_xlat0;
  let x_516 : vec4<f32> = x_303.unity_MatrixVP[3i];
  gl_Position = (x_514 + x_516);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec3<f32>,
  @location(7)
  vs_TEXCOORD8_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, vs_TEXCOORD8, gl_Position);
}

