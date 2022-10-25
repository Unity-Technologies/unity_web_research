struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
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

@group(1) @binding(3) var<uniform> x_526 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1850 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2293 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2401 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat63 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb43 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlatb64 : bool;
  var u_xlat64 : f32;
  var u_xlatb65 : bool;
  var u_xlat65 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlatb63 : bool;
  var u_xlat5 : vec3<f32>;
  var x_279 : f32;
  var x_291 : f32;
  var x_303 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat24 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat45 : f32;
  var u_xlatb67 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat27 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat70 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec3<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb27 : bool;
  var u_xlatb8 : vec2<bool>;
  var x_1934 : f32;
  var x_1945 : vec3<f32>;
  var u_xlatu63 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu70 : u32;
  var u_xlati50 : i32;
  var u_xlati70 : i32;
  var u_xlati71 : i32;
  var u_xlatb70 : bool;
  var u_xlat54 : vec2<f32>;
  var u_xlatb50 : vec2<bool>;
  var u_xlat50 : vec2<f32>;
  var x_2695 : f32;
  var x_2708 : f32;
  var x_2760 : f32;
  var x_2771 : vec3<f32>;
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
  u_xlat63 = dot(vec2<f32>(x_87.x, x_87.y), vec2<f32>(x_89.x, x_89.y));
  let x_92 : f32 = u_xlat63;
  u_xlat63 = min(x_92, 1.0f);
  let x_94 : f32 = u_xlat63;
  u_xlat63 = (-(x_94) + 1.0f);
  let x_97 : f32 = u_xlat63;
  u_xlat63 = sqrt(x_97);
  let x_99 : f32 = u_xlat63;
  u_xlat63 = max(x_99, 1.00000002e-16f);
  let x_108 : vec4<f32> = vs_INTERP3;
  let x_111 : f32 = x_45.x_GlobalMipBias.x;
  let x_112 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_108.x, x_108.y), x_111);
  u_xlat2 = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_114 * vec3<f32>(14.0f, 14.0f, 14.0f));
  let x_127 : vec4<f32> = x_122.unity_ObjectToWorld[3i];
  let x_130 : vec4<f32> = x_122.unity_ObjectToWorld[3i];
  u_xlat43 = dot(vec3<f32>(x_127.x, x_127.y, x_127.z), vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_133);
  let x_135 : f32 = u_xlat43;
  u_xlat43 = fract(x_135);
  let x_137 : f32 = u_xlat43;
  let x_140 : f32 = x_45.x_NightFade;
  u_xlat43 = (x_137 + x_140);
  let x_145 : f32 = u_xlat43;
  u_xlatb43 = (x_145 >= 1.0f);
  let x_147 : bool = u_xlatb43;
  u_xlat43 = select(0.0f, 1.0f, x_147);
  let x_156 : vec4<f32> = vs_INTERP3;
  let x_159 : f32 = x_45.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_156.x, x_156.y), x_159);
  u_xlat3 = vec3<f32>(x_160.x, x_160.w, x_160.y);
  let x_165 : f32 = vs_INTERP2.w;
  u_xlatb64 = (0.0f < x_165);
  let x_168 : bool = u_xlatb64;
  u_xlat64 = select(-1.0f, 1.0f, x_168);
  let x_172 : f32 = x_122.unity_WorldTransformParams.w;
  u_xlatb65 = (x_172 >= 0.0f);
  let x_175 : bool = u_xlatb65;
  u_xlat65 = select(-1.0f, 1.0f, x_175);
  let x_177 : f32 = u_xlat64;
  let x_178 : f32 = u_xlat65;
  u_xlat64 = (x_177 * x_178);
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
  let x_201 : f32 = u_xlat64;
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
  let x_225 : f32 = u_xlat63;
  let x_227 : vec3<f32> = vs_INTERP1;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = ((vec3<f32>(x_225, x_225, x_225) * x_227) + vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_231.z);
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat63 = dot(vec3<f32>(x_234.x, x_234.y, x_234.w), vec3<f32>(x_236.x, x_236.y, x_236.w));
  let x_239 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_239);
  let x_241 : f32 = u_xlat63;
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = (vec3<f32>(x_241, x_241, x_241) * vec3<f32>(x_243.x, x_243.y, x_243.w));
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_251 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb63 = (x_251 == 0.0f);
  let x_254 : vec3<f32> = vs_INTERP0;
  let x_259 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_260 : vec3<f32> = (-(x_254) + x_259);
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_260.z);
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat65 = dot(vec3<f32>(x_263.x, x_263.y, x_263.w), vec3<f32>(x_265.x, x_265.y, x_265.w));
  let x_268 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_268);
  let x_270 : vec4<f32> = u_xlat1;
  let x_272 : f32 = u_xlat65;
  let x_274 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.w) * vec3<f32>(x_272, x_272, x_272));
  let x_275 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_274.x, x_274.y, x_275.z, x_274.z);
  let x_278 : bool = u_xlatb63;
  if (x_278) {
    let x_283 : f32 = u_xlat1.x;
    x_279 = x_283;
  } else {
    let x_287 : f32 = x_45.unity_MatrixV[0i].z;
    x_279 = x_287;
  }
  let x_288 : f32 = x_279;
  u_xlat5.x = x_288;
  let x_290 : bool = u_xlatb63;
  if (x_290) {
    let x_296 : f32 = u_xlat1.y;
    x_291 = x_296;
  } else {
    let x_299 : f32 = x_45.unity_MatrixV[1i].z;
    x_291 = x_299;
  }
  let x_300 : f32 = x_291;
  u_xlat5.y = x_300;
  let x_302 : bool = u_xlatb63;
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
  u_xlat63 = (x_360 * x_362);
  let x_365 : f32 = u_xlat4.x;
  let x_367 : f32 = u_xlat4.x;
  let x_369 : f32 = u_xlat63;
  u_xlat63 = ((x_365 * x_367) + -(x_369));
  let x_374 : vec4<f32> = x_122.unity_SHC;
  let x_376 : f32 = u_xlat63;
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
  u_xlat63 = ((x_415 * x_418) + x_421);
  let x_423 : f32 = u_xlat63;
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
  u_xlat63 = ((-(x_439) * 0.959999979f) + 0.959999979f);
  let x_444 : f32 = u_xlat63;
  let x_447 : f32 = u_xlat3.y;
  u_xlat65 = (-(x_444) + x_447);
  let x_449 : f32 = u_xlat63;
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
  u_xlat63 = (-(x_467) + 1.0f);
  let x_470 : f32 = u_xlat63;
  let x_471 : f32 = u_xlat63;
  u_xlat3.x = (x_470 * x_471);
  let x_475 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_475, 0.0078125f);
  let x_481 : f32 = u_xlat3.x;
  let x_483 : f32 = u_xlat3.x;
  u_xlat24 = (x_481 * x_483);
  let x_485 : f32 = u_xlat65;
  u_xlat65 = (x_485 + 1.0f);
  let x_487 : f32 = u_xlat65;
  u_xlat65 = min(x_487, 1.0f);
  let x_491 : f32 = u_xlat3.x;
  u_xlat66 = ((x_491 * 4.0f) + 2.0f);
  let x_501 : vec4<f32> = u_xlat6;
  let x_504 : f32 = x_45.x_GlobalMipBias.x;
  let x_505 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_501.x, x_501.z), x_504);
  u_xlat67 = x_505.x;
  let x_508 : f32 = u_xlat67;
  u_xlat68 = (x_508 + -1.0f);
  let x_512 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_513 : f32 = u_xlat68;
  u_xlat68 = ((x_512 * x_513) + 1.0f);
  let x_518 : f32 = u_xlat3.z;
  let x_519 : f32 = u_xlat67;
  u_xlat45 = min(x_518, x_519);
  let x_528 : f32 = x_526.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_528);
  let x_530 : bool = u_xlatb67;
  if (x_530) {
    let x_534 : f32 = x_526.x_MainLightShadowParams.y;
    u_xlatb67 = (x_534 == 1.0f);
    let x_536 : bool = u_xlatb67;
    if (x_536) {
      let x_540 : vec4<f32> = vs_INTERP8;
      let x_543 : vec4<f32> = x_526.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_540.x, x_540.y, x_540.x, x_540.y) + x_543);
      let x_546 : vec4<f32> = u_xlat6;
      let x_547 : vec2<f32> = vec2<f32>(x_546.x, x_546.y);
      let x_549 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_547.x, x_547.y, x_549);
      let x_561 : vec3<f32> = txVec0;
      let x_563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_561.xy, x_561.z);
      u_xlat8.x = x_563;
      let x_566 : vec4<f32> = u_xlat6;
      let x_567 : vec2<f32> = vec2<f32>(x_566.z, x_566.w);
      let x_569 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_567.x, x_567.y, x_569);
      let x_576 : vec3<f32> = txVec1;
      let x_578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_576.xy, x_576.z);
      u_xlat8.y = x_578;
      let x_580 : vec4<f32> = vs_INTERP8;
      let x_583 : vec4<f32> = x_526.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_580.x, x_580.y, x_580.x, x_580.y) + x_583);
      let x_586 : vec4<f32> = u_xlat6;
      let x_587 : vec2<f32> = vec2<f32>(x_586.x, x_586.y);
      let x_589 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_587.x, x_587.y, x_589);
      let x_596 : vec3<f32> = txVec2;
      let x_598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_596.xy, x_596.z);
      u_xlat8.z = x_598;
      let x_601 : vec4<f32> = u_xlat6;
      let x_602 : vec2<f32> = vec2<f32>(x_601.z, x_601.w);
      let x_604 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_602.x, x_602.y, x_604);
      let x_611 : vec3<f32> = txVec3;
      let x_613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_611.xy, x_611.z);
      u_xlat8.w = x_613;
      let x_615 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_615, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_622 : f32 = x_526.x_MainLightShadowParams.y;
      u_xlatb6 = (x_622 == 2.0f);
      let x_624 : bool = u_xlatb6;
      if (x_624) {
        let x_627 : vec4<f32> = vs_INTERP8;
        let x_630 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_635 : vec2<f32> = ((vec2<f32>(x_627.x, x_627.y) * vec2<f32>(x_630.z, x_630.w)) + vec2<f32>(0.5f, 0.5f));
        let x_636 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
        let x_638 : vec4<f32> = u_xlat6;
        let x_640 : vec2<f32> = floor(vec2<f32>(x_638.x, x_638.y));
        let x_641 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_645 : vec4<f32> = vs_INTERP8;
        let x_648 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_651 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_645.x, x_645.y) * vec2<f32>(x_648.z, x_648.w)) + -(vec2<f32>(x_651.x, x_651.y)));
        let x_655 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_655.x, x_655.x, x_655.y, x_655.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_660 : vec4<f32> = u_xlat8;
        let x_662 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_660.x, x_660.x, x_660.z, x_660.z) * vec4<f32>(x_662.x, x_662.x, x_662.z, x_662.z));
        let x_665 : vec4<f32> = u_xlat9;
        let x_669 : vec2<f32> = (vec2<f32>(x_665.y, x_665.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_670 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_669.x, x_670.y, x_669.y, x_670.w);
        let x_672 : vec4<f32> = u_xlat9;
        let x_675 : vec2<f32> = u_xlat48;
        let x_677 : vec2<f32> = ((vec2<f32>(x_672.x, x_672.z) * vec2<f32>(0.5f, 0.5f)) + -(x_675));
        let x_678 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
        let x_681 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_681) + vec2<f32>(1.0f, 1.0f));
        let x_685 : vec2<f32> = u_xlat48;
        let x_687 : vec2<f32> = min(x_685, vec2<f32>(0.0f, 0.0f));
        let x_688 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
        let x_690 : vec4<f32> = u_xlat10;
        let x_693 : vec4<f32> = u_xlat10;
        let x_696 : vec2<f32> = u_xlat51;
        let x_697 : vec2<f32> = ((-(vec2<f32>(x_690.x, x_690.y)) * vec2<f32>(x_693.x, x_693.y)) + x_696);
        let x_698 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
        let x_700 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_700, vec2<f32>(0.0f, 0.0f));
        let x_702 : vec2<f32> = u_xlat48;
        let x_704 : vec2<f32> = u_xlat48;
        let x_706 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_702) * x_704) + vec2<f32>(x_706.y, x_706.w));
        let x_709 : vec4<f32> = u_xlat10;
        let x_711 : vec2<f32> = (vec2<f32>(x_709.x, x_709.y) + vec2<f32>(1.0f, 1.0f));
        let x_712 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_712.w);
        let x_714 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_714 + vec2<f32>(1.0f, 1.0f));
        let x_717 : vec4<f32> = u_xlat9;
        let x_721 : vec2<f32> = (vec2<f32>(x_717.x, x_717.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_722 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_721.x, x_721.y, x_722.z, x_722.w);
        let x_724 : vec2<f32> = u_xlat51;
        let x_725 : vec2<f32> = (x_724 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_726 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat10;
        let x_730 : vec2<f32> = (vec2<f32>(x_728.x, x_728.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_731 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
        let x_734 : vec2<f32> = u_xlat48;
        let x_735 : vec2<f32> = (x_734 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_736 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_735.x, x_735.y, x_736.z, x_736.w);
        let x_738 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_738.y, x_738.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_742 : f32 = u_xlat10.x;
        u_xlat11.z = x_742;
        let x_745 : f32 = u_xlat48.x;
        u_xlat11.w = x_745;
        let x_748 : f32 = u_xlat12.x;
        u_xlat9.z = x_748;
        let x_751 : f32 = u_xlat8.x;
        u_xlat9.w = x_751;
        let x_754 : vec4<f32> = u_xlat9;
        let x_756 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_754.z, x_754.w, x_754.x, x_754.z) + vec4<f32>(x_756.z, x_756.w, x_756.x, x_756.z));
        let x_760 : f32 = u_xlat11.y;
        u_xlat10.z = x_760;
        let x_763 : f32 = u_xlat48.y;
        u_xlat10.w = x_763;
        let x_766 : f32 = u_xlat9.y;
        u_xlat12.z = x_766;
        let x_769 : f32 = u_xlat8.z;
        u_xlat12.w = x_769;
        let x_771 : vec4<f32> = u_xlat10;
        let x_773 : vec4<f32> = u_xlat12;
        let x_775 : vec3<f32> = (vec3<f32>(x_771.z, x_771.y, x_771.w) + vec3<f32>(x_773.z, x_773.y, x_773.w));
        let x_776 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
        let x_778 : vec4<f32> = u_xlat9;
        let x_780 : vec4<f32> = u_xlat13;
        let x_782 : vec3<f32> = (vec3<f32>(x_778.x, x_778.z, x_778.w) / vec3<f32>(x_780.z, x_780.w, x_780.y));
        let x_783 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
        let x_785 : vec4<f32> = u_xlat9;
        let x_791 : vec3<f32> = (vec3<f32>(x_785.x, x_785.y, x_785.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_792 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
        let x_794 : vec4<f32> = u_xlat12;
        let x_796 : vec4<f32> = u_xlat8;
        let x_798 : vec3<f32> = (vec3<f32>(x_794.z, x_794.y, x_794.w) / vec3<f32>(x_796.x, x_796.y, x_796.z));
        let x_799 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
        let x_801 : vec4<f32> = u_xlat10;
        let x_803 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_804 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
        let x_806 : vec4<f32> = u_xlat9;
        let x_809 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_811 : vec3<f32> = (vec3<f32>(x_806.y, x_806.x, x_806.z) * vec3<f32>(x_809.x, x_809.x, x_809.x));
        let x_812 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
        let x_814 : vec4<f32> = u_xlat10;
        let x_817 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_819 : vec3<f32> = (vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_817.y, x_817.y, x_817.y));
        let x_820 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
        let x_823 : f32 = u_xlat10.x;
        u_xlat9.w = x_823;
        let x_825 : vec4<f32> = u_xlat6;
        let x_828 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_831 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_825.x, x_825.y, x_825.x, x_825.y) * vec4<f32>(x_828.x, x_828.y, x_828.x, x_828.y)) + vec4<f32>(x_831.y, x_831.w, x_831.x, x_831.w));
        let x_834 : vec4<f32> = u_xlat6;
        let x_837 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_840 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_834.x, x_834.y) * vec2<f32>(x_837.x, x_837.y)) + vec2<f32>(x_840.z, x_840.w));
        let x_844 : f32 = u_xlat9.y;
        u_xlat10.w = x_844;
        let x_846 : vec4<f32> = u_xlat10;
        let x_847 : vec2<f32> = vec2<f32>(x_846.y, x_846.z);
        let x_848 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_848.x, x_847.x, x_848.z, x_847.y);
        let x_850 : vec4<f32> = u_xlat6;
        let x_853 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_856 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_850.x, x_850.y, x_850.x, x_850.y) * vec4<f32>(x_853.x, x_853.y, x_853.x, x_853.y)) + vec4<f32>(x_856.x, x_856.y, x_856.z, x_856.y));
        let x_859 : vec4<f32> = u_xlat6;
        let x_862 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_865 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_859.x, x_859.y, x_859.x, x_859.y) * vec4<f32>(x_862.x, x_862.y, x_862.x, x_862.y)) + vec4<f32>(x_865.w, x_865.y, x_865.w, x_865.z));
        let x_868 : vec4<f32> = u_xlat6;
        let x_871 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_874 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_868.x, x_868.y, x_868.x, x_868.y) * vec4<f32>(x_871.x, x_871.y, x_871.x, x_871.y)) + vec4<f32>(x_874.x, x_874.w, x_874.z, x_874.w));
        let x_878 : vec4<f32> = u_xlat8;
        let x_880 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_878.x, x_878.x, x_878.x, x_878.y) * vec4<f32>(x_880.z, x_880.w, x_880.y, x_880.z));
        let x_884 : vec4<f32> = u_xlat8;
        let x_886 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_884.y, x_884.y, x_884.z, x_884.z) * x_886);
        let x_889 : f32 = u_xlat8.z;
        let x_891 : f32 = u_xlat13.y;
        u_xlat6.x = (x_889 * x_891);
        let x_895 : vec4<f32> = u_xlat11;
        let x_896 : vec2<f32> = vec2<f32>(x_895.x, x_895.y);
        let x_898 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_896.x, x_896.y, x_898);
        let x_906 : vec3<f32> = txVec4;
        let x_908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_906.xy, x_906.z);
        u_xlat27 = x_908;
        let x_910 : vec4<f32> = u_xlat11;
        let x_911 : vec2<f32> = vec2<f32>(x_910.z, x_910.w);
        let x_913 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_911.x, x_911.y, x_913);
        let x_921 : vec3<f32> = txVec5;
        let x_923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_921.xy, x_921.z);
        u_xlat70 = x_923;
        let x_924 : f32 = u_xlat70;
        let x_926 : f32 = u_xlat14.y;
        u_xlat70 = (x_924 * x_926);
        let x_929 : f32 = u_xlat14.x;
        let x_930 : f32 = u_xlat27;
        let x_932 : f32 = u_xlat70;
        u_xlat27 = ((x_929 * x_930) + x_932);
        let x_935 : vec2<f32> = u_xlat48;
        let x_937 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_935.x, x_935.y, x_937);
        let x_944 : vec3<f32> = txVec6;
        let x_946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_944.xy, x_944.z);
        u_xlat48.x = x_946;
        let x_949 : f32 = u_xlat14.z;
        let x_951 : f32 = u_xlat48.x;
        let x_953 : f32 = u_xlat27;
        u_xlat27 = ((x_949 * x_951) + x_953);
        let x_956 : vec4<f32> = u_xlat10;
        let x_957 : vec2<f32> = vec2<f32>(x_956.x, x_956.y);
        let x_959 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_957.x, x_957.y, x_959);
        let x_966 : vec3<f32> = txVec7;
        let x_968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_966.xy, x_966.z);
        u_xlat48.x = x_968;
        let x_971 : f32 = u_xlat14.w;
        let x_973 : f32 = u_xlat48.x;
        let x_975 : f32 = u_xlat27;
        u_xlat27 = ((x_971 * x_973) + x_975);
        let x_978 : vec4<f32> = u_xlat12;
        let x_979 : vec2<f32> = vec2<f32>(x_978.x, x_978.y);
        let x_981 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_979.x, x_979.y, x_981);
        let x_988 : vec3<f32> = txVec8;
        let x_990 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_988.xy, x_988.z);
        u_xlat48.x = x_990;
        let x_993 : f32 = u_xlat15.x;
        let x_995 : f32 = u_xlat48.x;
        let x_997 : f32 = u_xlat27;
        u_xlat27 = ((x_993 * x_995) + x_997);
        let x_1000 : vec4<f32> = u_xlat12;
        let x_1001 : vec2<f32> = vec2<f32>(x_1000.z, x_1000.w);
        let x_1003 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1001.x, x_1001.y, x_1003);
        let x_1010 : vec3<f32> = txVec9;
        let x_1012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1010.xy, x_1010.z);
        u_xlat48.x = x_1012;
        let x_1015 : f32 = u_xlat15.y;
        let x_1017 : f32 = u_xlat48.x;
        let x_1019 : f32 = u_xlat27;
        u_xlat27 = ((x_1015 * x_1017) + x_1019);
        let x_1022 : vec4<f32> = u_xlat10;
        let x_1023 : vec2<f32> = vec2<f32>(x_1022.z, x_1022.w);
        let x_1025 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1023.x, x_1023.y, x_1025);
        let x_1032 : vec3<f32> = txVec10;
        let x_1034 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1032.xy, x_1032.z);
        u_xlat48.x = x_1034;
        let x_1037 : f32 = u_xlat15.z;
        let x_1039 : f32 = u_xlat48.x;
        let x_1041 : f32 = u_xlat27;
        u_xlat27 = ((x_1037 * x_1039) + x_1041);
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1045 : vec2<f32> = vec2<f32>(x_1044.x, x_1044.y);
        let x_1047 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1045.x, x_1045.y, x_1047);
        let x_1054 : vec3<f32> = txVec11;
        let x_1056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1054.xy, x_1054.z);
        u_xlat48.x = x_1056;
        let x_1059 : f32 = u_xlat15.w;
        let x_1061 : f32 = u_xlat48.x;
        let x_1063 : f32 = u_xlat27;
        u_xlat27 = ((x_1059 * x_1061) + x_1063);
        let x_1066 : vec4<f32> = u_xlat9;
        let x_1067 : vec2<f32> = vec2<f32>(x_1066.z, x_1066.w);
        let x_1069 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
        let x_1076 : vec3<f32> = txVec12;
        let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1076.xy, x_1076.z);
        u_xlat48.x = x_1078;
        let x_1081 : f32 = u_xlat6.x;
        let x_1083 : f32 = u_xlat48.x;
        let x_1085 : f32 = u_xlat27;
        u_xlat67 = ((x_1081 * x_1083) + x_1085);
      } else {
        let x_1088 : vec4<f32> = vs_INTERP8;
        let x_1091 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1094 : vec2<f32> = ((vec2<f32>(x_1088.x, x_1088.y) * vec2<f32>(x_1091.z, x_1091.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1095 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1097 : vec4<f32> = u_xlat6;
        let x_1099 : vec2<f32> = floor(vec2<f32>(x_1097.x, x_1097.y));
        let x_1100 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1099.x, x_1099.y, x_1100.z, x_1100.w);
        let x_1102 : vec4<f32> = vs_INTERP8;
        let x_1105 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1108 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1102.x, x_1102.y) * vec2<f32>(x_1105.z, x_1105.w)) + -(vec2<f32>(x_1108.x, x_1108.y)));
        let x_1112 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1112.x, x_1112.x, x_1112.y, x_1112.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1115 : vec4<f32> = u_xlat8;
        let x_1117 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1115.x, x_1115.x, x_1115.z, x_1115.z) * vec4<f32>(x_1117.x, x_1117.x, x_1117.z, x_1117.z));
        let x_1120 : vec4<f32> = u_xlat9;
        let x_1124 : vec2<f32> = (vec2<f32>(x_1120.y, x_1120.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1125 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1125.x, x_1124.x, x_1125.z, x_1124.y);
        let x_1127 : vec4<f32> = u_xlat9;
        let x_1130 : vec2<f32> = u_xlat48;
        let x_1132 : vec2<f32> = ((vec2<f32>(x_1127.x, x_1127.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1130));
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1132.x, x_1133.y, x_1132.y, x_1133.w);
        let x_1135 : vec2<f32> = u_xlat48;
        let x_1137 : vec2<f32> = (-(x_1135) + vec2<f32>(1.0f, 1.0f));
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1140, vec2<f32>(0.0f, 0.0f));
        let x_1142 : vec2<f32> = u_xlat51;
        let x_1144 : vec2<f32> = u_xlat51;
        let x_1146 : vec4<f32> = u_xlat9;
        let x_1148 : vec2<f32> = ((-(x_1142) * x_1144) + vec2<f32>(x_1146.x, x_1146.y));
        let x_1149 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1151 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1151, vec2<f32>(0.0f, 0.0f));
        let x_1154 : vec2<f32> = u_xlat51;
        let x_1156 : vec2<f32> = u_xlat51;
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1160 : vec2<f32> = ((-(x_1154) * x_1156) + vec2<f32>(x_1158.y, x_1158.w));
        let x_1161 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1160.x, x_1161.y, x_1160.y);
        let x_1163 : vec4<f32> = u_xlat9;
        let x_1165 : vec2<f32> = (vec2<f32>(x_1163.x, x_1163.y) + vec2<f32>(2.0f, 2.0f));
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec3<f32> = u_xlat29;
        let x_1170 : vec2<f32> = (vec2<f32>(x_1168.x, x_1168.z) + vec2<f32>(2.0f, 2.0f));
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1171.x, x_1170.x, x_1171.z, x_1170.y);
        let x_1174 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1174 * 0.081632003f);
        let x_1178 : vec4<f32> = u_xlat8;
        let x_1181 : vec3<f32> = (vec3<f32>(x_1178.z, x_1178.x, x_1178.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1182 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
        let x_1184 : vec4<f32> = u_xlat9;
        let x_1187 : vec2<f32> = (vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
        let x_1191 : f32 = u_xlat12.y;
        u_xlat11.x = x_1191;
        let x_1193 : vec2<f32> = u_xlat48;
        let x_1200 : vec2<f32> = ((vec2<f32>(x_1193.x, x_1193.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1201 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1201.x, x_1200.x, x_1201.z, x_1200.y);
        let x_1203 : vec2<f32> = u_xlat48;
        let x_1207 : vec2<f32> = ((vec2<f32>(x_1203.x, x_1203.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1208 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1207.x, x_1208.y, x_1207.y, x_1208.w);
        let x_1211 : f32 = u_xlat8.x;
        u_xlat9.y = x_1211;
        let x_1214 : f32 = u_xlat10.y;
        u_xlat9.w = x_1214;
        let x_1216 : vec4<f32> = u_xlat9;
        let x_1217 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1216 + x_1217);
        let x_1219 : vec2<f32> = u_xlat48;
        let x_1222 : vec2<f32> = ((vec2<f32>(x_1219.y, x_1219.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1223 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1223.x, x_1222.x, x_1223.z, x_1222.y);
        let x_1225 : vec2<f32> = u_xlat48;
        let x_1228 : vec2<f32> = ((vec2<f32>(x_1225.y, x_1225.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1229 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1228.x, x_1229.y, x_1228.y, x_1229.w);
        let x_1232 : f32 = u_xlat8.y;
        u_xlat10.y = x_1232;
        let x_1234 : vec4<f32> = u_xlat10;
        let x_1235 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1234 + x_1235);
        let x_1237 : vec4<f32> = u_xlat9;
        let x_1238 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1237 / x_1238);
        let x_1240 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1240 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1246 : vec4<f32> = u_xlat10;
        let x_1247 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1246 / x_1247);
        let x_1249 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1249 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1251 : vec4<f32> = u_xlat9;
        let x_1254 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1251.w, x_1251.x, x_1251.y, x_1251.z) * vec4<f32>(x_1254.x, x_1254.x, x_1254.x, x_1254.x));
        let x_1257 : vec4<f32> = u_xlat10;
        let x_1260 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1257.x, x_1257.w, x_1257.y, x_1257.z) * vec4<f32>(x_1260.y, x_1260.y, x_1260.y, x_1260.y));
        let x_1263 : vec4<f32> = u_xlat9;
        let x_1264 : vec3<f32> = vec3<f32>(x_1263.y, x_1263.z, x_1263.w);
        let x_1265 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1264.x, x_1265.y, x_1264.y, x_1264.z);
        let x_1268 : f32 = u_xlat10.x;
        u_xlat12.y = x_1268;
        let x_1270 : vec4<f32> = u_xlat6;
        let x_1273 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1276 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1270.x, x_1270.y, x_1270.x, x_1270.y) * vec4<f32>(x_1273.x, x_1273.y, x_1273.x, x_1273.y)) + vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1276.y));
        let x_1279 : vec4<f32> = u_xlat6;
        let x_1282 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1279.x, x_1279.y) * vec2<f32>(x_1282.x, x_1282.y)) + vec2<f32>(x_1285.w, x_1285.y));
        let x_1289 : f32 = u_xlat12.y;
        u_xlat9.y = x_1289;
        let x_1292 : f32 = u_xlat10.z;
        u_xlat12.y = x_1292;
        let x_1294 : vec4<f32> = u_xlat6;
        let x_1297 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1300 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y) * vec4<f32>(x_1297.x, x_1297.y, x_1297.x, x_1297.y)) + vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1300.y));
        let x_1303 : vec4<f32> = u_xlat6;
        let x_1306 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1309 : vec4<f32> = u_xlat12;
        let x_1311 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.y) * vec2<f32>(x_1306.x, x_1306.y)) + vec2<f32>(x_1309.w, x_1309.y));
        let x_1312 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1315 : f32 = u_xlat12.y;
        u_xlat9.z = x_1315;
        let x_1318 : vec4<f32> = u_xlat6;
        let x_1321 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1324 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y) * vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.y)) + vec4<f32>(x_1324.x, x_1324.y, x_1324.x, x_1324.z));
        let x_1328 : f32 = u_xlat10.w;
        u_xlat12.y = x_1328;
        let x_1331 : vec4<f32> = u_xlat6;
        let x_1334 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y) * vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y)) + vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1337.y));
        let x_1341 : vec4<f32> = u_xlat6;
        let x_1344 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat12;
        let x_1349 : vec2<f32> = ((vec2<f32>(x_1341.x, x_1341.y) * vec2<f32>(x_1344.x, x_1344.y)) + vec2<f32>(x_1347.w, x_1347.y));
        let x_1350 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1349.x, x_1349.y, x_1350.z);
        let x_1353 : f32 = u_xlat12.y;
        u_xlat9.w = x_1353;
        let x_1356 : vec4<f32> = u_xlat6;
        let x_1359 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1356.x, x_1356.y) * vec2<f32>(x_1359.x, x_1359.y)) + vec2<f32>(x_1362.x, x_1362.w));
        let x_1365 : vec4<f32> = u_xlat12;
        let x_1366 : vec3<f32> = vec3<f32>(x_1365.x, x_1365.z, x_1365.w);
        let x_1367 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1366.x, x_1367.y, x_1366.y, x_1366.z);
        let x_1369 : vec4<f32> = u_xlat6;
        let x_1372 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1369.x, x_1369.y, x_1369.x, x_1369.y) * vec4<f32>(x_1372.x, x_1372.y, x_1372.x, x_1372.y)) + vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1375.y));
        let x_1379 : vec4<f32> = u_xlat6;
        let x_1382 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1379.x, x_1379.y) * vec2<f32>(x_1382.x, x_1382.y)) + vec2<f32>(x_1385.w, x_1385.y));
        let x_1389 : f32 = u_xlat9.x;
        u_xlat10.x = x_1389;
        let x_1391 : vec4<f32> = u_xlat6;
        let x_1394 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1397 : vec4<f32> = u_xlat10;
        let x_1399 : vec2<f32> = ((vec2<f32>(x_1391.x, x_1391.y) * vec2<f32>(x_1394.x, x_1394.y)) + vec2<f32>(x_1397.x, x_1397.y));
        let x_1400 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1399.x, x_1399.y, x_1400.z, x_1400.w);
        let x_1403 : vec4<f32> = u_xlat8;
        let x_1405 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1403.x, x_1403.x, x_1403.x, x_1403.x) * x_1405);
        let x_1408 : vec4<f32> = u_xlat8;
        let x_1410 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1408.y, x_1408.y, x_1408.y, x_1408.y) * x_1410);
        let x_1413 : vec4<f32> = u_xlat8;
        let x_1415 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1413.z, x_1413.z, x_1413.z, x_1413.z) * x_1415);
        let x_1417 : vec4<f32> = u_xlat8;
        let x_1419 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1417.w, x_1417.w, x_1417.w, x_1417.w) * x_1419);
        let x_1422 : vec4<f32> = u_xlat13;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.x, x_1422.y);
        let x_1425 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec13;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1432.xy, x_1432.z);
        u_xlat70 = x_1434;
        let x_1436 : vec4<f32> = u_xlat13;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.z, x_1436.w);
        let x_1439 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec14;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1446.xy, x_1446.z);
        u_xlat9.x = x_1448;
        let x_1451 : f32 = u_xlat9.x;
        let x_1453 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1451 * x_1453);
        let x_1457 : f32 = u_xlat18.x;
        let x_1458 : f32 = u_xlat70;
        let x_1461 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1457 * x_1458) + x_1461);
        let x_1464 : vec2<f32> = u_xlat48;
        let x_1466 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1473 : vec3<f32> = txVec15;
        let x_1475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1473.xy, x_1473.z);
        u_xlat48.x = x_1475;
        let x_1478 : f32 = u_xlat18.z;
        let x_1480 : f32 = u_xlat48.x;
        let x_1482 : f32 = u_xlat70;
        u_xlat48.x = ((x_1478 * x_1480) + x_1482);
        let x_1486 : vec4<f32> = u_xlat16;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.x, x_1486.y);
        let x_1489 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1497 : vec3<f32> = txVec16;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1497.xy, x_1497.z);
        u_xlat69 = x_1499;
        let x_1501 : f32 = u_xlat18.w;
        let x_1502 : f32 = u_xlat69;
        let x_1505 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1501 * x_1502) + x_1505);
        let x_1509 : vec4<f32> = u_xlat14;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.x, x_1509.y);
        let x_1512 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec17;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1519.xy, x_1519.z);
        u_xlat69 = x_1521;
        let x_1523 : f32 = u_xlat19.x;
        let x_1524 : f32 = u_xlat69;
        let x_1527 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1523 * x_1524) + x_1527);
        let x_1531 : vec4<f32> = u_xlat14;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.z, x_1531.w);
        let x_1534 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec18;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1541.xy, x_1541.z);
        u_xlat69 = x_1543;
        let x_1545 : f32 = u_xlat19.y;
        let x_1546 : f32 = u_xlat69;
        let x_1549 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1545 * x_1546) + x_1549);
        let x_1553 : vec4<f32> = u_xlat15;
        let x_1554 : vec2<f32> = vec2<f32>(x_1553.x, x_1553.y);
        let x_1556 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec19;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1563.xy, x_1563.z);
        u_xlat69 = x_1565;
        let x_1567 : f32 = u_xlat19.z;
        let x_1568 : f32 = u_xlat69;
        let x_1571 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1567 * x_1568) + x_1571);
        let x_1575 : vec4<f32> = u_xlat16;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.z, x_1575.w);
        let x_1578 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec20;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat69 = x_1587;
        let x_1589 : f32 = u_xlat19.w;
        let x_1590 : f32 = u_xlat69;
        let x_1593 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1589 * x_1590) + x_1593);
        let x_1597 : vec4<f32> = u_xlat17;
        let x_1598 : vec2<f32> = vec2<f32>(x_1597.x, x_1597.y);
        let x_1600 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec21;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1607.xy, x_1607.z);
        u_xlat69 = x_1609;
        let x_1611 : f32 = u_xlat20.x;
        let x_1612 : f32 = u_xlat69;
        let x_1615 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1611 * x_1612) + x_1615);
        let x_1619 : vec4<f32> = u_xlat17;
        let x_1620 : vec2<f32> = vec2<f32>(x_1619.z, x_1619.w);
        let x_1622 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec22;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1629.xy, x_1629.z);
        u_xlat69 = x_1631;
        let x_1633 : f32 = u_xlat20.y;
        let x_1634 : f32 = u_xlat69;
        let x_1637 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1633 * x_1634) + x_1637);
        let x_1641 : vec3<f32> = u_xlat30;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.x, x_1641.y);
        let x_1644 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec23;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat69 = x_1653;
        let x_1655 : f32 = u_xlat20.z;
        let x_1656 : f32 = u_xlat69;
        let x_1659 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1655 * x_1656) + x_1659);
        let x_1663 : vec2<f32> = u_xlat57;
        let x_1665 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec24;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1672.xy, x_1672.z);
        u_xlat69 = x_1674;
        let x_1676 : f32 = u_xlat20.w;
        let x_1677 : f32 = u_xlat69;
        let x_1680 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1676 * x_1677) + x_1680);
        let x_1684 : vec4<f32> = u_xlat12;
        let x_1685 : vec2<f32> = vec2<f32>(x_1684.x, x_1684.y);
        let x_1687 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1694 : vec3<f32> = txVec25;
        let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1694.xy, x_1694.z);
        u_xlat69 = x_1696;
        let x_1698 : f32 = u_xlat8.x;
        let x_1699 : f32 = u_xlat69;
        let x_1702 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1698 * x_1699) + x_1702);
        let x_1706 : vec4<f32> = u_xlat12;
        let x_1707 : vec2<f32> = vec2<f32>(x_1706.z, x_1706.w);
        let x_1709 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec26;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1716.xy, x_1716.z);
        u_xlat69 = x_1718;
        let x_1720 : f32 = u_xlat8.y;
        let x_1721 : f32 = u_xlat69;
        let x_1724 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1720 * x_1721) + x_1724);
        let x_1728 : vec2<f32> = u_xlat52;
        let x_1730 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1728.x, x_1728.y, x_1730);
        let x_1737 : vec3<f32> = txVec27;
        let x_1739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1737.xy, x_1737.z);
        u_xlat69 = x_1739;
        let x_1741 : f32 = u_xlat8.z;
        let x_1742 : f32 = u_xlat69;
        let x_1745 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1741 * x_1742) + x_1745);
        let x_1749 : vec4<f32> = u_xlat6;
        let x_1750 : vec2<f32> = vec2<f32>(x_1749.x, x_1749.y);
        let x_1752 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1759 : vec3<f32> = txVec28;
        let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1759.xy, x_1759.z);
        u_xlat6.x = x_1761;
        let x_1764 : f32 = u_xlat8.w;
        let x_1766 : f32 = u_xlat6.x;
        let x_1769 : f32 = u_xlat48.x;
        u_xlat67 = ((x_1764 * x_1766) + x_1769);
      }
    }
  } else {
    let x_1773 : vec4<f32> = vs_INTERP8;
    let x_1774 : vec2<f32> = vec2<f32>(x_1773.x, x_1773.y);
    let x_1776 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1774.x, x_1774.y, x_1776);
    let x_1783 : vec3<f32> = txVec29;
    let x_1785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1783.xy, x_1783.z);
    u_xlat67 = x_1785;
  }
  let x_1787 : f32 = x_526.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1787) + 1.0f);
  let x_1791 : f32 = u_xlat67;
  let x_1793 : f32 = x_526.x_MainLightShadowParams.x;
  let x_1796 : f32 = u_xlat6.x;
  u_xlat67 = ((x_1791 * x_1793) + x_1796);
  let x_1799 : f32 = vs_INTERP8.z;
  u_xlatb6 = (0.0f >= x_1799);
  let x_1803 : f32 = vs_INTERP8.z;
  u_xlatb27 = (x_1803 >= 1.0f);
  let x_1805 : bool = u_xlatb27;
  let x_1806 : bool = u_xlatb6;
  u_xlatb6 = (x_1805 | x_1806);
  let x_1808 : bool = u_xlatb6;
  let x_1809 : f32 = u_xlat67;
  u_xlat67 = select(x_1809, 1.0f, x_1808);
  let x_1811 : vec3<f32> = vs_INTERP0;
  let x_1813 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1815 : vec3<f32> = (x_1811 + -(x_1813));
  let x_1816 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);
  let x_1818 : vec4<f32> = u_xlat6;
  let x_1820 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1818.x, x_1818.y, x_1818.z), vec3<f32>(x_1820.x, x_1820.y, x_1820.z));
  let x_1825 : f32 = u_xlat6.x;
  let x_1827 : f32 = x_526.x_MainLightShadowParams.z;
  let x_1830 : f32 = x_526.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1825 * x_1827) + x_1830);
  let x_1834 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1834, 0.0f, 1.0f);
  let x_1837 : f32 = u_xlat67;
  u_xlat27 = (-(x_1837) + 1.0f);
  let x_1841 : f32 = u_xlat6.x;
  let x_1842 : f32 = u_xlat27;
  let x_1844 : f32 = u_xlat67;
  u_xlat67 = ((x_1841 * x_1842) + x_1844);
  let x_1852 : f32 = x_1850.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1852 == -1.0f));
  let x_1854 : bool = u_xlatb6;
  if (x_1854) {
    let x_1857 : vec3<f32> = vs_INTERP0;
    let x_1860 : vec4<f32> = x_1850.x_MainLightWorldToLight[1i];
    let x_1862 : vec2<f32> = (vec2<f32>(x_1857.y, x_1857.y) * vec2<f32>(x_1860.x, x_1860.y));
    let x_1863 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1862.x, x_1862.y, x_1863.z, x_1863.w);
    let x_1866 : vec4<f32> = x_1850.x_MainLightWorldToLight[0i];
    let x_1868 : vec3<f32> = vs_INTERP0;
    let x_1871 : vec4<f32> = u_xlat6;
    let x_1873 : vec2<f32> = ((vec2<f32>(x_1866.x, x_1866.y) * vec2<f32>(x_1868.x, x_1868.x)) + vec2<f32>(x_1871.x, x_1871.y));
    let x_1874 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1873.x, x_1873.y, x_1874.z, x_1874.w);
    let x_1877 : vec4<f32> = x_1850.x_MainLightWorldToLight[2i];
    let x_1879 : vec3<f32> = vs_INTERP0;
    let x_1882 : vec4<f32> = u_xlat6;
    let x_1884 : vec2<f32> = ((vec2<f32>(x_1877.x, x_1877.y) * vec2<f32>(x_1879.z, x_1879.z)) + vec2<f32>(x_1882.x, x_1882.y));
    let x_1885 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1884.x, x_1884.y, x_1885.z, x_1885.w);
    let x_1887 : vec4<f32> = u_xlat6;
    let x_1890 : vec4<f32> = x_1850.x_MainLightWorldToLight[3i];
    let x_1892 : vec2<f32> = (vec2<f32>(x_1887.x, x_1887.y) + vec2<f32>(x_1890.x, x_1890.y));
    let x_1893 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1892.x, x_1892.y, x_1893.z, x_1893.w);
    let x_1895 : vec4<f32> = u_xlat6;
    let x_1898 : vec2<f32> = ((vec2<f32>(x_1895.x, x_1895.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1899 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1898.x, x_1898.y, x_1899.z, x_1899.w);
    let x_1906 : vec4<f32> = u_xlat6;
    let x_1909 : f32 = x_45.x_GlobalMipBias.x;
    let x_1910 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1906.x, x_1906.y), x_1909);
    u_xlat6 = x_1910;
    let x_1915 : f32 = x_1850.x_MainLightCookieTextureFormat;
    let x_1917 : f32 = x_1850.x_MainLightCookieTextureFormat;
    let x_1919 : f32 = x_1850.x_MainLightCookieTextureFormat;
    let x_1921 : f32 = x_1850.x_MainLightCookieTextureFormat;
    let x_1922 : vec4<f32> = vec4<f32>(x_1915, x_1917, x_1919, x_1921);
    let x_1930 : vec4<bool> = (vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1922.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1930.x, x_1930.y);
    let x_1933 : bool = u_xlatb8.y;
    if (x_1933) {
      let x_1938 : f32 = u_xlat6.w;
      x_1934 = x_1938;
    } else {
      let x_1941 : f32 = u_xlat6.x;
      x_1934 = x_1941;
    }
    let x_1942 : f32 = x_1934;
    u_xlat69 = x_1942;
    let x_1944 : bool = u_xlatb8.x;
    if (x_1944) {
      let x_1948 : vec4<f32> = u_xlat6;
      x_1945 = vec3<f32>(x_1948.x, x_1948.y, x_1948.z);
    } else {
      let x_1951 : f32 = u_xlat69;
      x_1945 = vec3<f32>(x_1951, x_1951, x_1951);
    }
    let x_1953 : vec3<f32> = x_1945;
    let x_1954 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1953.x, x_1953.y, x_1953.z, x_1954.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1960 : vec4<f32> = u_xlat6;
  let x_1963 : vec4<f32> = x_45.x_MainLightColor;
  let x_1965 : vec3<f32> = (vec3<f32>(x_1960.x, x_1960.y, x_1960.z) * vec3<f32>(x_1963.x, x_1963.y, x_1963.z));
  let x_1966 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1965.x, x_1965.y, x_1965.z, x_1966.w);
  let x_1968 : f32 = u_xlat68;
  let x_1970 : vec4<f32> = u_xlat6;
  let x_1972 : vec3<f32> = (vec3<f32>(x_1968, x_1968, x_1968) * vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
  let x_1973 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
  let x_1975 : vec3<f32> = u_xlat5;
  let x_1977 : vec4<f32> = u_xlat4;
  u_xlat69 = dot(-(x_1975), vec3<f32>(x_1977.x, x_1977.y, x_1977.z));
  let x_1980 : f32 = u_xlat69;
  let x_1981 : f32 = u_xlat69;
  u_xlat69 = (x_1980 + x_1981);
  let x_1983 : vec4<f32> = u_xlat4;
  let x_1985 : f32 = u_xlat69;
  let x_1989 : vec3<f32> = u_xlat5;
  let x_1991 : vec3<f32> = ((vec3<f32>(x_1983.x, x_1983.y, x_1983.z) * -(vec3<f32>(x_1985, x_1985, x_1985))) + -(x_1989));
  let x_1992 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1991.x, x_1991.y, x_1991.z, x_1992.w);
  let x_1994 : vec4<f32> = u_xlat4;
  let x_1996 : vec3<f32> = u_xlat5;
  u_xlat69 = dot(vec3<f32>(x_1994.x, x_1994.y, x_1994.z), x_1996);
  let x_1998 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1998, 0.0f, 1.0f);
  let x_2000 : f32 = u_xlat69;
  u_xlat69 = (-(x_2000) + 1.0f);
  let x_2003 : f32 = u_xlat69;
  let x_2004 : f32 = u_xlat69;
  u_xlat69 = (x_2003 * x_2004);
  let x_2006 : f32 = u_xlat69;
  let x_2007 : f32 = u_xlat69;
  u_xlat69 = (x_2006 * x_2007);
  let x_2009 : f32 = u_xlat63;
  u_xlat70 = ((-(x_2009) * 0.699999988f) + 1.700000048f);
  let x_2015 : f32 = u_xlat63;
  let x_2016 : f32 = u_xlat70;
  u_xlat63 = (x_2015 * x_2016);
  let x_2018 : f32 = u_xlat63;
  u_xlat63 = (x_2018 * 6.0f);
  let x_2029 : vec4<f32> = u_xlat8;
  let x_2031 : f32 = u_xlat63;
  let x_2032 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2029.x, x_2029.y, x_2029.z), x_2031);
  u_xlat8 = x_2032;
  let x_2034 : f32 = u_xlat8.w;
  u_xlat63 = (x_2034 + -1.0f);
  let x_2037 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_2038 : f32 = u_xlat63;
  u_xlat63 = ((x_2037 * x_2038) + 1.0f);
  let x_2041 : f32 = u_xlat63;
  u_xlat63 = max(x_2041, 0.0f);
  let x_2043 : f32 = u_xlat63;
  u_xlat63 = log2(x_2043);
  let x_2045 : f32 = u_xlat63;
  let x_2047 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2045 * x_2047);
  let x_2049 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2049);
  let x_2051 : f32 = u_xlat63;
  let x_2053 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2051 * x_2053);
  let x_2055 : vec4<f32> = u_xlat8;
  let x_2057 : f32 = u_xlat63;
  let x_2059 : vec3<f32> = (vec3<f32>(x_2055.x, x_2055.y, x_2055.z) * vec3<f32>(x_2057, x_2057, x_2057));
  let x_2060 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
  let x_2062 : vec3<f32> = u_xlat3;
  let x_2064 : vec3<f32> = u_xlat3;
  let x_2068 : vec2<f32> = ((vec2<f32>(x_2062.x, x_2062.x) * vec2<f32>(x_2064.x, x_2064.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2069 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2068.x, x_2068.y, x_2069.z, x_2069.w);
  let x_2072 : f32 = u_xlat9.y;
  u_xlat63 = (1.0f / x_2072);
  let x_2074 : vec3<f32> = u_xlat0;
  let x_2076 : f32 = u_xlat65;
  u_xlat30 = (-(x_2074) + vec3<f32>(x_2076, x_2076, x_2076));
  let x_2079 : f32 = u_xlat69;
  let x_2081 : vec3<f32> = u_xlat30;
  let x_2083 : vec3<f32> = u_xlat0;
  u_xlat30 = ((vec3<f32>(x_2079, x_2079, x_2079) * x_2081) + x_2083);
  let x_2085 : f32 = u_xlat63;
  let x_2087 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_2085, x_2085, x_2085) * x_2087);
  let x_2089 : vec4<f32> = u_xlat8;
  let x_2091 : vec3<f32> = u_xlat30;
  let x_2092 : vec3<f32> = (vec3<f32>(x_2089.x, x_2089.y, x_2089.z) * x_2091);
  let x_2093 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2092.x, x_2092.y, x_2092.z, x_2093.w);
  let x_2095 : vec4<f32> = u_xlat1;
  let x_2097 : vec4<f32> = u_xlat7;
  let x_2100 : vec4<f32> = u_xlat8;
  let x_2102 : vec3<f32> = ((vec3<f32>(x_2095.x, x_2095.y, x_2095.w) * vec3<f32>(x_2097.x, x_2097.y, x_2097.z)) + vec3<f32>(x_2100.x, x_2100.y, x_2100.z));
  let x_2103 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2102.x, x_2102.y, x_2103.z, x_2102.z);
  let x_2105 : f32 = u_xlat67;
  let x_2108 : f32 = x_122.unity_LightData.z;
  u_xlat63 = (x_2105 * x_2108);
  let x_2110 : vec4<f32> = u_xlat4;
  let x_2113 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2110.x, x_2110.y, x_2110.z), vec3<f32>(x_2113.x, x_2113.y, x_2113.z));
  let x_2116 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2116, 0.0f, 1.0f);
  let x_2118 : f32 = u_xlat63;
  let x_2119 : f32 = u_xlat65;
  u_xlat63 = (x_2118 * x_2119);
  let x_2121 : f32 = u_xlat63;
  let x_2123 : vec4<f32> = u_xlat6;
  let x_2125 : vec3<f32> = (vec3<f32>(x_2121, x_2121, x_2121) * vec3<f32>(x_2123.x, x_2123.y, x_2123.z));
  let x_2126 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
  let x_2128 : vec3<f32> = u_xlat5;
  let x_2130 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2132 : vec3<f32> = (x_2128 + vec3<f32>(x_2130.x, x_2130.y, x_2130.z));
  let x_2133 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
  let x_2135 : vec4<f32> = u_xlat8;
  let x_2137 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_2135.x, x_2135.y, x_2135.z), vec3<f32>(x_2137.x, x_2137.y, x_2137.z));
  let x_2140 : f32 = u_xlat63;
  u_xlat63 = max(x_2140, 1.17549435e-37f);
  let x_2143 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2143);
  let x_2145 : f32 = u_xlat63;
  let x_2147 : vec4<f32> = u_xlat8;
  let x_2149 : vec3<f32> = (vec3<f32>(x_2145, x_2145, x_2145) * vec3<f32>(x_2147.x, x_2147.y, x_2147.z));
  let x_2150 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);
  let x_2152 : vec4<f32> = u_xlat4;
  let x_2154 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_2152.x, x_2152.y, x_2152.z), vec3<f32>(x_2154.x, x_2154.y, x_2154.z));
  let x_2157 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2157, 0.0f, 1.0f);
  let x_2160 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2162 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(vec3<f32>(x_2160.x, x_2160.y, x_2160.z), vec3<f32>(x_2162.x, x_2162.y, x_2162.z));
  let x_2165 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2165, 0.0f, 1.0f);
  let x_2167 : f32 = u_xlat63;
  let x_2168 : f32 = u_xlat63;
  u_xlat63 = (x_2167 * x_2168);
  let x_2170 : f32 = u_xlat63;
  let x_2172 : f32 = u_xlat9.x;
  u_xlat63 = ((x_2170 * x_2172) + 1.000010014f);
  let x_2176 : f32 = u_xlat65;
  let x_2177 : f32 = u_xlat65;
  u_xlat65 = (x_2176 * x_2177);
  let x_2179 : f32 = u_xlat63;
  let x_2180 : f32 = u_xlat63;
  u_xlat63 = (x_2179 * x_2180);
  let x_2182 : f32 = u_xlat65;
  u_xlat65 = max(x_2182, 0.100000001f);
  let x_2185 : f32 = u_xlat63;
  let x_2186 : f32 = u_xlat65;
  u_xlat63 = (x_2185 * x_2186);
  let x_2188 : f32 = u_xlat66;
  let x_2189 : f32 = u_xlat63;
  u_xlat63 = (x_2188 * x_2189);
  let x_2191 : f32 = u_xlat24;
  let x_2192 : f32 = u_xlat63;
  u_xlat63 = (x_2191 / x_2192);
  let x_2194 : vec3<f32> = u_xlat0;
  let x_2195 : f32 = u_xlat63;
  let x_2198 : vec4<f32> = u_xlat7;
  let x_2200 : vec3<f32> = ((x_2194 * vec3<f32>(x_2195, x_2195, x_2195)) + vec3<f32>(x_2198.x, x_2198.y, x_2198.z));
  let x_2201 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2200.x, x_2200.y, x_2200.z, x_2201.w);
  let x_2203 : vec4<f32> = u_xlat6;
  let x_2205 : vec4<f32> = u_xlat8;
  let x_2207 : vec3<f32> = (vec3<f32>(x_2203.x, x_2203.y, x_2203.z) * vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
  let x_2208 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
  let x_2211 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2213 : f32 = x_122.unity_LightData.y;
  u_xlat63 = min(x_2211, x_2213);
  let x_2217 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2217));
  let x_2221 : f32 = x_1850.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2223 : f32 = x_1850.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2225 : f32 = x_1850.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2227 : f32 = x_1850.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2228 : vec4<f32> = vec4<f32>(x_2221, x_2223, x_2225, x_2227);
  let x_2234 : vec4<bool> = (vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2228.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_2234.x, x_2234.y);
  u_xlat30.x = 0.0f;
  u_xlat30.y = 0.0f;
  u_xlat30.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2245 : u32 = u_xlatu_loop_1;
    let x_2246 : u32 = u_xlatu63;
    if ((x_2245 < x_2246)) {
    } else {
      break;
    }
    let x_2249 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_2249 >> 2u);
    let x_2253 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2253 & 3u));
    let x_2256 : u32 = u_xlatu3;
    let x_2259 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_2256)];
    let x_2269 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2274 : vec4<u32> = indexable[x_2269];
    u_xlat3.x = dot(x_2259, bitcast<vec4<f32>>(x_2274));
    let x_2279 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_2279));
    let x_2282 : vec3<f32> = vs_INTERP0;
    let x_2294 : u32 = u_xlatu3;
    let x_2297 : vec4<f32> = x_2293.x_AdditionalLightsPosition[bitcast<i32>(x_2294)];
    let x_2300 : u32 = u_xlatu3;
    let x_2303 : vec4<f32> = x_2293.x_AdditionalLightsPosition[bitcast<i32>(x_2300)];
    let x_2305 : vec3<f32> = ((-(x_2282) * vec3<f32>(x_2297.w, x_2297.w, x_2297.w)) + vec3<f32>(x_2303.x, x_2303.y, x_2303.z));
    let x_2306 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
    let x_2308 : vec4<f32> = u_xlat10;
    let x_2310 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2308.x, x_2308.y, x_2308.z), vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
    let x_2313 : f32 = u_xlat67;
    u_xlat67 = max(x_2313, 6.10351562e-05f);
    let x_2316 : f32 = u_xlat67;
    u_xlat69 = inverseSqrt(x_2316);
    let x_2318 : f32 = u_xlat69;
    let x_2320 : vec4<f32> = u_xlat10;
    let x_2322 : vec3<f32> = (vec3<f32>(x_2318, x_2318, x_2318) * vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
    let x_2323 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
    let x_2325 : f32 = u_xlat67;
    u_xlat70 = (1.0f / x_2325);
    let x_2327 : f32 = u_xlat67;
    let x_2328 : u32 = u_xlatu3;
    let x_2331 : f32 = x_2293.x_AdditionalLightsAttenuation[bitcast<i32>(x_2328)].x;
    u_xlat67 = (x_2327 * x_2331);
    let x_2333 : f32 = u_xlat67;
    let x_2335 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2333) * x_2335) + 1.0f);
    let x_2338 : f32 = u_xlat67;
    u_xlat67 = max(x_2338, 0.0f);
    let x_2340 : f32 = u_xlat67;
    let x_2341 : f32 = u_xlat67;
    u_xlat67 = (x_2340 * x_2341);
    let x_2343 : f32 = u_xlat67;
    let x_2344 : f32 = u_xlat70;
    u_xlat67 = (x_2343 * x_2344);
    let x_2346 : u32 = u_xlatu3;
    let x_2349 : vec4<f32> = x_2293.x_AdditionalLightsSpotDir[bitcast<i32>(x_2346)];
    let x_2351 : vec4<f32> = u_xlat11;
    u_xlat70 = dot(vec3<f32>(x_2349.x, x_2349.y, x_2349.z), vec3<f32>(x_2351.x, x_2351.y, x_2351.z));
    let x_2354 : f32 = u_xlat70;
    let x_2355 : u32 = u_xlatu3;
    let x_2358 : f32 = x_2293.x_AdditionalLightsAttenuation[bitcast<i32>(x_2355)].z;
    let x_2360 : u32 = u_xlatu3;
    let x_2363 : f32 = x_2293.x_AdditionalLightsAttenuation[bitcast<i32>(x_2360)].w;
    u_xlat70 = ((x_2354 * x_2358) + x_2363);
    let x_2365 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2365, 0.0f, 1.0f);
    let x_2367 : f32 = u_xlat70;
    let x_2368 : f32 = u_xlat70;
    u_xlat70 = (x_2367 * x_2368);
    let x_2370 : f32 = u_xlat67;
    let x_2371 : f32 = u_xlat70;
    u_xlat67 = (x_2370 * x_2371);
    let x_2374 : u32 = u_xlatu3;
    u_xlatu70 = (x_2374 >> 5u);
    let x_2377 : u32 = u_xlatu3;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_2377) & 31i)));
    let x_2383 : i32 = u_xlati50;
    let x_2385 : u32 = u_xlatu70;
    let x_2388 : f32 = x_1850.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2385)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2383) & bitcast<u32>(x_2388)));
    let x_2392 : i32 = u_xlati70;
    if ((x_2392 != 0i)) {
      let x_2402 : u32 = u_xlatu3;
      let x_2405 : f32 = x_2401.x_AdditionalLightsLightTypes[bitcast<i32>(x_2402)].el;
      u_xlati70 = i32(x_2405);
      let x_2407 : i32 = u_xlati70;
      u_xlati50 = select(1i, 0i, (x_2407 != 0i));
      let x_2411 : u32 = u_xlatu3;
      u_xlati71 = (bitcast<i32>(x_2411) << bitcast<u32>(2i));
      let x_2414 : i32 = u_xlati50;
      if ((x_2414 != 0i)) {
        let x_2418 : vec3<f32> = vs_INTERP0;
        let x_2420 : i32 = u_xlati71;
        let x_2423 : i32 = u_xlati71;
        let x_2427 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2420 + 1i) / 4i)][((x_2423 + 1i) % 4i)];
        let x_2429 : vec3<f32> = (vec3<f32>(x_2418.y, x_2418.y, x_2418.y) * vec3<f32>(x_2427.x, x_2427.y, x_2427.w));
        let x_2430 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2429.x, x_2429.y, x_2429.z, x_2430.w);
        let x_2432 : i32 = u_xlati71;
        let x_2434 : i32 = u_xlati71;
        let x_2437 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[(x_2432 / 4i)][(x_2434 % 4i)];
        let x_2439 : vec3<f32> = vs_INTERP0;
        let x_2442 : vec4<f32> = u_xlat12;
        let x_2444 : vec3<f32> = ((vec3<f32>(x_2437.x, x_2437.y, x_2437.w) * vec3<f32>(x_2439.x, x_2439.x, x_2439.x)) + vec3<f32>(x_2442.x, x_2442.y, x_2442.z));
        let x_2445 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
        let x_2447 : i32 = u_xlati71;
        let x_2450 : i32 = u_xlati71;
        let x_2454 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2447 + 2i) / 4i)][((x_2450 + 2i) % 4i)];
        let x_2456 : vec3<f32> = vs_INTERP0;
        let x_2459 : vec4<f32> = u_xlat12;
        let x_2461 : vec3<f32> = ((vec3<f32>(x_2454.x, x_2454.y, x_2454.w) * vec3<f32>(x_2456.z, x_2456.z, x_2456.z)) + vec3<f32>(x_2459.x, x_2459.y, x_2459.z));
        let x_2462 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2461.x, x_2461.y, x_2461.z, x_2462.w);
        let x_2464 : vec4<f32> = u_xlat12;
        let x_2466 : i32 = u_xlati71;
        let x_2469 : i32 = u_xlati71;
        let x_2473 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2466 + 3i) / 4i)][((x_2469 + 3i) % 4i)];
        let x_2475 : vec3<f32> = (vec3<f32>(x_2464.x, x_2464.y, x_2464.z) + vec3<f32>(x_2473.x, x_2473.y, x_2473.w));
        let x_2476 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2475.x, x_2475.y, x_2475.z, x_2476.w);
        let x_2478 : vec4<f32> = u_xlat12;
        let x_2480 : vec4<f32> = u_xlat12;
        let x_2482 : vec2<f32> = (vec2<f32>(x_2478.x, x_2478.y) / vec2<f32>(x_2480.z, x_2480.z));
        let x_2483 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
        let x_2485 : vec4<f32> = u_xlat12;
        let x_2488 : vec2<f32> = ((vec2<f32>(x_2485.x, x_2485.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2489 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2488.x, x_2488.y, x_2489.z, x_2489.w);
        let x_2491 : vec4<f32> = u_xlat12;
        let x_2495 : vec2<f32> = clamp(vec2<f32>(x_2491.x, x_2491.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2496 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2495.x, x_2495.y, x_2496.z, x_2496.w);
        let x_2498 : u32 = u_xlatu3;
        let x_2501 : vec4<f32> = x_2401.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2498)];
        let x_2503 : vec4<f32> = u_xlat12;
        let x_2506 : u32 = u_xlatu3;
        let x_2509 : vec4<f32> = x_2401.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2506)];
        let x_2511 : vec2<f32> = ((vec2<f32>(x_2501.x, x_2501.y) * vec2<f32>(x_2503.x, x_2503.y)) + vec2<f32>(x_2509.z, x_2509.w));
        let x_2512 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2511.x, x_2511.y, x_2512.z, x_2512.w);
      } else {
        let x_2516 : i32 = u_xlati70;
        u_xlatb70 = (x_2516 == 1i);
        let x_2518 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2518);
        let x_2520 : i32 = u_xlati70;
        if ((x_2520 != 0i)) {
          let x_2525 : vec3<f32> = vs_INTERP0;
          let x_2527 : i32 = u_xlati71;
          let x_2530 : i32 = u_xlati71;
          let x_2534 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2527 + 1i) / 4i)][((x_2530 + 1i) % 4i)];
          u_xlat54 = (vec2<f32>(x_2525.y, x_2525.y) * vec2<f32>(x_2534.x, x_2534.y));
          let x_2537 : i32 = u_xlati71;
          let x_2539 : i32 = u_xlati71;
          let x_2542 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[(x_2537 / 4i)][(x_2539 % 4i)];
          let x_2544 : vec3<f32> = vs_INTERP0;
          let x_2547 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_2542.x, x_2542.y) * vec2<f32>(x_2544.x, x_2544.x)) + x_2547);
          let x_2549 : i32 = u_xlati71;
          let x_2552 : i32 = u_xlati71;
          let x_2556 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2549 + 2i) / 4i)][((x_2552 + 2i) % 4i)];
          let x_2558 : vec3<f32> = vs_INTERP0;
          let x_2561 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_2556.x, x_2556.y) * vec2<f32>(x_2558.z, x_2558.z)) + x_2561);
          let x_2563 : vec2<f32> = u_xlat54;
          let x_2564 : i32 = u_xlati71;
          let x_2567 : i32 = u_xlati71;
          let x_2571 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2564 + 3i) / 4i)][((x_2567 + 3i) % 4i)];
          u_xlat54 = (x_2563 + vec2<f32>(x_2571.x, x_2571.y));
          let x_2574 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_2574 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2577 : vec2<f32> = u_xlat54;
          u_xlat54 = fract(x_2577);
          let x_2579 : u32 = u_xlatu3;
          let x_2582 : vec4<f32> = x_2401.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2579)];
          let x_2584 : vec2<f32> = u_xlat54;
          let x_2586 : u32 = u_xlatu3;
          let x_2589 : vec4<f32> = x_2401.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2586)];
          let x_2591 : vec2<f32> = ((vec2<f32>(x_2582.x, x_2582.y) * x_2584) + vec2<f32>(x_2589.z, x_2589.w));
          let x_2592 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2591.x, x_2591.y, x_2592.z, x_2592.w);
        } else {
          let x_2595 : vec3<f32> = vs_INTERP0;
          let x_2597 : i32 = u_xlati71;
          let x_2600 : i32 = u_xlati71;
          let x_2604 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2597 + 1i) / 4i)][((x_2600 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_2595.y, x_2595.y, x_2595.y, x_2595.y) * x_2604);
          let x_2606 : i32 = u_xlati71;
          let x_2608 : i32 = u_xlati71;
          let x_2611 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[(x_2606 / 4i)][(x_2608 % 4i)];
          let x_2612 : vec3<f32> = vs_INTERP0;
          let x_2615 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2611 * vec4<f32>(x_2612.x, x_2612.x, x_2612.x, x_2612.x)) + x_2615);
          let x_2617 : i32 = u_xlati71;
          let x_2620 : i32 = u_xlati71;
          let x_2624 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2617 + 2i) / 4i)][((x_2620 + 2i) % 4i)];
          let x_2625 : vec3<f32> = vs_INTERP0;
          let x_2628 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2624 * vec4<f32>(x_2625.z, x_2625.z, x_2625.z, x_2625.z)) + x_2628);
          let x_2630 : vec4<f32> = u_xlat13;
          let x_2631 : i32 = u_xlati71;
          let x_2634 : i32 = u_xlati71;
          let x_2638 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2631 + 3i) / 4i)][((x_2634 + 3i) % 4i)];
          u_xlat13 = (x_2630 + x_2638);
          let x_2640 : vec4<f32> = u_xlat13;
          let x_2642 : vec4<f32> = u_xlat13;
          let x_2644 : vec3<f32> = (vec3<f32>(x_2640.x, x_2640.y, x_2640.z) / vec3<f32>(x_2642.w, x_2642.w, x_2642.w));
          let x_2645 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2645.w);
          let x_2647 : vec4<f32> = u_xlat13;
          let x_2649 : vec4<f32> = u_xlat13;
          u_xlat70 = dot(vec3<f32>(x_2647.x, x_2647.y, x_2647.z), vec3<f32>(x_2649.x, x_2649.y, x_2649.z));
          let x_2652 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2652);
          let x_2654 : f32 = u_xlat70;
          let x_2656 : vec4<f32> = u_xlat13;
          let x_2658 : vec3<f32> = (vec3<f32>(x_2654, x_2654, x_2654) * vec3<f32>(x_2656.x, x_2656.y, x_2656.z));
          let x_2659 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2658.x, x_2658.y, x_2658.z, x_2659.w);
          let x_2661 : vec4<f32> = u_xlat13;
          u_xlat70 = dot(abs(vec3<f32>(x_2661.x, x_2661.y, x_2661.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2666 : f32 = u_xlat70;
          u_xlat70 = max(x_2666, 0.000001f);
          let x_2669 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2669);
          let x_2671 : f32 = u_xlat70;
          let x_2673 : vec4<f32> = u_xlat13;
          let x_2675 : vec3<f32> = (vec3<f32>(x_2671, x_2671, x_2671) * vec3<f32>(x_2673.z, x_2673.x, x_2673.y));
          let x_2676 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_2675.x, x_2675.y, x_2675.z, x_2676.w);
          let x_2679 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_2679);
          let x_2683 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_2683, 0.0f, 1.0f);
          let x_2687 : vec4<f32> = u_xlat14;
          let x_2690 : vec4<bool> = (vec4<f32>(x_2687.y, x_2687.z, x_2687.y, x_2687.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb50 = vec2<bool>(x_2690.x, x_2690.y);
          let x_2694 : bool = u_xlatb50.x;
          if (x_2694) {
            let x_2699 : f32 = u_xlat14.x;
            x_2695 = x_2699;
          } else {
            let x_2702 : f32 = u_xlat14.x;
            x_2695 = -(x_2702);
          }
          let x_2704 : f32 = x_2695;
          u_xlat50.x = x_2704;
          let x_2707 : bool = u_xlatb50.y;
          if (x_2707) {
            let x_2712 : f32 = u_xlat14.x;
            x_2708 = x_2712;
          } else {
            let x_2715 : f32 = u_xlat14.x;
            x_2708 = -(x_2715);
          }
          let x_2717 : f32 = x_2708;
          u_xlat50.y = x_2717;
          let x_2719 : vec4<f32> = u_xlat13;
          let x_2721 : f32 = u_xlat70;
          let x_2724 : vec2<f32> = u_xlat50;
          u_xlat50 = ((vec2<f32>(x_2719.x, x_2719.y) * vec2<f32>(x_2721, x_2721)) + x_2724);
          let x_2726 : vec2<f32> = u_xlat50;
          u_xlat50 = ((x_2726 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2729 : vec2<f32> = u_xlat50;
          u_xlat50 = clamp(x_2729, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2733 : u32 = u_xlatu3;
          let x_2736 : vec4<f32> = x_2401.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2733)];
          let x_2738 : vec2<f32> = u_xlat50;
          let x_2740 : u32 = u_xlatu3;
          let x_2743 : vec4<f32> = x_2401.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2740)];
          let x_2745 : vec2<f32> = ((vec2<f32>(x_2736.x, x_2736.y) * x_2738) + vec2<f32>(x_2743.z, x_2743.w));
          let x_2746 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2745.x, x_2745.y, x_2746.z, x_2746.w);
        }
      }
      let x_2753 : vec4<f32> = u_xlat12;
      let x_2756 : f32 = x_45.x_GlobalMipBias.x;
      let x_2757 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2753.x, x_2753.y), x_2756);
      u_xlat12 = x_2757;
      let x_2759 : bool = u_xlatb8.y;
      if (x_2759) {
        let x_2764 : f32 = u_xlat12.w;
        x_2760 = x_2764;
      } else {
        let x_2767 : f32 = u_xlat12.x;
        x_2760 = x_2767;
      }
      let x_2768 : f32 = x_2760;
      u_xlat70 = x_2768;
      let x_2770 : bool = u_xlatb8.x;
      if (x_2770) {
        let x_2774 : vec4<f32> = u_xlat12;
        x_2771 = vec3<f32>(x_2774.x, x_2774.y, x_2774.z);
      } else {
        let x_2777 : f32 = u_xlat70;
        x_2771 = vec3<f32>(x_2777, x_2777, x_2777);
      }
      let x_2779 : vec3<f32> = x_2771;
      let x_2780 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2779.x, x_2779.y, x_2779.z, x_2780.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_2786 : vec4<f32> = u_xlat12;
    let x_2788 : u32 = u_xlatu3;
    let x_2791 : vec4<f32> = x_2293.x_AdditionalLightsColor[bitcast<i32>(x_2788)];
    let x_2793 : vec3<f32> = (vec3<f32>(x_2786.x, x_2786.y, x_2786.z) * vec3<f32>(x_2791.x, x_2791.y, x_2791.z));
    let x_2794 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2793.x, x_2793.y, x_2793.z, x_2794.w);
    let x_2796 : f32 = u_xlat68;
    let x_2798 : vec4<f32> = u_xlat12;
    let x_2800 : vec3<f32> = (vec3<f32>(x_2796, x_2796, x_2796) * vec3<f32>(x_2798.x, x_2798.y, x_2798.z));
    let x_2801 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2800.x, x_2800.y, x_2800.z, x_2801.w);
    let x_2803 : vec4<f32> = u_xlat4;
    let x_2805 : vec4<f32> = u_xlat11;
    u_xlat3.x = dot(vec3<f32>(x_2803.x, x_2803.y, x_2803.z), vec3<f32>(x_2805.x, x_2805.y, x_2805.z));
    let x_2810 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2810, 0.0f, 1.0f);
    let x_2814 : f32 = u_xlat3.x;
    let x_2815 : f32 = u_xlat67;
    u_xlat3.x = (x_2814 * x_2815);
    let x_2818 : vec3<f32> = u_xlat3;
    let x_2820 : vec4<f32> = u_xlat12;
    let x_2822 : vec3<f32> = (vec3<f32>(x_2818.x, x_2818.x, x_2818.x) * vec3<f32>(x_2820.x, x_2820.y, x_2820.z));
    let x_2823 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2822.x, x_2822.y, x_2822.z, x_2823.w);
    let x_2825 : vec4<f32> = u_xlat10;
    let x_2827 : f32 = u_xlat69;
    let x_2830 : vec3<f32> = u_xlat5;
    let x_2831 : vec3<f32> = ((vec3<f32>(x_2825.x, x_2825.y, x_2825.z) * vec3<f32>(x_2827, x_2827, x_2827)) + x_2830);
    let x_2832 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2831.x, x_2831.y, x_2831.z, x_2832.w);
    let x_2834 : vec4<f32> = u_xlat10;
    let x_2836 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2834.x, x_2834.y, x_2834.z), vec3<f32>(x_2836.x, x_2836.y, x_2836.z));
    let x_2841 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_2841, 1.17549435e-37f);
    let x_2845 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_2845);
    let x_2848 : vec3<f32> = u_xlat3;
    let x_2850 : vec4<f32> = u_xlat10;
    let x_2852 : vec3<f32> = (vec3<f32>(x_2848.x, x_2848.x, x_2848.x) * vec3<f32>(x_2850.x, x_2850.y, x_2850.z));
    let x_2853 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2852.x, x_2852.y, x_2852.z, x_2853.w);
    let x_2855 : vec4<f32> = u_xlat4;
    let x_2857 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2855.x, x_2855.y, x_2855.z), vec3<f32>(x_2857.x, x_2857.y, x_2857.z));
    let x_2862 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2862, 0.0f, 1.0f);
    let x_2865 : vec4<f32> = u_xlat11;
    let x_2867 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2865.x, x_2865.y, x_2865.z), vec3<f32>(x_2867.x, x_2867.y, x_2867.z));
    let x_2870 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2870, 0.0f, 1.0f);
    let x_2873 : f32 = u_xlat3.x;
    let x_2875 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2873 * x_2875);
    let x_2879 : f32 = u_xlat3.x;
    let x_2881 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_2879 * x_2881) + 1.000010014f);
    let x_2885 : f32 = u_xlat67;
    let x_2886 : f32 = u_xlat67;
    u_xlat67 = (x_2885 * x_2886);
    let x_2889 : f32 = u_xlat3.x;
    let x_2891 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2889 * x_2891);
    let x_2894 : f32 = u_xlat67;
    u_xlat67 = max(x_2894, 0.100000001f);
    let x_2897 : f32 = u_xlat3.x;
    let x_2898 : f32 = u_xlat67;
    u_xlat3.x = (x_2897 * x_2898);
    let x_2901 : f32 = u_xlat66;
    let x_2903 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2901 * x_2903);
    let x_2906 : f32 = u_xlat24;
    let x_2908 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2906 / x_2908);
    let x_2911 : vec3<f32> = u_xlat0;
    let x_2912 : vec3<f32> = u_xlat3;
    let x_2915 : vec4<f32> = u_xlat7;
    let x_2917 : vec3<f32> = ((x_2911 * vec3<f32>(x_2912.x, x_2912.x, x_2912.x)) + vec3<f32>(x_2915.x, x_2915.y, x_2915.z));
    let x_2918 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2917.x, x_2917.y, x_2917.z, x_2918.w);
    let x_2920 : vec4<f32> = u_xlat10;
    let x_2922 : vec4<f32> = u_xlat12;
    let x_2925 : vec3<f32> = u_xlat30;
    u_xlat30 = ((vec3<f32>(x_2920.x, x_2920.y, x_2920.z) * vec3<f32>(x_2922.x, x_2922.y, x_2922.z)) + x_2925);

    continuing {
      let x_2927 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2927 + bitcast<u32>(1i));
    }
  }
  let x_2929 : vec4<f32> = u_xlat1;
  let x_2931 : f32 = u_xlat45;
  let x_2934 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2929.x, x_2929.y, x_2929.w) * vec3<f32>(x_2931, x_2931, x_2931)) + vec3<f32>(x_2934.x, x_2934.y, x_2934.z));
  let x_2937 : vec3<f32> = u_xlat30;
  let x_2938 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_2937 + x_2938);
  let x_2942 : vec3<f32> = u_xlat2;
  let x_2943 : f32 = u_xlat43;
  let x_2946 : vec3<f32> = u_xlat0;
  let x_2947 : vec3<f32> = ((x_2942 * vec3<f32>(x_2943, x_2943, x_2943)) + x_2946);
  let x_2948 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2947.x, x_2947.y, x_2947.z, x_2948.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

