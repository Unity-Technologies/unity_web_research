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
  x_DitheringTextureInvSize : f32,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_338 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1859 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2165 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2285 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat60 : f32;
  var u_xlatb40 : bool;
  var x_130 : f32;
  var u_xlatb20 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlatb22 : bool;
  var x_241 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu60 : u32;
  var u_xlati60 : i32;
  var u_xlatb62 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlatb63 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat63 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat64 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb6 : vec2<bool>;
  var x_1942 : f32;
  var x_1953 : vec3<f32>;
  var u_xlatu62 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu64 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu46 : u32;
  var u_xlati66 : i32;
  var u_xlati46 : i32;
  var u_xlati67 : i32;
  var u_xlatb46 : bool;
  var u_xlatb49 : vec2<bool>;
  var x_2585 : f32;
  var x_2598 : f32;
  var x_2650 : f32;
  var x_2662 : vec3<f32>;
  var x_2812 : f32;
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
  u_xlat20.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat40 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat60 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat60;
  let x_104 : f32 = u_xlat40;
  u_xlat40 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat40;
  u_xlat40 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat20.x;
  let x_112 : f32 = u_xlat40;
  u_xlat20.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat20.x;
  u_xlat20.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb40 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb40;
  if (x_129) {
    let x_134 : f32 = u_xlat20.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat20.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat20.x;
  u_xlatb20 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb20;
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
  let x_184 : vec3<f32> = u_xlat20;
  u_xlat20 = vec3<f32>(x_183.x, x_184.y, x_183.y);
  let x_186 : vec3<f32> = u_xlat20;
  let x_188 : vec3<f32> = u_xlat20;
  u_xlat1.x = dot(vec2<f32>(x_186.x, x_186.z), vec2<f32>(x_188.x, x_188.z));
  let x_193 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_193, 1.0f);
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_197) + 1.0f);
  let x_202 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_202);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_206, 1.00000002e-16f);
  let x_210 : vec4<f32> = hlslcc_FragCoord;
  let x_214 : f32 = x_43.x_DitheringTextureInvSize;
  let x_216 : vec2<f32> = (vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_214, x_214));
  let x_217 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_216.x, x_216.y, x_217.z);
  let x_224 : vec3<f32> = u_xlat2;
  let x_227 : f32 = x_43.x_GlobalMipBias.x;
  let x_228 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_224.x, x_224.y), x_227);
  u_xlat2.x = x_228.w;
  let x_238 : f32 = x_236.unity_LODFade.x;
  u_xlatb22 = (x_238 >= 0.0f);
  let x_240 : bool = u_xlatb22;
  if (x_240) {
    let x_245 : f32 = u_xlat2.x;
    x_241 = abs(x_245);
  } else {
    let x_249 : f32 = u_xlat2.x;
    x_241 = -(abs(x_249));
  }
  let x_252 : f32 = x_241;
  u_xlat2.x = x_252;
  let x_255 : f32 = u_xlat2.x;
  let x_258 : f32 = x_236.unity_LODFade.x;
  u_xlat2.x = (-(x_255) + x_258);
  let x_263 : f32 = u_xlat2.x;
  u_xlatb2 = (x_263 < 0.0f);
  let x_265 : bool = u_xlatb2;
  if (((select(0i, 1i, x_265) * -1i) != 0i)) {
    discard;
  }
  let x_272 : vec3<f32> = u_xlat20;
  let x_275 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_272.z, x_272.z, x_272.z) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec3<f32> = u_xlat20;
  let x_281 : vec4<f32> = vs_TEXCOORD3;
  let x_284 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_278.x, x_278.x, x_278.x) * vec3<f32>(x_281.x, x_281.y, x_281.z)) + x_284);
  let x_286 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = vs_TEXCOORD2;
  let x_292 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z)) + x_292);
  let x_294 : vec3<f32> = u_xlat2;
  let x_295 : vec3<f32> = u_xlat2;
  u_xlat20.x = dot(x_294, x_295);
  let x_299 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_299);
  let x_302 : vec3<f32> = u_xlat20;
  let x_304 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_302.x, x_302.x, x_302.x) * x_304);
  let x_308 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_308;
  let x_311 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_311;
  let x_315 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_315;
  let x_317 : vec3<f32> = u_xlat3;
  let x_318 : vec3<f32> = u_xlat3;
  u_xlat20.x = dot(x_317, x_318);
  let x_322 : f32 = u_xlat20.x;
  u_xlat20.x = max(x_322, 1.17549435e-37f);
  let x_327 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_327);
  let x_333 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres0;
  let x_343 : vec3<f32> = (x_333 + -(vec3<f32>(x_340.x, x_340.y, x_340.z)));
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_347 : vec3<f32> = vs_TEXCOORD1;
  let x_349 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres1;
  let x_352 : vec3<f32> = (x_347 + -(vec3<f32>(x_349.x, x_349.y, x_349.z)));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : vec3<f32> = vs_TEXCOORD1;
  let x_359 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres2;
  let x_362 : vec3<f32> = (x_356 + -(vec3<f32>(x_359.x, x_359.y, x_359.z)));
  let x_363 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : vec3<f32> = vs_TEXCOORD1;
  let x_368 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres3;
  let x_371 : vec3<f32> = (x_366 + -(vec3<f32>(x_368.x, x_368.y, x_368.z)));
  let x_372 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat4;
  let x_376 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_380 : vec4<f32> = u_xlat5;
  let x_382 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_380.x, x_380.y, x_380.z), vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_386 : vec4<f32> = u_xlat6;
  let x_388 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_392 : vec4<f32> = u_xlat7;
  let x_394 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_392.x, x_392.y, x_392.z), vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_401 : vec4<f32> = u_xlat4;
  let x_404 : vec4<f32> = x_338.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_401 < x_404);
  let x_407 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_407);
  let x_411 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_411);
  let x_415 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_415);
  let x_419 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_419);
  let x_423 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_423);
  let x_428 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_428);
  let x_432 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_432);
  let x_435 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat5;
  let x_439 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) + vec3<f32>(x_437.y, x_437.z, x_437.w));
  let x_440 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat4;
  let x_445 : vec3<f32> = max(vec3<f32>(x_442.x, x_442.y, x_442.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_446 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_446.x, x_445.x, x_445.y, x_445.z);
  let x_448 : vec4<f32> = u_xlat5;
  u_xlat60 = dot(x_448, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_453 : f32 = u_xlat60;
  u_xlat60 = (-(x_453) + 4.0f);
  let x_458 : f32 = u_xlat60;
  u_xlatu60 = u32(x_458);
  let x_462 : u32 = u_xlatu60;
  u_xlati60 = (bitcast<i32>(x_462) << bitcast<u32>(2i));
  let x_465 : vec3<f32> = vs_TEXCOORD1;
  let x_467 : i32 = u_xlati60;
  let x_470 : i32 = u_xlati60;
  let x_474 : vec4<f32> = x_338.x_MainLightWorldToShadow[((x_467 + 1i) / 4i)][((x_470 + 1i) % 4i)];
  let x_476 : vec3<f32> = (vec3<f32>(x_465.y, x_465.y, x_465.y) * vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : i32 = u_xlati60;
  let x_481 : i32 = u_xlati60;
  let x_484 : vec4<f32> = x_338.x_MainLightWorldToShadow[(x_479 / 4i)][(x_481 % 4i)];
  let x_486 : vec3<f32> = vs_TEXCOORD1;
  let x_489 : vec4<f32> = u_xlat4;
  let x_491 : vec3<f32> = ((vec3<f32>(x_484.x, x_484.y, x_484.z) * vec3<f32>(x_486.x, x_486.x, x_486.x)) + vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : i32 = u_xlati60;
  let x_497 : i32 = u_xlati60;
  let x_501 : vec4<f32> = x_338.x_MainLightWorldToShadow[((x_494 + 2i) / 4i)][((x_497 + 2i) % 4i)];
  let x_503 : vec3<f32> = vs_TEXCOORD1;
  let x_506 : vec4<f32> = u_xlat4;
  let x_508 : vec3<f32> = ((vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(x_503.z, x_503.z, x_503.z)) + vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat4;
  let x_513 : i32 = u_xlati60;
  let x_516 : i32 = u_xlati60;
  let x_520 : vec4<f32> = x_338.x_MainLightWorldToShadow[((x_513 + 3i) / 4i)][((x_516 + 3i) % 4i)];
  let x_522 : vec3<f32> = (vec3<f32>(x_511.x, x_511.y, x_511.z) + vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_531 : vec2<f32> = vs_TEXCOORD7;
  let x_533 : f32 = x_43.x_GlobalMipBias.x;
  let x_534 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_531, x_533);
  let x_535 : vec3<f32> = vec3<f32>(x_534.x, x_534.y, x_534.z);
  let x_536 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_540 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_541 : vec2<f32> = vec2<f32>(x_540.x, x_540.y);
  let x_545 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_541.x, x_541.y));
  let x_546 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
  let x_548 : vec4<f32> = u_xlat6;
  let x_550 : vec4<f32> = hlslcc_FragCoord;
  let x_552 : vec2<f32> = (vec2<f32>(x_548.x, x_548.y) * vec2<f32>(x_550.x, x_550.y));
  let x_553 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
  let x_556 : f32 = u_xlat6.y;
  let x_559 : f32 = x_43.x_ScaleBiasRt.x;
  let x_562 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat60 = ((x_556 * x_559) + x_562);
  let x_564 : f32 = u_xlat60;
  u_xlat6.z = (-(x_564) + 1.0f);
  let x_573 : vec4<f32> = u_xlat6;
  let x_576 : f32 = x_43.x_GlobalMipBias.x;
  let x_577 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_573.x, x_573.z), x_576);
  u_xlat60 = x_577.x;
  let x_579 : f32 = u_xlat60;
  u_xlat1.x = (x_579 + -1.0f);
  let x_583 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_585 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_583 * x_585) + 1.0f);
  let x_589 : f32 = u_xlat60;
  u_xlat60 = min(x_589, 1.0f);
  let x_593 : f32 = x_338.x_MainLightShadowParams.y;
  u_xlatb62 = (0.0f < x_593);
  let x_595 : bool = u_xlatb62;
  if (x_595) {
    let x_599 : f32 = x_338.x_MainLightShadowParams.y;
    u_xlatb62 = (x_599 == 1.0f);
    let x_601 : bool = u_xlatb62;
    if (x_601) {
      let x_604 : vec4<f32> = u_xlat4;
      let x_608 : vec4<f32> = x_338.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_604.x, x_604.y, x_604.x, x_604.y) + x_608);
      let x_611 : vec4<f32> = u_xlat6;
      let x_612 : vec2<f32> = vec2<f32>(x_611.x, x_611.y);
      let x_614 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_612.x, x_612.y, x_614);
      let x_626 : vec3<f32> = txVec0;
      let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_626.xy, x_626.z);
      u_xlat7.x = x_628;
      let x_631 : vec4<f32> = u_xlat6;
      let x_632 : vec2<f32> = vec2<f32>(x_631.z, x_631.w);
      let x_634 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_632.x, x_632.y, x_634);
      let x_641 : vec3<f32> = txVec1;
      let x_643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_641.xy, x_641.z);
      u_xlat7.y = x_643;
      let x_645 : vec4<f32> = u_xlat4;
      let x_649 : vec4<f32> = x_338.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_645.x, x_645.y, x_645.x, x_645.y) + x_649);
      let x_652 : vec4<f32> = u_xlat6;
      let x_653 : vec2<f32> = vec2<f32>(x_652.x, x_652.y);
      let x_655 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_653.x, x_653.y, x_655);
      let x_662 : vec3<f32> = txVec2;
      let x_664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_662.xy, x_662.z);
      u_xlat7.z = x_664;
      let x_667 : vec4<f32> = u_xlat6;
      let x_668 : vec2<f32> = vec2<f32>(x_667.z, x_667.w);
      let x_670 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_668.x, x_668.y, x_670);
      let x_677 : vec3<f32> = txVec3;
      let x_679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_677.xy, x_677.z);
      u_xlat7.w = x_679;
      let x_682 : vec4<f32> = u_xlat7;
      u_xlat62 = dot(x_682, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_689 : f32 = x_338.x_MainLightShadowParams.y;
      u_xlatb63 = (x_689 == 2.0f);
      let x_691 : bool = u_xlatb63;
      if (x_691) {
        let x_694 : vec4<f32> = u_xlat4;
        let x_697 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_701 : vec2<f32> = ((vec2<f32>(x_694.x, x_694.y) * vec2<f32>(x_697.z, x_697.w)) + vec2<f32>(0.5f, 0.5f));
        let x_702 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_701.x, x_701.y, x_702.z, x_702.w);
        let x_704 : vec4<f32> = u_xlat6;
        let x_706 : vec2<f32> = floor(vec2<f32>(x_704.x, x_704.y));
        let x_707 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_706.x, x_706.y, x_707.z, x_707.w);
        let x_711 : vec4<f32> = u_xlat4;
        let x_714 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_717 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_711.x, x_711.y) * vec2<f32>(x_714.z, x_714.w)) + -(vec2<f32>(x_717.x, x_717.y)));
        let x_721 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_721.x, x_721.x, x_721.y, x_721.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_726 : vec4<f32> = u_xlat7;
        let x_728 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_726.x, x_726.x, x_726.z, x_726.z) * vec4<f32>(x_728.x, x_728.x, x_728.z, x_728.z));
        let x_731 : vec4<f32> = u_xlat8;
        let x_735 : vec2<f32> = (vec2<f32>(x_731.y, x_731.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_736 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_735.x, x_736.y, x_735.y, x_736.w);
        let x_738 : vec4<f32> = u_xlat8;
        let x_741 : vec2<f32> = u_xlat46;
        let x_743 : vec2<f32> = ((vec2<f32>(x_738.x, x_738.z) * vec2<f32>(0.5f, 0.5f)) + -(x_741));
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
        let x_747 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_747) + vec2<f32>(1.0f, 1.0f));
        let x_751 : vec2<f32> = u_xlat46;
        let x_753 : vec2<f32> = min(x_751, vec2<f32>(0.0f, 0.0f));
        let x_754 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
        let x_756 : vec4<f32> = u_xlat9;
        let x_759 : vec4<f32> = u_xlat9;
        let x_762 : vec2<f32> = u_xlat48;
        let x_763 : vec2<f32> = ((-(vec2<f32>(x_756.x, x_756.y)) * vec2<f32>(x_759.x, x_759.y)) + x_762);
        let x_764 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_763.x, x_763.y, x_764.z, x_764.w);
        let x_766 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_766, vec2<f32>(0.0f, 0.0f));
        let x_768 : vec2<f32> = u_xlat46;
        let x_770 : vec2<f32> = u_xlat46;
        let x_772 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_768) * x_770) + vec2<f32>(x_772.y, x_772.w));
        let x_775 : vec4<f32> = u_xlat9;
        let x_777 : vec2<f32> = (vec2<f32>(x_775.x, x_775.y) + vec2<f32>(1.0f, 1.0f));
        let x_778 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_777.x, x_777.y, x_778.z, x_778.w);
        let x_780 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_780 + vec2<f32>(1.0f, 1.0f));
        let x_783 : vec4<f32> = u_xlat8;
        let x_787 : vec2<f32> = (vec2<f32>(x_783.x, x_783.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_788 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_787.x, x_787.y, x_788.z, x_788.w);
        let x_790 : vec2<f32> = u_xlat48;
        let x_791 : vec2<f32> = (x_790 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_792 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_791.x, x_791.y, x_792.z, x_792.w);
        let x_794 : vec4<f32> = u_xlat9;
        let x_796 : vec2<f32> = (vec2<f32>(x_794.x, x_794.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_797 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_796.x, x_796.y, x_797.z, x_797.w);
        let x_800 : vec2<f32> = u_xlat46;
        let x_801 : vec2<f32> = (x_800 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_802 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
        let x_804 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_804.y, x_804.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_808 : f32 = u_xlat9.x;
        u_xlat10.z = x_808;
        let x_811 : f32 = u_xlat46.x;
        u_xlat10.w = x_811;
        let x_814 : f32 = u_xlat11.x;
        u_xlat8.z = x_814;
        let x_817 : f32 = u_xlat7.x;
        u_xlat8.w = x_817;
        let x_820 : vec4<f32> = u_xlat8;
        let x_822 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_820.z, x_820.w, x_820.x, x_820.z) + vec4<f32>(x_822.z, x_822.w, x_822.x, x_822.z));
        let x_826 : f32 = u_xlat10.y;
        u_xlat9.z = x_826;
        let x_829 : f32 = u_xlat46.y;
        u_xlat9.w = x_829;
        let x_832 : f32 = u_xlat8.y;
        u_xlat11.z = x_832;
        let x_835 : f32 = u_xlat7.z;
        u_xlat11.w = x_835;
        let x_837 : vec4<f32> = u_xlat9;
        let x_839 : vec4<f32> = u_xlat11;
        let x_841 : vec3<f32> = (vec3<f32>(x_837.z, x_837.y, x_837.w) + vec3<f32>(x_839.z, x_839.y, x_839.w));
        let x_842 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat8;
        let x_846 : vec4<f32> = u_xlat12;
        let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.z, x_844.w) / vec3<f32>(x_846.z, x_846.w, x_846.y));
        let x_849 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
        let x_851 : vec4<f32> = u_xlat8;
        let x_857 : vec3<f32> = (vec3<f32>(x_851.x, x_851.y, x_851.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_858 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
        let x_860 : vec4<f32> = u_xlat11;
        let x_862 : vec4<f32> = u_xlat7;
        let x_864 : vec3<f32> = (vec3<f32>(x_860.z, x_860.y, x_860.w) / vec3<f32>(x_862.x, x_862.y, x_862.z));
        let x_865 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
        let x_867 : vec4<f32> = u_xlat9;
        let x_869 : vec3<f32> = (vec3<f32>(x_867.x, x_867.y, x_867.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_870 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
        let x_872 : vec4<f32> = u_xlat8;
        let x_875 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_877 : vec3<f32> = (vec3<f32>(x_872.y, x_872.x, x_872.z) * vec3<f32>(x_875.x, x_875.x, x_875.x));
        let x_878 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
        let x_880 : vec4<f32> = u_xlat9;
        let x_883 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_885 : vec3<f32> = (vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(x_883.y, x_883.y, x_883.y));
        let x_886 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
        let x_889 : f32 = u_xlat9.x;
        u_xlat8.w = x_889;
        let x_891 : vec4<f32> = u_xlat6;
        let x_894 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_897 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_891.x, x_891.y, x_891.x, x_891.y) * vec4<f32>(x_894.x, x_894.y, x_894.x, x_894.y)) + vec4<f32>(x_897.y, x_897.w, x_897.x, x_897.w));
        let x_900 : vec4<f32> = u_xlat6;
        let x_903 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_906 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_900.x, x_900.y) * vec2<f32>(x_903.x, x_903.y)) + vec2<f32>(x_906.z, x_906.w));
        let x_910 : f32 = u_xlat8.y;
        u_xlat9.w = x_910;
        let x_912 : vec4<f32> = u_xlat9;
        let x_913 : vec2<f32> = vec2<f32>(x_912.y, x_912.z);
        let x_914 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_914.x, x_913.x, x_914.z, x_913.y);
        let x_916 : vec4<f32> = u_xlat6;
        let x_919 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_922 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_916.x, x_916.y, x_916.x, x_916.y) * vec4<f32>(x_919.x, x_919.y, x_919.x, x_919.y)) + vec4<f32>(x_922.x, x_922.y, x_922.z, x_922.y));
        let x_925 : vec4<f32> = u_xlat6;
        let x_928 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_931 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_925.x, x_925.y, x_925.x, x_925.y) * vec4<f32>(x_928.x, x_928.y, x_928.x, x_928.y)) + vec4<f32>(x_931.w, x_931.y, x_931.w, x_931.z));
        let x_934 : vec4<f32> = u_xlat6;
        let x_937 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_940 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_934.x, x_934.y, x_934.x, x_934.y) * vec4<f32>(x_937.x, x_937.y, x_937.x, x_937.y)) + vec4<f32>(x_940.x, x_940.w, x_940.z, x_940.w));
        let x_944 : vec4<f32> = u_xlat7;
        let x_946 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_944.x, x_944.x, x_944.x, x_944.y) * vec4<f32>(x_946.z, x_946.w, x_946.y, x_946.z));
        let x_950 : vec4<f32> = u_xlat7;
        let x_952 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_950.y, x_950.y, x_950.z, x_950.z) * x_952);
        let x_956 : f32 = u_xlat7.z;
        let x_958 : f32 = u_xlat12.y;
        u_xlat63 = (x_956 * x_958);
        let x_961 : vec4<f32> = u_xlat10;
        let x_962 : vec2<f32> = vec2<f32>(x_961.x, x_961.y);
        let x_964 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_962.x, x_962.y, x_964);
        let x_972 : vec3<f32> = txVec4;
        let x_974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_972.xy, x_972.z);
        u_xlat64 = x_974;
        let x_976 : vec4<f32> = u_xlat10;
        let x_977 : vec2<f32> = vec2<f32>(x_976.z, x_976.w);
        let x_979 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_977.x, x_977.y, x_979);
        let x_987 : vec3<f32> = txVec5;
        let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_987.xy, x_987.z);
        u_xlat65 = x_989;
        let x_990 : f32 = u_xlat65;
        let x_992 : f32 = u_xlat13.y;
        u_xlat65 = (x_990 * x_992);
        let x_995 : f32 = u_xlat13.x;
        let x_996 : f32 = u_xlat64;
        let x_998 : f32 = u_xlat65;
        u_xlat64 = ((x_995 * x_996) + x_998);
        let x_1001 : vec2<f32> = u_xlat46;
        let x_1003 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1001.x, x_1001.y, x_1003);
        let x_1010 : vec3<f32> = txVec6;
        let x_1012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1010.xy, x_1010.z);
        u_xlat65 = x_1012;
        let x_1014 : f32 = u_xlat13.z;
        let x_1015 : f32 = u_xlat65;
        let x_1017 : f32 = u_xlat64;
        u_xlat64 = ((x_1014 * x_1015) + x_1017);
        let x_1020 : vec4<f32> = u_xlat9;
        let x_1021 : vec2<f32> = vec2<f32>(x_1020.x, x_1020.y);
        let x_1023 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1021.x, x_1021.y, x_1023);
        let x_1030 : vec3<f32> = txVec7;
        let x_1032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1030.xy, x_1030.z);
        u_xlat65 = x_1032;
        let x_1034 : f32 = u_xlat13.w;
        let x_1035 : f32 = u_xlat65;
        let x_1037 : f32 = u_xlat64;
        u_xlat64 = ((x_1034 * x_1035) + x_1037);
        let x_1040 : vec4<f32> = u_xlat11;
        let x_1041 : vec2<f32> = vec2<f32>(x_1040.x, x_1040.y);
        let x_1043 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1041.x, x_1041.y, x_1043);
        let x_1050 : vec3<f32> = txVec8;
        let x_1052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1050.xy, x_1050.z);
        u_xlat65 = x_1052;
        let x_1054 : f32 = u_xlat14.x;
        let x_1055 : f32 = u_xlat65;
        let x_1057 : f32 = u_xlat64;
        u_xlat64 = ((x_1054 * x_1055) + x_1057);
        let x_1060 : vec4<f32> = u_xlat11;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.z, x_1060.w);
        let x_1063 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1061.x, x_1061.y, x_1063);
        let x_1070 : vec3<f32> = txVec9;
        let x_1072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1070.xy, x_1070.z);
        u_xlat65 = x_1072;
        let x_1074 : f32 = u_xlat14.y;
        let x_1075 : f32 = u_xlat65;
        let x_1077 : f32 = u_xlat64;
        u_xlat64 = ((x_1074 * x_1075) + x_1077);
        let x_1080 : vec4<f32> = u_xlat9;
        let x_1081 : vec2<f32> = vec2<f32>(x_1080.z, x_1080.w);
        let x_1083 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1081.x, x_1081.y, x_1083);
        let x_1090 : vec3<f32> = txVec10;
        let x_1092 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1090.xy, x_1090.z);
        u_xlat65 = x_1092;
        let x_1094 : f32 = u_xlat14.z;
        let x_1095 : f32 = u_xlat65;
        let x_1097 : f32 = u_xlat64;
        u_xlat64 = ((x_1094 * x_1095) + x_1097);
        let x_1100 : vec4<f32> = u_xlat8;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.x, x_1100.y);
        let x_1103 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1110 : vec3<f32> = txVec11;
        let x_1112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1110.xy, x_1110.z);
        u_xlat65 = x_1112;
        let x_1114 : f32 = u_xlat14.w;
        let x_1115 : f32 = u_xlat65;
        let x_1117 : f32 = u_xlat64;
        u_xlat64 = ((x_1114 * x_1115) + x_1117);
        let x_1120 : vec4<f32> = u_xlat8;
        let x_1121 : vec2<f32> = vec2<f32>(x_1120.z, x_1120.w);
        let x_1123 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1121.x, x_1121.y, x_1123);
        let x_1130 : vec3<f32> = txVec12;
        let x_1132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1130.xy, x_1130.z);
        u_xlat65 = x_1132;
        let x_1133 : f32 = u_xlat63;
        let x_1134 : f32 = u_xlat65;
        let x_1136 : f32 = u_xlat64;
        u_xlat62 = ((x_1133 * x_1134) + x_1136);
      } else {
        let x_1139 : vec4<f32> = u_xlat4;
        let x_1142 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1145 : vec2<f32> = ((vec2<f32>(x_1139.x, x_1139.y) * vec2<f32>(x_1142.z, x_1142.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1146 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
        let x_1148 : vec4<f32> = u_xlat6;
        let x_1150 : vec2<f32> = floor(vec2<f32>(x_1148.x, x_1148.y));
        let x_1151 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1150.x, x_1150.y, x_1151.z, x_1151.w);
        let x_1153 : vec4<f32> = u_xlat4;
        let x_1156 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1159 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(x_1156.z, x_1156.w)) + -(vec2<f32>(x_1159.x, x_1159.y)));
        let x_1163 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1163.x, x_1163.x, x_1163.y, x_1163.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1166 : vec4<f32> = u_xlat7;
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1166.x, x_1166.x, x_1166.z, x_1166.z) * vec4<f32>(x_1168.x, x_1168.x, x_1168.z, x_1168.z));
        let x_1171 : vec4<f32> = u_xlat8;
        let x_1175 : vec2<f32> = (vec2<f32>(x_1171.y, x_1171.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1176 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1176.x, x_1175.x, x_1176.z, x_1175.y);
        let x_1178 : vec4<f32> = u_xlat8;
        let x_1181 : vec2<f32> = u_xlat46;
        let x_1183 : vec2<f32> = ((vec2<f32>(x_1178.x, x_1178.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1181));
        let x_1184 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1183.x, x_1184.y, x_1183.y, x_1184.w);
        let x_1186 : vec2<f32> = u_xlat46;
        let x_1188 : vec2<f32> = (-(x_1186) + vec2<f32>(1.0f, 1.0f));
        let x_1189 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        let x_1191 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1191, vec2<f32>(0.0f, 0.0f));
        let x_1193 : vec2<f32> = u_xlat48;
        let x_1195 : vec2<f32> = u_xlat48;
        let x_1197 : vec4<f32> = u_xlat8;
        let x_1199 : vec2<f32> = ((-(x_1193) * x_1195) + vec2<f32>(x_1197.x, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1199.x, x_1199.y, x_1200.z, x_1200.w);
        let x_1202 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1202, vec2<f32>(0.0f, 0.0f));
        let x_1205 : vec2<f32> = u_xlat48;
        let x_1207 : vec2<f32> = u_xlat48;
        let x_1209 : vec4<f32> = u_xlat7;
        let x_1211 : vec2<f32> = ((-(x_1205) * x_1207) + vec2<f32>(x_1209.y, x_1209.w));
        let x_1212 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1211.x, x_1212.y, x_1211.y);
        let x_1214 : vec4<f32> = u_xlat8;
        let x_1216 : vec2<f32> = (vec2<f32>(x_1214.x, x_1214.y) + vec2<f32>(2.0f, 2.0f));
        let x_1217 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1216.x, x_1216.y, x_1217.z, x_1217.w);
        let x_1219 : vec3<f32> = u_xlat27;
        let x_1221 : vec2<f32> = (vec2<f32>(x_1219.x, x_1219.z) + vec2<f32>(2.0f, 2.0f));
        let x_1222 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1222.x, x_1221.x, x_1222.z, x_1221.y);
        let x_1225 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1225 * 0.081632003f);
        let x_1229 : vec4<f32> = u_xlat7;
        let x_1232 : vec3<f32> = (vec3<f32>(x_1229.z, x_1229.x, x_1229.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1233 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1238 : vec2<f32> = (vec2<f32>(x_1235.x, x_1235.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1239 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1238.x, x_1238.y, x_1239.z, x_1239.w);
        let x_1242 : f32 = u_xlat11.y;
        u_xlat10.x = x_1242;
        let x_1244 : vec2<f32> = u_xlat46;
        let x_1251 : vec2<f32> = ((vec2<f32>(x_1244.x, x_1244.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1252 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1252.x, x_1251.x, x_1252.z, x_1251.y);
        let x_1254 : vec2<f32> = u_xlat46;
        let x_1258 : vec2<f32> = ((vec2<f32>(x_1254.x, x_1254.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1259 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1258.x, x_1259.y, x_1258.y, x_1259.w);
        let x_1262 : f32 = u_xlat7.x;
        u_xlat8.y = x_1262;
        let x_1265 : f32 = u_xlat9.y;
        u_xlat8.w = x_1265;
        let x_1267 : vec4<f32> = u_xlat8;
        let x_1268 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1267 + x_1268);
        let x_1270 : vec2<f32> = u_xlat46;
        let x_1273 : vec2<f32> = ((vec2<f32>(x_1270.y, x_1270.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1274 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1274.x, x_1273.x, x_1274.z, x_1273.y);
        let x_1276 : vec2<f32> = u_xlat46;
        let x_1279 : vec2<f32> = ((vec2<f32>(x_1276.y, x_1276.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1280 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1279.x, x_1280.y, x_1279.y, x_1280.w);
        let x_1283 : f32 = u_xlat7.y;
        u_xlat9.y = x_1283;
        let x_1285 : vec4<f32> = u_xlat9;
        let x_1286 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1285 + x_1286);
        let x_1288 : vec4<f32> = u_xlat8;
        let x_1289 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1288 / x_1289);
        let x_1291 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1291 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1297 : vec4<f32> = u_xlat9;
        let x_1298 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1297 / x_1298);
        let x_1300 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1300 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1302 : vec4<f32> = u_xlat8;
        let x_1305 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1302.w, x_1302.x, x_1302.y, x_1302.z) * vec4<f32>(x_1305.x, x_1305.x, x_1305.x, x_1305.x));
        let x_1308 : vec4<f32> = u_xlat9;
        let x_1311 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1308.x, x_1308.w, x_1308.y, x_1308.z) * vec4<f32>(x_1311.y, x_1311.y, x_1311.y, x_1311.y));
        let x_1314 : vec4<f32> = u_xlat8;
        let x_1315 : vec3<f32> = vec3<f32>(x_1314.y, x_1314.z, x_1314.w);
        let x_1316 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1315.x, x_1316.y, x_1315.y, x_1315.z);
        let x_1319 : f32 = u_xlat9.x;
        u_xlat11.y = x_1319;
        let x_1321 : vec4<f32> = u_xlat6;
        let x_1324 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.y) * vec4<f32>(x_1324.x, x_1324.y, x_1324.x, x_1324.y)) + vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1327.y));
        let x_1330 : vec4<f32> = u_xlat6;
        let x_1333 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1336 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1330.x, x_1330.y) * vec2<f32>(x_1333.x, x_1333.y)) + vec2<f32>(x_1336.w, x_1336.y));
        let x_1340 : f32 = u_xlat11.y;
        u_xlat8.y = x_1340;
        let x_1343 : f32 = u_xlat9.z;
        u_xlat11.y = x_1343;
        let x_1345 : vec4<f32> = u_xlat6;
        let x_1348 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1351 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y) * vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.y)) + vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1351.y));
        let x_1354 : vec4<f32> = u_xlat6;
        let x_1357 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1360 : vec4<f32> = u_xlat11;
        let x_1362 : vec2<f32> = ((vec2<f32>(x_1354.x, x_1354.y) * vec2<f32>(x_1357.x, x_1357.y)) + vec2<f32>(x_1360.w, x_1360.y));
        let x_1363 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1362.x, x_1362.y, x_1363.z, x_1363.w);
        let x_1366 : f32 = u_xlat11.y;
        u_xlat8.z = x_1366;
        let x_1369 : vec4<f32> = u_xlat6;
        let x_1372 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1369.x, x_1369.y, x_1369.x, x_1369.y) * vec4<f32>(x_1372.x, x_1372.y, x_1372.x, x_1372.y)) + vec4<f32>(x_1375.x, x_1375.y, x_1375.x, x_1375.z));
        let x_1379 : f32 = u_xlat9.w;
        u_xlat11.y = x_1379;
        let x_1382 : vec4<f32> = u_xlat6;
        let x_1385 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.y) * vec4<f32>(x_1385.x, x_1385.y, x_1385.x, x_1385.y)) + vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1388.y));
        let x_1392 : vec4<f32> = u_xlat6;
        let x_1395 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1398 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1392.x, x_1392.y) * vec2<f32>(x_1395.x, x_1395.y)) + vec2<f32>(x_1398.w, x_1398.y));
        let x_1402 : f32 = u_xlat11.y;
        u_xlat8.w = x_1402;
        let x_1405 : vec4<f32> = u_xlat6;
        let x_1408 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1411 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1405.x, x_1405.y) * vec2<f32>(x_1408.x, x_1408.y)) + vec2<f32>(x_1411.x, x_1411.w));
        let x_1414 : vec4<f32> = u_xlat11;
        let x_1415 : vec3<f32> = vec3<f32>(x_1414.x, x_1414.z, x_1414.w);
        let x_1416 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1415.x, x_1416.y, x_1415.y, x_1415.z);
        let x_1418 : vec4<f32> = u_xlat6;
        let x_1421 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1424 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1418.x, x_1418.y, x_1418.x, x_1418.y) * vec4<f32>(x_1421.x, x_1421.y, x_1421.x, x_1421.y)) + vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1424.y));
        let x_1428 : vec4<f32> = u_xlat6;
        let x_1431 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1434 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1428.x, x_1428.y) * vec2<f32>(x_1431.x, x_1431.y)) + vec2<f32>(x_1434.w, x_1434.y));
        let x_1438 : f32 = u_xlat8.x;
        u_xlat9.x = x_1438;
        let x_1440 : vec4<f32> = u_xlat6;
        let x_1443 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1446 : vec4<f32> = u_xlat9;
        let x_1448 : vec2<f32> = ((vec2<f32>(x_1440.x, x_1440.y) * vec2<f32>(x_1443.x, x_1443.y)) + vec2<f32>(x_1446.x, x_1446.y));
        let x_1449 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1448.x, x_1448.y, x_1449.z, x_1449.w);
        let x_1452 : vec4<f32> = u_xlat7;
        let x_1454 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1452.x, x_1452.x, x_1452.x, x_1452.x) * x_1454);
        let x_1457 : vec4<f32> = u_xlat7;
        let x_1459 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1457.y, x_1457.y, x_1457.y, x_1457.y) * x_1459);
        let x_1462 : vec4<f32> = u_xlat7;
        let x_1464 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1462.z, x_1462.z, x_1462.z, x_1462.z) * x_1464);
        let x_1466 : vec4<f32> = u_xlat7;
        let x_1468 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1466.w, x_1466.w, x_1466.w, x_1466.w) * x_1468);
        let x_1471 : vec4<f32> = u_xlat12;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.x, x_1471.y);
        let x_1474 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec13;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1481.xy, x_1481.z);
        u_xlat63 = x_1483;
        let x_1485 : vec4<f32> = u_xlat12;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.z, x_1485.w);
        let x_1488 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec14;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1495.xy, x_1495.z);
        u_xlat64 = x_1497;
        let x_1498 : f32 = u_xlat64;
        let x_1500 : f32 = u_xlat17.y;
        u_xlat64 = (x_1498 * x_1500);
        let x_1503 : f32 = u_xlat17.x;
        let x_1504 : f32 = u_xlat63;
        let x_1506 : f32 = u_xlat64;
        u_xlat63 = ((x_1503 * x_1504) + x_1506);
        let x_1509 : vec2<f32> = u_xlat46;
        let x_1511 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec15;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1518.xy, x_1518.z);
        u_xlat64 = x_1520;
        let x_1522 : f32 = u_xlat17.z;
        let x_1523 : f32 = u_xlat64;
        let x_1525 : f32 = u_xlat63;
        u_xlat63 = ((x_1522 * x_1523) + x_1525);
        let x_1528 : vec4<f32> = u_xlat15;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.x, x_1528.y);
        let x_1531 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec16;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1538.xy, x_1538.z);
        u_xlat64 = x_1540;
        let x_1542 : f32 = u_xlat17.w;
        let x_1543 : f32 = u_xlat64;
        let x_1545 : f32 = u_xlat63;
        u_xlat63 = ((x_1542 * x_1543) + x_1545);
        let x_1548 : vec4<f32> = u_xlat13;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.x, x_1548.y);
        let x_1551 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec17;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1558.xy, x_1558.z);
        u_xlat64 = x_1560;
        let x_1562 : f32 = u_xlat18.x;
        let x_1563 : f32 = u_xlat64;
        let x_1565 : f32 = u_xlat63;
        u_xlat63 = ((x_1562 * x_1563) + x_1565);
        let x_1568 : vec4<f32> = u_xlat13;
        let x_1569 : vec2<f32> = vec2<f32>(x_1568.z, x_1568.w);
        let x_1571 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec18;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1578.xy, x_1578.z);
        u_xlat64 = x_1580;
        let x_1582 : f32 = u_xlat18.y;
        let x_1583 : f32 = u_xlat64;
        let x_1585 : f32 = u_xlat63;
        u_xlat63 = ((x_1582 * x_1583) + x_1585);
        let x_1588 : vec4<f32> = u_xlat14;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.x, x_1588.y);
        let x_1591 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec19;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1598.xy, x_1598.z);
        u_xlat64 = x_1600;
        let x_1602 : f32 = u_xlat18.z;
        let x_1603 : f32 = u_xlat64;
        let x_1605 : f32 = u_xlat63;
        u_xlat63 = ((x_1602 * x_1603) + x_1605);
        let x_1608 : vec4<f32> = u_xlat15;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.z, x_1608.w);
        let x_1611 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec20;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1618.xy, x_1618.z);
        u_xlat64 = x_1620;
        let x_1622 : f32 = u_xlat18.w;
        let x_1623 : f32 = u_xlat64;
        let x_1625 : f32 = u_xlat63;
        u_xlat63 = ((x_1622 * x_1623) + x_1625);
        let x_1628 : vec4<f32> = u_xlat16;
        let x_1629 : vec2<f32> = vec2<f32>(x_1628.x, x_1628.y);
        let x_1631 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1629.x, x_1629.y, x_1631);
        let x_1638 : vec3<f32> = txVec21;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1638.xy, x_1638.z);
        u_xlat64 = x_1640;
        let x_1642 : f32 = u_xlat19.x;
        let x_1643 : f32 = u_xlat64;
        let x_1645 : f32 = u_xlat63;
        u_xlat63 = ((x_1642 * x_1643) + x_1645);
        let x_1648 : vec4<f32> = u_xlat16;
        let x_1649 : vec2<f32> = vec2<f32>(x_1648.z, x_1648.w);
        let x_1651 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1649.x, x_1649.y, x_1651);
        let x_1658 : vec3<f32> = txVec22;
        let x_1660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1658.xy, x_1658.z);
        u_xlat64 = x_1660;
        let x_1662 : f32 = u_xlat19.y;
        let x_1663 : f32 = u_xlat64;
        let x_1665 : f32 = u_xlat63;
        u_xlat63 = ((x_1662 * x_1663) + x_1665);
        let x_1668 : vec2<f32> = u_xlat28;
        let x_1670 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
        let x_1677 : vec3<f32> = txVec23;
        let x_1679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1677.xy, x_1677.z);
        u_xlat64 = x_1679;
        let x_1681 : f32 = u_xlat19.z;
        let x_1682 : f32 = u_xlat64;
        let x_1684 : f32 = u_xlat63;
        u_xlat63 = ((x_1681 * x_1682) + x_1684);
        let x_1687 : vec2<f32> = u_xlat54;
        let x_1689 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1687.x, x_1687.y, x_1689);
        let x_1696 : vec3<f32> = txVec24;
        let x_1698 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1696.xy, x_1696.z);
        u_xlat64 = x_1698;
        let x_1700 : f32 = u_xlat19.w;
        let x_1701 : f32 = u_xlat64;
        let x_1703 : f32 = u_xlat63;
        u_xlat63 = ((x_1700 * x_1701) + x_1703);
        let x_1706 : vec4<f32> = u_xlat11;
        let x_1707 : vec2<f32> = vec2<f32>(x_1706.x, x_1706.y);
        let x_1709 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec25;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1716.xy, x_1716.z);
        u_xlat64 = x_1718;
        let x_1720 : f32 = u_xlat7.x;
        let x_1721 : f32 = u_xlat64;
        let x_1723 : f32 = u_xlat63;
        u_xlat63 = ((x_1720 * x_1721) + x_1723);
        let x_1726 : vec4<f32> = u_xlat11;
        let x_1727 : vec2<f32> = vec2<f32>(x_1726.z, x_1726.w);
        let x_1729 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1727.x, x_1727.y, x_1729);
        let x_1736 : vec3<f32> = txVec26;
        let x_1738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1736.xy, x_1736.z);
        u_xlat64 = x_1738;
        let x_1740 : f32 = u_xlat7.y;
        let x_1741 : f32 = u_xlat64;
        let x_1743 : f32 = u_xlat63;
        u_xlat63 = ((x_1740 * x_1741) + x_1743);
        let x_1746 : vec2<f32> = u_xlat49;
        let x_1748 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1746.x, x_1746.y, x_1748);
        let x_1755 : vec3<f32> = txVec27;
        let x_1757 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1755.xy, x_1755.z);
        u_xlat64 = x_1757;
        let x_1759 : f32 = u_xlat7.z;
        let x_1760 : f32 = u_xlat64;
        let x_1762 : f32 = u_xlat63;
        u_xlat63 = ((x_1759 * x_1760) + x_1762);
        let x_1765 : vec4<f32> = u_xlat6;
        let x_1766 : vec2<f32> = vec2<f32>(x_1765.x, x_1765.y);
        let x_1768 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1775 : vec3<f32> = txVec28;
        let x_1777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1775.xy, x_1775.z);
        u_xlat64 = x_1777;
        let x_1779 : f32 = u_xlat7.w;
        let x_1780 : f32 = u_xlat64;
        let x_1782 : f32 = u_xlat63;
        u_xlat62 = ((x_1779 * x_1780) + x_1782);
      }
    }
  } else {
    let x_1786 : vec4<f32> = u_xlat4;
    let x_1787 : vec2<f32> = vec2<f32>(x_1786.x, x_1786.y);
    let x_1789 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1787.x, x_1787.y, x_1789);
    let x_1796 : vec3<f32> = txVec29;
    let x_1798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1796.xy, x_1796.z);
    u_xlat62 = x_1798;
  }
  let x_1800 : f32 = x_338.x_MainLightShadowParams.x;
  u_xlat63 = (-(x_1800) + 1.0f);
  let x_1803 : f32 = u_xlat62;
  let x_1805 : f32 = x_338.x_MainLightShadowParams.x;
  let x_1807 : f32 = u_xlat63;
  u_xlat62 = ((x_1803 * x_1805) + x_1807);
  let x_1810 : f32 = u_xlat4.z;
  u_xlatb63 = (0.0f >= x_1810);
  let x_1813 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_1813 >= 1.0f);
  let x_1816 : bool = u_xlatb63;
  let x_1818 : bool = u_xlatb4.x;
  u_xlatb63 = (x_1816 | x_1818);
  let x_1820 : bool = u_xlatb63;
  let x_1821 : f32 = u_xlat62;
  u_xlat62 = select(x_1821, 1.0f, x_1820);
  let x_1823 : vec3<f32> = vs_TEXCOORD1;
  let x_1826 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1828 : vec3<f32> = (x_1823 + -(x_1826));
  let x_1829 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1829.w);
  let x_1831 : vec4<f32> = u_xlat4;
  let x_1833 : vec4<f32> = u_xlat4;
  u_xlat63 = dot(vec3<f32>(x_1831.x, x_1831.y, x_1831.z), vec3<f32>(x_1833.x, x_1833.y, x_1833.z));
  let x_1836 : f32 = u_xlat63;
  let x_1838 : f32 = x_338.x_MainLightShadowParams.z;
  let x_1841 : f32 = x_338.x_MainLightShadowParams.w;
  u_xlat63 = ((x_1836 * x_1838) + x_1841);
  let x_1843 : f32 = u_xlat63;
  u_xlat63 = clamp(x_1843, 0.0f, 1.0f);
  let x_1845 : f32 = u_xlat62;
  u_xlat4.x = (-(x_1845) + 1.0f);
  let x_1849 : f32 = u_xlat63;
  let x_1851 : f32 = u_xlat4.x;
  let x_1853 : f32 = u_xlat62;
  u_xlat62 = ((x_1849 * x_1851) + x_1853);
  let x_1861 : f32 = x_1859.x_MainLightCookieTextureFormat;
  u_xlatb63 = !((x_1861 == -1.0f));
  let x_1863 : bool = u_xlatb63;
  if (x_1863) {
    let x_1866 : vec3<f32> = vs_TEXCOORD1;
    let x_1869 : vec4<f32> = x_1859.x_MainLightWorldToLight[1i];
    let x_1871 : vec2<f32> = (vec2<f32>(x_1866.y, x_1866.y) * vec2<f32>(x_1869.x, x_1869.y));
    let x_1872 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1871.x, x_1871.y, x_1872.z, x_1872.w);
    let x_1875 : vec4<f32> = x_1859.x_MainLightWorldToLight[0i];
    let x_1877 : vec3<f32> = vs_TEXCOORD1;
    let x_1880 : vec4<f32> = u_xlat4;
    let x_1882 : vec2<f32> = ((vec2<f32>(x_1875.x, x_1875.y) * vec2<f32>(x_1877.x, x_1877.x)) + vec2<f32>(x_1880.x, x_1880.y));
    let x_1883 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1882.x, x_1882.y, x_1883.z, x_1883.w);
    let x_1886 : vec4<f32> = x_1859.x_MainLightWorldToLight[2i];
    let x_1888 : vec3<f32> = vs_TEXCOORD1;
    let x_1891 : vec4<f32> = u_xlat4;
    let x_1893 : vec2<f32> = ((vec2<f32>(x_1886.x, x_1886.y) * vec2<f32>(x_1888.z, x_1888.z)) + vec2<f32>(x_1891.x, x_1891.y));
    let x_1894 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1893.x, x_1893.y, x_1894.z, x_1894.w);
    let x_1896 : vec4<f32> = u_xlat4;
    let x_1899 : vec4<f32> = x_1859.x_MainLightWorldToLight[3i];
    let x_1901 : vec2<f32> = (vec2<f32>(x_1896.x, x_1896.y) + vec2<f32>(x_1899.x, x_1899.y));
    let x_1902 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1901.x, x_1901.y, x_1902.z, x_1902.w);
    let x_1904 : vec4<f32> = u_xlat4;
    let x_1907 : vec2<f32> = ((vec2<f32>(x_1904.x, x_1904.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1908 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1907.x, x_1907.y, x_1908.z, x_1908.w);
    let x_1915 : vec4<f32> = u_xlat4;
    let x_1918 : f32 = x_43.x_GlobalMipBias.x;
    let x_1919 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1915.x, x_1915.y), x_1918);
    u_xlat4 = x_1919;
    let x_1924 : f32 = x_1859.x_MainLightCookieTextureFormat;
    let x_1926 : f32 = x_1859.x_MainLightCookieTextureFormat;
    let x_1928 : f32 = x_1859.x_MainLightCookieTextureFormat;
    let x_1930 : f32 = x_1859.x_MainLightCookieTextureFormat;
    let x_1931 : vec4<f32> = vec4<f32>(x_1924, x_1926, x_1928, x_1930);
    let x_1938 : vec4<bool> = (vec4<f32>(x_1931.x, x_1931.y, x_1931.z, x_1931.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1938.x, x_1938.y);
    let x_1941 : bool = u_xlatb6.y;
    if (x_1941) {
      let x_1946 : f32 = u_xlat4.w;
      x_1942 = x_1946;
    } else {
      let x_1949 : f32 = u_xlat4.x;
      x_1942 = x_1949;
    }
    let x_1950 : f32 = x_1942;
    u_xlat63 = x_1950;
    let x_1952 : bool = u_xlatb6.x;
    if (x_1952) {
      let x_1956 : vec4<f32> = u_xlat4;
      x_1953 = vec3<f32>(x_1956.x, x_1956.y, x_1956.z);
    } else {
      let x_1959 : f32 = u_xlat63;
      x_1953 = vec3<f32>(x_1959, x_1959, x_1959);
    }
    let x_1961 : vec3<f32> = x_1953;
    let x_1962 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1961.x, x_1961.y, x_1961.z, x_1962.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1968 : vec4<f32> = u_xlat4;
  let x_1971 : vec4<f32> = x_43.x_MainLightColor;
  let x_1973 : vec3<f32> = (vec3<f32>(x_1968.x, x_1968.y, x_1968.z) * vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1976 : vec4<f32> = u_xlat1;
  let x_1978 : vec4<f32> = u_xlat4;
  let x_1980 : vec3<f32> = (vec3<f32>(x_1976.x, x_1976.x, x_1976.x) * vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1981 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
  let x_1983 : f32 = u_xlat60;
  let x_1985 : vec4<f32> = u_xlat5;
  let x_1987 : vec3<f32> = (vec3<f32>(x_1983, x_1983, x_1983) * vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
  let x_1988 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
  let x_1990 : f32 = u_xlat62;
  let x_1992 : f32 = x_236.unity_LightData.z;
  u_xlat60 = (x_1990 * x_1992);
  let x_1994 : f32 = u_xlat60;
  let x_1996 : vec4<f32> = u_xlat4;
  let x_1998 : vec3<f32> = (vec3<f32>(x_1994, x_1994, x_1994) * vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
  let x_1999 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
  let x_2001 : vec3<f32> = u_xlat2;
  let x_2003 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat60 = dot(x_2001, vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
  let x_2006 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2006, 0.0f, 1.0f);
  let x_2008 : f32 = u_xlat60;
  let x_2010 : vec4<f32> = u_xlat4;
  let x_2012 : vec3<f32> = (vec3<f32>(x_2008, x_2008, x_2008) * vec3<f32>(x_2010.x, x_2010.y, x_2010.z));
  let x_2013 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2012.x, x_2012.y, x_2012.z, x_2013.w);
  let x_2016 : f32 = x_56.x_SpecColor.w;
  u_xlat60 = ((x_2016 * 10.0f) + 1.0f);
  let x_2020 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2020);
  let x_2022 : vec3<f32> = u_xlat3;
  let x_2023 : vec3<f32> = u_xlat20;
  let x_2027 : vec4<f32> = x_43.x_MainLightPosition;
  let x_2029 : vec3<f32> = ((x_2022 * vec3<f32>(x_2023.x, x_2023.x, x_2023.x)) + vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
  let x_2030 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
  let x_2032 : vec4<f32> = u_xlat7;
  let x_2034 : vec4<f32> = u_xlat7;
  u_xlat62 = dot(vec3<f32>(x_2032.x, x_2032.y, x_2032.z), vec3<f32>(x_2034.x, x_2034.y, x_2034.z));
  let x_2037 : f32 = u_xlat62;
  u_xlat62 = max(x_2037, 1.17549435e-37f);
  let x_2039 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_2039);
  let x_2041 : f32 = u_xlat62;
  let x_2043 : vec4<f32> = u_xlat7;
  let x_2045 : vec3<f32> = (vec3<f32>(x_2041, x_2041, x_2041) * vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
  let x_2046 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
  let x_2048 : vec3<f32> = u_xlat2;
  let x_2049 : vec4<f32> = u_xlat7;
  u_xlat62 = dot(x_2048, vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
  let x_2052 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2052, 0.0f, 1.0f);
  let x_2054 : f32 = u_xlat62;
  u_xlat62 = log2(x_2054);
  let x_2056 : f32 = u_xlat60;
  let x_2057 : f32 = u_xlat62;
  u_xlat62 = (x_2056 * x_2057);
  let x_2059 : f32 = u_xlat62;
  u_xlat62 = exp2(x_2059);
  let x_2061 : f32 = u_xlat62;
  let x_2064 : vec4<f32> = x_56.x_SpecColor;
  let x_2066 : vec3<f32> = (vec3<f32>(x_2061, x_2061, x_2061) * vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
  let x_2067 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
  let x_2069 : vec4<f32> = u_xlat4;
  let x_2071 : vec4<f32> = u_xlat7;
  let x_2073 : vec3<f32> = (vec3<f32>(x_2069.x, x_2069.y, x_2069.z) * vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
  let x_2074 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
  let x_2076 : vec4<f32> = u_xlat6;
  let x_2078 : vec4<f32> = u_xlat1;
  let x_2081 : vec4<f32> = u_xlat4;
  let x_2083 : vec3<f32> = ((vec3<f32>(x_2076.x, x_2076.y, x_2076.z) * vec3<f32>(x_2078.y, x_2078.z, x_2078.w)) + vec3<f32>(x_2081.x, x_2081.y, x_2081.z));
  let x_2084 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
  let x_2087 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_2089 : f32 = x_236.unity_LightData.y;
  u_xlat62 = min(x_2087, x_2089);
  let x_2092 : f32 = u_xlat62;
  u_xlatu62 = bitcast<u32>(i32(x_2092));
  let x_2096 : f32 = x_1859.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2098 : f32 = x_1859.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2100 : f32 = x_1859.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2102 : f32 = x_1859.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2103 : vec4<f32> = vec4<f32>(x_2096, x_2098, x_2100, x_2102);
  let x_2109 : vec4<bool> = (vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2103.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2109.x, x_2109.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2120 : u32 = u_xlatu_loop_1;
    let x_2121 : u32 = u_xlatu62;
    if ((x_2120 < x_2121)) {
    } else {
      break;
    }
    let x_2124 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2124 >> 2u);
    let x_2127 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2127 & 3u));
    let x_2130 : u32 = u_xlatu64;
    let x_2133 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_2130)];
    let x_2143 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2148 : vec4<u32> = indexable[x_2143];
    u_xlat64 = dot(x_2133, bitcast<vec4<f32>>(x_2148));
    let x_2151 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_2151));
    let x_2154 : vec3<f32> = vs_TEXCOORD1;
    let x_2166 : u32 = u_xlatu64;
    let x_2169 : vec4<f32> = x_2165.x_AdditionalLightsPosition[bitcast<i32>(x_2166)];
    let x_2172 : u32 = u_xlatu64;
    let x_2175 : vec4<f32> = x_2165.x_AdditionalLightsPosition[bitcast<i32>(x_2172)];
    let x_2177 : vec3<f32> = ((-(x_2154) * vec3<f32>(x_2169.w, x_2169.w, x_2169.w)) + vec3<f32>(x_2175.x, x_2175.y, x_2175.z));
    let x_2178 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2177.x, x_2177.y, x_2177.z, x_2178.w);
    let x_2180 : vec4<f32> = u_xlat8;
    let x_2182 : vec4<f32> = u_xlat8;
    u_xlat65 = dot(vec3<f32>(x_2180.x, x_2180.y, x_2180.z), vec3<f32>(x_2182.x, x_2182.y, x_2182.z));
    let x_2185 : f32 = u_xlat65;
    u_xlat65 = max(x_2185, 6.10351562e-05f);
    let x_2188 : f32 = u_xlat65;
    u_xlat46.x = inverseSqrt(x_2188);
    let x_2191 : vec2<f32> = u_xlat46;
    let x_2193 : vec4<f32> = u_xlat8;
    let x_2195 : vec3<f32> = (vec3<f32>(x_2191.x, x_2191.x, x_2191.x) * vec3<f32>(x_2193.x, x_2193.y, x_2193.z));
    let x_2196 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
    let x_2198 : f32 = u_xlat65;
    u_xlat46.x = (1.0f / x_2198);
    let x_2201 : f32 = u_xlat65;
    let x_2202 : u32 = u_xlatu64;
    let x_2205 : f32 = x_2165.x_AdditionalLightsAttenuation[bitcast<i32>(x_2202)].x;
    u_xlat65 = (x_2201 * x_2205);
    let x_2207 : f32 = u_xlat65;
    let x_2209 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2207) * x_2209) + 1.0f);
    let x_2212 : f32 = u_xlat65;
    u_xlat65 = max(x_2212, 0.0f);
    let x_2214 : f32 = u_xlat65;
    let x_2215 : f32 = u_xlat65;
    u_xlat65 = (x_2214 * x_2215);
    let x_2217 : f32 = u_xlat65;
    let x_2219 : f32 = u_xlat46.x;
    u_xlat65 = (x_2217 * x_2219);
    let x_2221 : u32 = u_xlatu64;
    let x_2224 : vec4<f32> = x_2165.x_AdditionalLightsSpotDir[bitcast<i32>(x_2221)];
    let x_2226 : vec4<f32> = u_xlat8;
    u_xlat46.x = dot(vec3<f32>(x_2224.x, x_2224.y, x_2224.z), vec3<f32>(x_2226.x, x_2226.y, x_2226.z));
    let x_2231 : f32 = u_xlat46.x;
    let x_2232 : u32 = u_xlatu64;
    let x_2235 : f32 = x_2165.x_AdditionalLightsAttenuation[bitcast<i32>(x_2232)].z;
    let x_2237 : u32 = u_xlatu64;
    let x_2240 : f32 = x_2165.x_AdditionalLightsAttenuation[bitcast<i32>(x_2237)].w;
    u_xlat46.x = ((x_2231 * x_2235) + x_2240);
    let x_2244 : f32 = u_xlat46.x;
    u_xlat46.x = clamp(x_2244, 0.0f, 1.0f);
    let x_2248 : f32 = u_xlat46.x;
    let x_2250 : f32 = u_xlat46.x;
    u_xlat46.x = (x_2248 * x_2250);
    let x_2253 : f32 = u_xlat65;
    let x_2255 : f32 = u_xlat46.x;
    u_xlat65 = (x_2253 * x_2255);
    let x_2258 : u32 = u_xlatu64;
    u_xlatu46 = (x_2258 >> 5u);
    let x_2261 : u32 = u_xlatu64;
    u_xlati66 = (1i << bitcast<u32>((bitcast<i32>(x_2261) & 31i)));
    let x_2267 : i32 = u_xlati66;
    let x_2269 : u32 = u_xlatu46;
    let x_2272 : f32 = x_1859.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2269)].el;
    u_xlati46 = bitcast<i32>((bitcast<u32>(x_2267) & bitcast<u32>(x_2272)));
    let x_2276 : i32 = u_xlati46;
    if ((x_2276 != 0i)) {
      let x_2286 : u32 = u_xlatu64;
      let x_2289 : f32 = x_2285.x_AdditionalLightsLightTypes[bitcast<i32>(x_2286)].el;
      u_xlati46 = i32(x_2289);
      let x_2291 : i32 = u_xlati46;
      u_xlati66 = select(1i, 0i, (x_2291 != 0i));
      let x_2295 : u32 = u_xlatu64;
      u_xlati67 = (bitcast<i32>(x_2295) << bitcast<u32>(2i));
      let x_2298 : i32 = u_xlati66;
      if ((x_2298 != 0i)) {
        let x_2302 : vec3<f32> = vs_TEXCOORD1;
        let x_2304 : i32 = u_xlati67;
        let x_2307 : i32 = u_xlati67;
        let x_2311 : vec4<f32> = x_2285.x_AdditionalLightsWorldToLights[((x_2304 + 1i) / 4i)][((x_2307 + 1i) % 4i)];
        let x_2313 : vec3<f32> = (vec3<f32>(x_2302.y, x_2302.y, x_2302.y) * vec3<f32>(x_2311.x, x_2311.y, x_2311.w));
        let x_2314 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
        let x_2316 : i32 = u_xlati67;
        let x_2318 : i32 = u_xlati67;
        let x_2321 : vec4<f32> = x_2285.x_AdditionalLightsWorldToLights[(x_2316 / 4i)][(x_2318 % 4i)];
        let x_2323 : vec3<f32> = vs_TEXCOORD1;
        let x_2326 : vec4<f32> = u_xlat9;
        let x_2328 : vec3<f32> = ((vec3<f32>(x_2321.x, x_2321.y, x_2321.w) * vec3<f32>(x_2323.x, x_2323.x, x_2323.x)) + vec3<f32>(x_2326.x, x_2326.y, x_2326.z));
        let x_2329 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2328.x, x_2328.y, x_2328.z, x_2329.w);
        let x_2331 : i32 = u_xlati67;
        let x_2334 : i32 = u_xlati67;
        let x_2338 : vec4<f32> = x_2285.x_AdditionalLightsWorldToLights[((x_2331 + 2i) / 4i)][((x_2334 + 2i) % 4i)];
        let x_2340 : vec3<f32> = vs_TEXCOORD1;
        let x_2343 : vec4<f32> = u_xlat9;
        let x_2345 : vec3<f32> = ((vec3<f32>(x_2338.x, x_2338.y, x_2338.w) * vec3<f32>(x_2340.z, x_2340.z, x_2340.z)) + vec3<f32>(x_2343.x, x_2343.y, x_2343.z));
        let x_2346 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
        let x_2348 : vec4<f32> = u_xlat9;
        let x_2350 : i32 = u_xlati67;
        let x_2353 : i32 = u_xlati67;
        let x_2357 : vec4<f32> = x_2285.x_AdditionalLightsWorldToLights[((x_2350 + 3i) / 4i)][((x_2353 + 3i) % 4i)];
        let x_2359 : vec3<f32> = (vec3<f32>(x_2348.x, x_2348.y, x_2348.z) + vec3<f32>(x_2357.x, x_2357.y, x_2357.w));
        let x_2360 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2359.x, x_2359.y, x_2359.z, x_2360.w);
        let x_2362 : vec4<f32> = u_xlat9;
        let x_2364 : vec4<f32> = u_xlat9;
        let x_2366 : vec2<f32> = (vec2<f32>(x_2362.x, x_2362.y) / vec2<f32>(x_2364.z, x_2364.z));
        let x_2367 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2366.x, x_2366.y, x_2367.z, x_2367.w);
        let x_2369 : vec4<f32> = u_xlat9;
        let x_2372 : vec2<f32> = ((vec2<f32>(x_2369.x, x_2369.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2373 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2372.x, x_2372.y, x_2373.z, x_2373.w);
        let x_2375 : vec4<f32> = u_xlat9;
        let x_2379 : vec2<f32> = clamp(vec2<f32>(x_2375.x, x_2375.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2380 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2379.x, x_2379.y, x_2380.z, x_2380.w);
        let x_2382 : u32 = u_xlatu64;
        let x_2385 : vec4<f32> = x_2285.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2382)];
        let x_2387 : vec4<f32> = u_xlat9;
        let x_2390 : u32 = u_xlatu64;
        let x_2393 : vec4<f32> = x_2285.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2390)];
        let x_2395 : vec2<f32> = ((vec2<f32>(x_2385.x, x_2385.y) * vec2<f32>(x_2387.x, x_2387.y)) + vec2<f32>(x_2393.z, x_2393.w));
        let x_2396 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2395.x, x_2395.y, x_2396.z, x_2396.w);
      } else {
        let x_2400 : i32 = u_xlati46;
        u_xlatb46 = (x_2400 == 1i);
        let x_2402 : bool = u_xlatb46;
        u_xlati46 = select(0i, 1i, x_2402);
        let x_2404 : i32 = u_xlati46;
        if ((x_2404 != 0i)) {
          let x_2408 : vec3<f32> = vs_TEXCOORD1;
          let x_2410 : i32 = u_xlati67;
          let x_2413 : i32 = u_xlati67;
          let x_2417 : vec4<f32> = x_2285.x_AdditionalLightsWorldToLights[((x_2410 + 1i) / 4i)][((x_2413 + 1i) % 4i)];
          u_xlat46 = (vec2<f32>(x_2408.y, x_2408.y) * vec2<f32>(x_2417.x, x_2417.y));
          let x_2420 : i32 = u_xlati67;
          let x_2422 : i32 = u_xlati67;
          let x_2425 : vec4<f32> = x_2285.x_AdditionalLightsWorldToLights[(x_2420 / 4i)][(x_2422 % 4i)];
          let x_2427 : vec3<f32> = vs_TEXCOORD1;
          let x_2430 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2425.x, x_2425.y) * vec2<f32>(x_2427.x, x_2427.x)) + x_2430);
          let x_2432 : i32 = u_xlati67;
          let x_2435 : i32 = u_xlati67;
          let x_2439 : vec4<f32> = x_2285.x_AdditionalLightsWorldToLights[((x_2432 + 2i) / 4i)][((x_2435 + 2i) % 4i)];
          let x_2441 : vec3<f32> = vs_TEXCOORD1;
          let x_2444 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2439.x, x_2439.y) * vec2<f32>(x_2441.z, x_2441.z)) + x_2444);
          let x_2446 : vec2<f32> = u_xlat46;
          let x_2447 : i32 = u_xlati67;
          let x_2450 : i32 = u_xlati67;
          let x_2454 : vec4<f32> = x_2285.x_AdditionalLightsWorldToLights[((x_2447 + 3i) / 4i)][((x_2450 + 3i) % 4i)];
          u_xlat46 = (x_2446 + vec2<f32>(x_2454.x, x_2454.y));
          let x_2457 : vec2<f32> = u_xlat46;
          u_xlat46 = ((x_2457 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2460 : vec2<f32> = u_xlat46;
          u_xlat46 = fract(x_2460);
          let x_2462 : u32 = u_xlatu64;
          let x_2465 : vec4<f32> = x_2285.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2462)];
          let x_2467 : vec2<f32> = u_xlat46;
          let x_2469 : u32 = u_xlatu64;
          let x_2472 : vec4<f32> = x_2285.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2469)];
          let x_2474 : vec2<f32> = ((vec2<f32>(x_2465.x, x_2465.y) * x_2467) + vec2<f32>(x_2472.z, x_2472.w));
          let x_2475 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2474.x, x_2474.y, x_2475.z, x_2475.w);
        } else {
          let x_2478 : vec3<f32> = vs_TEXCOORD1;
          let x_2480 : i32 = u_xlati67;
          let x_2483 : i32 = u_xlati67;
          let x_2487 : vec4<f32> = x_2285.x_AdditionalLightsWorldToLights[((x_2480 + 1i) / 4i)][((x_2483 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_2478.y, x_2478.y, x_2478.y, x_2478.y) * x_2487);
          let x_2489 : i32 = u_xlati67;
          let x_2491 : i32 = u_xlati67;
          let x_2494 : vec4<f32> = x_2285.x_AdditionalLightsWorldToLights[(x_2489 / 4i)][(x_2491 % 4i)];
          let x_2495 : vec3<f32> = vs_TEXCOORD1;
          let x_2498 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2494 * vec4<f32>(x_2495.x, x_2495.x, x_2495.x, x_2495.x)) + x_2498);
          let x_2500 : i32 = u_xlati67;
          let x_2503 : i32 = u_xlati67;
          let x_2507 : vec4<f32> = x_2285.x_AdditionalLightsWorldToLights[((x_2500 + 2i) / 4i)][((x_2503 + 2i) % 4i)];
          let x_2508 : vec3<f32> = vs_TEXCOORD1;
          let x_2511 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2507 * vec4<f32>(x_2508.z, x_2508.z, x_2508.z, x_2508.z)) + x_2511);
          let x_2513 : vec4<f32> = u_xlat10;
          let x_2514 : i32 = u_xlati67;
          let x_2517 : i32 = u_xlati67;
          let x_2521 : vec4<f32> = x_2285.x_AdditionalLightsWorldToLights[((x_2514 + 3i) / 4i)][((x_2517 + 3i) % 4i)];
          u_xlat10 = (x_2513 + x_2521);
          let x_2523 : vec4<f32> = u_xlat10;
          let x_2525 : vec4<f32> = u_xlat10;
          let x_2527 : vec3<f32> = (vec3<f32>(x_2523.x, x_2523.y, x_2523.z) / vec3<f32>(x_2525.w, x_2525.w, x_2525.w));
          let x_2528 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2527.x, x_2527.y, x_2527.z, x_2528.w);
          let x_2530 : vec4<f32> = u_xlat10;
          let x_2532 : vec4<f32> = u_xlat10;
          u_xlat46.x = dot(vec3<f32>(x_2530.x, x_2530.y, x_2530.z), vec3<f32>(x_2532.x, x_2532.y, x_2532.z));
          let x_2537 : f32 = u_xlat46.x;
          u_xlat46.x = inverseSqrt(x_2537);
          let x_2540 : vec2<f32> = u_xlat46;
          let x_2542 : vec4<f32> = u_xlat10;
          let x_2544 : vec3<f32> = (vec3<f32>(x_2540.x, x_2540.x, x_2540.x) * vec3<f32>(x_2542.x, x_2542.y, x_2542.z));
          let x_2545 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2544.x, x_2544.y, x_2544.z, x_2545.w);
          let x_2547 : vec4<f32> = u_xlat10;
          u_xlat46.x = dot(abs(vec3<f32>(x_2547.x, x_2547.y, x_2547.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2554 : f32 = u_xlat46.x;
          u_xlat46.x = max(x_2554, 0.000001f);
          let x_2559 : f32 = u_xlat46.x;
          u_xlat46.x = (1.0f / x_2559);
          let x_2562 : vec2<f32> = u_xlat46;
          let x_2564 : vec4<f32> = u_xlat10;
          let x_2566 : vec3<f32> = (vec3<f32>(x_2562.x, x_2562.x, x_2562.x) * vec3<f32>(x_2564.z, x_2564.x, x_2564.y));
          let x_2567 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2566.x, x_2566.y, x_2566.z, x_2567.w);
          let x_2570 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_2570);
          let x_2574 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_2574, 0.0f, 1.0f);
          let x_2578 : vec4<f32> = u_xlat11;
          let x_2581 : vec4<bool> = (vec4<f32>(x_2578.y, x_2578.z, x_2578.y, x_2578.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb49 = vec2<bool>(x_2581.x, x_2581.y);
          let x_2584 : bool = u_xlatb49.x;
          if (x_2584) {
            let x_2589 : f32 = u_xlat11.x;
            x_2585 = x_2589;
          } else {
            let x_2592 : f32 = u_xlat11.x;
            x_2585 = -(x_2592);
          }
          let x_2594 : f32 = x_2585;
          u_xlat49.x = x_2594;
          let x_2597 : bool = u_xlatb49.y;
          if (x_2597) {
            let x_2602 : f32 = u_xlat11.x;
            x_2598 = x_2602;
          } else {
            let x_2605 : f32 = u_xlat11.x;
            x_2598 = -(x_2605);
          }
          let x_2607 : f32 = x_2598;
          u_xlat49.y = x_2607;
          let x_2609 : vec4<f32> = u_xlat10;
          let x_2611 : vec2<f32> = u_xlat46;
          let x_2614 : vec2<f32> = u_xlat49;
          u_xlat46 = ((vec2<f32>(x_2609.x, x_2609.y) * vec2<f32>(x_2611.x, x_2611.x)) + x_2614);
          let x_2616 : vec2<f32> = u_xlat46;
          u_xlat46 = ((x_2616 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2619 : vec2<f32> = u_xlat46;
          u_xlat46 = clamp(x_2619, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2623 : u32 = u_xlatu64;
          let x_2626 : vec4<f32> = x_2285.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2623)];
          let x_2628 : vec2<f32> = u_xlat46;
          let x_2630 : u32 = u_xlatu64;
          let x_2633 : vec4<f32> = x_2285.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2630)];
          let x_2635 : vec2<f32> = ((vec2<f32>(x_2626.x, x_2626.y) * x_2628) + vec2<f32>(x_2633.z, x_2633.w));
          let x_2636 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
        }
      }
      let x_2643 : vec4<f32> = u_xlat9;
      let x_2646 : f32 = x_43.x_GlobalMipBias.x;
      let x_2647 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2643.x, x_2643.y), x_2646);
      u_xlat9 = x_2647;
      let x_2649 : bool = u_xlatb6.y;
      if (x_2649) {
        let x_2654 : f32 = u_xlat9.w;
        x_2650 = x_2654;
      } else {
        let x_2657 : f32 = u_xlat9.x;
        x_2650 = x_2657;
      }
      let x_2658 : f32 = x_2650;
      u_xlat46.x = x_2658;
      let x_2661 : bool = u_xlatb6.x;
      if (x_2661) {
        let x_2665 : vec4<f32> = u_xlat9;
        x_2662 = vec3<f32>(x_2665.x, x_2665.y, x_2665.z);
      } else {
        let x_2668 : vec2<f32> = u_xlat46;
        x_2662 = vec3<f32>(x_2668.x, x_2668.x, x_2668.x);
      }
      let x_2670 : vec3<f32> = x_2662;
      let x_2671 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2670.x, x_2670.y, x_2670.z, x_2671.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_2677 : vec4<f32> = u_xlat9;
    let x_2679 : u32 = u_xlatu64;
    let x_2682 : vec4<f32> = x_2165.x_AdditionalLightsColor[bitcast<i32>(x_2679)];
    let x_2684 : vec3<f32> = (vec3<f32>(x_2677.x, x_2677.y, x_2677.z) * vec3<f32>(x_2682.x, x_2682.y, x_2682.z));
    let x_2685 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2684.x, x_2684.y, x_2684.z, x_2685.w);
    let x_2687 : vec4<f32> = u_xlat1;
    let x_2689 : vec4<f32> = u_xlat9;
    let x_2691 : vec3<f32> = (vec3<f32>(x_2687.x, x_2687.x, x_2687.x) * vec3<f32>(x_2689.x, x_2689.y, x_2689.z));
    let x_2692 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2691.x, x_2691.y, x_2691.z, x_2692.w);
    let x_2694 : f32 = u_xlat65;
    let x_2696 : vec4<f32> = u_xlat9;
    let x_2698 : vec3<f32> = (vec3<f32>(x_2694, x_2694, x_2694) * vec3<f32>(x_2696.x, x_2696.y, x_2696.z));
    let x_2699 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2698.x, x_2698.y, x_2698.z, x_2699.w);
    let x_2701 : vec3<f32> = u_xlat2;
    let x_2702 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(x_2701, vec3<f32>(x_2702.x, x_2702.y, x_2702.z));
    let x_2705 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2705, 0.0f, 1.0f);
    let x_2707 : f32 = u_xlat64;
    let x_2709 : vec4<f32> = u_xlat9;
    let x_2711 : vec3<f32> = (vec3<f32>(x_2707, x_2707, x_2707) * vec3<f32>(x_2709.x, x_2709.y, x_2709.z));
    let x_2712 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2711.x, x_2711.y, x_2711.z, x_2712.w);
    let x_2714 : vec3<f32> = u_xlat3;
    let x_2715 : vec3<f32> = u_xlat20;
    let x_2718 : vec4<f32> = u_xlat8;
    let x_2720 : vec3<f32> = ((x_2714 * vec3<f32>(x_2715.x, x_2715.x, x_2715.x)) + vec3<f32>(x_2718.x, x_2718.y, x_2718.z));
    let x_2721 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2720.x, x_2720.y, x_2720.z, x_2721.w);
    let x_2723 : vec4<f32> = u_xlat8;
    let x_2725 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(vec3<f32>(x_2723.x, x_2723.y, x_2723.z), vec3<f32>(x_2725.x, x_2725.y, x_2725.z));
    let x_2728 : f32 = u_xlat64;
    u_xlat64 = max(x_2728, 1.17549435e-37f);
    let x_2730 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_2730);
    let x_2732 : f32 = u_xlat64;
    let x_2734 : vec4<f32> = u_xlat8;
    let x_2736 : vec3<f32> = (vec3<f32>(x_2732, x_2732, x_2732) * vec3<f32>(x_2734.x, x_2734.y, x_2734.z));
    let x_2737 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2736.x, x_2736.y, x_2736.z, x_2737.w);
    let x_2739 : vec3<f32> = u_xlat2;
    let x_2740 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(x_2739, vec3<f32>(x_2740.x, x_2740.y, x_2740.z));
    let x_2743 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2743, 0.0f, 1.0f);
    let x_2745 : f32 = u_xlat64;
    u_xlat64 = log2(x_2745);
    let x_2747 : f32 = u_xlat60;
    let x_2748 : f32 = u_xlat64;
    u_xlat64 = (x_2747 * x_2748);
    let x_2750 : f32 = u_xlat64;
    u_xlat64 = exp2(x_2750);
    let x_2752 : f32 = u_xlat64;
    let x_2755 : vec4<f32> = x_56.x_SpecColor;
    let x_2757 : vec3<f32> = (vec3<f32>(x_2752, x_2752, x_2752) * vec3<f32>(x_2755.x, x_2755.y, x_2755.z));
    let x_2758 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2757.x, x_2757.y, x_2757.z, x_2758.w);
    let x_2760 : vec4<f32> = u_xlat8;
    let x_2762 : vec4<f32> = u_xlat9;
    let x_2764 : vec3<f32> = (vec3<f32>(x_2760.x, x_2760.y, x_2760.z) * vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
    let x_2765 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2765.w);
    let x_2767 : vec4<f32> = u_xlat10;
    let x_2769 : vec4<f32> = u_xlat1;
    let x_2772 : vec4<f32> = u_xlat8;
    let x_2774 : vec3<f32> = ((vec3<f32>(x_2767.x, x_2767.y, x_2767.z) * vec3<f32>(x_2769.y, x_2769.z, x_2769.w)) + vec3<f32>(x_2772.x, x_2772.y, x_2772.z));
    let x_2775 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2774.x, x_2774.y, x_2774.z, x_2775.w);
    let x_2777 : vec4<f32> = u_xlat7;
    let x_2779 : vec4<f32> = u_xlat8;
    let x_2781 : vec3<f32> = (vec3<f32>(x_2777.x, x_2777.y, x_2777.z) + vec3<f32>(x_2779.x, x_2779.y, x_2779.z));
    let x_2782 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2781.x, x_2781.y, x_2781.z, x_2782.w);

    continuing {
      let x_2784 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2784 + bitcast<u32>(1i));
    }
  }
  let x_2786 : vec4<f32> = u_xlat5;
  let x_2788 : vec4<f32> = u_xlat1;
  let x_2791 : vec4<f32> = u_xlat4;
  let x_2793 : vec3<f32> = ((vec3<f32>(x_2786.x, x_2786.y, x_2786.z) * vec3<f32>(x_2788.y, x_2788.z, x_2788.w)) + vec3<f32>(x_2791.x, x_2791.y, x_2791.z));
  let x_2794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2793.x, x_2793.y, x_2793.z, x_2794.w);
  let x_2798 : vec4<f32> = u_xlat7;
  let x_2800 : vec4<f32> = u_xlat1;
  let x_2802 : vec3<f32> = (vec3<f32>(x_2798.x, x_2798.y, x_2798.z) + vec3<f32>(x_2800.x, x_2800.y, x_2800.z));
  let x_2803 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2802.x, x_2802.y, x_2802.z, x_2803.w);
  let x_2806 : f32 = x_56.x_Surface;
  u_xlatb20 = (x_2806 == 1.0f);
  let x_2808 : bool = u_xlatb20;
  let x_2809 : bool = u_xlatb40;
  u_xlatb20 = (x_2808 | x_2809);
  let x_2811 : bool = u_xlatb20;
  if (x_2811) {
    let x_2816 : f32 = u_xlat0.x;
    x_2812 = x_2816;
  } else {
    x_2812 = 1.0f;
  }
  let x_2818 : f32 = x_2812;
  SV_Target0.w = x_2818;
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

