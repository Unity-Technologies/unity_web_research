struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_198 : UnityPerDraw;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_298 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_368 : LightCookies;

@group(0) @binding(2) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_612 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_714 : AdditionalLightsCookies;

@group(0) @binding(3) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_60 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_110 : f32;
  var u_xlatb11 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb35 : bool;
  var u_xlat35 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_454 : f32;
  var x_466 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlati27 : i32;
  var u_xlati37 : i32;
  var u_xlati38 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_1010 : f32;
  var x_1023 : f32;
  var x_1075 : f32;
  var x_1086 : vec3<f32>;
  var x_1191 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_42.x_BaseColor.w;
  let x_77 : f32 = x_42.x_Cutoff;
  u_xlat11 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat33;
  let x_90 : f32 = u_xlat22;
  u_xlat22 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat22;
  u_xlat22 = max(x_93, 0.0001f);
  let x_96 : f32 = u_xlat11;
  let x_97 : f32 = u_xlat22;
  u_xlat11 = (x_96 / x_97);
  let x_99 : f32 = u_xlat11;
  u_xlat11 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat11;
  u_xlat11 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb22;
  if (x_109) {
    let x_113 : f32 = u_xlat11;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat11 = (x_120 + -0.0001f);
  let x_124 : f32 = u_xlat11;
  u_xlatb11 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb11;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_139);
  let x_142 : f32 = u_xlat11;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142, x_142, x_142) * x_144);
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_152 : f32 = vs_TEXCOORD1.y;
  let x_156 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat11 = (x_152 * x_156);
  let x_159 : f32 = x_28.unity_MatrixV[0i].z;
  let x_161 : f32 = vs_TEXCOORD1.x;
  let x_163 : f32 = u_xlat11;
  u_xlat11 = ((x_159 * x_161) + x_163);
  let x_167 : f32 = x_28.unity_MatrixV[2i].z;
  let x_169 : f32 = vs_TEXCOORD1.z;
  let x_171 : f32 = u_xlat11;
  u_xlat11 = ((x_167 * x_169) + x_171);
  let x_173 : f32 = u_xlat11;
  let x_176 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat11 = (x_173 + x_176);
  let x_178 : f32 = u_xlat11;
  let x_182 : f32 = x_28.x_ProjectionParams.y;
  u_xlat11 = (-(x_178) + -(x_182));
  let x_185 : f32 = u_xlat11;
  u_xlat11 = max(x_185, 0.0f);
  let x_187 : f32 = u_xlat11;
  let x_190 : f32 = x_28.unity_FogParams.x;
  u_xlat11 = (x_187 * x_190);
  u_xlat2.w = 1.0f;
  let x_201 : vec4<f32> = x_198.unity_SHAr;
  let x_202 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_201, x_202);
  let x_207 : vec4<f32> = x_198.unity_SHAg;
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_207, x_208);
  let x_213 : vec4<f32> = x_198.unity_SHAb;
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_213, x_214);
  let x_218 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_218.y, x_218.z, x_218.z, x_218.x) * vec4<f32>(x_220.x, x_220.y, x_220.z, x_220.z));
  let x_226 : vec4<f32> = x_198.unity_SHBr;
  let x_227 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_226, x_227);
  let x_232 : vec4<f32> = x_198.unity_SHBg;
  let x_233 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_232, x_233);
  let x_238 : vec4<f32> = x_198.unity_SHBb;
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_238, x_239);
  let x_243 : f32 = u_xlat2.y;
  let x_245 : f32 = u_xlat2.y;
  u_xlat33 = (x_243 * x_245);
  let x_248 : f32 = u_xlat2.x;
  let x_250 : f32 = u_xlat2.x;
  let x_252 : f32 = u_xlat33;
  u_xlat33 = ((x_248 * x_250) + -(x_252));
  let x_257 : vec4<f32> = x_198.unity_SHC;
  let x_259 : f32 = u_xlat33;
  let x_262 : vec3<f32> = u_xlat5;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259, x_259, x_259)) + x_262);
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec3<f32> = u_xlat3;
  let x_267 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_266 + vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_270, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_276 : vec4<f32> = vs_TEXCOORD6;
  let x_277 : vec2<f32> = vec2<f32>(x_276.x, x_276.y);
  let x_279 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_277.x, x_277.y, x_279);
  let x_291 : vec3<f32> = txVec0;
  let x_293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_291.xy, x_291.z);
  u_xlat33 = x_293;
  let x_301 : f32 = x_298.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_301) + 1.0f);
  let x_305 : f32 = u_xlat33;
  let x_307 : f32 = x_298.x_MainLightShadowParams.x;
  let x_310 : f32 = u_xlat1.x;
  u_xlat33 = ((x_305 * x_307) + x_310);
  let x_314 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_314);
  let x_318 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (x_318 >= 1.0f);
  let x_320 : bool = u_xlatb1;
  let x_321 : bool = u_xlatb35;
  u_xlatb1 = (x_320 | x_321);
  let x_323 : bool = u_xlatb1;
  let x_324 : f32 = u_xlat33;
  u_xlat33 = select(x_324, 1.0f, x_323);
  let x_326 : vec3<f32> = vs_TEXCOORD1;
  let x_330 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_332 : vec3<f32> = (x_326 + -(x_330));
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_335.x, x_335.y, x_335.z), vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_342 : f32 = u_xlat1.x;
  let x_344 : f32 = x_298.x_MainLightShadowParams.z;
  let x_347 : f32 = x_298.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_342 * x_344) + x_347);
  let x_351 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_351, 0.0f, 1.0f);
  let x_355 : f32 = u_xlat33;
  u_xlat35 = (-(x_355) + 1.0f);
  let x_359 : f32 = u_xlat1.x;
  let x_360 : f32 = u_xlat35;
  let x_362 : f32 = u_xlat33;
  u_xlat33 = ((x_359 * x_360) + x_362);
  let x_370 : f32 = x_368.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_370 == -1.0f));
  let x_373 : bool = u_xlatb1;
  if (x_373) {
    let x_376 : vec3<f32> = vs_TEXCOORD1;
    let x_379 : vec4<f32> = x_368.x_MainLightWorldToLight[1i];
    let x_381 : vec2<f32> = (vec2<f32>(x_376.y, x_376.y) * vec2<f32>(x_379.x, x_379.y));
    let x_382 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
    let x_385 : vec4<f32> = x_368.x_MainLightWorldToLight[0i];
    let x_387 : vec3<f32> = vs_TEXCOORD1;
    let x_390 : vec4<f32> = u_xlat4;
    let x_392 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(x_387.x, x_387.x)) + vec2<f32>(x_390.x, x_390.y));
    let x_393 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
    let x_396 : vec4<f32> = x_368.x_MainLightWorldToLight[2i];
    let x_398 : vec3<f32> = vs_TEXCOORD1;
    let x_401 : vec4<f32> = u_xlat4;
    let x_403 : vec2<f32> = ((vec2<f32>(x_396.x, x_396.y) * vec2<f32>(x_398.z, x_398.z)) + vec2<f32>(x_401.x, x_401.y));
    let x_404 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
    let x_406 : vec4<f32> = u_xlat4;
    let x_409 : vec4<f32> = x_368.x_MainLightWorldToLight[3i];
    let x_411 : vec2<f32> = (vec2<f32>(x_406.x, x_406.y) + vec2<f32>(x_409.x, x_409.y));
    let x_412 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
    let x_414 : vec4<f32> = u_xlat4;
    let x_418 : vec2<f32> = ((vec2<f32>(x_414.x, x_414.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_419 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
    let x_426 : vec4<f32> = u_xlat4;
    let x_429 : f32 = x_28.x_GlobalMipBias.x;
    let x_430 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_426.x, x_426.y), x_429);
    u_xlat4 = x_430;
    let x_435 : f32 = x_368.x_MainLightCookieTextureFormat;
    let x_437 : f32 = x_368.x_MainLightCookieTextureFormat;
    let x_439 : f32 = x_368.x_MainLightCookieTextureFormat;
    let x_441 : f32 = x_368.x_MainLightCookieTextureFormat;
    let x_442 : vec4<f32> = vec4<f32>(x_435, x_437, x_439, x_441);
    let x_450 : vec4<bool> = (vec4<f32>(x_442.x, x_442.y, x_442.z, x_442.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_450.x, x_450.y);
    let x_453 : bool = u_xlatb5.y;
    if (x_453) {
      let x_458 : f32 = u_xlat4.w;
      x_454 = x_458;
    } else {
      let x_461 : f32 = u_xlat4.x;
      x_454 = x_461;
    }
    let x_462 : f32 = x_454;
    u_xlat1.x = x_462;
    let x_465 : bool = u_xlatb5.x;
    if (x_465) {
      let x_469 : vec4<f32> = u_xlat4;
      x_466 = vec3<f32>(x_469.x, x_469.y, x_469.z);
    } else {
      let x_472 : vec4<f32> = u_xlat1;
      x_466 = vec3<f32>(x_472.x, x_472.x, x_472.x);
    }
    let x_474 : vec3<f32> = x_466;
    let x_475 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_481 : vec4<f32> = u_xlat4;
  let x_484 : vec4<f32> = x_28.x_MainLightColor;
  let x_486 : vec3<f32> = (vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : f32 = u_xlat33;
  let x_491 : f32 = x_198.unity_LightData.z;
  u_xlat33 = (x_489 * x_491);
  let x_493 : f32 = u_xlat33;
  let x_495 : vec4<f32> = u_xlat4;
  let x_497 : vec3<f32> = (vec3<f32>(x_493, x_493, x_493) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat2;
  let x_503 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat33 = dot(vec3<f32>(x_500.x, x_500.y, x_500.z), vec3<f32>(x_503.x, x_503.y, x_503.z));
  let x_506 : f32 = u_xlat33;
  u_xlat33 = clamp(x_506, 0.0f, 1.0f);
  let x_508 : f32 = u_xlat33;
  let x_510 : vec4<f32> = u_xlat4;
  let x_512 : vec3<f32> = (vec3<f32>(x_508, x_508, x_508) * vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = u_xlat4;
  let x_519 : vec3<f32> = (vec3<f32>(x_515.y, x_515.z, x_515.w) * vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat0;
  let x_524 : vec4<f32> = u_xlat4;
  let x_526 : vec3<f32> = (vec3<f32>(x_522.x, x_522.x, x_522.x) * vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_530 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_532 : f32 = x_198.unity_LightData.y;
  u_xlat33 = min(x_530, x_532);
  let x_536 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_536));
  let x_540 : f32 = x_368.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_542 : f32 = x_368.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_544 : f32 = x_368.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_546 : f32 = x_368.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_547 : vec4<f32> = vec4<f32>(x_540, x_542, x_544, x_546);
  let x_553 : vec4<bool> = (vec4<f32>(x_547.x, x_547.y, x_547.z, x_547.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_553.x, x_553.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_565 : u32 = u_xlatu_loop_1;
    let x_566 : u32 = u_xlatu33;
    if ((x_565 < x_566)) {
    } else {
      break;
    }
    let x_569 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_569 >> 2u);
    let x_573 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_573 & 3u));
    let x_576 : u32 = u_xlatu35;
    let x_579 : vec4<f32> = x_198.unity_LightIndices[bitcast<i32>(x_576)];
    let x_589 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_594 : vec4<u32> = indexable[x_589];
    u_xlat35 = dot(x_579, bitcast<vec4<f32>>(x_594));
    let x_597 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_597));
    let x_601 : vec3<f32> = vs_TEXCOORD1;
    let x_613 : u32 = u_xlatu35;
    let x_616 : vec4<f32> = x_612.x_AdditionalLightsPosition[bitcast<i32>(x_613)];
    let x_619 : u32 = u_xlatu35;
    let x_622 : vec4<f32> = x_612.x_AdditionalLightsPosition[bitcast<i32>(x_619)];
    u_xlat7 = ((-(x_601) * vec3<f32>(x_616.w, x_616.w, x_616.w)) + vec3<f32>(x_622.x, x_622.y, x_622.z));
    let x_626 : vec3<f32> = u_xlat7;
    let x_627 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_626, x_627);
    let x_629 : f32 = u_xlat36;
    u_xlat36 = max(x_629, 6.10351562e-05f);
    let x_633 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_633);
    let x_635 : f32 = u_xlat37;
    let x_637 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_635, x_635, x_635) * x_637);
    let x_639 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_639);
    let x_641 : f32 = u_xlat36;
    let x_642 : u32 = u_xlatu35;
    let x_645 : f32 = x_612.x_AdditionalLightsAttenuation[bitcast<i32>(x_642)].x;
    u_xlat36 = (x_641 * x_645);
    let x_647 : f32 = u_xlat36;
    let x_649 : f32 = u_xlat36;
    u_xlat36 = ((-(x_647) * x_649) + 1.0f);
    let x_652 : f32 = u_xlat36;
    u_xlat36 = max(x_652, 0.0f);
    let x_654 : f32 = u_xlat36;
    let x_655 : f32 = u_xlat36;
    u_xlat36 = (x_654 * x_655);
    let x_657 : f32 = u_xlat36;
    let x_658 : f32 = u_xlat37;
    u_xlat36 = (x_657 * x_658);
    let x_660 : u32 = u_xlatu35;
    let x_663 : vec4<f32> = x_612.x_AdditionalLightsSpotDir[bitcast<i32>(x_660)];
    let x_665 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_663.x, x_663.y, x_663.z), x_665);
    let x_667 : f32 = u_xlat37;
    let x_668 : u32 = u_xlatu35;
    let x_671 : f32 = x_612.x_AdditionalLightsAttenuation[bitcast<i32>(x_668)].z;
    let x_673 : u32 = u_xlatu35;
    let x_676 : f32 = x_612.x_AdditionalLightsAttenuation[bitcast<i32>(x_673)].w;
    u_xlat37 = ((x_667 * x_671) + x_676);
    let x_678 : f32 = u_xlat37;
    u_xlat37 = clamp(x_678, 0.0f, 1.0f);
    let x_680 : f32 = u_xlat37;
    let x_681 : f32 = u_xlat37;
    u_xlat37 = (x_680 * x_681);
    let x_683 : f32 = u_xlat36;
    let x_684 : f32 = u_xlat37;
    u_xlat36 = (x_683 * x_684);
    let x_687 : u32 = u_xlatu35;
    u_xlatu37 = (x_687 >> 5u);
    let x_690 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_690) & 31i)));
    let x_696 : i32 = u_xlati27;
    let x_698 : u32 = u_xlatu37;
    let x_701 : f32 = x_368.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_698)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_696) & bitcast<u32>(x_701)));
    let x_705 : i32 = u_xlati37;
    if ((x_705 != 0i)) {
      let x_715 : u32 = u_xlatu35;
      let x_718 : f32 = x_714.x_AdditionalLightsLightTypes[bitcast<i32>(x_715)].el;
      u_xlati37 = i32(x_718);
      let x_720 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_720 != 0i));
      let x_724 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_724) << bitcast<u32>(2i));
      let x_727 : i32 = u_xlati27;
      if ((x_727 != 0i)) {
        let x_732 : vec3<f32> = vs_TEXCOORD1;
        let x_734 : i32 = u_xlati38;
        let x_737 : i32 = u_xlati38;
        let x_741 : vec4<f32> = x_714.x_AdditionalLightsWorldToLights[((x_734 + 1i) / 4i)][((x_737 + 1i) % 4i)];
        let x_743 : vec3<f32> = (vec3<f32>(x_732.y, x_732.y, x_732.y) * vec3<f32>(x_741.x, x_741.y, x_741.w));
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
        let x_746 : i32 = u_xlati38;
        let x_748 : i32 = u_xlati38;
        let x_751 : vec4<f32> = x_714.x_AdditionalLightsWorldToLights[(x_746 / 4i)][(x_748 % 4i)];
        let x_753 : vec3<f32> = vs_TEXCOORD1;
        let x_756 : vec4<f32> = u_xlat8;
        let x_758 : vec3<f32> = ((vec3<f32>(x_751.x, x_751.y, x_751.w) * vec3<f32>(x_753.x, x_753.x, x_753.x)) + vec3<f32>(x_756.x, x_756.y, x_756.z));
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
        let x_761 : i32 = u_xlati38;
        let x_764 : i32 = u_xlati38;
        let x_768 : vec4<f32> = x_714.x_AdditionalLightsWorldToLights[((x_761 + 2i) / 4i)][((x_764 + 2i) % 4i)];
        let x_770 : vec3<f32> = vs_TEXCOORD1;
        let x_773 : vec4<f32> = u_xlat8;
        let x_775 : vec3<f32> = ((vec3<f32>(x_768.x, x_768.y, x_768.w) * vec3<f32>(x_770.z, x_770.z, x_770.z)) + vec3<f32>(x_773.x, x_773.y, x_773.z));
        let x_776 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
        let x_778 : vec4<f32> = u_xlat8;
        let x_780 : i32 = u_xlati38;
        let x_783 : i32 = u_xlati38;
        let x_787 : vec4<f32> = x_714.x_AdditionalLightsWorldToLights[((x_780 + 3i) / 4i)][((x_783 + 3i) % 4i)];
        let x_789 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) + vec3<f32>(x_787.x, x_787.y, x_787.w));
        let x_790 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
        let x_792 : vec4<f32> = u_xlat8;
        let x_794 : vec4<f32> = u_xlat8;
        let x_796 : vec2<f32> = (vec2<f32>(x_792.x, x_792.y) / vec2<f32>(x_794.z, x_794.z));
        let x_797 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_796.x, x_796.y, x_797.z, x_797.w);
        let x_799 : vec4<f32> = u_xlat8;
        let x_802 : vec2<f32> = ((vec2<f32>(x_799.x, x_799.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_803 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
        let x_805 : vec4<f32> = u_xlat8;
        let x_809 : vec2<f32> = clamp(vec2<f32>(x_805.x, x_805.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_810 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_809.x, x_809.y, x_810.z, x_810.w);
        let x_812 : u32 = u_xlatu35;
        let x_815 : vec4<f32> = x_714.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_812)];
        let x_817 : vec4<f32> = u_xlat8;
        let x_820 : u32 = u_xlatu35;
        let x_823 : vec4<f32> = x_714.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_820)];
        let x_825 : vec2<f32> = ((vec2<f32>(x_815.x, x_815.y) * vec2<f32>(x_817.x, x_817.y)) + vec2<f32>(x_823.z, x_823.w));
        let x_826 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_825.x, x_825.y, x_826.z, x_826.w);
      } else {
        let x_830 : i32 = u_xlati37;
        u_xlatb37 = (x_830 == 1i);
        let x_832 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_832);
        let x_834 : i32 = u_xlati37;
        if ((x_834 != 0i)) {
          let x_840 : vec3<f32> = vs_TEXCOORD1;
          let x_842 : i32 = u_xlati38;
          let x_845 : i32 = u_xlati38;
          let x_849 : vec4<f32> = x_714.x_AdditionalLightsWorldToLights[((x_842 + 1i) / 4i)][((x_845 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_840.y, x_840.y) * vec2<f32>(x_849.x, x_849.y));
          let x_852 : i32 = u_xlati38;
          let x_854 : i32 = u_xlati38;
          let x_857 : vec4<f32> = x_714.x_AdditionalLightsWorldToLights[(x_852 / 4i)][(x_854 % 4i)];
          let x_859 : vec3<f32> = vs_TEXCOORD1;
          let x_862 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_857.x, x_857.y) * vec2<f32>(x_859.x, x_859.x)) + x_862);
          let x_864 : i32 = u_xlati38;
          let x_867 : i32 = u_xlati38;
          let x_871 : vec4<f32> = x_714.x_AdditionalLightsWorldToLights[((x_864 + 2i) / 4i)][((x_867 + 2i) % 4i)];
          let x_873 : vec3<f32> = vs_TEXCOORD1;
          let x_876 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_871.x, x_871.y) * vec2<f32>(x_873.z, x_873.z)) + x_876);
          let x_878 : vec2<f32> = u_xlat30;
          let x_879 : i32 = u_xlati38;
          let x_882 : i32 = u_xlati38;
          let x_886 : vec4<f32> = x_714.x_AdditionalLightsWorldToLights[((x_879 + 3i) / 4i)][((x_882 + 3i) % 4i)];
          u_xlat30 = (x_878 + vec2<f32>(x_886.x, x_886.y));
          let x_889 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_889 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_892 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_892);
          let x_894 : u32 = u_xlatu35;
          let x_897 : vec4<f32> = x_714.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_894)];
          let x_899 : vec2<f32> = u_xlat30;
          let x_901 : u32 = u_xlatu35;
          let x_904 : vec4<f32> = x_714.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_901)];
          let x_906 : vec2<f32> = ((vec2<f32>(x_897.x, x_897.y) * x_899) + vec2<f32>(x_904.z, x_904.w));
          let x_907 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        } else {
          let x_911 : vec3<f32> = vs_TEXCOORD1;
          let x_913 : i32 = u_xlati38;
          let x_916 : i32 = u_xlati38;
          let x_920 : vec4<f32> = x_714.x_AdditionalLightsWorldToLights[((x_913 + 1i) / 4i)][((x_916 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_911.y, x_911.y, x_911.y, x_911.y) * x_920);
          let x_922 : i32 = u_xlati38;
          let x_924 : i32 = u_xlati38;
          let x_927 : vec4<f32> = x_714.x_AdditionalLightsWorldToLights[(x_922 / 4i)][(x_924 % 4i)];
          let x_928 : vec3<f32> = vs_TEXCOORD1;
          let x_931 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_927 * vec4<f32>(x_928.x, x_928.x, x_928.x, x_928.x)) + x_931);
          let x_933 : i32 = u_xlati38;
          let x_936 : i32 = u_xlati38;
          let x_940 : vec4<f32> = x_714.x_AdditionalLightsWorldToLights[((x_933 + 2i) / 4i)][((x_936 + 2i) % 4i)];
          let x_941 : vec3<f32> = vs_TEXCOORD1;
          let x_944 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_940 * vec4<f32>(x_941.z, x_941.z, x_941.z, x_941.z)) + x_944);
          let x_946 : vec4<f32> = u_xlat9;
          let x_947 : i32 = u_xlati38;
          let x_950 : i32 = u_xlati38;
          let x_954 : vec4<f32> = x_714.x_AdditionalLightsWorldToLights[((x_947 + 3i) / 4i)][((x_950 + 3i) % 4i)];
          u_xlat9 = (x_946 + x_954);
          let x_956 : vec4<f32> = u_xlat9;
          let x_958 : vec4<f32> = u_xlat9;
          let x_960 : vec3<f32> = (vec3<f32>(x_956.x, x_956.y, x_956.z) / vec3<f32>(x_958.w, x_958.w, x_958.w));
          let x_961 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
          let x_963 : vec4<f32> = u_xlat9;
          let x_965 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_963.x, x_963.y, x_963.z), vec3<f32>(x_965.x, x_965.y, x_965.z));
          let x_968 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_968);
          let x_970 : f32 = u_xlat37;
          let x_972 : vec4<f32> = u_xlat9;
          let x_974 : vec3<f32> = (vec3<f32>(x_970, x_970, x_970) * vec3<f32>(x_972.x, x_972.y, x_972.z));
          let x_975 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
          let x_977 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_977.x, x_977.y, x_977.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_982 : f32 = u_xlat37;
          u_xlat37 = max(x_982, 0.000001f);
          let x_985 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_985);
          let x_988 : f32 = u_xlat37;
          let x_990 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_988, x_988, x_988) * vec3<f32>(x_990.z, x_990.x, x_990.y));
          let x_994 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_994);
          let x_998 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_998, 0.0f, 1.0f);
          let x_1002 : vec3<f32> = u_xlat10;
          let x_1005 : vec4<bool> = (vec4<f32>(x_1002.y, x_1002.z, x_1002.y, x_1002.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1005.x, x_1005.y);
          let x_1009 : bool = u_xlatb27.x;
          if (x_1009) {
            let x_1014 : f32 = u_xlat10.x;
            x_1010 = x_1014;
          } else {
            let x_1017 : f32 = u_xlat10.x;
            x_1010 = -(x_1017);
          }
          let x_1019 : f32 = x_1010;
          u_xlat27.x = x_1019;
          let x_1022 : bool = u_xlatb27.y;
          if (x_1022) {
            let x_1027 : f32 = u_xlat10.x;
            x_1023 = x_1027;
          } else {
            let x_1030 : f32 = u_xlat10.x;
            x_1023 = -(x_1030);
          }
          let x_1032 : f32 = x_1023;
          u_xlat27.y = x_1032;
          let x_1034 : vec4<f32> = u_xlat9;
          let x_1036 : f32 = u_xlat37;
          let x_1039 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(x_1036, x_1036)) + x_1039);
          let x_1041 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1041 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1044 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1044, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1048 : u32 = u_xlatu35;
          let x_1051 : vec4<f32> = x_714.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1048)];
          let x_1053 : vec2<f32> = u_xlat27;
          let x_1055 : u32 = u_xlatu35;
          let x_1058 : vec4<f32> = x_714.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1055)];
          let x_1060 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.y) * x_1053) + vec2<f32>(x_1058.z, x_1058.w));
          let x_1061 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        }
      }
      let x_1068 : vec4<f32> = u_xlat8;
      let x_1071 : f32 = x_28.x_GlobalMipBias.x;
      let x_1072 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1068.x, x_1068.y), x_1071);
      u_xlat8 = x_1072;
      let x_1074 : bool = u_xlatb5.y;
      if (x_1074) {
        let x_1079 : f32 = u_xlat8.w;
        x_1075 = x_1079;
      } else {
        let x_1082 : f32 = u_xlat8.x;
        x_1075 = x_1082;
      }
      let x_1083 : f32 = x_1075;
      u_xlat37 = x_1083;
      let x_1085 : bool = u_xlatb5.x;
      if (x_1085) {
        let x_1089 : vec4<f32> = u_xlat8;
        x_1086 = vec3<f32>(x_1089.x, x_1089.y, x_1089.z);
      } else {
        let x_1092 : f32 = u_xlat37;
        x_1086 = vec3<f32>(x_1092, x_1092, x_1092);
      }
      let x_1094 : vec3<f32> = x_1086;
      let x_1095 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1101 : vec4<f32> = u_xlat8;
    let x_1103 : u32 = u_xlatu35;
    let x_1106 : vec4<f32> = x_612.x_AdditionalLightsColor[bitcast<i32>(x_1103)];
    let x_1108 : vec3<f32> = (vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
    let x_1109 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
    let x_1111 : f32 = u_xlat36;
    let x_1113 : vec4<f32> = u_xlat8;
    let x_1115 : vec3<f32> = (vec3<f32>(x_1111, x_1111, x_1111) * vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
    let x_1116 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
    let x_1118 : vec4<f32> = u_xlat2;
    let x_1120 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1118.x, x_1118.y, x_1118.z), x_1120);
    let x_1122 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1122, 0.0f, 1.0f);
    let x_1124 : f32 = u_xlat35;
    let x_1126 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1124, x_1124, x_1124) * vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
    let x_1129 : vec4<f32> = u_xlat1;
    let x_1131 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1129.y, x_1129.z, x_1129.w) * x_1131);
    let x_1133 : vec3<f32> = u_xlat7;
    let x_1134 : vec4<f32> = u_xlat0;
    let x_1137 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1133 * vec3<f32>(x_1134.x, x_1134.x, x_1134.x)) + x_1137);

    continuing {
      let x_1139 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1139 + bitcast<u32>(1i));
    }
  }
  let x_1141 : vec3<f32> = u_xlat3;
  let x_1142 : vec4<f32> = u_xlat1;
  let x_1145 : vec4<f32> = u_xlat4;
  let x_1147 : vec3<f32> = ((x_1141 * vec3<f32>(x_1142.y, x_1142.z, x_1142.w)) + vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1150 : vec3<f32> = u_xlat6;
  let x_1151 : vec4<f32> = u_xlat1;
  let x_1153 : vec3<f32> = (x_1150 + vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
  let x_1154 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
  let x_1156 : f32 = u_xlat11;
  let x_1157 : f32 = u_xlat11;
  u_xlat11 = (x_1156 * -(x_1157));
  let x_1160 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1160);
  let x_1162 : vec4<f32> = u_xlat1;
  let x_1165 : vec4<f32> = x_28.unity_FogColor;
  let x_1168 : vec3<f32> = (vec3<f32>(x_1162.x, x_1162.y, x_1162.z) + -(vec3<f32>(x_1165.x, x_1165.y, x_1165.z)));
  let x_1169 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1173 : f32 = u_xlat11;
  let x_1175 : vec4<f32> = u_xlat1;
  let x_1179 : vec4<f32> = x_28.unity_FogColor;
  let x_1181 : vec3<f32> = ((vec3<f32>(x_1173, x_1173, x_1173) * vec3<f32>(x_1175.x, x_1175.y, x_1175.z)) + vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1185 : f32 = x_42.x_Surface;
  u_xlatb11 = (x_1185 == 1.0f);
  let x_1187 : bool = u_xlatb11;
  let x_1188 : bool = u_xlatb22;
  u_xlatb11 = (x_1187 | x_1188);
  let x_1190 : bool = u_xlatb11;
  if (x_1190) {
    let x_1195 : f32 = u_xlat0.x;
    x_1191 = x_1195;
  } else {
    x_1191 = 1.0f;
  }
  let x_1197 : f32 = x_1191;
  SV_Target0.w = x_1197;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

