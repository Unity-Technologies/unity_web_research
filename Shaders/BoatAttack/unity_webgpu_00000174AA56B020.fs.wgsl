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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

@group(0) @binding(8) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_338 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1896 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2202 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2322 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_1979 : f32;
  var x_1990 : vec3<f32>;
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
  var x_2622 : f32;
  var x_2635 : f32;
  var x_2687 : f32;
  var x_2699 : vec3<f32>;
  var x_2849 : f32;
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
  let x_534 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_531, x_533);
  u_xlat5 = x_534;
  let x_539 : vec2<f32> = vs_TEXCOORD7;
  let x_541 : f32 = x_43.x_GlobalMipBias.x;
  let x_542 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_539, x_541);
  let x_543 : vec3<f32> = vec3<f32>(x_542.x, x_542.y, x_542.z);
  let x_544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat5;
  let x_550 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_551 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec3<f32> = u_xlat2;
  let x_554 : vec4<f32> = u_xlat5;
  u_xlat60 = dot(x_553, vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : f32 = u_xlat60;
  u_xlat60 = (x_557 + 0.5f);
  let x_559 : f32 = u_xlat60;
  let x_561 : vec4<f32> = u_xlat6;
  let x_563 : vec3<f32> = (vec3<f32>(x_559, x_559, x_559) * vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_567 : f32 = u_xlat5.w;
  u_xlat60 = max(x_567, 0.0001f);
  let x_569 : vec4<f32> = u_xlat5;
  let x_571 : f32 = u_xlat60;
  let x_573 : vec3<f32> = (vec3<f32>(x_569.x, x_569.y, x_569.z) / vec3<f32>(x_571, x_571, x_571));
  let x_574 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  let x_578 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_579 : vec2<f32> = vec2<f32>(x_578.x, x_578.y);
  let x_583 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_579.x, x_579.y));
  let x_584 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat6;
  let x_588 : vec4<f32> = hlslcc_FragCoord;
  let x_590 : vec2<f32> = (vec2<f32>(x_586.x, x_586.y) * vec2<f32>(x_588.x, x_588.y));
  let x_591 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_590.x, x_590.y, x_591.z, x_591.w);
  let x_594 : f32 = u_xlat6.y;
  let x_597 : f32 = x_43.x_ScaleBiasRt.x;
  let x_600 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat60 = ((x_594 * x_597) + x_600);
  let x_602 : f32 = u_xlat60;
  u_xlat6.z = (-(x_602) + 1.0f);
  let x_611 : vec4<f32> = u_xlat6;
  let x_614 : f32 = x_43.x_GlobalMipBias.x;
  let x_615 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_611.x, x_611.z), x_614);
  u_xlat60 = x_615.x;
  let x_617 : f32 = u_xlat60;
  u_xlat1.x = (x_617 + -1.0f);
  let x_621 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_623 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_621 * x_623) + 1.0f);
  let x_627 : f32 = u_xlat60;
  u_xlat60 = min(x_627, 1.0f);
  let x_631 : f32 = x_338.x_MainLightShadowParams.y;
  u_xlatb62 = (0.0f < x_631);
  let x_633 : bool = u_xlatb62;
  if (x_633) {
    let x_637 : f32 = x_338.x_MainLightShadowParams.y;
    u_xlatb62 = (x_637 == 1.0f);
    let x_639 : bool = u_xlatb62;
    if (x_639) {
      let x_642 : vec4<f32> = u_xlat4;
      let x_646 : vec4<f32> = x_338.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y) + x_646);
      let x_649 : vec4<f32> = u_xlat6;
      let x_650 : vec2<f32> = vec2<f32>(x_649.x, x_649.y);
      let x_652 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_650.x, x_650.y, x_652);
      let x_664 : vec3<f32> = txVec0;
      let x_666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_664.xy, x_664.z);
      u_xlat7.x = x_666;
      let x_669 : vec4<f32> = u_xlat6;
      let x_670 : vec2<f32> = vec2<f32>(x_669.z, x_669.w);
      let x_672 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_670.x, x_670.y, x_672);
      let x_679 : vec3<f32> = txVec1;
      let x_681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_679.xy, x_679.z);
      u_xlat7.y = x_681;
      let x_683 : vec4<f32> = u_xlat4;
      let x_687 : vec4<f32> = x_338.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_683.x, x_683.y, x_683.x, x_683.y) + x_687);
      let x_690 : vec4<f32> = u_xlat6;
      let x_691 : vec2<f32> = vec2<f32>(x_690.x, x_690.y);
      let x_693 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_691.x, x_691.y, x_693);
      let x_700 : vec3<f32> = txVec2;
      let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_700.xy, x_700.z);
      u_xlat7.z = x_702;
      let x_705 : vec4<f32> = u_xlat6;
      let x_706 : vec2<f32> = vec2<f32>(x_705.z, x_705.w);
      let x_708 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_706.x, x_706.y, x_708);
      let x_715 : vec3<f32> = txVec3;
      let x_717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_715.xy, x_715.z);
      u_xlat7.w = x_717;
      let x_720 : vec4<f32> = u_xlat7;
      u_xlat62 = dot(x_720, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_727 : f32 = x_338.x_MainLightShadowParams.y;
      u_xlatb63 = (x_727 == 2.0f);
      let x_729 : bool = u_xlatb63;
      if (x_729) {
        let x_732 : vec4<f32> = u_xlat4;
        let x_735 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_739 : vec2<f32> = ((vec2<f32>(x_732.x, x_732.y) * vec2<f32>(x_735.z, x_735.w)) + vec2<f32>(0.5f, 0.5f));
        let x_740 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_739.x, x_739.y, x_740.z, x_740.w);
        let x_742 : vec4<f32> = u_xlat6;
        let x_744 : vec2<f32> = floor(vec2<f32>(x_742.x, x_742.y));
        let x_745 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
        let x_749 : vec4<f32> = u_xlat4;
        let x_752 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_755 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_749.x, x_749.y) * vec2<f32>(x_752.z, x_752.w)) + -(vec2<f32>(x_755.x, x_755.y)));
        let x_759 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_759.x, x_759.x, x_759.y, x_759.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_764 : vec4<f32> = u_xlat7;
        let x_766 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_764.x, x_764.x, x_764.z, x_764.z) * vec4<f32>(x_766.x, x_766.x, x_766.z, x_766.z));
        let x_769 : vec4<f32> = u_xlat8;
        let x_773 : vec2<f32> = (vec2<f32>(x_769.y, x_769.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_774 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_773.x, x_774.y, x_773.y, x_774.w);
        let x_776 : vec4<f32> = u_xlat8;
        let x_779 : vec2<f32> = u_xlat46;
        let x_781 : vec2<f32> = ((vec2<f32>(x_776.x, x_776.z) * vec2<f32>(0.5f, 0.5f)) + -(x_779));
        let x_782 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
        let x_785 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_785) + vec2<f32>(1.0f, 1.0f));
        let x_789 : vec2<f32> = u_xlat46;
        let x_791 : vec2<f32> = min(x_789, vec2<f32>(0.0f, 0.0f));
        let x_792 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_791.x, x_791.y, x_792.z, x_792.w);
        let x_794 : vec4<f32> = u_xlat9;
        let x_797 : vec4<f32> = u_xlat9;
        let x_800 : vec2<f32> = u_xlat48;
        let x_801 : vec2<f32> = ((-(vec2<f32>(x_794.x, x_794.y)) * vec2<f32>(x_797.x, x_797.y)) + x_800);
        let x_802 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
        let x_804 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_804, vec2<f32>(0.0f, 0.0f));
        let x_806 : vec2<f32> = u_xlat46;
        let x_808 : vec2<f32> = u_xlat46;
        let x_810 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_806) * x_808) + vec2<f32>(x_810.y, x_810.w));
        let x_813 : vec4<f32> = u_xlat9;
        let x_815 : vec2<f32> = (vec2<f32>(x_813.x, x_813.y) + vec2<f32>(1.0f, 1.0f));
        let x_816 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
        let x_818 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_818 + vec2<f32>(1.0f, 1.0f));
        let x_821 : vec4<f32> = u_xlat8;
        let x_825 : vec2<f32> = (vec2<f32>(x_821.x, x_821.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_826 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_825.x, x_825.y, x_826.z, x_826.w);
        let x_828 : vec2<f32> = u_xlat48;
        let x_829 : vec2<f32> = (x_828 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_830 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_829.x, x_829.y, x_830.z, x_830.w);
        let x_832 : vec4<f32> = u_xlat9;
        let x_834 : vec2<f32> = (vec2<f32>(x_832.x, x_832.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_835 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_834.x, x_834.y, x_835.z, x_835.w);
        let x_838 : vec2<f32> = u_xlat46;
        let x_839 : vec2<f32> = (x_838 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_840 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_842.y, x_842.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_846 : f32 = u_xlat9.x;
        u_xlat10.z = x_846;
        let x_849 : f32 = u_xlat46.x;
        u_xlat10.w = x_849;
        let x_852 : f32 = u_xlat11.x;
        u_xlat8.z = x_852;
        let x_855 : f32 = u_xlat7.x;
        u_xlat8.w = x_855;
        let x_858 : vec4<f32> = u_xlat8;
        let x_860 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_858.z, x_858.w, x_858.x, x_858.z) + vec4<f32>(x_860.z, x_860.w, x_860.x, x_860.z));
        let x_864 : f32 = u_xlat10.y;
        u_xlat9.z = x_864;
        let x_867 : f32 = u_xlat46.y;
        u_xlat9.w = x_867;
        let x_870 : f32 = u_xlat8.y;
        u_xlat11.z = x_870;
        let x_873 : f32 = u_xlat7.z;
        u_xlat11.w = x_873;
        let x_875 : vec4<f32> = u_xlat9;
        let x_877 : vec4<f32> = u_xlat11;
        let x_879 : vec3<f32> = (vec3<f32>(x_875.z, x_875.y, x_875.w) + vec3<f32>(x_877.z, x_877.y, x_877.w));
        let x_880 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
        let x_882 : vec4<f32> = u_xlat8;
        let x_884 : vec4<f32> = u_xlat12;
        let x_886 : vec3<f32> = (vec3<f32>(x_882.x, x_882.z, x_882.w) / vec3<f32>(x_884.z, x_884.w, x_884.y));
        let x_887 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
        let x_889 : vec4<f32> = u_xlat8;
        let x_894 : vec3<f32> = (vec3<f32>(x_889.x, x_889.y, x_889.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_895 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
        let x_897 : vec4<f32> = u_xlat11;
        let x_899 : vec4<f32> = u_xlat7;
        let x_901 : vec3<f32> = (vec3<f32>(x_897.z, x_897.y, x_897.w) / vec3<f32>(x_899.x, x_899.y, x_899.z));
        let x_902 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
        let x_904 : vec4<f32> = u_xlat9;
        let x_906 : vec3<f32> = (vec3<f32>(x_904.x, x_904.y, x_904.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_907 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
        let x_909 : vec4<f32> = u_xlat8;
        let x_912 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_914 : vec3<f32> = (vec3<f32>(x_909.y, x_909.x, x_909.z) * vec3<f32>(x_912.x, x_912.x, x_912.x));
        let x_915 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
        let x_917 : vec4<f32> = u_xlat9;
        let x_920 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_922 : vec3<f32> = (vec3<f32>(x_917.x, x_917.y, x_917.z) * vec3<f32>(x_920.y, x_920.y, x_920.y));
        let x_923 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
        let x_926 : f32 = u_xlat9.x;
        u_xlat8.w = x_926;
        let x_928 : vec4<f32> = u_xlat6;
        let x_931 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_934 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_928.x, x_928.y, x_928.x, x_928.y) * vec4<f32>(x_931.x, x_931.y, x_931.x, x_931.y)) + vec4<f32>(x_934.y, x_934.w, x_934.x, x_934.w));
        let x_937 : vec4<f32> = u_xlat6;
        let x_940 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_943 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_937.x, x_937.y) * vec2<f32>(x_940.x, x_940.y)) + vec2<f32>(x_943.z, x_943.w));
        let x_947 : f32 = u_xlat8.y;
        u_xlat9.w = x_947;
        let x_949 : vec4<f32> = u_xlat9;
        let x_950 : vec2<f32> = vec2<f32>(x_949.y, x_949.z);
        let x_951 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_951.x, x_950.x, x_951.z, x_950.y);
        let x_953 : vec4<f32> = u_xlat6;
        let x_956 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_959 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_953.x, x_953.y, x_953.x, x_953.y) * vec4<f32>(x_956.x, x_956.y, x_956.x, x_956.y)) + vec4<f32>(x_959.x, x_959.y, x_959.z, x_959.y));
        let x_962 : vec4<f32> = u_xlat6;
        let x_965 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_962.x, x_962.y, x_962.x, x_962.y) * vec4<f32>(x_965.x, x_965.y, x_965.x, x_965.y)) + vec4<f32>(x_968.w, x_968.y, x_968.w, x_968.z));
        let x_971 : vec4<f32> = u_xlat6;
        let x_974 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_977 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_971.x, x_971.y, x_971.x, x_971.y) * vec4<f32>(x_974.x, x_974.y, x_974.x, x_974.y)) + vec4<f32>(x_977.x, x_977.w, x_977.z, x_977.w));
        let x_981 : vec4<f32> = u_xlat7;
        let x_983 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_981.x, x_981.x, x_981.x, x_981.y) * vec4<f32>(x_983.z, x_983.w, x_983.y, x_983.z));
        let x_987 : vec4<f32> = u_xlat7;
        let x_989 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_987.y, x_987.y, x_987.z, x_987.z) * x_989);
        let x_993 : f32 = u_xlat7.z;
        let x_995 : f32 = u_xlat12.y;
        u_xlat63 = (x_993 * x_995);
        let x_998 : vec4<f32> = u_xlat10;
        let x_999 : vec2<f32> = vec2<f32>(x_998.x, x_998.y);
        let x_1001 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_999.x, x_999.y, x_1001);
        let x_1009 : vec3<f32> = txVec4;
        let x_1011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1009.xy, x_1009.z);
        u_xlat64 = x_1011;
        let x_1013 : vec4<f32> = u_xlat10;
        let x_1014 : vec2<f32> = vec2<f32>(x_1013.z, x_1013.w);
        let x_1016 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1014.x, x_1014.y, x_1016);
        let x_1024 : vec3<f32> = txVec5;
        let x_1026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1024.xy, x_1024.z);
        u_xlat65 = x_1026;
        let x_1027 : f32 = u_xlat65;
        let x_1029 : f32 = u_xlat13.y;
        u_xlat65 = (x_1027 * x_1029);
        let x_1032 : f32 = u_xlat13.x;
        let x_1033 : f32 = u_xlat64;
        let x_1035 : f32 = u_xlat65;
        u_xlat64 = ((x_1032 * x_1033) + x_1035);
        let x_1038 : vec2<f32> = u_xlat46;
        let x_1040 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1038.x, x_1038.y, x_1040);
        let x_1047 : vec3<f32> = txVec6;
        let x_1049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1047.xy, x_1047.z);
        u_xlat65 = x_1049;
        let x_1051 : f32 = u_xlat13.z;
        let x_1052 : f32 = u_xlat65;
        let x_1054 : f32 = u_xlat64;
        u_xlat64 = ((x_1051 * x_1052) + x_1054);
        let x_1057 : vec4<f32> = u_xlat9;
        let x_1058 : vec2<f32> = vec2<f32>(x_1057.x, x_1057.y);
        let x_1060 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1058.x, x_1058.y, x_1060);
        let x_1067 : vec3<f32> = txVec7;
        let x_1069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1067.xy, x_1067.z);
        u_xlat65 = x_1069;
        let x_1071 : f32 = u_xlat13.w;
        let x_1072 : f32 = u_xlat65;
        let x_1074 : f32 = u_xlat64;
        u_xlat64 = ((x_1071 * x_1072) + x_1074);
        let x_1077 : vec4<f32> = u_xlat11;
        let x_1078 : vec2<f32> = vec2<f32>(x_1077.x, x_1077.y);
        let x_1080 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1078.x, x_1078.y, x_1080);
        let x_1087 : vec3<f32> = txVec8;
        let x_1089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1087.xy, x_1087.z);
        u_xlat65 = x_1089;
        let x_1091 : f32 = u_xlat14.x;
        let x_1092 : f32 = u_xlat65;
        let x_1094 : f32 = u_xlat64;
        u_xlat64 = ((x_1091 * x_1092) + x_1094);
        let x_1097 : vec4<f32> = u_xlat11;
        let x_1098 : vec2<f32> = vec2<f32>(x_1097.z, x_1097.w);
        let x_1100 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1098.x, x_1098.y, x_1100);
        let x_1107 : vec3<f32> = txVec9;
        let x_1109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1107.xy, x_1107.z);
        u_xlat65 = x_1109;
        let x_1111 : f32 = u_xlat14.y;
        let x_1112 : f32 = u_xlat65;
        let x_1114 : f32 = u_xlat64;
        u_xlat64 = ((x_1111 * x_1112) + x_1114);
        let x_1117 : vec4<f32> = u_xlat9;
        let x_1118 : vec2<f32> = vec2<f32>(x_1117.z, x_1117.w);
        let x_1120 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1118.x, x_1118.y, x_1120);
        let x_1127 : vec3<f32> = txVec10;
        let x_1129 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1127.xy, x_1127.z);
        u_xlat65 = x_1129;
        let x_1131 : f32 = u_xlat14.z;
        let x_1132 : f32 = u_xlat65;
        let x_1134 : f32 = u_xlat64;
        u_xlat64 = ((x_1131 * x_1132) + x_1134);
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1138 : vec2<f32> = vec2<f32>(x_1137.x, x_1137.y);
        let x_1140 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1138.x, x_1138.y, x_1140);
        let x_1147 : vec3<f32> = txVec11;
        let x_1149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1147.xy, x_1147.z);
        u_xlat65 = x_1149;
        let x_1151 : f32 = u_xlat14.w;
        let x_1152 : f32 = u_xlat65;
        let x_1154 : f32 = u_xlat64;
        u_xlat64 = ((x_1151 * x_1152) + x_1154);
        let x_1157 : vec4<f32> = u_xlat8;
        let x_1158 : vec2<f32> = vec2<f32>(x_1157.z, x_1157.w);
        let x_1160 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1158.x, x_1158.y, x_1160);
        let x_1167 : vec3<f32> = txVec12;
        let x_1169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1167.xy, x_1167.z);
        u_xlat65 = x_1169;
        let x_1170 : f32 = u_xlat63;
        let x_1171 : f32 = u_xlat65;
        let x_1173 : f32 = u_xlat64;
        u_xlat62 = ((x_1170 * x_1171) + x_1173);
      } else {
        let x_1176 : vec4<f32> = u_xlat4;
        let x_1179 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1182 : vec2<f32> = ((vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(x_1179.z, x_1179.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1183 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1183.w);
        let x_1185 : vec4<f32> = u_xlat6;
        let x_1187 : vec2<f32> = floor(vec2<f32>(x_1185.x, x_1185.y));
        let x_1188 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
        let x_1190 : vec4<f32> = u_xlat4;
        let x_1193 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1190.x, x_1190.y) * vec2<f32>(x_1193.z, x_1193.w)) + -(vec2<f32>(x_1196.x, x_1196.y)));
        let x_1200 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1200.x, x_1200.x, x_1200.y, x_1200.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1203 : vec4<f32> = u_xlat7;
        let x_1205 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1203.x, x_1203.x, x_1203.z, x_1203.z) * vec4<f32>(x_1205.x, x_1205.x, x_1205.z, x_1205.z));
        let x_1208 : vec4<f32> = u_xlat8;
        let x_1212 : vec2<f32> = (vec2<f32>(x_1208.y, x_1208.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1213.x, x_1212.x, x_1213.z, x_1212.y);
        let x_1215 : vec4<f32> = u_xlat8;
        let x_1218 : vec2<f32> = u_xlat46;
        let x_1220 : vec2<f32> = ((vec2<f32>(x_1215.x, x_1215.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1218));
        let x_1221 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1220.x, x_1221.y, x_1220.y, x_1221.w);
        let x_1223 : vec2<f32> = u_xlat46;
        let x_1225 : vec2<f32> = (-(x_1223) + vec2<f32>(1.0f, 1.0f));
        let x_1226 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
        let x_1228 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1228, vec2<f32>(0.0f, 0.0f));
        let x_1230 : vec2<f32> = u_xlat48;
        let x_1232 : vec2<f32> = u_xlat48;
        let x_1234 : vec4<f32> = u_xlat8;
        let x_1236 : vec2<f32> = ((-(x_1230) * x_1232) + vec2<f32>(x_1234.x, x_1234.y));
        let x_1237 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1239 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1239, vec2<f32>(0.0f, 0.0f));
        let x_1242 : vec2<f32> = u_xlat48;
        let x_1244 : vec2<f32> = u_xlat48;
        let x_1246 : vec4<f32> = u_xlat7;
        let x_1248 : vec2<f32> = ((-(x_1242) * x_1244) + vec2<f32>(x_1246.y, x_1246.w));
        let x_1249 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1248.x, x_1249.y, x_1248.y);
        let x_1251 : vec4<f32> = u_xlat8;
        let x_1253 : vec2<f32> = (vec2<f32>(x_1251.x, x_1251.y) + vec2<f32>(2.0f, 2.0f));
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1253.x, x_1253.y, x_1254.z, x_1254.w);
        let x_1256 : vec3<f32> = u_xlat27;
        let x_1258 : vec2<f32> = (vec2<f32>(x_1256.x, x_1256.z) + vec2<f32>(2.0f, 2.0f));
        let x_1259 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1259.x, x_1258.x, x_1259.z, x_1258.y);
        let x_1262 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1262 * 0.081632003f);
        let x_1266 : vec4<f32> = u_xlat7;
        let x_1269 : vec3<f32> = (vec3<f32>(x_1266.z, x_1266.x, x_1266.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1270 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
        let x_1272 : vec4<f32> = u_xlat8;
        let x_1275 : vec2<f32> = (vec2<f32>(x_1272.x, x_1272.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1276 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1275.x, x_1275.y, x_1276.z, x_1276.w);
        let x_1279 : f32 = u_xlat11.y;
        u_xlat10.x = x_1279;
        let x_1281 : vec2<f32> = u_xlat46;
        let x_1288 : vec2<f32> = ((vec2<f32>(x_1281.x, x_1281.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1289 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1289.x, x_1288.x, x_1289.z, x_1288.y);
        let x_1291 : vec2<f32> = u_xlat46;
        let x_1295 : vec2<f32> = ((vec2<f32>(x_1291.x, x_1291.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1296 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1295.x, x_1296.y, x_1295.y, x_1296.w);
        let x_1299 : f32 = u_xlat7.x;
        u_xlat8.y = x_1299;
        let x_1302 : f32 = u_xlat9.y;
        u_xlat8.w = x_1302;
        let x_1304 : vec4<f32> = u_xlat8;
        let x_1305 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1304 + x_1305);
        let x_1307 : vec2<f32> = u_xlat46;
        let x_1310 : vec2<f32> = ((vec2<f32>(x_1307.y, x_1307.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1311 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1311.x, x_1310.x, x_1311.z, x_1310.y);
        let x_1313 : vec2<f32> = u_xlat46;
        let x_1316 : vec2<f32> = ((vec2<f32>(x_1313.y, x_1313.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1317 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1316.x, x_1317.y, x_1316.y, x_1317.w);
        let x_1320 : f32 = u_xlat7.y;
        u_xlat9.y = x_1320;
        let x_1322 : vec4<f32> = u_xlat9;
        let x_1323 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1322 + x_1323);
        let x_1325 : vec4<f32> = u_xlat8;
        let x_1326 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1325 / x_1326);
        let x_1328 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1328 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1334 : vec4<f32> = u_xlat9;
        let x_1335 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1334 / x_1335);
        let x_1337 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1337 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1339 : vec4<f32> = u_xlat8;
        let x_1342 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1339.w, x_1339.x, x_1339.y, x_1339.z) * vec4<f32>(x_1342.x, x_1342.x, x_1342.x, x_1342.x));
        let x_1345 : vec4<f32> = u_xlat9;
        let x_1348 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1345.x, x_1345.w, x_1345.y, x_1345.z) * vec4<f32>(x_1348.y, x_1348.y, x_1348.y, x_1348.y));
        let x_1351 : vec4<f32> = u_xlat8;
        let x_1352 : vec3<f32> = vec3<f32>(x_1351.y, x_1351.z, x_1351.w);
        let x_1353 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1352.x, x_1353.y, x_1352.y, x_1352.z);
        let x_1356 : f32 = u_xlat9.x;
        u_xlat11.y = x_1356;
        let x_1358 : vec4<f32> = u_xlat6;
        let x_1361 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1364 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y) * vec4<f32>(x_1361.x, x_1361.y, x_1361.x, x_1361.y)) + vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1364.y));
        let x_1367 : vec4<f32> = u_xlat6;
        let x_1370 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1373 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1367.x, x_1367.y) * vec2<f32>(x_1370.x, x_1370.y)) + vec2<f32>(x_1373.w, x_1373.y));
        let x_1377 : f32 = u_xlat11.y;
        u_xlat8.y = x_1377;
        let x_1380 : f32 = u_xlat9.z;
        u_xlat11.y = x_1380;
        let x_1382 : vec4<f32> = u_xlat6;
        let x_1385 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.y) * vec4<f32>(x_1385.x, x_1385.y, x_1385.x, x_1385.y)) + vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1388.y));
        let x_1391 : vec4<f32> = u_xlat6;
        let x_1394 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1397 : vec4<f32> = u_xlat11;
        let x_1399 : vec2<f32> = ((vec2<f32>(x_1391.x, x_1391.y) * vec2<f32>(x_1394.x, x_1394.y)) + vec2<f32>(x_1397.w, x_1397.y));
        let x_1400 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1399.x, x_1399.y, x_1400.z, x_1400.w);
        let x_1403 : f32 = u_xlat11.y;
        u_xlat8.z = x_1403;
        let x_1406 : vec4<f32> = u_xlat6;
        let x_1409 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1412 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1406.x, x_1406.y, x_1406.x, x_1406.y) * vec4<f32>(x_1409.x, x_1409.y, x_1409.x, x_1409.y)) + vec4<f32>(x_1412.x, x_1412.y, x_1412.x, x_1412.z));
        let x_1416 : f32 = u_xlat9.w;
        u_xlat11.y = x_1416;
        let x_1419 : vec4<f32> = u_xlat6;
        let x_1422 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1425 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1419.x, x_1419.y, x_1419.x, x_1419.y) * vec4<f32>(x_1422.x, x_1422.y, x_1422.x, x_1422.y)) + vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1425.y));
        let x_1429 : vec4<f32> = u_xlat6;
        let x_1432 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1435 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(x_1432.x, x_1432.y)) + vec2<f32>(x_1435.w, x_1435.y));
        let x_1439 : f32 = u_xlat11.y;
        u_xlat8.w = x_1439;
        let x_1442 : vec4<f32> = u_xlat6;
        let x_1445 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1448 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1442.x, x_1442.y) * vec2<f32>(x_1445.x, x_1445.y)) + vec2<f32>(x_1448.x, x_1448.w));
        let x_1451 : vec4<f32> = u_xlat11;
        let x_1452 : vec3<f32> = vec3<f32>(x_1451.x, x_1451.z, x_1451.w);
        let x_1453 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1452.x, x_1453.y, x_1452.y, x_1452.z);
        let x_1455 : vec4<f32> = u_xlat6;
        let x_1458 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1455.x, x_1455.y, x_1455.x, x_1455.y) * vec4<f32>(x_1458.x, x_1458.y, x_1458.x, x_1458.y)) + vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1461.y));
        let x_1465 : vec4<f32> = u_xlat6;
        let x_1468 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1471 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1465.x, x_1465.y) * vec2<f32>(x_1468.x, x_1468.y)) + vec2<f32>(x_1471.w, x_1471.y));
        let x_1475 : f32 = u_xlat8.x;
        u_xlat9.x = x_1475;
        let x_1477 : vec4<f32> = u_xlat6;
        let x_1480 : vec4<f32> = x_338.x_MainLightShadowmapSize;
        let x_1483 : vec4<f32> = u_xlat9;
        let x_1485 : vec2<f32> = ((vec2<f32>(x_1477.x, x_1477.y) * vec2<f32>(x_1480.x, x_1480.y)) + vec2<f32>(x_1483.x, x_1483.y));
        let x_1486 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1485.x, x_1485.y, x_1486.z, x_1486.w);
        let x_1489 : vec4<f32> = u_xlat7;
        let x_1491 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1489.x, x_1489.x, x_1489.x, x_1489.x) * x_1491);
        let x_1494 : vec4<f32> = u_xlat7;
        let x_1496 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1494.y, x_1494.y, x_1494.y, x_1494.y) * x_1496);
        let x_1499 : vec4<f32> = u_xlat7;
        let x_1501 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1499.z, x_1499.z, x_1499.z, x_1499.z) * x_1501);
        let x_1503 : vec4<f32> = u_xlat7;
        let x_1505 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1503.w, x_1503.w, x_1503.w, x_1503.w) * x_1505);
        let x_1508 : vec4<f32> = u_xlat12;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.x, x_1508.y);
        let x_1511 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec13;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1518.xy, x_1518.z);
        u_xlat63 = x_1520;
        let x_1522 : vec4<f32> = u_xlat12;
        let x_1523 : vec2<f32> = vec2<f32>(x_1522.z, x_1522.w);
        let x_1525 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec14;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1532.xy, x_1532.z);
        u_xlat64 = x_1534;
        let x_1535 : f32 = u_xlat64;
        let x_1537 : f32 = u_xlat17.y;
        u_xlat64 = (x_1535 * x_1537);
        let x_1540 : f32 = u_xlat17.x;
        let x_1541 : f32 = u_xlat63;
        let x_1543 : f32 = u_xlat64;
        u_xlat63 = ((x_1540 * x_1541) + x_1543);
        let x_1546 : vec2<f32> = u_xlat46;
        let x_1548 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec15;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1555.xy, x_1555.z);
        u_xlat64 = x_1557;
        let x_1559 : f32 = u_xlat17.z;
        let x_1560 : f32 = u_xlat64;
        let x_1562 : f32 = u_xlat63;
        u_xlat63 = ((x_1559 * x_1560) + x_1562);
        let x_1565 : vec4<f32> = u_xlat15;
        let x_1566 : vec2<f32> = vec2<f32>(x_1565.x, x_1565.y);
        let x_1568 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1575 : vec3<f32> = txVec16;
        let x_1577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1575.xy, x_1575.z);
        u_xlat64 = x_1577;
        let x_1579 : f32 = u_xlat17.w;
        let x_1580 : f32 = u_xlat64;
        let x_1582 : f32 = u_xlat63;
        u_xlat63 = ((x_1579 * x_1580) + x_1582);
        let x_1585 : vec4<f32> = u_xlat13;
        let x_1586 : vec2<f32> = vec2<f32>(x_1585.x, x_1585.y);
        let x_1588 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec17;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1595.xy, x_1595.z);
        u_xlat64 = x_1597;
        let x_1599 : f32 = u_xlat18.x;
        let x_1600 : f32 = u_xlat64;
        let x_1602 : f32 = u_xlat63;
        u_xlat63 = ((x_1599 * x_1600) + x_1602);
        let x_1605 : vec4<f32> = u_xlat13;
        let x_1606 : vec2<f32> = vec2<f32>(x_1605.z, x_1605.w);
        let x_1608 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec18;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1615.xy, x_1615.z);
        u_xlat64 = x_1617;
        let x_1619 : f32 = u_xlat18.y;
        let x_1620 : f32 = u_xlat64;
        let x_1622 : f32 = u_xlat63;
        u_xlat63 = ((x_1619 * x_1620) + x_1622);
        let x_1625 : vec4<f32> = u_xlat14;
        let x_1626 : vec2<f32> = vec2<f32>(x_1625.x, x_1625.y);
        let x_1628 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1626.x, x_1626.y, x_1628);
        let x_1635 : vec3<f32> = txVec19;
        let x_1637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1635.xy, x_1635.z);
        u_xlat64 = x_1637;
        let x_1639 : f32 = u_xlat18.z;
        let x_1640 : f32 = u_xlat64;
        let x_1642 : f32 = u_xlat63;
        u_xlat63 = ((x_1639 * x_1640) + x_1642);
        let x_1645 : vec4<f32> = u_xlat15;
        let x_1646 : vec2<f32> = vec2<f32>(x_1645.z, x_1645.w);
        let x_1648 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1646.x, x_1646.y, x_1648);
        let x_1655 : vec3<f32> = txVec20;
        let x_1657 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1655.xy, x_1655.z);
        u_xlat64 = x_1657;
        let x_1659 : f32 = u_xlat18.w;
        let x_1660 : f32 = u_xlat64;
        let x_1662 : f32 = u_xlat63;
        u_xlat63 = ((x_1659 * x_1660) + x_1662);
        let x_1665 : vec4<f32> = u_xlat16;
        let x_1666 : vec2<f32> = vec2<f32>(x_1665.x, x_1665.y);
        let x_1668 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec21;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1675.xy, x_1675.z);
        u_xlat64 = x_1677;
        let x_1679 : f32 = u_xlat19.x;
        let x_1680 : f32 = u_xlat64;
        let x_1682 : f32 = u_xlat63;
        u_xlat63 = ((x_1679 * x_1680) + x_1682);
        let x_1685 : vec4<f32> = u_xlat16;
        let x_1686 : vec2<f32> = vec2<f32>(x_1685.z, x_1685.w);
        let x_1688 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1686.x, x_1686.y, x_1688);
        let x_1695 : vec3<f32> = txVec22;
        let x_1697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1695.xy, x_1695.z);
        u_xlat64 = x_1697;
        let x_1699 : f32 = u_xlat19.y;
        let x_1700 : f32 = u_xlat64;
        let x_1702 : f32 = u_xlat63;
        u_xlat63 = ((x_1699 * x_1700) + x_1702);
        let x_1705 : vec2<f32> = u_xlat28;
        let x_1707 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1705.x, x_1705.y, x_1707);
        let x_1714 : vec3<f32> = txVec23;
        let x_1716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1714.xy, x_1714.z);
        u_xlat64 = x_1716;
        let x_1718 : f32 = u_xlat19.z;
        let x_1719 : f32 = u_xlat64;
        let x_1721 : f32 = u_xlat63;
        u_xlat63 = ((x_1718 * x_1719) + x_1721);
        let x_1724 : vec2<f32> = u_xlat54;
        let x_1726 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1724.x, x_1724.y, x_1726);
        let x_1733 : vec3<f32> = txVec24;
        let x_1735 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1733.xy, x_1733.z);
        u_xlat64 = x_1735;
        let x_1737 : f32 = u_xlat19.w;
        let x_1738 : f32 = u_xlat64;
        let x_1740 : f32 = u_xlat63;
        u_xlat63 = ((x_1737 * x_1738) + x_1740);
        let x_1743 : vec4<f32> = u_xlat11;
        let x_1744 : vec2<f32> = vec2<f32>(x_1743.x, x_1743.y);
        let x_1746 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1744.x, x_1744.y, x_1746);
        let x_1753 : vec3<f32> = txVec25;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1753.xy, x_1753.z);
        u_xlat64 = x_1755;
        let x_1757 : f32 = u_xlat7.x;
        let x_1758 : f32 = u_xlat64;
        let x_1760 : f32 = u_xlat63;
        u_xlat63 = ((x_1757 * x_1758) + x_1760);
        let x_1763 : vec4<f32> = u_xlat11;
        let x_1764 : vec2<f32> = vec2<f32>(x_1763.z, x_1763.w);
        let x_1766 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1764.x, x_1764.y, x_1766);
        let x_1773 : vec3<f32> = txVec26;
        let x_1775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1773.xy, x_1773.z);
        u_xlat64 = x_1775;
        let x_1777 : f32 = u_xlat7.y;
        let x_1778 : f32 = u_xlat64;
        let x_1780 : f32 = u_xlat63;
        u_xlat63 = ((x_1777 * x_1778) + x_1780);
        let x_1783 : vec2<f32> = u_xlat49;
        let x_1785 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1783.x, x_1783.y, x_1785);
        let x_1792 : vec3<f32> = txVec27;
        let x_1794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1792.xy, x_1792.z);
        u_xlat64 = x_1794;
        let x_1796 : f32 = u_xlat7.z;
        let x_1797 : f32 = u_xlat64;
        let x_1799 : f32 = u_xlat63;
        u_xlat63 = ((x_1796 * x_1797) + x_1799);
        let x_1802 : vec4<f32> = u_xlat6;
        let x_1803 : vec2<f32> = vec2<f32>(x_1802.x, x_1802.y);
        let x_1805 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1803.x, x_1803.y, x_1805);
        let x_1812 : vec3<f32> = txVec28;
        let x_1814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1812.xy, x_1812.z);
        u_xlat64 = x_1814;
        let x_1816 : f32 = u_xlat7.w;
        let x_1817 : f32 = u_xlat64;
        let x_1819 : f32 = u_xlat63;
        u_xlat62 = ((x_1816 * x_1817) + x_1819);
      }
    }
  } else {
    let x_1823 : vec4<f32> = u_xlat4;
    let x_1824 : vec2<f32> = vec2<f32>(x_1823.x, x_1823.y);
    let x_1826 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1824.x, x_1824.y, x_1826);
    let x_1833 : vec3<f32> = txVec29;
    let x_1835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1833.xy, x_1833.z);
    u_xlat62 = x_1835;
  }
  let x_1837 : f32 = x_338.x_MainLightShadowParams.x;
  u_xlat63 = (-(x_1837) + 1.0f);
  let x_1840 : f32 = u_xlat62;
  let x_1842 : f32 = x_338.x_MainLightShadowParams.x;
  let x_1844 : f32 = u_xlat63;
  u_xlat62 = ((x_1840 * x_1842) + x_1844);
  let x_1847 : f32 = u_xlat4.z;
  u_xlatb63 = (0.0f >= x_1847);
  let x_1850 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_1850 >= 1.0f);
  let x_1853 : bool = u_xlatb63;
  let x_1855 : bool = u_xlatb4.x;
  u_xlatb63 = (x_1853 | x_1855);
  let x_1857 : bool = u_xlatb63;
  let x_1858 : f32 = u_xlat62;
  u_xlat62 = select(x_1858, 1.0f, x_1857);
  let x_1860 : vec3<f32> = vs_TEXCOORD1;
  let x_1863 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1865 : vec3<f32> = (x_1860 + -(x_1863));
  let x_1866 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
  let x_1868 : vec4<f32> = u_xlat4;
  let x_1870 : vec4<f32> = u_xlat4;
  u_xlat63 = dot(vec3<f32>(x_1868.x, x_1868.y, x_1868.z), vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
  let x_1873 : f32 = u_xlat63;
  let x_1875 : f32 = x_338.x_MainLightShadowParams.z;
  let x_1878 : f32 = x_338.x_MainLightShadowParams.w;
  u_xlat63 = ((x_1873 * x_1875) + x_1878);
  let x_1880 : f32 = u_xlat63;
  u_xlat63 = clamp(x_1880, 0.0f, 1.0f);
  let x_1882 : f32 = u_xlat62;
  u_xlat4.x = (-(x_1882) + 1.0f);
  let x_1886 : f32 = u_xlat63;
  let x_1888 : f32 = u_xlat4.x;
  let x_1890 : f32 = u_xlat62;
  u_xlat62 = ((x_1886 * x_1888) + x_1890);
  let x_1898 : f32 = x_1896.x_MainLightCookieTextureFormat;
  u_xlatb63 = !((x_1898 == -1.0f));
  let x_1900 : bool = u_xlatb63;
  if (x_1900) {
    let x_1903 : vec3<f32> = vs_TEXCOORD1;
    let x_1906 : vec4<f32> = x_1896.x_MainLightWorldToLight[1i];
    let x_1908 : vec2<f32> = (vec2<f32>(x_1903.y, x_1903.y) * vec2<f32>(x_1906.x, x_1906.y));
    let x_1909 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1908.x, x_1908.y, x_1909.z, x_1909.w);
    let x_1912 : vec4<f32> = x_1896.x_MainLightWorldToLight[0i];
    let x_1914 : vec3<f32> = vs_TEXCOORD1;
    let x_1917 : vec4<f32> = u_xlat4;
    let x_1919 : vec2<f32> = ((vec2<f32>(x_1912.x, x_1912.y) * vec2<f32>(x_1914.x, x_1914.x)) + vec2<f32>(x_1917.x, x_1917.y));
    let x_1920 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1919.x, x_1919.y, x_1920.z, x_1920.w);
    let x_1923 : vec4<f32> = x_1896.x_MainLightWorldToLight[2i];
    let x_1925 : vec3<f32> = vs_TEXCOORD1;
    let x_1928 : vec4<f32> = u_xlat4;
    let x_1930 : vec2<f32> = ((vec2<f32>(x_1923.x, x_1923.y) * vec2<f32>(x_1925.z, x_1925.z)) + vec2<f32>(x_1928.x, x_1928.y));
    let x_1931 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1930.x, x_1930.y, x_1931.z, x_1931.w);
    let x_1933 : vec4<f32> = u_xlat4;
    let x_1936 : vec4<f32> = x_1896.x_MainLightWorldToLight[3i];
    let x_1938 : vec2<f32> = (vec2<f32>(x_1933.x, x_1933.y) + vec2<f32>(x_1936.x, x_1936.y));
    let x_1939 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1938.x, x_1938.y, x_1939.z, x_1939.w);
    let x_1941 : vec4<f32> = u_xlat4;
    let x_1944 : vec2<f32> = ((vec2<f32>(x_1941.x, x_1941.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1945 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1944.x, x_1944.y, x_1945.z, x_1945.w);
    let x_1952 : vec4<f32> = u_xlat4;
    let x_1955 : f32 = x_43.x_GlobalMipBias.x;
    let x_1956 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1952.x, x_1952.y), x_1955);
    u_xlat4 = x_1956;
    let x_1961 : f32 = x_1896.x_MainLightCookieTextureFormat;
    let x_1963 : f32 = x_1896.x_MainLightCookieTextureFormat;
    let x_1965 : f32 = x_1896.x_MainLightCookieTextureFormat;
    let x_1967 : f32 = x_1896.x_MainLightCookieTextureFormat;
    let x_1968 : vec4<f32> = vec4<f32>(x_1961, x_1963, x_1965, x_1967);
    let x_1975 : vec4<bool> = (vec4<f32>(x_1968.x, x_1968.y, x_1968.z, x_1968.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1975.x, x_1975.y);
    let x_1978 : bool = u_xlatb6.y;
    if (x_1978) {
      let x_1983 : f32 = u_xlat4.w;
      x_1979 = x_1983;
    } else {
      let x_1986 : f32 = u_xlat4.x;
      x_1979 = x_1986;
    }
    let x_1987 : f32 = x_1979;
    u_xlat63 = x_1987;
    let x_1989 : bool = u_xlatb6.x;
    if (x_1989) {
      let x_1993 : vec4<f32> = u_xlat4;
      x_1990 = vec3<f32>(x_1993.x, x_1993.y, x_1993.z);
    } else {
      let x_1996 : f32 = u_xlat63;
      x_1990 = vec3<f32>(x_1996, x_1996, x_1996);
    }
    let x_1998 : vec3<f32> = x_1990;
    let x_1999 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_2005 : vec4<f32> = u_xlat4;
  let x_2008 : vec4<f32> = x_43.x_MainLightColor;
  let x_2010 : vec3<f32> = (vec3<f32>(x_2005.x, x_2005.y, x_2005.z) * vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
  let x_2011 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2010.x, x_2010.y, x_2010.z, x_2011.w);
  let x_2013 : vec4<f32> = u_xlat1;
  let x_2015 : vec4<f32> = u_xlat4;
  let x_2017 : vec3<f32> = (vec3<f32>(x_2013.x, x_2013.x, x_2013.x) * vec3<f32>(x_2015.x, x_2015.y, x_2015.z));
  let x_2018 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2017.x, x_2017.y, x_2017.z, x_2018.w);
  let x_2020 : f32 = u_xlat60;
  let x_2022 : vec4<f32> = u_xlat5;
  let x_2024 : vec3<f32> = (vec3<f32>(x_2020, x_2020, x_2020) * vec3<f32>(x_2022.x, x_2022.y, x_2022.z));
  let x_2025 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2024.x, x_2024.y, x_2024.z, x_2025.w);
  let x_2027 : f32 = u_xlat62;
  let x_2029 : f32 = x_236.unity_LightData.z;
  u_xlat60 = (x_2027 * x_2029);
  let x_2031 : f32 = u_xlat60;
  let x_2033 : vec4<f32> = u_xlat4;
  let x_2035 : vec3<f32> = (vec3<f32>(x_2031, x_2031, x_2031) * vec3<f32>(x_2033.x, x_2033.y, x_2033.z));
  let x_2036 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
  let x_2038 : vec3<f32> = u_xlat2;
  let x_2040 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat60 = dot(x_2038, vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
  let x_2043 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2043, 0.0f, 1.0f);
  let x_2045 : f32 = u_xlat60;
  let x_2047 : vec4<f32> = u_xlat4;
  let x_2049 : vec3<f32> = (vec3<f32>(x_2045, x_2045, x_2045) * vec3<f32>(x_2047.x, x_2047.y, x_2047.z));
  let x_2050 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2049.x, x_2049.y, x_2049.z, x_2050.w);
  let x_2053 : f32 = x_56.x_SpecColor.w;
  u_xlat60 = ((x_2053 * 10.0f) + 1.0f);
  let x_2057 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2057);
  let x_2059 : vec3<f32> = u_xlat3;
  let x_2060 : vec3<f32> = u_xlat20;
  let x_2064 : vec4<f32> = x_43.x_MainLightPosition;
  let x_2066 : vec3<f32> = ((x_2059 * vec3<f32>(x_2060.x, x_2060.x, x_2060.x)) + vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
  let x_2067 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
  let x_2069 : vec4<f32> = u_xlat7;
  let x_2071 : vec4<f32> = u_xlat7;
  u_xlat62 = dot(vec3<f32>(x_2069.x, x_2069.y, x_2069.z), vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
  let x_2074 : f32 = u_xlat62;
  u_xlat62 = max(x_2074, 1.17549435e-37f);
  let x_2076 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_2076);
  let x_2078 : f32 = u_xlat62;
  let x_2080 : vec4<f32> = u_xlat7;
  let x_2082 : vec3<f32> = (vec3<f32>(x_2078, x_2078, x_2078) * vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
  let x_2083 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2082.x, x_2082.y, x_2082.z, x_2083.w);
  let x_2085 : vec3<f32> = u_xlat2;
  let x_2086 : vec4<f32> = u_xlat7;
  u_xlat62 = dot(x_2085, vec3<f32>(x_2086.x, x_2086.y, x_2086.z));
  let x_2089 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2089, 0.0f, 1.0f);
  let x_2091 : f32 = u_xlat62;
  u_xlat62 = log2(x_2091);
  let x_2093 : f32 = u_xlat60;
  let x_2094 : f32 = u_xlat62;
  u_xlat62 = (x_2093 * x_2094);
  let x_2096 : f32 = u_xlat62;
  u_xlat62 = exp2(x_2096);
  let x_2098 : f32 = u_xlat62;
  let x_2101 : vec4<f32> = x_56.x_SpecColor;
  let x_2103 : vec3<f32> = (vec3<f32>(x_2098, x_2098, x_2098) * vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
  let x_2104 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
  let x_2106 : vec4<f32> = u_xlat4;
  let x_2108 : vec4<f32> = u_xlat7;
  let x_2110 : vec3<f32> = (vec3<f32>(x_2106.x, x_2106.y, x_2106.z) * vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
  let x_2111 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
  let x_2113 : vec4<f32> = u_xlat6;
  let x_2115 : vec4<f32> = u_xlat1;
  let x_2118 : vec4<f32> = u_xlat4;
  let x_2120 : vec3<f32> = ((vec3<f32>(x_2113.x, x_2113.y, x_2113.z) * vec3<f32>(x_2115.y, x_2115.z, x_2115.w)) + vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
  let x_2121 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
  let x_2124 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_2126 : f32 = x_236.unity_LightData.y;
  u_xlat62 = min(x_2124, x_2126);
  let x_2129 : f32 = u_xlat62;
  u_xlatu62 = bitcast<u32>(i32(x_2129));
  let x_2133 : f32 = x_1896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2135 : f32 = x_1896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2137 : f32 = x_1896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2139 : f32 = x_1896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2140 : vec4<f32> = vec4<f32>(x_2133, x_2135, x_2137, x_2139);
  let x_2146 : vec4<bool> = (vec4<f32>(x_2140.x, x_2140.y, x_2140.z, x_2140.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2146.x, x_2146.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2157 : u32 = u_xlatu_loop_1;
    let x_2158 : u32 = u_xlatu62;
    if ((x_2157 < x_2158)) {
    } else {
      break;
    }
    let x_2161 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2161 >> 2u);
    let x_2164 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2164 & 3u));
    let x_2167 : u32 = u_xlatu64;
    let x_2170 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_2167)];
    let x_2180 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2185 : vec4<u32> = indexable[x_2180];
    u_xlat64 = dot(x_2170, bitcast<vec4<f32>>(x_2185));
    let x_2188 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_2188));
    let x_2191 : vec3<f32> = vs_TEXCOORD1;
    let x_2203 : u32 = u_xlatu64;
    let x_2206 : vec4<f32> = x_2202.x_AdditionalLightsPosition[bitcast<i32>(x_2203)];
    let x_2209 : u32 = u_xlatu64;
    let x_2212 : vec4<f32> = x_2202.x_AdditionalLightsPosition[bitcast<i32>(x_2209)];
    let x_2214 : vec3<f32> = ((-(x_2191) * vec3<f32>(x_2206.w, x_2206.w, x_2206.w)) + vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
    let x_2215 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2214.x, x_2214.y, x_2214.z, x_2215.w);
    let x_2217 : vec4<f32> = u_xlat8;
    let x_2219 : vec4<f32> = u_xlat8;
    u_xlat65 = dot(vec3<f32>(x_2217.x, x_2217.y, x_2217.z), vec3<f32>(x_2219.x, x_2219.y, x_2219.z));
    let x_2222 : f32 = u_xlat65;
    u_xlat65 = max(x_2222, 6.10351562e-05f);
    let x_2225 : f32 = u_xlat65;
    u_xlat46.x = inverseSqrt(x_2225);
    let x_2228 : vec2<f32> = u_xlat46;
    let x_2230 : vec4<f32> = u_xlat8;
    let x_2232 : vec3<f32> = (vec3<f32>(x_2228.x, x_2228.x, x_2228.x) * vec3<f32>(x_2230.x, x_2230.y, x_2230.z));
    let x_2233 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2232.x, x_2232.y, x_2232.z, x_2233.w);
    let x_2235 : f32 = u_xlat65;
    u_xlat46.x = (1.0f / x_2235);
    let x_2238 : f32 = u_xlat65;
    let x_2239 : u32 = u_xlatu64;
    let x_2242 : f32 = x_2202.x_AdditionalLightsAttenuation[bitcast<i32>(x_2239)].x;
    u_xlat65 = (x_2238 * x_2242);
    let x_2244 : f32 = u_xlat65;
    let x_2246 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2244) * x_2246) + 1.0f);
    let x_2249 : f32 = u_xlat65;
    u_xlat65 = max(x_2249, 0.0f);
    let x_2251 : f32 = u_xlat65;
    let x_2252 : f32 = u_xlat65;
    u_xlat65 = (x_2251 * x_2252);
    let x_2254 : f32 = u_xlat65;
    let x_2256 : f32 = u_xlat46.x;
    u_xlat65 = (x_2254 * x_2256);
    let x_2258 : u32 = u_xlatu64;
    let x_2261 : vec4<f32> = x_2202.x_AdditionalLightsSpotDir[bitcast<i32>(x_2258)];
    let x_2263 : vec4<f32> = u_xlat8;
    u_xlat46.x = dot(vec3<f32>(x_2261.x, x_2261.y, x_2261.z), vec3<f32>(x_2263.x, x_2263.y, x_2263.z));
    let x_2268 : f32 = u_xlat46.x;
    let x_2269 : u32 = u_xlatu64;
    let x_2272 : f32 = x_2202.x_AdditionalLightsAttenuation[bitcast<i32>(x_2269)].z;
    let x_2274 : u32 = u_xlatu64;
    let x_2277 : f32 = x_2202.x_AdditionalLightsAttenuation[bitcast<i32>(x_2274)].w;
    u_xlat46.x = ((x_2268 * x_2272) + x_2277);
    let x_2281 : f32 = u_xlat46.x;
    u_xlat46.x = clamp(x_2281, 0.0f, 1.0f);
    let x_2285 : f32 = u_xlat46.x;
    let x_2287 : f32 = u_xlat46.x;
    u_xlat46.x = (x_2285 * x_2287);
    let x_2290 : f32 = u_xlat65;
    let x_2292 : f32 = u_xlat46.x;
    u_xlat65 = (x_2290 * x_2292);
    let x_2295 : u32 = u_xlatu64;
    u_xlatu46 = (x_2295 >> 5u);
    let x_2298 : u32 = u_xlatu64;
    u_xlati66 = (1i << bitcast<u32>((bitcast<i32>(x_2298) & 31i)));
    let x_2304 : i32 = u_xlati66;
    let x_2306 : u32 = u_xlatu46;
    let x_2309 : f32 = x_1896.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2306)].el;
    u_xlati46 = bitcast<i32>((bitcast<u32>(x_2304) & bitcast<u32>(x_2309)));
    let x_2313 : i32 = u_xlati46;
    if ((x_2313 != 0i)) {
      let x_2323 : u32 = u_xlatu64;
      let x_2326 : f32 = x_2322.x_AdditionalLightsLightTypes[bitcast<i32>(x_2323)].el;
      u_xlati46 = i32(x_2326);
      let x_2328 : i32 = u_xlati46;
      u_xlati66 = select(1i, 0i, (x_2328 != 0i));
      let x_2332 : u32 = u_xlatu64;
      u_xlati67 = (bitcast<i32>(x_2332) << bitcast<u32>(2i));
      let x_2335 : i32 = u_xlati66;
      if ((x_2335 != 0i)) {
        let x_2339 : vec3<f32> = vs_TEXCOORD1;
        let x_2341 : i32 = u_xlati67;
        let x_2344 : i32 = u_xlati67;
        let x_2348 : vec4<f32> = x_2322.x_AdditionalLightsWorldToLights[((x_2341 + 1i) / 4i)][((x_2344 + 1i) % 4i)];
        let x_2350 : vec3<f32> = (vec3<f32>(x_2339.y, x_2339.y, x_2339.y) * vec3<f32>(x_2348.x, x_2348.y, x_2348.w));
        let x_2351 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2350.x, x_2350.y, x_2350.z, x_2351.w);
        let x_2353 : i32 = u_xlati67;
        let x_2355 : i32 = u_xlati67;
        let x_2358 : vec4<f32> = x_2322.x_AdditionalLightsWorldToLights[(x_2353 / 4i)][(x_2355 % 4i)];
        let x_2360 : vec3<f32> = vs_TEXCOORD1;
        let x_2363 : vec4<f32> = u_xlat9;
        let x_2365 : vec3<f32> = ((vec3<f32>(x_2358.x, x_2358.y, x_2358.w) * vec3<f32>(x_2360.x, x_2360.x, x_2360.x)) + vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
        let x_2366 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
        let x_2368 : i32 = u_xlati67;
        let x_2371 : i32 = u_xlati67;
        let x_2375 : vec4<f32> = x_2322.x_AdditionalLightsWorldToLights[((x_2368 + 2i) / 4i)][((x_2371 + 2i) % 4i)];
        let x_2377 : vec3<f32> = vs_TEXCOORD1;
        let x_2380 : vec4<f32> = u_xlat9;
        let x_2382 : vec3<f32> = ((vec3<f32>(x_2375.x, x_2375.y, x_2375.w) * vec3<f32>(x_2377.z, x_2377.z, x_2377.z)) + vec3<f32>(x_2380.x, x_2380.y, x_2380.z));
        let x_2383 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2382.x, x_2382.y, x_2382.z, x_2383.w);
        let x_2385 : vec4<f32> = u_xlat9;
        let x_2387 : i32 = u_xlati67;
        let x_2390 : i32 = u_xlati67;
        let x_2394 : vec4<f32> = x_2322.x_AdditionalLightsWorldToLights[((x_2387 + 3i) / 4i)][((x_2390 + 3i) % 4i)];
        let x_2396 : vec3<f32> = (vec3<f32>(x_2385.x, x_2385.y, x_2385.z) + vec3<f32>(x_2394.x, x_2394.y, x_2394.w));
        let x_2397 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2396.x, x_2396.y, x_2396.z, x_2397.w);
        let x_2399 : vec4<f32> = u_xlat9;
        let x_2401 : vec4<f32> = u_xlat9;
        let x_2403 : vec2<f32> = (vec2<f32>(x_2399.x, x_2399.y) / vec2<f32>(x_2401.z, x_2401.z));
        let x_2404 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2403.x, x_2403.y, x_2404.z, x_2404.w);
        let x_2406 : vec4<f32> = u_xlat9;
        let x_2409 : vec2<f32> = ((vec2<f32>(x_2406.x, x_2406.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2410 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2409.x, x_2409.y, x_2410.z, x_2410.w);
        let x_2412 : vec4<f32> = u_xlat9;
        let x_2416 : vec2<f32> = clamp(vec2<f32>(x_2412.x, x_2412.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2417 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2416.x, x_2416.y, x_2417.z, x_2417.w);
        let x_2419 : u32 = u_xlatu64;
        let x_2422 : vec4<f32> = x_2322.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2419)];
        let x_2424 : vec4<f32> = u_xlat9;
        let x_2427 : u32 = u_xlatu64;
        let x_2430 : vec4<f32> = x_2322.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2427)];
        let x_2432 : vec2<f32> = ((vec2<f32>(x_2422.x, x_2422.y) * vec2<f32>(x_2424.x, x_2424.y)) + vec2<f32>(x_2430.z, x_2430.w));
        let x_2433 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2432.x, x_2432.y, x_2433.z, x_2433.w);
      } else {
        let x_2437 : i32 = u_xlati46;
        u_xlatb46 = (x_2437 == 1i);
        let x_2439 : bool = u_xlatb46;
        u_xlati46 = select(0i, 1i, x_2439);
        let x_2441 : i32 = u_xlati46;
        if ((x_2441 != 0i)) {
          let x_2445 : vec3<f32> = vs_TEXCOORD1;
          let x_2447 : i32 = u_xlati67;
          let x_2450 : i32 = u_xlati67;
          let x_2454 : vec4<f32> = x_2322.x_AdditionalLightsWorldToLights[((x_2447 + 1i) / 4i)][((x_2450 + 1i) % 4i)];
          u_xlat46 = (vec2<f32>(x_2445.y, x_2445.y) * vec2<f32>(x_2454.x, x_2454.y));
          let x_2457 : i32 = u_xlati67;
          let x_2459 : i32 = u_xlati67;
          let x_2462 : vec4<f32> = x_2322.x_AdditionalLightsWorldToLights[(x_2457 / 4i)][(x_2459 % 4i)];
          let x_2464 : vec3<f32> = vs_TEXCOORD1;
          let x_2467 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2462.x, x_2462.y) * vec2<f32>(x_2464.x, x_2464.x)) + x_2467);
          let x_2469 : i32 = u_xlati67;
          let x_2472 : i32 = u_xlati67;
          let x_2476 : vec4<f32> = x_2322.x_AdditionalLightsWorldToLights[((x_2469 + 2i) / 4i)][((x_2472 + 2i) % 4i)];
          let x_2478 : vec3<f32> = vs_TEXCOORD1;
          let x_2481 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2476.x, x_2476.y) * vec2<f32>(x_2478.z, x_2478.z)) + x_2481);
          let x_2483 : vec2<f32> = u_xlat46;
          let x_2484 : i32 = u_xlati67;
          let x_2487 : i32 = u_xlati67;
          let x_2491 : vec4<f32> = x_2322.x_AdditionalLightsWorldToLights[((x_2484 + 3i) / 4i)][((x_2487 + 3i) % 4i)];
          u_xlat46 = (x_2483 + vec2<f32>(x_2491.x, x_2491.y));
          let x_2494 : vec2<f32> = u_xlat46;
          u_xlat46 = ((x_2494 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2497 : vec2<f32> = u_xlat46;
          u_xlat46 = fract(x_2497);
          let x_2499 : u32 = u_xlatu64;
          let x_2502 : vec4<f32> = x_2322.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2499)];
          let x_2504 : vec2<f32> = u_xlat46;
          let x_2506 : u32 = u_xlatu64;
          let x_2509 : vec4<f32> = x_2322.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2506)];
          let x_2511 : vec2<f32> = ((vec2<f32>(x_2502.x, x_2502.y) * x_2504) + vec2<f32>(x_2509.z, x_2509.w));
          let x_2512 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2511.x, x_2511.y, x_2512.z, x_2512.w);
        } else {
          let x_2515 : vec3<f32> = vs_TEXCOORD1;
          let x_2517 : i32 = u_xlati67;
          let x_2520 : i32 = u_xlati67;
          let x_2524 : vec4<f32> = x_2322.x_AdditionalLightsWorldToLights[((x_2517 + 1i) / 4i)][((x_2520 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_2515.y, x_2515.y, x_2515.y, x_2515.y) * x_2524);
          let x_2526 : i32 = u_xlati67;
          let x_2528 : i32 = u_xlati67;
          let x_2531 : vec4<f32> = x_2322.x_AdditionalLightsWorldToLights[(x_2526 / 4i)][(x_2528 % 4i)];
          let x_2532 : vec3<f32> = vs_TEXCOORD1;
          let x_2535 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2531 * vec4<f32>(x_2532.x, x_2532.x, x_2532.x, x_2532.x)) + x_2535);
          let x_2537 : i32 = u_xlati67;
          let x_2540 : i32 = u_xlati67;
          let x_2544 : vec4<f32> = x_2322.x_AdditionalLightsWorldToLights[((x_2537 + 2i) / 4i)][((x_2540 + 2i) % 4i)];
          let x_2545 : vec3<f32> = vs_TEXCOORD1;
          let x_2548 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2544 * vec4<f32>(x_2545.z, x_2545.z, x_2545.z, x_2545.z)) + x_2548);
          let x_2550 : vec4<f32> = u_xlat10;
          let x_2551 : i32 = u_xlati67;
          let x_2554 : i32 = u_xlati67;
          let x_2558 : vec4<f32> = x_2322.x_AdditionalLightsWorldToLights[((x_2551 + 3i) / 4i)][((x_2554 + 3i) % 4i)];
          u_xlat10 = (x_2550 + x_2558);
          let x_2560 : vec4<f32> = u_xlat10;
          let x_2562 : vec4<f32> = u_xlat10;
          let x_2564 : vec3<f32> = (vec3<f32>(x_2560.x, x_2560.y, x_2560.z) / vec3<f32>(x_2562.w, x_2562.w, x_2562.w));
          let x_2565 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
          let x_2567 : vec4<f32> = u_xlat10;
          let x_2569 : vec4<f32> = u_xlat10;
          u_xlat46.x = dot(vec3<f32>(x_2567.x, x_2567.y, x_2567.z), vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
          let x_2574 : f32 = u_xlat46.x;
          u_xlat46.x = inverseSqrt(x_2574);
          let x_2577 : vec2<f32> = u_xlat46;
          let x_2579 : vec4<f32> = u_xlat10;
          let x_2581 : vec3<f32> = (vec3<f32>(x_2577.x, x_2577.x, x_2577.x) * vec3<f32>(x_2579.x, x_2579.y, x_2579.z));
          let x_2582 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
          let x_2584 : vec4<f32> = u_xlat10;
          u_xlat46.x = dot(abs(vec3<f32>(x_2584.x, x_2584.y, x_2584.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2591 : f32 = u_xlat46.x;
          u_xlat46.x = max(x_2591, 0.000001f);
          let x_2596 : f32 = u_xlat46.x;
          u_xlat46.x = (1.0f / x_2596);
          let x_2599 : vec2<f32> = u_xlat46;
          let x_2601 : vec4<f32> = u_xlat10;
          let x_2603 : vec3<f32> = (vec3<f32>(x_2599.x, x_2599.x, x_2599.x) * vec3<f32>(x_2601.z, x_2601.x, x_2601.y));
          let x_2604 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2603.x, x_2603.y, x_2603.z, x_2604.w);
          let x_2607 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_2607);
          let x_2611 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_2611, 0.0f, 1.0f);
          let x_2615 : vec4<f32> = u_xlat11;
          let x_2618 : vec4<bool> = (vec4<f32>(x_2615.y, x_2615.z, x_2615.y, x_2615.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb49 = vec2<bool>(x_2618.x, x_2618.y);
          let x_2621 : bool = u_xlatb49.x;
          if (x_2621) {
            let x_2626 : f32 = u_xlat11.x;
            x_2622 = x_2626;
          } else {
            let x_2629 : f32 = u_xlat11.x;
            x_2622 = -(x_2629);
          }
          let x_2631 : f32 = x_2622;
          u_xlat49.x = x_2631;
          let x_2634 : bool = u_xlatb49.y;
          if (x_2634) {
            let x_2639 : f32 = u_xlat11.x;
            x_2635 = x_2639;
          } else {
            let x_2642 : f32 = u_xlat11.x;
            x_2635 = -(x_2642);
          }
          let x_2644 : f32 = x_2635;
          u_xlat49.y = x_2644;
          let x_2646 : vec4<f32> = u_xlat10;
          let x_2648 : vec2<f32> = u_xlat46;
          let x_2651 : vec2<f32> = u_xlat49;
          u_xlat46 = ((vec2<f32>(x_2646.x, x_2646.y) * vec2<f32>(x_2648.x, x_2648.x)) + x_2651);
          let x_2653 : vec2<f32> = u_xlat46;
          u_xlat46 = ((x_2653 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2656 : vec2<f32> = u_xlat46;
          u_xlat46 = clamp(x_2656, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2660 : u32 = u_xlatu64;
          let x_2663 : vec4<f32> = x_2322.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2660)];
          let x_2665 : vec2<f32> = u_xlat46;
          let x_2667 : u32 = u_xlatu64;
          let x_2670 : vec4<f32> = x_2322.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2667)];
          let x_2672 : vec2<f32> = ((vec2<f32>(x_2663.x, x_2663.y) * x_2665) + vec2<f32>(x_2670.z, x_2670.w));
          let x_2673 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2672.x, x_2672.y, x_2673.z, x_2673.w);
        }
      }
      let x_2680 : vec4<f32> = u_xlat9;
      let x_2683 : f32 = x_43.x_GlobalMipBias.x;
      let x_2684 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2680.x, x_2680.y), x_2683);
      u_xlat9 = x_2684;
      let x_2686 : bool = u_xlatb6.y;
      if (x_2686) {
        let x_2691 : f32 = u_xlat9.w;
        x_2687 = x_2691;
      } else {
        let x_2694 : f32 = u_xlat9.x;
        x_2687 = x_2694;
      }
      let x_2695 : f32 = x_2687;
      u_xlat46.x = x_2695;
      let x_2698 : bool = u_xlatb6.x;
      if (x_2698) {
        let x_2702 : vec4<f32> = u_xlat9;
        x_2699 = vec3<f32>(x_2702.x, x_2702.y, x_2702.z);
      } else {
        let x_2705 : vec2<f32> = u_xlat46;
        x_2699 = vec3<f32>(x_2705.x, x_2705.x, x_2705.x);
      }
      let x_2707 : vec3<f32> = x_2699;
      let x_2708 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2707.x, x_2707.y, x_2707.z, x_2708.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_2714 : vec4<f32> = u_xlat9;
    let x_2716 : u32 = u_xlatu64;
    let x_2719 : vec4<f32> = x_2202.x_AdditionalLightsColor[bitcast<i32>(x_2716)];
    let x_2721 : vec3<f32> = (vec3<f32>(x_2714.x, x_2714.y, x_2714.z) * vec3<f32>(x_2719.x, x_2719.y, x_2719.z));
    let x_2722 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2721.x, x_2721.y, x_2721.z, x_2722.w);
    let x_2724 : vec4<f32> = u_xlat1;
    let x_2726 : vec4<f32> = u_xlat9;
    let x_2728 : vec3<f32> = (vec3<f32>(x_2724.x, x_2724.x, x_2724.x) * vec3<f32>(x_2726.x, x_2726.y, x_2726.z));
    let x_2729 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2728.x, x_2728.y, x_2728.z, x_2729.w);
    let x_2731 : f32 = u_xlat65;
    let x_2733 : vec4<f32> = u_xlat9;
    let x_2735 : vec3<f32> = (vec3<f32>(x_2731, x_2731, x_2731) * vec3<f32>(x_2733.x, x_2733.y, x_2733.z));
    let x_2736 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2735.x, x_2735.y, x_2735.z, x_2736.w);
    let x_2738 : vec3<f32> = u_xlat2;
    let x_2739 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(x_2738, vec3<f32>(x_2739.x, x_2739.y, x_2739.z));
    let x_2742 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2742, 0.0f, 1.0f);
    let x_2744 : f32 = u_xlat64;
    let x_2746 : vec4<f32> = u_xlat9;
    let x_2748 : vec3<f32> = (vec3<f32>(x_2744, x_2744, x_2744) * vec3<f32>(x_2746.x, x_2746.y, x_2746.z));
    let x_2749 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2749.w);
    let x_2751 : vec3<f32> = u_xlat3;
    let x_2752 : vec3<f32> = u_xlat20;
    let x_2755 : vec4<f32> = u_xlat8;
    let x_2757 : vec3<f32> = ((x_2751 * vec3<f32>(x_2752.x, x_2752.x, x_2752.x)) + vec3<f32>(x_2755.x, x_2755.y, x_2755.z));
    let x_2758 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2757.x, x_2757.y, x_2757.z, x_2758.w);
    let x_2760 : vec4<f32> = u_xlat8;
    let x_2762 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(vec3<f32>(x_2760.x, x_2760.y, x_2760.z), vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
    let x_2765 : f32 = u_xlat64;
    u_xlat64 = max(x_2765, 1.17549435e-37f);
    let x_2767 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_2767);
    let x_2769 : f32 = u_xlat64;
    let x_2771 : vec4<f32> = u_xlat8;
    let x_2773 : vec3<f32> = (vec3<f32>(x_2769, x_2769, x_2769) * vec3<f32>(x_2771.x, x_2771.y, x_2771.z));
    let x_2774 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2774.w);
    let x_2776 : vec3<f32> = u_xlat2;
    let x_2777 : vec4<f32> = u_xlat8;
    u_xlat64 = dot(x_2776, vec3<f32>(x_2777.x, x_2777.y, x_2777.z));
    let x_2780 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2780, 0.0f, 1.0f);
    let x_2782 : f32 = u_xlat64;
    u_xlat64 = log2(x_2782);
    let x_2784 : f32 = u_xlat60;
    let x_2785 : f32 = u_xlat64;
    u_xlat64 = (x_2784 * x_2785);
    let x_2787 : f32 = u_xlat64;
    u_xlat64 = exp2(x_2787);
    let x_2789 : f32 = u_xlat64;
    let x_2792 : vec4<f32> = x_56.x_SpecColor;
    let x_2794 : vec3<f32> = (vec3<f32>(x_2789, x_2789, x_2789) * vec3<f32>(x_2792.x, x_2792.y, x_2792.z));
    let x_2795 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2794.x, x_2794.y, x_2794.z, x_2795.w);
    let x_2797 : vec4<f32> = u_xlat8;
    let x_2799 : vec4<f32> = u_xlat9;
    let x_2801 : vec3<f32> = (vec3<f32>(x_2797.x, x_2797.y, x_2797.z) * vec3<f32>(x_2799.x, x_2799.y, x_2799.z));
    let x_2802 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2801.x, x_2801.y, x_2801.z, x_2802.w);
    let x_2804 : vec4<f32> = u_xlat10;
    let x_2806 : vec4<f32> = u_xlat1;
    let x_2809 : vec4<f32> = u_xlat8;
    let x_2811 : vec3<f32> = ((vec3<f32>(x_2804.x, x_2804.y, x_2804.z) * vec3<f32>(x_2806.y, x_2806.z, x_2806.w)) + vec3<f32>(x_2809.x, x_2809.y, x_2809.z));
    let x_2812 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2811.x, x_2811.y, x_2811.z, x_2812.w);
    let x_2814 : vec4<f32> = u_xlat7;
    let x_2816 : vec4<f32> = u_xlat8;
    let x_2818 : vec3<f32> = (vec3<f32>(x_2814.x, x_2814.y, x_2814.z) + vec3<f32>(x_2816.x, x_2816.y, x_2816.z));
    let x_2819 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2818.x, x_2818.y, x_2818.z, x_2819.w);

    continuing {
      let x_2821 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2821 + bitcast<u32>(1i));
    }
  }
  let x_2823 : vec4<f32> = u_xlat5;
  let x_2825 : vec4<f32> = u_xlat1;
  let x_2828 : vec4<f32> = u_xlat4;
  let x_2830 : vec3<f32> = ((vec3<f32>(x_2823.x, x_2823.y, x_2823.z) * vec3<f32>(x_2825.y, x_2825.z, x_2825.w)) + vec3<f32>(x_2828.x, x_2828.y, x_2828.z));
  let x_2831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
  let x_2835 : vec4<f32> = u_xlat7;
  let x_2837 : vec4<f32> = u_xlat1;
  let x_2839 : vec3<f32> = (vec3<f32>(x_2835.x, x_2835.y, x_2835.z) + vec3<f32>(x_2837.x, x_2837.y, x_2837.z));
  let x_2840 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2839.x, x_2839.y, x_2839.z, x_2840.w);
  let x_2843 : f32 = x_56.x_Surface;
  u_xlatb20 = (x_2843 == 1.0f);
  let x_2845 : bool = u_xlatb20;
  let x_2846 : bool = u_xlatb40;
  u_xlatb20 = (x_2845 | x_2846);
  let x_2848 : bool = u_xlatb20;
  if (x_2848) {
    let x_2853 : f32 = u_xlat0.x;
    x_2849 = x_2853;
  } else {
    x_2849 = 1.0f;
  }
  let x_2855 : f32 = x_2849;
  SV_Target0.w = x_2855;
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

