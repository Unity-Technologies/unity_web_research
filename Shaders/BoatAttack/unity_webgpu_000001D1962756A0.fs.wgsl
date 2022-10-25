struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_NightFade : f32,
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

@group(0) @binding(5) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(7) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(8) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_122 : UnityPerDraw;

@group(0) @binding(6) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_545 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_612 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1062 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1163 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlatb31 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlatb46 : bool;
  var u_xlat46 : f32;
  var u_xlatb47 : bool;
  var u_xlat47 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlatb45 : bool;
  var u_xlat5 : vec3<f32>;
  var x_279 : f32;
  var x_291 : f32;
  var x_303 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var u_xlatb8 : vec2<bool>;
  var u_xlat51 : f32;
  var x_699 : f32;
  var x_710 : vec3<f32>;
  var u_xlat52 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat24 : vec3<f32>;
  var u_xlatu45 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatu52 : u32;
  var u_xlati38 : i32;
  var u_xlati52 : i32;
  var u_xlati53 : i32;
  var u_xlat12 : vec4<f32>;
  var u_xlatb52 : bool;
  var u_xlat42 : vec2<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb38 : vec2<bool>;
  var u_xlat38 : vec2<f32>;
  var x_1458 : f32;
  var x_1471 : f32;
  var x_1523 : f32;
  var x_1534 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec4<f32> = vs_INTERP3;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(Texture2D_52571568, samplerTexture2D_52571568, vec2<f32>(x_40.x, x_40.y), x_51);
  u_xlat0 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_60 : vec4<f32> = vs_INTERP3;
  let x_63 : f32 = x_45.x_GlobalMipBias.x;
  let x_64 : vec4<f32> = textureSampleBias(Texture2D_8BA53EED, samplerTexture2D_8BA53EED, vec2<f32>(x_60.x, x_60.y), x_63);
  let x_65 : vec3<f32> = vec3<f32>(x_64.x, x_64.y, x_64.w);
  let x_66 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_65.x, x_65.y, x_65.z, x_66.w);
  let x_70 : f32 = u_xlat1.x;
  let x_73 : f32 = u_xlat1.z;
  u_xlat1.x = (x_70 * x_73);
  let x_76 : vec4<f32> = u_xlat1;
  let x_83 : vec2<f32> = ((vec2<f32>(x_76.x, x_76.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_87 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(vec2<f32>(x_87.x, x_87.y), vec2<f32>(x_89.x, x_89.y));
  let x_92 : f32 = u_xlat45;
  u_xlat45 = min(x_92, 1.0f);
  let x_94 : f32 = u_xlat45;
  u_xlat45 = (-(x_94) + 1.0f);
  let x_97 : f32 = u_xlat45;
  u_xlat45 = sqrt(x_97);
  let x_99 : f32 = u_xlat45;
  u_xlat45 = max(x_99, 1.00000002e-16f);
  let x_108 : vec4<f32> = vs_INTERP3;
  let x_111 : f32 = x_45.x_GlobalMipBias.x;
  let x_112 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_108.x, x_108.y), x_111);
  u_xlat2 = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_114 * vec3<f32>(14.0f, 14.0f, 14.0f));
  let x_127 : vec4<f32> = x_122.unity_ObjectToWorld[3i];
  let x_130 : vec4<f32> = x_122.unity_ObjectToWorld[3i];
  u_xlat31 = dot(vec3<f32>(x_127.x, x_127.y, x_127.z), vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_133);
  let x_135 : f32 = u_xlat31;
  u_xlat31 = fract(x_135);
  let x_137 : f32 = u_xlat31;
  let x_140 : f32 = x_45.x_NightFade;
  u_xlat31 = (x_137 + x_140);
  let x_145 : f32 = u_xlat31;
  u_xlatb31 = (x_145 >= 1.0f);
  let x_147 : bool = u_xlatb31;
  u_xlat31 = select(0.0f, 1.0f, x_147);
  let x_156 : vec4<f32> = vs_INTERP3;
  let x_159 : f32 = x_45.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_156.x, x_156.y), x_159);
  u_xlat3 = vec3<f32>(x_160.x, x_160.w, x_160.y);
  let x_165 : f32 = vs_INTERP2.w;
  u_xlatb46 = (0.0f < x_165);
  let x_168 : bool = u_xlatb46;
  u_xlat46 = select(-1.0f, 1.0f, x_168);
  let x_172 : f32 = x_122.unity_WorldTransformParams.w;
  u_xlatb47 = (x_172 >= 0.0f);
  let x_175 : bool = u_xlatb47;
  u_xlat47 = select(-1.0f, 1.0f, x_175);
  let x_177 : f32 = u_xlat46;
  let x_178 : f32 = u_xlat47;
  u_xlat46 = (x_177 * x_178);
  let x_183 : vec3<f32> = vs_INTERP1;
  let x_185 : vec4<f32> = vs_INTERP2;
  let x_187 : vec3<f32> = (vec3<f32>(x_183.z, x_183.x, x_183.y) * vec3<f32>(x_185.y, x_185.z, x_185.x));
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : vec3<f32> = vs_INTERP1;
  let x_192 : vec4<f32> = vs_INTERP2;
  let x_195 : vec4<f32> = u_xlat4;
  let x_198 : vec3<f32> = ((vec3<f32>(x_190.y, x_190.z, x_190.x) * vec3<f32>(x_192.z, x_192.x, x_192.y)) + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : f32 = u_xlat46;
  let x_203 : vec4<f32> = u_xlat4;
  let x_205 : vec3<f32> = (vec3<f32>(x_201, x_201, x_201) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat4;
  let x_212 : vec3<f32> = (vec3<f32>(x_208.y, x_208.y, x_208.y) * vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec4<f32> = vs_INTERP2;
  let x_220 : vec4<f32> = u_xlat4;
  let x_222 : vec3<f32> = ((vec3<f32>(x_215.x, x_215.x, x_215.x) * vec3<f32>(x_217.x, x_217.y, x_217.z)) + vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_222.x, x_222.y, x_223.z, x_222.z);
  let x_225 : f32 = u_xlat45;
  let x_227 : vec3<f32> = vs_INTERP1;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = ((vec3<f32>(x_225, x_225, x_225) * x_227) + vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_231.z);
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(vec3<f32>(x_234.x, x_234.y, x_234.w), vec3<f32>(x_236.x, x_236.y, x_236.w));
  let x_239 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_239);
  let x_241 : f32 = u_xlat45;
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = (vec3<f32>(x_241, x_241, x_241) * vec3<f32>(x_243.x, x_243.y, x_243.w));
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_251 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb45 = (x_251 == 0.0f);
  let x_254 : vec3<f32> = vs_INTERP0;
  let x_259 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_260 : vec3<f32> = (-(x_254) + x_259);
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_260.z);
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat47 = dot(vec3<f32>(x_263.x, x_263.y, x_263.w), vec3<f32>(x_265.x, x_265.y, x_265.w));
  let x_268 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_268);
  let x_270 : vec4<f32> = u_xlat1;
  let x_272 : f32 = u_xlat47;
  let x_274 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.w) * vec3<f32>(x_272, x_272, x_272));
  let x_275 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_274.x, x_274.y, x_275.z, x_274.z);
  let x_278 : bool = u_xlatb45;
  if (x_278) {
    let x_283 : f32 = u_xlat1.x;
    x_279 = x_283;
  } else {
    let x_287 : f32 = x_45.unity_MatrixV[0i].z;
    x_279 = x_287;
  }
  let x_288 : f32 = x_279;
  u_xlat5.x = x_288;
  let x_290 : bool = u_xlatb45;
  if (x_290) {
    let x_296 : f32 = u_xlat1.y;
    x_291 = x_296;
  } else {
    let x_299 : f32 = x_45.unity_MatrixV[1i].z;
    x_291 = x_299;
  }
  let x_300 : f32 = x_291;
  u_xlat5.y = x_300;
  let x_302 : bool = u_xlatb45;
  if (x_302) {
    let x_307 : f32 = u_xlat1.w;
    x_303 = x_307;
  } else {
    let x_311 : f32 = x_45.unity_MatrixV[2i].z;
    x_303 = x_311;
  }
  let x_312 : f32 = x_303;
  u_xlat5.z = x_312;
  u_xlat4.w = 1.0f;
  let x_318 : vec4<f32> = x_122.unity_SHAr;
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_318, x_319);
  let x_324 : vec4<f32> = x_122.unity_SHAg;
  let x_325 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_324, x_325);
  let x_330 : vec4<f32> = x_122.unity_SHAb;
  let x_331 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_330, x_331);
  let x_335 : vec4<f32> = u_xlat4;
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_335.y, x_335.z, x_335.z, x_335.x) * vec4<f32>(x_337.x, x_337.y, x_337.z, x_337.z));
  let x_343 : vec4<f32> = x_122.unity_SHBr;
  let x_344 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_343, x_344);
  let x_349 : vec4<f32> = x_122.unity_SHBg;
  let x_350 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_349, x_350);
  let x_355 : vec4<f32> = x_122.unity_SHBb;
  let x_356 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_355, x_356);
  let x_360 : f32 = u_xlat4.y;
  let x_362 : f32 = u_xlat4.y;
  u_xlat45 = (x_360 * x_362);
  let x_365 : f32 = u_xlat4.x;
  let x_367 : f32 = u_xlat4.x;
  let x_369 : f32 = u_xlat45;
  u_xlat45 = ((x_365 * x_367) + -(x_369));
  let x_374 : vec4<f32> = x_122.unity_SHC;
  let x_376 : f32 = u_xlat45;
  let x_379 : vec4<f32> = u_xlat8;
  let x_381 : vec3<f32> = ((vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(x_376, x_376, x_376)) + vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_381.z);
  let x_384 : vec4<f32> = u_xlat1;
  let x_386 : vec4<f32> = u_xlat6;
  let x_388 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.w) + vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_388.z);
  let x_391 : vec4<f32> = u_xlat1;
  let x_394 : vec3<f32> = max(vec3<f32>(x_391.x, x_391.y, x_391.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_395 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_394.x, x_394.y, x_395.z, x_394.z);
  let x_399 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_400 : vec2<f32> = vec2<f32>(x_399.x, x_399.y);
  let x_404 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_400.x, x_400.y));
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat6;
  let x_409 : vec4<f32> = hlslcc_FragCoord;
  let x_411 : vec2<f32> = (vec2<f32>(x_407.x, x_407.y) * vec2<f32>(x_409.x, x_409.y));
  let x_412 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
  let x_415 : f32 = u_xlat6.y;
  let x_418 : f32 = x_45.x_ScaleBiasRt.x;
  let x_421 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat45 = ((x_415 * x_418) + x_421);
  let x_423 : f32 = u_xlat45;
  u_xlat6.z = (-(x_423) + 1.0f);
  let x_427 : vec3<f32> = u_xlat3;
  let x_428 : vec2<f32> = vec2<f32>(x_427.x, x_427.y);
  let x_429 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_428.x, x_428.y, x_429.z);
  let x_431 : vec3<f32> = u_xlat3;
  let x_435 : vec2<f32> = clamp(vec2<f32>(x_431.x, x_431.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_436 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_435.x, x_435.y, x_436.z);
  let x_439 : f32 = u_xlat3.x;
  u_xlat45 = ((-(x_439) * 0.959999979f) + 0.959999979f);
  let x_444 : f32 = u_xlat45;
  let x_447 : f32 = u_xlat3.y;
  u_xlat47 = (-(x_444) + x_447);
  let x_449 : f32 = u_xlat45;
  let x_451 : vec3<f32> = u_xlat0;
  let x_452 : vec3<f32> = (vec3<f32>(x_449, x_449, x_449) * x_451);
  let x_453 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_455 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_455 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_459 : vec3<f32> = u_xlat3;
  let x_461 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_459.x, x_459.x, x_459.x) * x_461) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_467 : f32 = u_xlat3.y;
  u_xlat45 = (-(x_467) + 1.0f);
  let x_470 : f32 = u_xlat45;
  let x_471 : f32 = u_xlat45;
  u_xlat3.x = (x_470 * x_471);
  let x_475 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_475, 0.0078125f);
  let x_481 : f32 = u_xlat3.x;
  let x_483 : f32 = u_xlat3.x;
  u_xlat18 = (x_481 * x_483);
  let x_485 : f32 = u_xlat47;
  u_xlat47 = (x_485 + 1.0f);
  let x_487 : f32 = u_xlat47;
  u_xlat47 = min(x_487, 1.0f);
  let x_491 : f32 = u_xlat3.x;
  u_xlat48 = ((x_491 * 4.0f) + 2.0f);
  let x_501 : vec4<f32> = u_xlat6;
  let x_504 : f32 = x_45.x_GlobalMipBias.x;
  let x_505 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_501.x, x_501.z), x_504);
  u_xlat49 = x_505.x;
  let x_508 : f32 = u_xlat49;
  u_xlat50 = (x_508 + -1.0f);
  let x_512 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_513 : f32 = u_xlat50;
  u_xlat50 = ((x_512 * x_513) + 1.0f);
  let x_518 : f32 = u_xlat3.z;
  let x_519 : f32 = u_xlat49;
  u_xlat33 = min(x_518, x_519);
  let x_523 : vec4<f32> = vs_INTERP8;
  let x_524 : vec2<f32> = vec2<f32>(x_523.x, x_523.y);
  let x_526 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_524.x, x_524.y, x_526);
  let x_538 : vec3<f32> = txVec0;
  let x_540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_538.xy, x_538.z);
  u_xlat49 = x_540;
  let x_547 : f32 = x_545.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_547) + 1.0f);
  let x_551 : f32 = u_xlat49;
  let x_553 : f32 = x_545.x_MainLightShadowParams.x;
  let x_556 : f32 = u_xlat6.x;
  u_xlat49 = ((x_551 * x_553) + x_556);
  let x_560 : f32 = vs_INTERP8.z;
  u_xlatb6 = (0.0f >= x_560);
  let x_564 : f32 = vs_INTERP8.z;
  u_xlatb21 = (x_564 >= 1.0f);
  let x_566 : bool = u_xlatb21;
  let x_567 : bool = u_xlatb6;
  u_xlatb6 = (x_566 | x_567);
  let x_569 : bool = u_xlatb6;
  let x_570 : f32 = u_xlat49;
  u_xlat49 = select(x_570, 1.0f, x_569);
  let x_572 : vec3<f32> = vs_INTERP0;
  let x_574 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_576 : vec3<f32> = (x_572 + -(x_574));
  let x_577 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat6;
  let x_581 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_579.x, x_579.y, x_579.z), vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_586 : f32 = u_xlat6.x;
  let x_588 : f32 = x_545.x_MainLightShadowParams.z;
  let x_591 : f32 = x_545.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_586 * x_588) + x_591);
  let x_595 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_595, 0.0f, 1.0f);
  let x_599 : f32 = u_xlat49;
  u_xlat21 = (-(x_599) + 1.0f);
  let x_603 : f32 = u_xlat6.x;
  let x_604 : f32 = u_xlat21;
  let x_606 : f32 = u_xlat49;
  u_xlat49 = ((x_603 * x_604) + x_606);
  let x_614 : f32 = x_612.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_614 == -1.0f));
  let x_616 : bool = u_xlatb6;
  if (x_616) {
    let x_619 : vec3<f32> = vs_INTERP0;
    let x_622 : vec4<f32> = x_612.x_MainLightWorldToLight[1i];
    let x_624 : vec2<f32> = (vec2<f32>(x_619.y, x_619.y) * vec2<f32>(x_622.x, x_622.y));
    let x_625 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
    let x_628 : vec4<f32> = x_612.x_MainLightWorldToLight[0i];
    let x_630 : vec3<f32> = vs_INTERP0;
    let x_633 : vec4<f32> = u_xlat6;
    let x_635 : vec2<f32> = ((vec2<f32>(x_628.x, x_628.y) * vec2<f32>(x_630.x, x_630.x)) + vec2<f32>(x_633.x, x_633.y));
    let x_636 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
    let x_639 : vec4<f32> = x_612.x_MainLightWorldToLight[2i];
    let x_641 : vec3<f32> = vs_INTERP0;
    let x_644 : vec4<f32> = u_xlat6;
    let x_646 : vec2<f32> = ((vec2<f32>(x_639.x, x_639.y) * vec2<f32>(x_641.z, x_641.z)) + vec2<f32>(x_644.x, x_644.y));
    let x_647 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
    let x_649 : vec4<f32> = u_xlat6;
    let x_652 : vec4<f32> = x_612.x_MainLightWorldToLight[3i];
    let x_654 : vec2<f32> = (vec2<f32>(x_649.x, x_649.y) + vec2<f32>(x_652.x, x_652.y));
    let x_655 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
    let x_657 : vec4<f32> = u_xlat6;
    let x_662 : vec2<f32> = ((vec2<f32>(x_657.x, x_657.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_663 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
    let x_670 : vec4<f32> = u_xlat6;
    let x_673 : f32 = x_45.x_GlobalMipBias.x;
    let x_674 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_670.x, x_670.y), x_673);
    u_xlat6 = x_674;
    let x_679 : f32 = x_612.x_MainLightCookieTextureFormat;
    let x_681 : f32 = x_612.x_MainLightCookieTextureFormat;
    let x_683 : f32 = x_612.x_MainLightCookieTextureFormat;
    let x_685 : f32 = x_612.x_MainLightCookieTextureFormat;
    let x_686 : vec4<f32> = vec4<f32>(x_679, x_681, x_683, x_685);
    let x_694 : vec4<bool> = (vec4<f32>(x_686.x, x_686.y, x_686.z, x_686.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_694.x, x_694.y);
    let x_698 : bool = u_xlatb8.y;
    if (x_698) {
      let x_703 : f32 = u_xlat6.w;
      x_699 = x_703;
    } else {
      let x_706 : f32 = u_xlat6.x;
      x_699 = x_706;
    }
    let x_707 : f32 = x_699;
    u_xlat51 = x_707;
    let x_709 : bool = u_xlatb8.x;
    if (x_709) {
      let x_713 : vec4<f32> = u_xlat6;
      x_710 = vec3<f32>(x_713.x, x_713.y, x_713.z);
    } else {
      let x_716 : f32 = u_xlat51;
      x_710 = vec3<f32>(x_716, x_716, x_716);
    }
    let x_718 : vec3<f32> = x_710;
    let x_719 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_725 : vec4<f32> = u_xlat6;
  let x_728 : vec4<f32> = x_45.x_MainLightColor;
  let x_730 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : f32 = u_xlat50;
  let x_735 : vec4<f32> = u_xlat6;
  let x_737 : vec3<f32> = (vec3<f32>(x_733, x_733, x_733) * vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec3<f32> = u_xlat5;
  let x_742 : vec4<f32> = u_xlat4;
  u_xlat51 = dot(-(x_740), vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : f32 = u_xlat51;
  let x_746 : f32 = u_xlat51;
  u_xlat51 = (x_745 + x_746);
  let x_748 : vec4<f32> = u_xlat4;
  let x_750 : f32 = u_xlat51;
  let x_754 : vec3<f32> = u_xlat5;
  let x_756 : vec3<f32> = ((vec3<f32>(x_748.x, x_748.y, x_748.z) * -(vec3<f32>(x_750, x_750, x_750))) + -(x_754));
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_759 : vec4<f32> = u_xlat4;
  let x_761 : vec3<f32> = u_xlat5;
  u_xlat51 = dot(vec3<f32>(x_759.x, x_759.y, x_759.z), x_761);
  let x_763 : f32 = u_xlat51;
  u_xlat51 = clamp(x_763, 0.0f, 1.0f);
  let x_765 : f32 = u_xlat51;
  u_xlat51 = (-(x_765) + 1.0f);
  let x_768 : f32 = u_xlat51;
  let x_769 : f32 = u_xlat51;
  u_xlat51 = (x_768 * x_769);
  let x_771 : f32 = u_xlat51;
  let x_772 : f32 = u_xlat51;
  u_xlat51 = (x_771 * x_772);
  let x_775 : f32 = u_xlat45;
  u_xlat52 = ((-(x_775) * 0.699999988f) + 1.700000048f);
  let x_781 : f32 = u_xlat45;
  let x_782 : f32 = u_xlat52;
  u_xlat45 = (x_781 * x_782);
  let x_784 : f32 = u_xlat45;
  u_xlat45 = (x_784 * 6.0f);
  let x_795 : vec4<f32> = u_xlat8;
  let x_797 : f32 = u_xlat45;
  let x_798 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_795.x, x_795.y, x_795.z), x_797);
  u_xlat8 = x_798;
  let x_800 : f32 = u_xlat8.w;
  u_xlat45 = (x_800 + -1.0f);
  let x_803 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_804 : f32 = u_xlat45;
  u_xlat45 = ((x_803 * x_804) + 1.0f);
  let x_807 : f32 = u_xlat45;
  u_xlat45 = max(x_807, 0.0f);
  let x_809 : f32 = u_xlat45;
  u_xlat45 = log2(x_809);
  let x_811 : f32 = u_xlat45;
  let x_813 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_811 * x_813);
  let x_815 : f32 = u_xlat45;
  u_xlat45 = exp2(x_815);
  let x_817 : f32 = u_xlat45;
  let x_819 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_817 * x_819);
  let x_821 : vec4<f32> = u_xlat8;
  let x_823 : f32 = u_xlat45;
  let x_825 : vec3<f32> = (vec3<f32>(x_821.x, x_821.y, x_821.z) * vec3<f32>(x_823, x_823, x_823));
  let x_826 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_830 : vec3<f32> = u_xlat3;
  let x_832 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_830.x, x_830.x) * vec2<f32>(x_832.x, x_832.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_838 : f32 = u_xlat9.y;
  u_xlat45 = (1.0f / x_838);
  let x_841 : vec3<f32> = u_xlat0;
  let x_843 : f32 = u_xlat47;
  u_xlat24 = (-(x_841) + vec3<f32>(x_843, x_843, x_843));
  let x_846 : f32 = u_xlat51;
  let x_848 : vec3<f32> = u_xlat24;
  let x_850 : vec3<f32> = u_xlat0;
  u_xlat24 = ((vec3<f32>(x_846, x_846, x_846) * x_848) + x_850);
  let x_852 : f32 = u_xlat45;
  let x_854 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_852, x_852, x_852) * x_854);
  let x_856 : vec4<f32> = u_xlat8;
  let x_858 : vec3<f32> = u_xlat24;
  let x_859 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) * x_858);
  let x_860 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec4<f32> = u_xlat1;
  let x_864 : vec4<f32> = u_xlat7;
  let x_867 : vec4<f32> = u_xlat8;
  let x_869 : vec3<f32> = ((vec3<f32>(x_862.x, x_862.y, x_862.w) * vec3<f32>(x_864.x, x_864.y, x_864.z)) + vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_870 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_869.z);
  let x_872 : f32 = u_xlat49;
  let x_875 : f32 = x_122.unity_LightData.z;
  u_xlat45 = (x_872 * x_875);
  let x_877 : vec4<f32> = u_xlat4;
  let x_880 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat47 = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : f32 = u_xlat47;
  u_xlat47 = clamp(x_883, 0.0f, 1.0f);
  let x_885 : f32 = u_xlat45;
  let x_886 : f32 = u_xlat47;
  u_xlat45 = (x_885 * x_886);
  let x_888 : f32 = u_xlat45;
  let x_890 : vec4<f32> = u_xlat6;
  let x_892 : vec3<f32> = (vec3<f32>(x_888, x_888, x_888) * vec3<f32>(x_890.x, x_890.y, x_890.z));
  let x_893 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec3<f32> = u_xlat5;
  let x_897 : vec4<f32> = x_45.x_MainLightPosition;
  let x_899 : vec3<f32> = (x_895 + vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat8;
  let x_904 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_902.x, x_902.y, x_902.z), vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_907 : f32 = u_xlat45;
  u_xlat45 = max(x_907, 1.17549435e-37f);
  let x_910 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_910);
  let x_912 : f32 = u_xlat45;
  let x_914 : vec4<f32> = u_xlat8;
  let x_916 : vec3<f32> = (vec3<f32>(x_912, x_912, x_912) * vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_917 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_919 : vec4<f32> = u_xlat4;
  let x_921 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_919.x, x_919.y, x_919.z), vec3<f32>(x_921.x, x_921.y, x_921.z));
  let x_924 : f32 = u_xlat45;
  u_xlat45 = clamp(x_924, 0.0f, 1.0f);
  let x_927 : vec4<f32> = x_45.x_MainLightPosition;
  let x_929 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : f32 = u_xlat47;
  u_xlat47 = clamp(x_932, 0.0f, 1.0f);
  let x_934 : f32 = u_xlat45;
  let x_935 : f32 = u_xlat45;
  u_xlat45 = (x_934 * x_935);
  let x_937 : f32 = u_xlat45;
  let x_939 : f32 = u_xlat9.x;
  u_xlat45 = ((x_937 * x_939) + 1.000010014f);
  let x_943 : f32 = u_xlat47;
  let x_944 : f32 = u_xlat47;
  u_xlat47 = (x_943 * x_944);
  let x_946 : f32 = u_xlat45;
  let x_947 : f32 = u_xlat45;
  u_xlat45 = (x_946 * x_947);
  let x_949 : f32 = u_xlat47;
  u_xlat47 = max(x_949, 0.100000001f);
  let x_952 : f32 = u_xlat45;
  let x_953 : f32 = u_xlat47;
  u_xlat45 = (x_952 * x_953);
  let x_955 : f32 = u_xlat48;
  let x_956 : f32 = u_xlat45;
  u_xlat45 = (x_955 * x_956);
  let x_958 : f32 = u_xlat18;
  let x_959 : f32 = u_xlat45;
  u_xlat45 = (x_958 / x_959);
  let x_961 : vec3<f32> = u_xlat0;
  let x_962 : f32 = u_xlat45;
  let x_965 : vec4<f32> = u_xlat7;
  let x_967 : vec3<f32> = ((x_961 * vec3<f32>(x_962, x_962, x_962)) + vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_970 : vec4<f32> = u_xlat6;
  let x_972 : vec4<f32> = u_xlat8;
  let x_974 : vec3<f32> = (vec3<f32>(x_970.x, x_970.y, x_970.z) * vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_975 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_978 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_980 : f32 = x_122.unity_LightData.y;
  u_xlat45 = min(x_978, x_980);
  let x_984 : f32 = u_xlat45;
  u_xlatu45 = bitcast<u32>(i32(x_984));
  let x_988 : f32 = x_612.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_990 : f32 = x_612.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_992 : f32 = x_612.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_994 : f32 = x_612.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_995 : vec4<f32> = vec4<f32>(x_988, x_990, x_992, x_994);
  let x_1001 : vec4<bool> = (vec4<f32>(x_995.x, x_995.y, x_995.z, x_995.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_1001.x, x_1001.y);
  u_xlat24.x = 0.0f;
  u_xlat24.y = 0.0f;
  u_xlat24.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1012 : u32 = u_xlatu_loop_1;
    let x_1013 : u32 = u_xlatu45;
    if ((x_1012 < x_1013)) {
    } else {
      break;
    }
    let x_1016 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1016 >> 2u);
    let x_1020 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1020 & 3u));
    let x_1024 : u32 = u_xlatu3;
    let x_1027 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_1024)];
    let x_1037 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1042 : vec4<u32> = indexable[x_1037];
    u_xlat3.x = dot(x_1027, bitcast<vec4<f32>>(x_1042));
    let x_1047 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_1047));
    let x_1051 : vec3<f32> = vs_INTERP0;
    let x_1063 : u32 = u_xlatu3;
    let x_1066 : vec4<f32> = x_1062.x_AdditionalLightsPosition[bitcast<i32>(x_1063)];
    let x_1069 : u32 = u_xlatu3;
    let x_1072 : vec4<f32> = x_1062.x_AdditionalLightsPosition[bitcast<i32>(x_1069)];
    u_xlat10 = ((-(x_1051) * vec3<f32>(x_1066.w, x_1066.w, x_1066.w)) + vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
    let x_1075 : vec3<f32> = u_xlat10;
    let x_1076 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1075, x_1076);
    let x_1078 : f32 = u_xlat49;
    u_xlat49 = max(x_1078, 6.10351562e-05f);
    let x_1081 : f32 = u_xlat49;
    u_xlat51 = inverseSqrt(x_1081);
    let x_1084 : f32 = u_xlat51;
    let x_1086 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_1084, x_1084, x_1084) * x_1086);
    let x_1088 : f32 = u_xlat49;
    u_xlat52 = (1.0f / x_1088);
    let x_1090 : f32 = u_xlat49;
    let x_1091 : u32 = u_xlatu3;
    let x_1094 : f32 = x_1062.x_AdditionalLightsAttenuation[bitcast<i32>(x_1091)].x;
    u_xlat49 = (x_1090 * x_1094);
    let x_1096 : f32 = u_xlat49;
    let x_1098 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1096) * x_1098) + 1.0f);
    let x_1101 : f32 = u_xlat49;
    u_xlat49 = max(x_1101, 0.0f);
    let x_1103 : f32 = u_xlat49;
    let x_1104 : f32 = u_xlat49;
    u_xlat49 = (x_1103 * x_1104);
    let x_1106 : f32 = u_xlat49;
    let x_1107 : f32 = u_xlat52;
    u_xlat49 = (x_1106 * x_1107);
    let x_1109 : u32 = u_xlatu3;
    let x_1112 : vec4<f32> = x_1062.x_AdditionalLightsSpotDir[bitcast<i32>(x_1109)];
    let x_1114 : vec3<f32> = u_xlat11;
    u_xlat52 = dot(vec3<f32>(x_1112.x, x_1112.y, x_1112.z), x_1114);
    let x_1116 : f32 = u_xlat52;
    let x_1117 : u32 = u_xlatu3;
    let x_1120 : f32 = x_1062.x_AdditionalLightsAttenuation[bitcast<i32>(x_1117)].z;
    let x_1122 : u32 = u_xlatu3;
    let x_1125 : f32 = x_1062.x_AdditionalLightsAttenuation[bitcast<i32>(x_1122)].w;
    u_xlat52 = ((x_1116 * x_1120) + x_1125);
    let x_1127 : f32 = u_xlat52;
    u_xlat52 = clamp(x_1127, 0.0f, 1.0f);
    let x_1129 : f32 = u_xlat52;
    let x_1130 : f32 = u_xlat52;
    u_xlat52 = (x_1129 * x_1130);
    let x_1132 : f32 = u_xlat49;
    let x_1133 : f32 = u_xlat52;
    u_xlat49 = (x_1132 * x_1133);
    let x_1136 : u32 = u_xlatu3;
    u_xlatu52 = (x_1136 >> 5u);
    let x_1139 : u32 = u_xlatu3;
    u_xlati38 = (1i << bitcast<u32>((bitcast<i32>(x_1139) & 31i)));
    let x_1145 : i32 = u_xlati38;
    let x_1147 : u32 = u_xlatu52;
    let x_1150 : f32 = x_612.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1147)].el;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1145) & bitcast<u32>(x_1150)));
    let x_1154 : i32 = u_xlati52;
    if ((x_1154 != 0i)) {
      let x_1164 : u32 = u_xlatu3;
      let x_1167 : f32 = x_1163.x_AdditionalLightsLightTypes[bitcast<i32>(x_1164)].el;
      u_xlati52 = i32(x_1167);
      let x_1169 : i32 = u_xlati52;
      u_xlati38 = select(1i, 0i, (x_1169 != 0i));
      let x_1173 : u32 = u_xlatu3;
      u_xlati53 = (bitcast<i32>(x_1173) << bitcast<u32>(2i));
      let x_1176 : i32 = u_xlati38;
      if ((x_1176 != 0i)) {
        let x_1181 : vec3<f32> = vs_INTERP0;
        let x_1183 : i32 = u_xlati53;
        let x_1186 : i32 = u_xlati53;
        let x_1190 : vec4<f32> = x_1163.x_AdditionalLightsWorldToLights[((x_1183 + 1i) / 4i)][((x_1186 + 1i) % 4i)];
        let x_1192 : vec3<f32> = (vec3<f32>(x_1181.y, x_1181.y, x_1181.y) * vec3<f32>(x_1190.x, x_1190.y, x_1190.w));
        let x_1193 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
        let x_1195 : i32 = u_xlati53;
        let x_1197 : i32 = u_xlati53;
        let x_1200 : vec4<f32> = x_1163.x_AdditionalLightsWorldToLights[(x_1195 / 4i)][(x_1197 % 4i)];
        let x_1202 : vec3<f32> = vs_INTERP0;
        let x_1205 : vec4<f32> = u_xlat12;
        let x_1207 : vec3<f32> = ((vec3<f32>(x_1200.x, x_1200.y, x_1200.w) * vec3<f32>(x_1202.x, x_1202.x, x_1202.x)) + vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
        let x_1208 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
        let x_1210 : i32 = u_xlati53;
        let x_1213 : i32 = u_xlati53;
        let x_1217 : vec4<f32> = x_1163.x_AdditionalLightsWorldToLights[((x_1210 + 2i) / 4i)][((x_1213 + 2i) % 4i)];
        let x_1219 : vec3<f32> = vs_INTERP0;
        let x_1222 : vec4<f32> = u_xlat12;
        let x_1224 : vec3<f32> = ((vec3<f32>(x_1217.x, x_1217.y, x_1217.w) * vec3<f32>(x_1219.z, x_1219.z, x_1219.z)) + vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
        let x_1225 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
        let x_1227 : vec4<f32> = u_xlat12;
        let x_1229 : i32 = u_xlati53;
        let x_1232 : i32 = u_xlati53;
        let x_1236 : vec4<f32> = x_1163.x_AdditionalLightsWorldToLights[((x_1229 + 3i) / 4i)][((x_1232 + 3i) % 4i)];
        let x_1238 : vec3<f32> = (vec3<f32>(x_1227.x, x_1227.y, x_1227.z) + vec3<f32>(x_1236.x, x_1236.y, x_1236.w));
        let x_1239 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
        let x_1241 : vec4<f32> = u_xlat12;
        let x_1243 : vec4<f32> = u_xlat12;
        let x_1245 : vec2<f32> = (vec2<f32>(x_1241.x, x_1241.y) / vec2<f32>(x_1243.z, x_1243.z));
        let x_1246 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1248 : vec4<f32> = u_xlat12;
        let x_1251 : vec2<f32> = ((vec2<f32>(x_1248.x, x_1248.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1252 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1251.x, x_1251.y, x_1252.z, x_1252.w);
        let x_1254 : vec4<f32> = u_xlat12;
        let x_1258 : vec2<f32> = clamp(vec2<f32>(x_1254.x, x_1254.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1259 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1258.x, x_1258.y, x_1259.z, x_1259.w);
        let x_1261 : u32 = u_xlatu3;
        let x_1264 : vec4<f32> = x_1163.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1261)];
        let x_1266 : vec4<f32> = u_xlat12;
        let x_1269 : u32 = u_xlatu3;
        let x_1272 : vec4<f32> = x_1163.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1269)];
        let x_1274 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1266.x, x_1266.y)) + vec2<f32>(x_1272.z, x_1272.w));
        let x_1275 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1274.x, x_1274.y, x_1275.z, x_1275.w);
      } else {
        let x_1279 : i32 = u_xlati52;
        u_xlatb52 = (x_1279 == 1i);
        let x_1281 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1281);
        let x_1283 : i32 = u_xlati52;
        if ((x_1283 != 0i)) {
          let x_1288 : vec3<f32> = vs_INTERP0;
          let x_1290 : i32 = u_xlati53;
          let x_1293 : i32 = u_xlati53;
          let x_1297 : vec4<f32> = x_1163.x_AdditionalLightsWorldToLights[((x_1290 + 1i) / 4i)][((x_1293 + 1i) % 4i)];
          u_xlat42 = (vec2<f32>(x_1288.y, x_1288.y) * vec2<f32>(x_1297.x, x_1297.y));
          let x_1300 : i32 = u_xlati53;
          let x_1302 : i32 = u_xlati53;
          let x_1305 : vec4<f32> = x_1163.x_AdditionalLightsWorldToLights[(x_1300 / 4i)][(x_1302 % 4i)];
          let x_1307 : vec3<f32> = vs_INTERP0;
          let x_1310 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1307.x, x_1307.x)) + x_1310);
          let x_1312 : i32 = u_xlati53;
          let x_1315 : i32 = u_xlati53;
          let x_1319 : vec4<f32> = x_1163.x_AdditionalLightsWorldToLights[((x_1312 + 2i) / 4i)][((x_1315 + 2i) % 4i)];
          let x_1321 : vec3<f32> = vs_INTERP0;
          let x_1324 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1319.x, x_1319.y) * vec2<f32>(x_1321.z, x_1321.z)) + x_1324);
          let x_1326 : vec2<f32> = u_xlat42;
          let x_1327 : i32 = u_xlati53;
          let x_1330 : i32 = u_xlati53;
          let x_1334 : vec4<f32> = x_1163.x_AdditionalLightsWorldToLights[((x_1327 + 3i) / 4i)][((x_1330 + 3i) % 4i)];
          u_xlat42 = (x_1326 + vec2<f32>(x_1334.x, x_1334.y));
          let x_1337 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1337 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1340 : vec2<f32> = u_xlat42;
          u_xlat42 = fract(x_1340);
          let x_1342 : u32 = u_xlatu3;
          let x_1345 : vec4<f32> = x_1163.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1342)];
          let x_1347 : vec2<f32> = u_xlat42;
          let x_1349 : u32 = u_xlatu3;
          let x_1352 : vec4<f32> = x_1163.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1349)];
          let x_1354 : vec2<f32> = ((vec2<f32>(x_1345.x, x_1345.y) * x_1347) + vec2<f32>(x_1352.z, x_1352.w));
          let x_1355 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
        } else {
          let x_1359 : vec3<f32> = vs_INTERP0;
          let x_1361 : i32 = u_xlati53;
          let x_1364 : i32 = u_xlati53;
          let x_1368 : vec4<f32> = x_1163.x_AdditionalLightsWorldToLights[((x_1361 + 1i) / 4i)][((x_1364 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1359.y, x_1359.y, x_1359.y, x_1359.y) * x_1368);
          let x_1370 : i32 = u_xlati53;
          let x_1372 : i32 = u_xlati53;
          let x_1375 : vec4<f32> = x_1163.x_AdditionalLightsWorldToLights[(x_1370 / 4i)][(x_1372 % 4i)];
          let x_1376 : vec3<f32> = vs_INTERP0;
          let x_1379 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1375 * vec4<f32>(x_1376.x, x_1376.x, x_1376.x, x_1376.x)) + x_1379);
          let x_1381 : i32 = u_xlati53;
          let x_1384 : i32 = u_xlati53;
          let x_1388 : vec4<f32> = x_1163.x_AdditionalLightsWorldToLights[((x_1381 + 2i) / 4i)][((x_1384 + 2i) % 4i)];
          let x_1389 : vec3<f32> = vs_INTERP0;
          let x_1392 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1388 * vec4<f32>(x_1389.z, x_1389.z, x_1389.z, x_1389.z)) + x_1392);
          let x_1394 : vec4<f32> = u_xlat13;
          let x_1395 : i32 = u_xlati53;
          let x_1398 : i32 = u_xlati53;
          let x_1402 : vec4<f32> = x_1163.x_AdditionalLightsWorldToLights[((x_1395 + 3i) / 4i)][((x_1398 + 3i) % 4i)];
          u_xlat13 = (x_1394 + x_1402);
          let x_1404 : vec4<f32> = u_xlat13;
          let x_1406 : vec4<f32> = u_xlat13;
          let x_1408 : vec3<f32> = (vec3<f32>(x_1404.x, x_1404.y, x_1404.z) / vec3<f32>(x_1406.w, x_1406.w, x_1406.w));
          let x_1409 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
          let x_1411 : vec4<f32> = u_xlat13;
          let x_1413 : vec4<f32> = u_xlat13;
          u_xlat52 = dot(vec3<f32>(x_1411.x, x_1411.y, x_1411.z), vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
          let x_1416 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1416);
          let x_1418 : f32 = u_xlat52;
          let x_1420 : vec4<f32> = u_xlat13;
          let x_1422 : vec3<f32> = (vec3<f32>(x_1418, x_1418, x_1418) * vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
          let x_1423 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1423.w);
          let x_1425 : vec4<f32> = u_xlat13;
          u_xlat52 = dot(abs(vec3<f32>(x_1425.x, x_1425.y, x_1425.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1430 : f32 = u_xlat52;
          u_xlat52 = max(x_1430, 0.000001f);
          let x_1433 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1433);
          let x_1436 : f32 = u_xlat52;
          let x_1438 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1436, x_1436, x_1436) * vec3<f32>(x_1438.z, x_1438.x, x_1438.y));
          let x_1442 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1442);
          let x_1446 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1446, 0.0f, 1.0f);
          let x_1450 : vec3<f32> = u_xlat14;
          let x_1453 : vec4<bool> = (vec4<f32>(x_1450.y, x_1450.z, x_1450.y, x_1450.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb38 = vec2<bool>(x_1453.x, x_1453.y);
          let x_1457 : bool = u_xlatb38.x;
          if (x_1457) {
            let x_1462 : f32 = u_xlat14.x;
            x_1458 = x_1462;
          } else {
            let x_1465 : f32 = u_xlat14.x;
            x_1458 = -(x_1465);
          }
          let x_1467 : f32 = x_1458;
          u_xlat38.x = x_1467;
          let x_1470 : bool = u_xlatb38.y;
          if (x_1470) {
            let x_1475 : f32 = u_xlat14.x;
            x_1471 = x_1475;
          } else {
            let x_1478 : f32 = u_xlat14.x;
            x_1471 = -(x_1478);
          }
          let x_1480 : f32 = x_1471;
          u_xlat38.y = x_1480;
          let x_1482 : vec4<f32> = u_xlat13;
          let x_1484 : f32 = u_xlat52;
          let x_1487 : vec2<f32> = u_xlat38;
          u_xlat38 = ((vec2<f32>(x_1482.x, x_1482.y) * vec2<f32>(x_1484, x_1484)) + x_1487);
          let x_1489 : vec2<f32> = u_xlat38;
          u_xlat38 = ((x_1489 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1492 : vec2<f32> = u_xlat38;
          u_xlat38 = clamp(x_1492, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1496 : u32 = u_xlatu3;
          let x_1499 : vec4<f32> = x_1163.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1496)];
          let x_1501 : vec2<f32> = u_xlat38;
          let x_1503 : u32 = u_xlatu3;
          let x_1506 : vec4<f32> = x_1163.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1503)];
          let x_1508 : vec2<f32> = ((vec2<f32>(x_1499.x, x_1499.y) * x_1501) + vec2<f32>(x_1506.z, x_1506.w));
          let x_1509 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1508.x, x_1508.y, x_1509.z, x_1509.w);
        }
      }
      let x_1516 : vec4<f32> = u_xlat12;
      let x_1519 : f32 = x_45.x_GlobalMipBias.x;
      let x_1520 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1516.x, x_1516.y), x_1519);
      u_xlat12 = x_1520;
      let x_1522 : bool = u_xlatb8.y;
      if (x_1522) {
        let x_1527 : f32 = u_xlat12.w;
        x_1523 = x_1527;
      } else {
        let x_1530 : f32 = u_xlat12.x;
        x_1523 = x_1530;
      }
      let x_1531 : f32 = x_1523;
      u_xlat52 = x_1531;
      let x_1533 : bool = u_xlatb8.x;
      if (x_1533) {
        let x_1537 : vec4<f32> = u_xlat12;
        x_1534 = vec3<f32>(x_1537.x, x_1537.y, x_1537.z);
      } else {
        let x_1540 : f32 = u_xlat52;
        x_1534 = vec3<f32>(x_1540, x_1540, x_1540);
      }
      let x_1542 : vec3<f32> = x_1534;
      let x_1543 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1543.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1549 : vec4<f32> = u_xlat12;
    let x_1551 : u32 = u_xlatu3;
    let x_1554 : vec4<f32> = x_1062.x_AdditionalLightsColor[bitcast<i32>(x_1551)];
    let x_1556 : vec3<f32> = (vec3<f32>(x_1549.x, x_1549.y, x_1549.z) * vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
    let x_1557 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
    let x_1559 : f32 = u_xlat50;
    let x_1561 : vec4<f32> = u_xlat12;
    let x_1563 : vec3<f32> = (vec3<f32>(x_1559, x_1559, x_1559) * vec3<f32>(x_1561.x, x_1561.y, x_1561.z));
    let x_1564 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1563.x, x_1563.y, x_1563.z, x_1564.w);
    let x_1566 : vec4<f32> = u_xlat4;
    let x_1568 : vec3<f32> = u_xlat11;
    u_xlat3.x = dot(vec3<f32>(x_1566.x, x_1566.y, x_1566.z), x_1568);
    let x_1572 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1572, 0.0f, 1.0f);
    let x_1576 : f32 = u_xlat3.x;
    let x_1577 : f32 = u_xlat49;
    u_xlat3.x = (x_1576 * x_1577);
    let x_1580 : vec3<f32> = u_xlat3;
    let x_1582 : vec4<f32> = u_xlat12;
    let x_1584 : vec3<f32> = (vec3<f32>(x_1580.x, x_1580.x, x_1580.x) * vec3<f32>(x_1582.x, x_1582.y, x_1582.z));
    let x_1585 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
    let x_1587 : vec3<f32> = u_xlat10;
    let x_1588 : f32 = u_xlat51;
    let x_1591 : vec3<f32> = u_xlat5;
    u_xlat10 = ((x_1587 * vec3<f32>(x_1588, x_1588, x_1588)) + x_1591);
    let x_1593 : vec3<f32> = u_xlat10;
    let x_1594 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(x_1593, x_1594);
    let x_1598 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1598, 1.17549435e-37f);
    let x_1602 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1602);
    let x_1605 : vec3<f32> = u_xlat3;
    let x_1607 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1605.x, x_1605.x, x_1605.x) * x_1607);
    let x_1609 : vec4<f32> = u_xlat4;
    let x_1611 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_1609.x, x_1609.y, x_1609.z), x_1611);
    let x_1615 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1615, 0.0f, 1.0f);
    let x_1618 : vec3<f32> = u_xlat11;
    let x_1619 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1618, x_1619);
    let x_1621 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1621, 0.0f, 1.0f);
    let x_1624 : f32 = u_xlat3.x;
    let x_1626 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1624 * x_1626);
    let x_1630 : f32 = u_xlat3.x;
    let x_1632 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_1630 * x_1632) + 1.000010014f);
    let x_1636 : f32 = u_xlat49;
    let x_1637 : f32 = u_xlat49;
    u_xlat49 = (x_1636 * x_1637);
    let x_1640 : f32 = u_xlat3.x;
    let x_1642 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1640 * x_1642);
    let x_1645 : f32 = u_xlat49;
    u_xlat49 = max(x_1645, 0.100000001f);
    let x_1648 : f32 = u_xlat3.x;
    let x_1649 : f32 = u_xlat49;
    u_xlat3.x = (x_1648 * x_1649);
    let x_1652 : f32 = u_xlat48;
    let x_1654 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1652 * x_1654);
    let x_1657 : f32 = u_xlat18;
    let x_1659 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1657 / x_1659);
    let x_1662 : vec3<f32> = u_xlat0;
    let x_1663 : vec3<f32> = u_xlat3;
    let x_1666 : vec4<f32> = u_xlat7;
    u_xlat10 = ((x_1662 * vec3<f32>(x_1663.x, x_1663.x, x_1663.x)) + vec3<f32>(x_1666.x, x_1666.y, x_1666.z));
    let x_1669 : vec3<f32> = u_xlat10;
    let x_1670 : vec4<f32> = u_xlat12;
    let x_1673 : vec3<f32> = u_xlat24;
    u_xlat24 = ((x_1669 * vec3<f32>(x_1670.x, x_1670.y, x_1670.z)) + x_1673);

    continuing {
      let x_1675 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1675 + bitcast<u32>(1i));
    }
  }
  let x_1677 : vec4<f32> = u_xlat1;
  let x_1679 : f32 = u_xlat33;
  let x_1682 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1677.x, x_1677.y, x_1677.w) * vec3<f32>(x_1679, x_1679, x_1679)) + vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
  let x_1685 : vec3<f32> = u_xlat24;
  let x_1686 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1685 + x_1686);
  let x_1690 : vec3<f32> = u_xlat2;
  let x_1691 : f32 = u_xlat31;
  let x_1694 : vec3<f32> = u_xlat0;
  let x_1695 : vec3<f32> = ((x_1690 * vec3<f32>(x_1691, x_1691, x_1691)) + x_1694);
  let x_1696 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
  let x_1701 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_1703 : f32 = x_122.unity_RenderingLayer.x;
  u_xlatu0 = (x_1701 & bitcast<u32>(x_1703));
  let x_1706 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1706);
  let x_1711 : f32 = u_xlat0.x;
  let x_1714 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1711 * x_1714);
  let x_1719 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1719, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1723 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1723.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

