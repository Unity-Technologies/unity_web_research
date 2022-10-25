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

@group(1) @binding(5) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(7) var<uniform> x_35 : UnityInstancing_Terrain;

@group(1) @binding(6) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_71 : UnityPerDraw;

@group(0) @binding(13) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(0) @binding(12) var x_TerrainHeightmapTexture : texture_2d<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_253 : VGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

@group(1) @binding(3) var<uniform> x_402 : MainLightShadows;

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
  var x_275 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat13 : f32;
  var x_341 : f32;
  var x_353 : f32;
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
  let x_89 : vec4<f32> = u_xlat0;
  let x_94 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_89.x, x_89.y)));
  let x_95 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_94.x, x_94.y, x_95.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat0;
  let x_101 : vec4<f32> = x_57.x_TerrainHeightmapScale;
  let x_103 : vec2<f32> = (vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_101.x, x_101.z));
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_104.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_118 : vec4<u32> = u_xlatu1;
  let x_122 : u32 = u_xlatu1.w;
  let x_124 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_118.x, x_118.y)), bitcast<i32>(x_122));
  u_xlat2 = vec3<f32>(x_124.x, x_124.y, x_124.z);
  let x_128 : vec4<u32> = u_xlatu1;
  let x_132 : u32 = u_xlatu1.w;
  let x_134 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_128.x, x_128.y)), bitcast<i32>(x_132));
  u_xlat8 = vec2<f32>(x_134.x, x_134.y);
  let x_139 : f32 = u_xlat8.y;
  let x_143 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_139 * 256.0f) + x_143);
  let x_147 : f32 = u_xlat8.x;
  let x_150 : f32 = x_57.x_TerrainHeightmapScale.y;
  u_xlat8.x = (x_147 * x_150);
  let x_154 : f32 = u_xlat8.x;
  u_xlat8.x = (x_154 * 0.00389105058f);
  let x_159 : vec2<f32> = u_xlat8;
  let x_163 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  let x_165 : vec3<f32> = (vec3<f32>(x_159.x, x_159.x, x_159.x) * vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_171 : vec4<f32> = u_xlat0;
  let x_174 : vec4<f32> = u_xlat1;
  let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.x, x_171.x, x_171.x)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_176.x, x_177.y, x_176.y, x_176.z);
  let x_181 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_183 : vec4<f32> = u_xlat0;
  let x_186 : vec4<f32> = u_xlat0;
  let x_188 : vec3<f32> = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_183.y, x_183.y, x_183.y)) + vec3<f32>(x_186.x, x_186.z, x_186.w));
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = x_71.unity_ObjectToWorld[3i];
  let x_197 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) + vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_200 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_200.z, x_200.x, x_200.y, x_200.z) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_208 : vec4<f32> = u_xlat1;
  let x_211 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_208.z, x_208.z, x_208.z) * vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_215 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_217 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_215.x, x_215.y, x_215.z) * vec3<f32>(x_217.y, x_217.y, x_217.y)) + x_220);
  let x_223 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.w, x_225.w, x_225.w)) + x_228);
  let x_231 : vec3<f32> = u_xlat2;
  let x_232 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_231, x_232);
  let x_234 : f32 = u_xlat12;
  u_xlat12 = max(x_234, 1.17549435e-37f);
  let x_237 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_237);
  let x_239 : f32 = u_xlat12;
  let x_241 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_239, x_239, x_239) * x_241);
  let x_244 : vec3<f32> = u_xlat2;
  let x_245 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_248 : vec4<f32> = u_xlat0;
  let x_256 : vec3<f32> = x_253.x_WorldSpaceCameraPos;
  u_xlat3 = (-(vec3<f32>(x_248.x, x_248.y, x_248.z)) + x_256);
  let x_258 : vec3<f32> = u_xlat3;
  let x_259 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_258, x_259);
  let x_261 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_261);
  let x_263 : f32 = u_xlat12;
  let x_265 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_263, x_263, x_263) * x_265);
  let x_271 : f32 = x_253.unity_OrthoParams.w;
  u_xlatb12 = (x_271 == 0.0f);
  let x_274 : bool = u_xlatb12;
  if (x_274) {
    let x_279 : f32 = u_xlat3.x;
    x_275 = x_279;
  } else {
    let x_282 : f32 = x_253.unity_MatrixV[0i].z;
    x_275 = x_282;
  }
  let x_283 : f32 = x_275;
  vs_TEXCOORD3.w = x_283;
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat9 = (vec2<f32>(x_287.z, x_287.w) * vec2<f32>(1.0f, 0.0f));
  let x_292 : vec4<f32> = u_xlat1;
  let x_296 : vec2<f32> = u_xlat9;
  let x_298 : vec2<f32> = ((vec2<f32>(x_292.x, x_292.y) * vec2<f32>(0.0f, 1.0f)) + -(x_296));
  let x_299 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_298.x, x_298.y, x_299.z, x_299.w);
  let x_302 : vec4<f32> = u_xlat1;
  let x_305 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat5 = (vec3<f32>(x_302.y, x_302.y, x_302.y) * vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_309 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_311 : vec4<f32> = u_xlat1;
  let x_314 : vec3<f32> = u_xlat5;
  let x_315 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.x, x_311.x)) + x_314);
  let x_316 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_319 : vec4<f32> = u_xlat1;
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : f32 = u_xlat13;
  u_xlat13 = max(x_324, 1.17549435e-37f);
  let x_326 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_326);
  let x_328 : f32 = u_xlat13;
  let x_330 : vec4<f32> = u_xlat1;
  let x_332 : vec3<f32> = (vec3<f32>(x_328, x_328, x_328) * vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_336 : vec4<f32> = u_xlat1;
  let x_337 : vec3<f32> = vec3<f32>(x_336.x, x_336.y, x_336.z);
  let x_338 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : bool = u_xlatb12;
  if (x_340) {
    let x_345 : f32 = u_xlat3.y;
    x_341 = x_345;
  } else {
    let x_348 : f32 = x_253.unity_MatrixV[1i].z;
    x_341 = x_348;
  }
  let x_349 : f32 = x_341;
  vs_TEXCOORD4.w = x_349;
  let x_352 : bool = u_xlatb12;
  if (x_352) {
    let x_357 : f32 = u_xlat3.z;
    x_353 = x_357;
  } else {
    let x_360 : f32 = x_253.unity_MatrixV[2i].z;
    x_353 = x_360;
  }
  let x_361 : f32 = x_353;
  vs_TEXCOORD5.w = x_361;
  let x_363 : vec4<f32> = u_xlat1;
  let x_365 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_363.y, x_363.z, x_363.x) * vec3<f32>(x_365.z, x_365.x, x_365.y));
  let x_368 : vec3<f32> = u_xlat2;
  let x_370 : vec4<f32> = u_xlat1;
  let x_373 : vec3<f32> = u_xlat3;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.y, x_368.z, x_368.x) * vec3<f32>(x_370.z, x_370.x, x_370.y)) + -(x_373));
  let x_376 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : f32 = x_71.unity_WorldTransformParams.w;
  u_xlatb12 = (x_379 >= 0.0f);
  let x_381 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_381);
  let x_383 : f32 = u_xlat12;
  let x_385 : vec4<f32> = u_xlat1;
  let x_387 : vec3<f32> = (vec3<f32>(x_383, x_383, x_383) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_392 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_392.x, x_392.y, x_392.z);
  vs_TEXCOORD6 = 0.0f;
  let x_396 : vec4<f32> = u_xlat0;
  let x_404 : vec4<f32> = x_402.x_MainLightWorldToShadow[0i][1i];
  let x_406 : vec3<f32> = (vec3<f32>(x_396.y, x_396.y, x_396.y) * vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_410 : vec4<f32> = x_402.x_MainLightWorldToShadow[0i][0i];
  let x_412 : vec4<f32> = u_xlat0;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.x, x_412.x, x_412.x)) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_421 : vec4<f32> = x_402.x_MainLightWorldToShadow[0i][2i];
  let x_423 : vec4<f32> = u_xlat0;
  let x_426 : vec4<f32> = u_xlat1;
  let x_428 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(x_423.z, x_423.z, x_423.z)) + vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : vec4<f32> = u_xlat1;
  let x_435 : vec4<f32> = x_402.x_MainLightWorldToShadow[0i][3i];
  let x_437 : vec3<f32> = (vec3<f32>(x_432.x, x_432.y, x_432.z) + vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : vec4<f32> = vs_TEXCOORD8;
  vs_TEXCOORD8 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  vs_TEXCOORD8.w = 0.0f;
  let x_441 : vec4<f32> = u_xlat0;
  let x_444 : vec4<f32> = x_253.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_441.y, x_441.y, x_441.y, x_441.y) * x_444);
  let x_447 : vec4<f32> = x_253.unity_MatrixVP[0i];
  let x_448 : vec4<f32> = u_xlat0;
  let x_451 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_447 * vec4<f32>(x_448.x, x_448.x, x_448.x, x_448.x)) + x_451);
  let x_454 : vec4<f32> = x_253.unity_MatrixVP[2i];
  let x_455 : vec4<f32> = u_xlat0;
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_454 * vec4<f32>(x_455.z, x_455.z, x_455.z, x_455.z)) + x_458);
  let x_464 : vec4<f32> = u_xlat0;
  let x_466 : vec4<f32> = x_253.unity_MatrixVP[3i];
  gl_Position = (x_464 + x_466);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD8_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, vs_TEXCOORD8, gl_Position);
}

