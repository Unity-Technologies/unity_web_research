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

var<private> gl_InstanceIndex : i32;

@group(1) @binding(6) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(7) var<uniform> x_35 : UnityInstancing_Terrain;

@group(1) @binding(3) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_71 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(18) var x_TerrainHeightmapTexture : texture_2d<f32>;

@group(0) @binding(19) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(1) @binding(5) var<uniform> x_262 : VGlobals;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat4 : vec2<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlatu1 : vec4<u32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlatb12 : bool;
  var x_286 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat13 : f32;
  var x_395 : f32;
  var x_407 : f32;
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
  let x_165 : vec4<u32> = u_xlatu1;
  let x_169 : u32 = u_xlatu1.w;
  let x_171 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_165.x, x_165.y)), bitcast<i32>(x_169));
  u_xlat8 = vec2<f32>(x_171.x, x_171.y);
  let x_176 : vec4<u32> = u_xlatu1;
  let x_180 : u32 = u_xlatu1.w;
  let x_182 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_176.x, x_176.y)), bitcast<i32>(x_180));
  let x_184 : vec3<f32> = vec3<f32>(x_182.x, x_182.y, x_182.z);
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_187.z, x_187.x, x_187.y, x_187.z) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_198 : f32 = u_xlat8.y;
  let x_202 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_198 * 256.0f) + x_202);
  let x_206 : f32 = u_xlat8.x;
  let x_209 : f32 = x_57.x_TerrainHeightmapScale.y;
  u_xlat8.x = (x_206 * x_209);
  let x_213 : f32 = u_xlat8.x;
  u_xlat8.x = (x_213 * 0.00389105058f);
  let x_219 : vec2<f32> = u_xlat8;
  let x_223 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_219.x, x_219.x, x_219.x) * vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_227 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_229 : vec4<f32> = u_xlat0;
  let x_232 : vec3<f32> = u_xlat2;
  let x_233 : vec3<f32> = ((vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229.x, x_229.x, x_229.x)) + x_232);
  let x_234 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_233.x, x_234.y, x_233.y, x_233.z);
  let x_238 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_240 : vec4<f32> = u_xlat0;
  let x_243 : vec4<f32> = u_xlat0;
  let x_245 : vec3<f32> = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.y, x_240.y, x_240.y)) + vec3<f32>(x_243.x, x_243.z, x_243.w));
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_248 : vec4<f32> = u_xlat0;
  let x_252 : vec4<f32> = x_71.unity_ObjectToWorld[3i];
  let x_254 : vec3<f32> = (vec3<f32>(x_248.x, x_248.y, x_248.z) + vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_265 : vec3<f32> = x_262.x_WorldSpaceCameraPos;
  u_xlat2 = (-(vec3<f32>(x_257.x, x_257.y, x_257.z)) + x_265);
  let x_268 : vec3<f32> = u_xlat2;
  let x_269 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_268, x_269);
  let x_271 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_271);
  let x_273 : f32 = u_xlat12;
  let x_275 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_273, x_273, x_273) * x_275);
  let x_281 : f32 = x_262.unity_OrthoParams.w;
  u_xlatb12 = (x_281 == 0.0f);
  let x_285 : bool = u_xlatb12;
  if (x_285) {
    let x_290 : f32 = u_xlat2.x;
    x_286 = x_290;
  } else {
    let x_293 : f32 = x_262.unity_MatrixV[0i].z;
    x_286 = x_293;
  }
  let x_294 : f32 = x_286;
  vs_TEXCOORD3.w = x_294;
  let x_298 : vec4<f32> = u_xlat1;
  let x_301 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_298.z, x_298.z, x_298.z) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_305 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_307 : vec4<f32> = u_xlat1;
  let x_310 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.y, x_307.y, x_307.y)) + x_310);
  let x_313 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_315 : vec4<f32> = u_xlat1;
  let x_318 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.w, x_315.w, x_315.w)) + x_318);
  let x_320 : vec3<f32> = u_xlat3;
  let x_321 : vec3<f32> = u_xlat3;
  u_xlat2.x = dot(x_320, x_321);
  let x_325 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_325, 1.17549435e-37f);
  let x_330 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_330);
  let x_333 : vec3<f32> = u_xlat2;
  let x_335 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_333.x, x_333.x, x_333.x) * x_335);
  let x_337 : vec3<f32> = u_xlat3;
  let x_338 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat9 = (vec2<f32>(x_341.z, x_341.w) * vec2<f32>(1.0f, 0.0f));
  let x_346 : vec4<f32> = u_xlat1;
  let x_350 : vec2<f32> = u_xlat9;
  let x_352 : vec2<f32> = ((vec2<f32>(x_346.x, x_346.y) * vec2<f32>(0.0f, 1.0f)) + -(x_350));
  let x_353 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_352.x, x_352.y, x_353.z, x_353.w);
  let x_356 : vec4<f32> = u_xlat1;
  let x_359 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat5 = (vec3<f32>(x_356.y, x_356.y, x_356.y) * vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_363 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_365 : vec4<f32> = u_xlat1;
  let x_368 : vec3<f32> = u_xlat5;
  let x_369 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.x, x_365.x)) + x_368);
  let x_370 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : vec4<f32> = u_xlat1;
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_373.x, x_373.y, x_373.z), vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : f32 = u_xlat13;
  u_xlat13 = max(x_378, 1.17549435e-37f);
  let x_380 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_380);
  let x_382 : f32 = u_xlat13;
  let x_384 : vec4<f32> = u_xlat1;
  let x_386 : vec3<f32> = (vec3<f32>(x_382, x_382, x_382) * vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : vec4<f32> = u_xlat1;
  let x_391 : vec3<f32> = vec3<f32>(x_390.x, x_390.y, x_390.z);
  let x_392 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : bool = u_xlatb12;
  if (x_394) {
    let x_399 : f32 = u_xlat2.y;
    x_395 = x_399;
  } else {
    let x_402 : f32 = x_262.unity_MatrixV[1i].z;
    x_395 = x_402;
  }
  let x_403 : f32 = x_395;
  vs_TEXCOORD4.w = x_403;
  let x_406 : bool = u_xlatb12;
  if (x_406) {
    let x_411 : f32 = u_xlat2.z;
    x_407 = x_411;
  } else {
    let x_414 : f32 = x_262.unity_MatrixV[2i].z;
    x_407 = x_414;
  }
  let x_415 : f32 = x_407;
  vs_TEXCOORD5.w = x_415;
  let x_417 : vec4<f32> = u_xlat1;
  let x_419 : vec3<f32> = u_xlat3;
  u_xlat2 = (vec3<f32>(x_417.y, x_417.z, x_417.x) * vec3<f32>(x_419.z, x_419.x, x_419.y));
  let x_422 : vec3<f32> = u_xlat3;
  let x_424 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = u_xlat2;
  let x_429 : vec3<f32> = ((vec3<f32>(x_422.y, x_422.z, x_422.x) * vec3<f32>(x_424.z, x_424.x, x_424.y)) + -(x_427));
  let x_430 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_433 : f32 = x_71.unity_WorldTransformParams.w;
  u_xlatb12 = (x_433 >= 0.0f);
  let x_435 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_435);
  let x_437 : f32 = u_xlat12;
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_446.x, x_446.y, x_446.z);
  vs_TEXCOORD6 = 0.0f;
  let x_450 : vec4<f32> = u_xlat0;
  let x_453 : vec4<f32> = x_262.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_450.y, x_450.y, x_450.y, x_450.y) * x_453);
  let x_456 : vec4<f32> = x_262.unity_MatrixVP[0i];
  let x_457 : vec4<f32> = u_xlat0;
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_456 * vec4<f32>(x_457.x, x_457.x, x_457.x, x_457.x)) + x_460);
  let x_463 : vec4<f32> = x_262.unity_MatrixVP[2i];
  let x_464 : vec4<f32> = u_xlat0;
  let x_467 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_463 * vec4<f32>(x_464.z, x_464.z, x_464.z, x_464.z)) + x_467);
  let x_473 : vec4<f32> = u_xlat0;
  let x_475 : vec4<f32> = x_262.unity_MatrixVP[3i];
  gl_Position = (x_473 + x_475);
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
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, gl_Position);
}

