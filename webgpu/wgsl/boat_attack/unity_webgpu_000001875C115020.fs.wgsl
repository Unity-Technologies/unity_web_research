struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScaleBiasRt : vec4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_277 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_640 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_776 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_940 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1055 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat36 : f32;
  var u_xlatb24 : bool;
  var x_130 : f32;
  var u_xlatb12 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlatb39 : bool;
  var u_xlatb6 : vec2<bool>;
  var x_724 : f32;
  var x_735 : vec3<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati41 : i32;
  var u_xlat40 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat8 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat30 : vec2<f32>;
  var u_xlatu30 : u32;
  var u_xlati42 : i32;
  var u_xlati30 : i32;
  var u_xlati43 : i32;
  var u_xlat9 : vec4<f32>;
  var u_xlatb30 : bool;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb33 : vec2<bool>;
  var u_xlat33 : vec2<f32>;
  var x_1357 : f32;
  var x_1370 : f32;
  var x_1422 : f32;
  var x_1434 : vec3<f32>;
  var x_1561 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat12.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat24 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat36 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat36;
  let x_104 : f32 = u_xlat24;
  u_xlat24 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat24;
  u_xlat24 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat12.x;
  let x_112 : f32 = u_xlat24;
  u_xlat12.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat12.x;
  u_xlat12.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb24 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb24;
  if (x_129) {
    let x_134 : f32 = u_xlat12.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat12.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat12.x;
  u_xlatb12 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb12;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_164 : vec2<f32> = vs_TEXCOORD0;
  let x_166 : f32 = x_43.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_164, x_166);
  u_xlat2 = vec3<f32>(x_167.x, x_167.y, x_167.w);
  let x_170 : f32 = u_xlat2.x;
  let x_173 : f32 = u_xlat2.z;
  u_xlat2.x = (x_170 * x_173);
  let x_176 : vec3<f32> = u_xlat2;
  let x_183 : vec2<f32> = ((vec2<f32>(x_176.x, x_176.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_184 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_183.x, x_184.y, x_183.y);
  let x_186 : vec3<f32> = u_xlat12;
  let x_188 : vec3<f32> = u_xlat12;
  u_xlat1.x = dot(vec2<f32>(x_186.x, x_186.z), vec2<f32>(x_188.x, x_188.z));
  let x_193 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_193, 1.0f);
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_197) + 1.0f);
  let x_202 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_202);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_206, 1.00000002e-16f);
  let x_210 : vec3<f32> = u_xlat12;
  let x_213 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_210.z, x_210.z, x_210.z) * vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec3<f32> = u_xlat12;
  let x_219 : vec4<f32> = vs_TEXCOORD3;
  let x_222 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(x_219.x, x_219.y, x_219.z)) + x_222);
  let x_224 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = vs_TEXCOORD2;
  let x_230 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_224.x, x_224.x, x_224.x) * vec3<f32>(x_227.x, x_227.y, x_227.z)) + x_230);
  let x_232 : vec3<f32> = u_xlat2;
  let x_233 : vec3<f32> = u_xlat2;
  u_xlat12.x = dot(x_232, x_233);
  let x_237 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_237);
  let x_240 : vec3<f32> = u_xlat12;
  let x_242 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_240.x, x_240.x, x_240.x) * x_242);
  let x_246 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_246;
  let x_249 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_249;
  let x_253 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_253;
  let x_255 : vec3<f32> = u_xlat3;
  let x_256 : vec3<f32> = u_xlat3;
  u_xlat12.x = dot(x_255, x_256);
  let x_260 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_260, 1.17549435e-37f);
  let x_265 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_265);
  let x_271 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres0;
  let x_282 : vec3<f32> = (x_271 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres1;
  let x_291 : vec3<f32> = (x_286 + -(vec3<f32>(x_288.x, x_288.y, x_288.z)));
  let x_292 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_295 : vec3<f32> = vs_TEXCOORD1;
  let x_298 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_295 + -(vec3<f32>(x_298.x, x_298.y, x_298.z)));
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_305 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_303 + -(vec3<f32>(x_305.x, x_305.y, x_305.z)));
  let x_309 : vec4<f32> = u_xlat4;
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_309.x, x_309.y, x_309.z), vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_315 : vec4<f32> = u_xlat5;
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_315.x, x_315.y, x_315.z), vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_321 : vec3<f32> = u_xlat6;
  let x_322 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_321, x_322);
  let x_325 : vec3<f32> = u_xlat7;
  let x_326 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_325, x_326);
  let x_332 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = x_277.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_332 < x_335);
  let x_338 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_338);
  let x_342 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_342);
  let x_346 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_346);
  let x_350 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_354);
  let x_359 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_359);
  let x_363 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_363);
  let x_366 : vec4<f32> = u_xlat4;
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec3<f32> = (vec3<f32>(x_366.x, x_366.y, x_366.z) + vec3<f32>(x_368.y, x_368.z, x_368.w));
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat4;
  let x_376 : vec3<f32> = max(vec3<f32>(x_373.x, x_373.y, x_373.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_377.x, x_376.x, x_376.y, x_376.z);
  let x_379 : vec4<f32> = u_xlat5;
  u_xlat36 = dot(x_379, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_384 : f32 = u_xlat36;
  u_xlat36 = (-(x_384) + 4.0f);
  let x_389 : f32 = u_xlat36;
  u_xlatu36 = u32(x_389);
  let x_393 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_393) << bitcast<u32>(2i));
  let x_396 : vec3<f32> = vs_TEXCOORD1;
  let x_398 : i32 = u_xlati36;
  let x_401 : i32 = u_xlati36;
  let x_405 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_398 + 1i) / 4i)][((x_401 + 1i) % 4i)];
  let x_407 : vec3<f32> = (vec3<f32>(x_396.y, x_396.y, x_396.y) * vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : i32 = u_xlati36;
  let x_412 : i32 = u_xlati36;
  let x_415 : vec4<f32> = x_277.x_MainLightWorldToShadow[(x_410 / 4i)][(x_412 % 4i)];
  let x_417 : vec3<f32> = vs_TEXCOORD1;
  let x_420 : vec4<f32> = u_xlat4;
  let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.x, x_417.x, x_417.x)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : i32 = u_xlati36;
  let x_428 : i32 = u_xlati36;
  let x_432 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_425 + 2i) / 4i)][((x_428 + 2i) % 4i)];
  let x_434 : vec3<f32> = vs_TEXCOORD1;
  let x_437 : vec4<f32> = u_xlat4;
  let x_439 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(x_434.z, x_434.z, x_434.z)) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat4;
  let x_444 : i32 = u_xlati36;
  let x_447 : i32 = u_xlati36;
  let x_451 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_444 + 3i) / 4i)][((x_447 + 3i) % 4i)];
  let x_453 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) + vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_462 : vec2<f32> = vs_TEXCOORD7;
  let x_464 : f32 = x_43.x_GlobalMipBias.x;
  let x_465 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_462, x_464);
  u_xlat5 = x_465;
  let x_470 : vec2<f32> = vs_TEXCOORD7;
  let x_472 : f32 = x_43.x_GlobalMipBias.x;
  let x_473 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_470, x_472);
  u_xlat6 = vec3<f32>(x_473.x, x_473.y, x_473.z);
  let x_475 : vec4<f32> = u_xlat5;
  let x_479 : vec3<f32> = (vec3<f32>(x_475.x, x_475.y, x_475.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_480 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_482 : vec3<f32> = u_xlat2;
  let x_483 : vec4<f32> = u_xlat5;
  u_xlat36 = dot(x_482, vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : f32 = u_xlat36;
  u_xlat36 = (x_486 + 0.5f);
  let x_488 : f32 = u_xlat36;
  let x_490 : vec3<f32> = u_xlat6;
  let x_491 : vec3<f32> = (vec3<f32>(x_488, x_488, x_488) * x_490);
  let x_492 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_495 : f32 = u_xlat5.w;
  u_xlat36 = max(x_495, 0.0001f);
  let x_497 : vec4<f32> = u_xlat5;
  let x_499 : f32 = u_xlat36;
  let x_501 : vec3<f32> = (vec3<f32>(x_497.x, x_497.y, x_497.z) / vec3<f32>(x_499, x_499, x_499));
  let x_502 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_506 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_507 : vec2<f32> = vec2<f32>(x_506.x, x_506.y);
  let x_511 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_507.x, x_507.y));
  let x_512 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_511.x, x_511.y, x_512.z);
  let x_514 : vec3<f32> = u_xlat6;
  let x_516 : vec4<f32> = hlslcc_FragCoord;
  let x_518 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) * vec2<f32>(x_516.x, x_516.y));
  let x_519 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_518.x, x_518.y, x_519.z);
  let x_522 : f32 = u_xlat6.y;
  let x_525 : f32 = x_43.x_ScaleBiasRt.x;
  let x_528 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat36 = ((x_522 * x_525) + x_528);
  let x_530 : f32 = u_xlat36;
  u_xlat6.z = (-(x_530) + 1.0f);
  let x_539 : vec3<f32> = u_xlat6;
  let x_542 : f32 = x_43.x_GlobalMipBias.x;
  let x_543 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_539.x, x_539.z), x_542);
  u_xlat36 = x_543.x;
  let x_545 : f32 = u_xlat36;
  u_xlat1.x = (x_545 + -1.0f);
  let x_549 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_551 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_549 * x_551) + 1.0f);
  let x_555 : f32 = u_xlat36;
  u_xlat36 = min(x_555, 1.0f);
  let x_558 : vec4<f32> = u_xlat4;
  let x_559 : vec2<f32> = vec2<f32>(x_558.x, x_558.y);
  let x_561 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_559.x, x_559.y, x_561);
  let x_574 : vec3<f32> = txVec0;
  let x_576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_574.xy, x_574.z);
  u_xlat38 = x_576;
  let x_579 : f32 = x_277.x_MainLightShadowParams.x;
  u_xlat39 = (-(x_579) + 1.0f);
  let x_582 : f32 = u_xlat38;
  let x_584 : f32 = x_277.x_MainLightShadowParams.x;
  let x_586 : f32 = u_xlat39;
  u_xlat38 = ((x_582 * x_584) + x_586);
  let x_590 : f32 = u_xlat4.z;
  u_xlatb39 = (0.0f >= x_590);
  let x_593 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_593 >= 1.0f);
  let x_596 : bool = u_xlatb39;
  let x_598 : bool = u_xlatb4.x;
  u_xlatb39 = (x_596 | x_598);
  let x_600 : bool = u_xlatb39;
  let x_601 : f32 = u_xlat38;
  u_xlat38 = select(x_601, 1.0f, x_600);
  let x_603 : vec3<f32> = vs_TEXCOORD1;
  let x_607 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_609 : vec3<f32> = (x_603 + -(x_607));
  let x_610 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat4;
  let x_614 : vec4<f32> = u_xlat4;
  u_xlat39 = dot(vec3<f32>(x_612.x, x_612.y, x_612.z), vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_617 : f32 = u_xlat39;
  let x_619 : f32 = x_277.x_MainLightShadowParams.z;
  let x_622 : f32 = x_277.x_MainLightShadowParams.w;
  u_xlat39 = ((x_617 * x_619) + x_622);
  let x_624 : f32 = u_xlat39;
  u_xlat39 = clamp(x_624, 0.0f, 1.0f);
  let x_626 : f32 = u_xlat38;
  u_xlat4.x = (-(x_626) + 1.0f);
  let x_630 : f32 = u_xlat39;
  let x_632 : f32 = u_xlat4.x;
  let x_634 : f32 = u_xlat38;
  u_xlat38 = ((x_630 * x_632) + x_634);
  let x_642 : f32 = x_640.x_MainLightCookieTextureFormat;
  u_xlatb39 = !((x_642 == -1.0f));
  let x_644 : bool = u_xlatb39;
  if (x_644) {
    let x_647 : vec3<f32> = vs_TEXCOORD1;
    let x_650 : vec4<f32> = x_640.x_MainLightWorldToLight[1i];
    let x_652 : vec2<f32> = (vec2<f32>(x_647.y, x_647.y) * vec2<f32>(x_650.x, x_650.y));
    let x_653 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
    let x_656 : vec4<f32> = x_640.x_MainLightWorldToLight[0i];
    let x_658 : vec3<f32> = vs_TEXCOORD1;
    let x_661 : vec4<f32> = u_xlat4;
    let x_663 : vec2<f32> = ((vec2<f32>(x_656.x, x_656.y) * vec2<f32>(x_658.x, x_658.x)) + vec2<f32>(x_661.x, x_661.y));
    let x_664 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
    let x_667 : vec4<f32> = x_640.x_MainLightWorldToLight[2i];
    let x_669 : vec3<f32> = vs_TEXCOORD1;
    let x_672 : vec4<f32> = u_xlat4;
    let x_674 : vec2<f32> = ((vec2<f32>(x_667.x, x_667.y) * vec2<f32>(x_669.z, x_669.z)) + vec2<f32>(x_672.x, x_672.y));
    let x_675 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
    let x_677 : vec4<f32> = u_xlat4;
    let x_680 : vec4<f32> = x_640.x_MainLightWorldToLight[3i];
    let x_682 : vec2<f32> = (vec2<f32>(x_677.x, x_677.y) + vec2<f32>(x_680.x, x_680.y));
    let x_683 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
    let x_685 : vec4<f32> = u_xlat4;
    let x_689 : vec2<f32> = ((vec2<f32>(x_685.x, x_685.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_690 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
    let x_697 : vec4<f32> = u_xlat4;
    let x_700 : f32 = x_43.x_GlobalMipBias.x;
    let x_701 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_697.x, x_697.y), x_700);
    u_xlat4 = x_701;
    let x_706 : f32 = x_640.x_MainLightCookieTextureFormat;
    let x_708 : f32 = x_640.x_MainLightCookieTextureFormat;
    let x_710 : f32 = x_640.x_MainLightCookieTextureFormat;
    let x_712 : f32 = x_640.x_MainLightCookieTextureFormat;
    let x_713 : vec4<f32> = vec4<f32>(x_706, x_708, x_710, x_712);
    let x_720 : vec4<bool> = (vec4<f32>(x_713.x, x_713.y, x_713.z, x_713.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_720.x, x_720.y);
    let x_723 : bool = u_xlatb6.y;
    if (x_723) {
      let x_728 : f32 = u_xlat4.w;
      x_724 = x_728;
    } else {
      let x_731 : f32 = u_xlat4.x;
      x_724 = x_731;
    }
    let x_732 : f32 = x_724;
    u_xlat39 = x_732;
    let x_734 : bool = u_xlatb6.x;
    if (x_734) {
      let x_738 : vec4<f32> = u_xlat4;
      x_735 = vec3<f32>(x_738.x, x_738.y, x_738.z);
    } else {
      let x_741 : f32 = u_xlat39;
      x_735 = vec3<f32>(x_741, x_741, x_741);
    }
    let x_743 : vec3<f32> = x_735;
    let x_744 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_750 : vec4<f32> = u_xlat4;
  let x_753 : vec4<f32> = x_43.x_MainLightColor;
  let x_755 : vec3<f32> = (vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_756 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat1;
  let x_760 : vec4<f32> = u_xlat4;
  let x_762 : vec3<f32> = (vec3<f32>(x_758.x, x_758.x, x_758.x) * vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : f32 = u_xlat36;
  let x_767 : vec4<f32> = u_xlat5;
  let x_769 : vec3<f32> = (vec3<f32>(x_765, x_765, x_765) * vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : f32 = u_xlat38;
  let x_778 : f32 = x_776.unity_LightData.z;
  u_xlat36 = (x_772 * x_778);
  let x_780 : f32 = u_xlat36;
  let x_782 : vec4<f32> = u_xlat4;
  let x_784 : vec3<f32> = (vec3<f32>(x_780, x_780, x_780) * vec3<f32>(x_782.x, x_782.y, x_782.z));
  let x_785 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_787 : vec3<f32> = u_xlat2;
  let x_789 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat36 = dot(x_787, vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : f32 = u_xlat36;
  u_xlat36 = clamp(x_792, 0.0f, 1.0f);
  let x_794 : f32 = u_xlat36;
  let x_796 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec3<f32>(x_794, x_794, x_794) * vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_800 : f32 = x_56.x_SpecColor.w;
  u_xlat36 = ((x_800 * 10.0f) + 1.0f);
  let x_804 : f32 = u_xlat36;
  u_xlat36 = exp2(x_804);
  let x_806 : vec3<f32> = u_xlat3;
  let x_807 : vec3<f32> = u_xlat12;
  let x_811 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat7 = ((x_806 * vec3<f32>(x_807.x, x_807.x, x_807.x)) + vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : vec3<f32> = u_xlat7;
  let x_815 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_814, x_815);
  let x_817 : f32 = u_xlat38;
  u_xlat38 = max(x_817, 1.17549435e-37f);
  let x_819 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_819);
  let x_821 : f32 = u_xlat38;
  let x_823 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_821, x_821, x_821) * x_823);
  let x_825 : vec3<f32> = u_xlat2;
  let x_826 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_825, x_826);
  let x_828 : f32 = u_xlat38;
  u_xlat38 = clamp(x_828, 0.0f, 1.0f);
  let x_830 : f32 = u_xlat38;
  u_xlat38 = log2(x_830);
  let x_832 : f32 = u_xlat36;
  let x_833 : f32 = u_xlat38;
  u_xlat38 = (x_832 * x_833);
  let x_835 : f32 = u_xlat38;
  u_xlat38 = exp2(x_835);
  let x_837 : f32 = u_xlat38;
  let x_840 : vec4<f32> = x_56.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_837, x_837, x_837) * vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat4;
  let x_845 : vec3<f32> = u_xlat7;
  let x_846 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) * x_845);
  let x_847 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec3<f32> = u_xlat6;
  let x_850 : vec4<f32> = u_xlat1;
  let x_853 : vec4<f32> = u_xlat4;
  let x_855 : vec3<f32> = ((x_849 * vec3<f32>(x_850.y, x_850.z, x_850.w)) + vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_860 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_862 : f32 = x_776.unity_LightData.y;
  u_xlat38 = min(x_860, x_862);
  let x_865 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_865));
  let x_869 : f32 = x_640.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_871 : f32 = x_640.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_873 : f32 = x_640.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_875 : f32 = x_640.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_876 : vec4<f32> = vec4<f32>(x_869, x_871, x_873, x_875);
  let x_882 : vec4<bool> = (vec4<f32>(x_876.x, x_876.y, x_876.z, x_876.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_882.x, x_882.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_893 : u32 = u_xlatu_loop_1;
    let x_894 : u32 = u_xlatu38;
    if ((x_893 < x_894)) {
    } else {
      break;
    }
    let x_897 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_897 >> 2u);
    let x_900 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_900 & 3u));
    let x_904 : u32 = u_xlatu40;
    let x_907 : vec4<f32> = x_776.unity_LightIndices[bitcast<i32>(x_904)];
    let x_917 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_922 : vec4<u32> = indexable[x_917];
    u_xlat40 = dot(x_907, bitcast<vec4<f32>>(x_922));
    let x_925 : f32 = u_xlat40;
    u_xlatu40 = bitcast<u32>(i32(x_925));
    let x_929 : vec3<f32> = vs_TEXCOORD1;
    let x_941 : u32 = u_xlatu40;
    let x_944 : vec4<f32> = x_940.x_AdditionalLightsPosition[bitcast<i32>(x_941)];
    let x_947 : u32 = u_xlatu40;
    let x_950 : vec4<f32> = x_940.x_AdditionalLightsPosition[bitcast<i32>(x_947)];
    u_xlat8 = ((-(x_929) * vec3<f32>(x_944.w, x_944.w, x_944.w)) + vec3<f32>(x_950.x, x_950.y, x_950.z));
    let x_954 : vec3<f32> = u_xlat8;
    let x_955 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_954, x_955);
    let x_957 : f32 = u_xlat41;
    u_xlat41 = max(x_957, 6.10351562e-05f);
    let x_962 : f32 = u_xlat41;
    u_xlat30.x = inverseSqrt(x_962);
    let x_965 : vec2<f32> = u_xlat30;
    let x_967 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_965.x, x_965.x, x_965.x) * x_967);
    let x_969 : f32 = u_xlat41;
    u_xlat30.x = (1.0f / x_969);
    let x_972 : f32 = u_xlat41;
    let x_973 : u32 = u_xlatu40;
    let x_976 : f32 = x_940.x_AdditionalLightsAttenuation[bitcast<i32>(x_973)].x;
    u_xlat41 = (x_972 * x_976);
    let x_978 : f32 = u_xlat41;
    let x_980 : f32 = u_xlat41;
    u_xlat41 = ((-(x_978) * x_980) + 1.0f);
    let x_983 : f32 = u_xlat41;
    u_xlat41 = max(x_983, 0.0f);
    let x_985 : f32 = u_xlat41;
    let x_986 : f32 = u_xlat41;
    u_xlat41 = (x_985 * x_986);
    let x_988 : f32 = u_xlat41;
    let x_990 : f32 = u_xlat30.x;
    u_xlat41 = (x_988 * x_990);
    let x_992 : u32 = u_xlatu40;
    let x_995 : vec4<f32> = x_940.x_AdditionalLightsSpotDir[bitcast<i32>(x_992)];
    let x_997 : vec3<f32> = u_xlat8;
    u_xlat30.x = dot(vec3<f32>(x_995.x, x_995.y, x_995.z), x_997);
    let x_1001 : f32 = u_xlat30.x;
    let x_1002 : u32 = u_xlatu40;
    let x_1005 : f32 = x_940.x_AdditionalLightsAttenuation[bitcast<i32>(x_1002)].z;
    let x_1007 : u32 = u_xlatu40;
    let x_1010 : f32 = x_940.x_AdditionalLightsAttenuation[bitcast<i32>(x_1007)].w;
    u_xlat30.x = ((x_1001 * x_1005) + x_1010);
    let x_1014 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_1014, 0.0f, 1.0f);
    let x_1018 : f32 = u_xlat30.x;
    let x_1020 : f32 = u_xlat30.x;
    u_xlat30.x = (x_1018 * x_1020);
    let x_1023 : f32 = u_xlat41;
    let x_1025 : f32 = u_xlat30.x;
    u_xlat41 = (x_1023 * x_1025);
    let x_1028 : u32 = u_xlatu40;
    u_xlatu30 = (x_1028 >> 5u);
    let x_1031 : u32 = u_xlatu40;
    u_xlati42 = (1i << bitcast<u32>((bitcast<i32>(x_1031) & 31i)));
    let x_1037 : i32 = u_xlati42;
    let x_1039 : u32 = u_xlatu30;
    let x_1042 : f32 = x_640.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1039)].el;
    u_xlati30 = bitcast<i32>((bitcast<u32>(x_1037) & bitcast<u32>(x_1042)));
    let x_1046 : i32 = u_xlati30;
    if ((x_1046 != 0i)) {
      let x_1056 : u32 = u_xlatu40;
      let x_1059 : f32 = x_1055.x_AdditionalLightsLightTypes[bitcast<i32>(x_1056)].el;
      u_xlati30 = i32(x_1059);
      let x_1061 : i32 = u_xlati30;
      u_xlati42 = select(1i, 0i, (x_1061 != 0i));
      let x_1065 : u32 = u_xlatu40;
      u_xlati43 = (bitcast<i32>(x_1065) << bitcast<u32>(2i));
      let x_1068 : i32 = u_xlati42;
      if ((x_1068 != 0i)) {
        let x_1073 : vec3<f32> = vs_TEXCOORD1;
        let x_1075 : i32 = u_xlati43;
        let x_1078 : i32 = u_xlati43;
        let x_1082 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1075 + 1i) / 4i)][((x_1078 + 1i) % 4i)];
        let x_1084 : vec3<f32> = (vec3<f32>(x_1073.y, x_1073.y, x_1073.y) * vec3<f32>(x_1082.x, x_1082.y, x_1082.w));
        let x_1085 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
        let x_1087 : i32 = u_xlati43;
        let x_1089 : i32 = u_xlati43;
        let x_1092 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[(x_1087 / 4i)][(x_1089 % 4i)];
        let x_1094 : vec3<f32> = vs_TEXCOORD1;
        let x_1097 : vec4<f32> = u_xlat9;
        let x_1099 : vec3<f32> = ((vec3<f32>(x_1092.x, x_1092.y, x_1092.w) * vec3<f32>(x_1094.x, x_1094.x, x_1094.x)) + vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
        let x_1100 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
        let x_1102 : i32 = u_xlati43;
        let x_1105 : i32 = u_xlati43;
        let x_1109 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1102 + 2i) / 4i)][((x_1105 + 2i) % 4i)];
        let x_1111 : vec3<f32> = vs_TEXCOORD1;
        let x_1114 : vec4<f32> = u_xlat9;
        let x_1116 : vec3<f32> = ((vec3<f32>(x_1109.x, x_1109.y, x_1109.w) * vec3<f32>(x_1111.z, x_1111.z, x_1111.z)) + vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
        let x_1117 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1121 : i32 = u_xlati43;
        let x_1124 : i32 = u_xlati43;
        let x_1128 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1121 + 3i) / 4i)][((x_1124 + 3i) % 4i)];
        let x_1130 : vec3<f32> = (vec3<f32>(x_1119.x, x_1119.y, x_1119.z) + vec3<f32>(x_1128.x, x_1128.y, x_1128.w));
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat9;
        let x_1135 : vec4<f32> = u_xlat9;
        let x_1137 : vec2<f32> = (vec2<f32>(x_1133.x, x_1133.y) / vec2<f32>(x_1135.z, x_1135.z));
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat9;
        let x_1143 : vec2<f32> = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
        let x_1146 : vec4<f32> = u_xlat9;
        let x_1150 : vec2<f32> = clamp(vec2<f32>(x_1146.x, x_1146.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1150.x, x_1150.y, x_1151.z, x_1151.w);
        let x_1153 : u32 = u_xlatu40;
        let x_1156 : vec4<f32> = x_1055.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1153)];
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1161 : u32 = u_xlatu40;
        let x_1164 : vec4<f32> = x_1055.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1161)];
        let x_1166 : vec2<f32> = ((vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(x_1158.x, x_1158.y)) + vec2<f32>(x_1164.z, x_1164.w));
        let x_1167 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
      } else {
        let x_1171 : i32 = u_xlati30;
        u_xlatb30 = (x_1171 == 1i);
        let x_1173 : bool = u_xlatb30;
        u_xlati30 = select(0i, 1i, x_1173);
        let x_1175 : i32 = u_xlati30;
        if ((x_1175 != 0i)) {
          let x_1179 : vec3<f32> = vs_TEXCOORD1;
          let x_1181 : i32 = u_xlati43;
          let x_1184 : i32 = u_xlati43;
          let x_1188 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1181 + 1i) / 4i)][((x_1184 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1179.y, x_1179.y) * vec2<f32>(x_1188.x, x_1188.y));
          let x_1191 : i32 = u_xlati43;
          let x_1193 : i32 = u_xlati43;
          let x_1196 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[(x_1191 / 4i)][(x_1193 % 4i)];
          let x_1198 : vec3<f32> = vs_TEXCOORD1;
          let x_1201 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1198.x, x_1198.x)) + x_1201);
          let x_1203 : i32 = u_xlati43;
          let x_1206 : i32 = u_xlati43;
          let x_1210 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1203 + 2i) / 4i)][((x_1206 + 2i) % 4i)];
          let x_1212 : vec3<f32> = vs_TEXCOORD1;
          let x_1215 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1210.x, x_1210.y) * vec2<f32>(x_1212.z, x_1212.z)) + x_1215);
          let x_1217 : vec2<f32> = u_xlat30;
          let x_1218 : i32 = u_xlati43;
          let x_1221 : i32 = u_xlati43;
          let x_1225 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1218 + 3i) / 4i)][((x_1221 + 3i) % 4i)];
          u_xlat30 = (x_1217 + vec2<f32>(x_1225.x, x_1225.y));
          let x_1228 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1228 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1231 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1231);
          let x_1233 : u32 = u_xlatu40;
          let x_1236 : vec4<f32> = x_1055.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1233)];
          let x_1238 : vec2<f32> = u_xlat30;
          let x_1240 : u32 = u_xlatu40;
          let x_1243 : vec4<f32> = x_1055.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1240)];
          let x_1245 : vec2<f32> = ((vec2<f32>(x_1236.x, x_1236.y) * x_1238) + vec2<f32>(x_1243.z, x_1243.w));
          let x_1246 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        } else {
          let x_1250 : vec3<f32> = vs_TEXCOORD1;
          let x_1252 : i32 = u_xlati43;
          let x_1255 : i32 = u_xlati43;
          let x_1259 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1252 + 1i) / 4i)][((x_1255 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1250.y, x_1250.y, x_1250.y, x_1250.y) * x_1259);
          let x_1261 : i32 = u_xlati43;
          let x_1263 : i32 = u_xlati43;
          let x_1266 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[(x_1261 / 4i)][(x_1263 % 4i)];
          let x_1267 : vec3<f32> = vs_TEXCOORD1;
          let x_1270 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1266 * vec4<f32>(x_1267.x, x_1267.x, x_1267.x, x_1267.x)) + x_1270);
          let x_1272 : i32 = u_xlati43;
          let x_1275 : i32 = u_xlati43;
          let x_1279 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1272 + 2i) / 4i)][((x_1275 + 2i) % 4i)];
          let x_1280 : vec3<f32> = vs_TEXCOORD1;
          let x_1283 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1279 * vec4<f32>(x_1280.z, x_1280.z, x_1280.z, x_1280.z)) + x_1283);
          let x_1285 : vec4<f32> = u_xlat10;
          let x_1286 : i32 = u_xlati43;
          let x_1289 : i32 = u_xlati43;
          let x_1293 : vec4<f32> = x_1055.x_AdditionalLightsWorldToLights[((x_1286 + 3i) / 4i)][((x_1289 + 3i) % 4i)];
          u_xlat10 = (x_1285 + x_1293);
          let x_1295 : vec4<f32> = u_xlat10;
          let x_1297 : vec4<f32> = u_xlat10;
          let x_1299 : vec3<f32> = (vec3<f32>(x_1295.x, x_1295.y, x_1295.z) / vec3<f32>(x_1297.w, x_1297.w, x_1297.w));
          let x_1300 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
          let x_1302 : vec4<f32> = u_xlat10;
          let x_1304 : vec4<f32> = u_xlat10;
          u_xlat30.x = dot(vec3<f32>(x_1302.x, x_1302.y, x_1302.z), vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
          let x_1309 : f32 = u_xlat30.x;
          u_xlat30.x = inverseSqrt(x_1309);
          let x_1312 : vec2<f32> = u_xlat30;
          let x_1314 : vec4<f32> = u_xlat10;
          let x_1316 : vec3<f32> = (vec3<f32>(x_1312.x, x_1312.x, x_1312.x) * vec3<f32>(x_1314.x, x_1314.y, x_1314.z));
          let x_1317 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1317.w);
          let x_1319 : vec4<f32> = u_xlat10;
          u_xlat30.x = dot(abs(vec3<f32>(x_1319.x, x_1319.y, x_1319.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1326 : f32 = u_xlat30.x;
          u_xlat30.x = max(x_1326, 0.000001f);
          let x_1331 : f32 = u_xlat30.x;
          u_xlat30.x = (1.0f / x_1331);
          let x_1335 : vec2<f32> = u_xlat30;
          let x_1337 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1335.x, x_1335.x, x_1335.x) * vec3<f32>(x_1337.z, x_1337.x, x_1337.y));
          let x_1341 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1341);
          let x_1345 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1345, 0.0f, 1.0f);
          let x_1349 : vec3<f32> = u_xlat11;
          let x_1352 : vec4<bool> = (vec4<f32>(x_1349.y, x_1349.z, x_1349.y, x_1349.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1352.x, x_1352.y);
          let x_1356 : bool = u_xlatb33.x;
          if (x_1356) {
            let x_1361 : f32 = u_xlat11.x;
            x_1357 = x_1361;
          } else {
            let x_1364 : f32 = u_xlat11.x;
            x_1357 = -(x_1364);
          }
          let x_1366 : f32 = x_1357;
          u_xlat33.x = x_1366;
          let x_1369 : bool = u_xlatb33.y;
          if (x_1369) {
            let x_1374 : f32 = u_xlat11.x;
            x_1370 = x_1374;
          } else {
            let x_1377 : f32 = u_xlat11.x;
            x_1370 = -(x_1377);
          }
          let x_1379 : f32 = x_1370;
          u_xlat33.y = x_1379;
          let x_1381 : vec4<f32> = u_xlat10;
          let x_1383 : vec2<f32> = u_xlat30;
          let x_1386 : vec2<f32> = u_xlat33;
          u_xlat30 = ((vec2<f32>(x_1381.x, x_1381.y) * vec2<f32>(x_1383.x, x_1383.x)) + x_1386);
          let x_1388 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1388 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1391 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1391, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1395 : u32 = u_xlatu40;
          let x_1398 : vec4<f32> = x_1055.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1395)];
          let x_1400 : vec2<f32> = u_xlat30;
          let x_1402 : u32 = u_xlatu40;
          let x_1405 : vec4<f32> = x_1055.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1402)];
          let x_1407 : vec2<f32> = ((vec2<f32>(x_1398.x, x_1398.y) * x_1400) + vec2<f32>(x_1405.z, x_1405.w));
          let x_1408 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1407.x, x_1407.y, x_1408.z, x_1408.w);
        }
      }
      let x_1415 : vec4<f32> = u_xlat9;
      let x_1418 : f32 = x_43.x_GlobalMipBias.x;
      let x_1419 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1415.x, x_1415.y), x_1418);
      u_xlat9 = x_1419;
      let x_1421 : bool = u_xlatb6.y;
      if (x_1421) {
        let x_1426 : f32 = u_xlat9.w;
        x_1422 = x_1426;
      } else {
        let x_1429 : f32 = u_xlat9.x;
        x_1422 = x_1429;
      }
      let x_1430 : f32 = x_1422;
      u_xlat30.x = x_1430;
      let x_1433 : bool = u_xlatb6.x;
      if (x_1433) {
        let x_1437 : vec4<f32> = u_xlat9;
        x_1434 = vec3<f32>(x_1437.x, x_1437.y, x_1437.z);
      } else {
        let x_1440 : vec2<f32> = u_xlat30;
        x_1434 = vec3<f32>(x_1440.x, x_1440.x, x_1440.x);
      }
      let x_1442 : vec3<f32> = x_1434;
      let x_1443 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1443.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1449 : vec4<f32> = u_xlat9;
    let x_1451 : u32 = u_xlatu40;
    let x_1454 : vec4<f32> = x_940.x_AdditionalLightsColor[bitcast<i32>(x_1451)];
    let x_1456 : vec3<f32> = (vec3<f32>(x_1449.x, x_1449.y, x_1449.z) * vec3<f32>(x_1454.x, x_1454.y, x_1454.z));
    let x_1457 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1456.x, x_1456.y, x_1456.z, x_1457.w);
    let x_1459 : vec4<f32> = u_xlat1;
    let x_1461 : vec4<f32> = u_xlat9;
    let x_1463 : vec3<f32> = (vec3<f32>(x_1459.x, x_1459.x, x_1459.x) * vec3<f32>(x_1461.x, x_1461.y, x_1461.z));
    let x_1464 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
    let x_1466 : f32 = u_xlat41;
    let x_1468 : vec4<f32> = u_xlat9;
    let x_1470 : vec3<f32> = (vec3<f32>(x_1466, x_1466, x_1466) * vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
    let x_1471 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
    let x_1473 : vec3<f32> = u_xlat2;
    let x_1474 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1473, x_1474);
    let x_1476 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1476, 0.0f, 1.0f);
    let x_1478 : f32 = u_xlat40;
    let x_1480 : vec4<f32> = u_xlat9;
    let x_1482 : vec3<f32> = (vec3<f32>(x_1478, x_1478, x_1478) * vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
    let x_1483 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1483.w);
    let x_1485 : vec3<f32> = u_xlat3;
    let x_1486 : vec3<f32> = u_xlat12;
    let x_1489 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1485 * vec3<f32>(x_1486.x, x_1486.x, x_1486.x)) + x_1489);
    let x_1491 : vec3<f32> = u_xlat8;
    let x_1492 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1491, x_1492);
    let x_1494 : f32 = u_xlat40;
    u_xlat40 = max(x_1494, 1.17549435e-37f);
    let x_1496 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1496);
    let x_1498 : f32 = u_xlat40;
    let x_1500 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1498, x_1498, x_1498) * x_1500);
    let x_1502 : vec3<f32> = u_xlat2;
    let x_1503 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1502, x_1503);
    let x_1505 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1505, 0.0f, 1.0f);
    let x_1507 : f32 = u_xlat40;
    u_xlat40 = log2(x_1507);
    let x_1509 : f32 = u_xlat36;
    let x_1510 : f32 = u_xlat40;
    u_xlat40 = (x_1509 * x_1510);
    let x_1512 : f32 = u_xlat40;
    u_xlat40 = exp2(x_1512);
    let x_1514 : f32 = u_xlat40;
    let x_1517 : vec4<f32> = x_56.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1514, x_1514, x_1514) * vec3<f32>(x_1517.x, x_1517.y, x_1517.z));
    let x_1520 : vec3<f32> = u_xlat8;
    let x_1521 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1520 * vec3<f32>(x_1521.x, x_1521.y, x_1521.z));
    let x_1524 : vec4<f32> = u_xlat10;
    let x_1526 : vec4<f32> = u_xlat1;
    let x_1529 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1524.x, x_1524.y, x_1524.z) * vec3<f32>(x_1526.y, x_1526.z, x_1526.w)) + x_1529);
    let x_1531 : vec3<f32> = u_xlat7;
    let x_1532 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1531 + x_1532);

    continuing {
      let x_1534 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1534 + bitcast<u32>(1i));
    }
  }
  let x_1536 : vec4<f32> = u_xlat5;
  let x_1538 : vec4<f32> = u_xlat1;
  let x_1541 : vec4<f32> = u_xlat4;
  let x_1543 : vec3<f32> = ((vec3<f32>(x_1536.x, x_1536.y, x_1536.z) * vec3<f32>(x_1538.y, x_1538.z, x_1538.w)) + vec3<f32>(x_1541.x, x_1541.y, x_1541.z));
  let x_1544 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1544.w);
  let x_1548 : vec3<f32> = u_xlat7;
  let x_1549 : vec4<f32> = u_xlat1;
  let x_1551 : vec3<f32> = (x_1548 + vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
  let x_1552 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
  let x_1555 : f32 = x_56.x_Surface;
  u_xlatb12 = (x_1555 == 1.0f);
  let x_1557 : bool = u_xlatb12;
  let x_1558 : bool = u_xlatb24;
  u_xlatb12 = (x_1557 | x_1558);
  let x_1560 : bool = u_xlatb12;
  if (x_1560) {
    let x_1565 : f32 = u_xlat0.x;
    x_1561 = x_1565;
  } else {
    x_1561 = 1.0f;
  }
  let x_1567 : f32 = x_1561;
  SV_Target0.w = x_1567;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

