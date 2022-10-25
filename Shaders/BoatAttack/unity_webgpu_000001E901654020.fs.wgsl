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

@group(1) @binding(3) var<uniform> x_526 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1852 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2295 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2403 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_1936 : f32;
  var x_1947 : vec3<f32>;
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
  var x_2697 : f32;
  var x_2710 : f32;
  var x_2762 : f32;
  var x_2773 : vec3<f32>;
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
      let x_544 : vec4<f32> = x_526.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_540.x, x_540.y, x_540.x, x_540.y) + x_544);
      let x_547 : vec4<f32> = u_xlat6;
      let x_548 : vec2<f32> = vec2<f32>(x_547.x, x_547.y);
      let x_550 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_548.x, x_548.y, x_550);
      let x_562 : vec3<f32> = txVec0;
      let x_564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_562.xy, x_562.z);
      u_xlat8.x = x_564;
      let x_567 : vec4<f32> = u_xlat6;
      let x_568 : vec2<f32> = vec2<f32>(x_567.z, x_567.w);
      let x_570 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_568.x, x_568.y, x_570);
      let x_577 : vec3<f32> = txVec1;
      let x_579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_577.xy, x_577.z);
      u_xlat8.y = x_579;
      let x_581 : vec4<f32> = vs_INTERP8;
      let x_585 : vec4<f32> = x_526.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y) + x_585);
      let x_588 : vec4<f32> = u_xlat6;
      let x_589 : vec2<f32> = vec2<f32>(x_588.x, x_588.y);
      let x_591 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_589.x, x_589.y, x_591);
      let x_598 : vec3<f32> = txVec2;
      let x_600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_598.xy, x_598.z);
      u_xlat8.z = x_600;
      let x_603 : vec4<f32> = u_xlat6;
      let x_604 : vec2<f32> = vec2<f32>(x_603.z, x_603.w);
      let x_606 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_604.x, x_604.y, x_606);
      let x_613 : vec3<f32> = txVec3;
      let x_615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_613.xy, x_613.z);
      u_xlat8.w = x_615;
      let x_617 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_617, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_624 : f32 = x_526.x_MainLightShadowParams.y;
      u_xlatb6 = (x_624 == 2.0f);
      let x_626 : bool = u_xlatb6;
      if (x_626) {
        let x_629 : vec4<f32> = vs_INTERP8;
        let x_632 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_637 : vec2<f32> = ((vec2<f32>(x_629.x, x_629.y) * vec2<f32>(x_632.z, x_632.w)) + vec2<f32>(0.5f, 0.5f));
        let x_638 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_640 : vec4<f32> = u_xlat6;
        let x_642 : vec2<f32> = floor(vec2<f32>(x_640.x, x_640.y));
        let x_643 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
        let x_647 : vec4<f32> = vs_INTERP8;
        let x_650 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_653 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_647.x, x_647.y) * vec2<f32>(x_650.z, x_650.w)) + -(vec2<f32>(x_653.x, x_653.y)));
        let x_657 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_657.x, x_657.x, x_657.y, x_657.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_662 : vec4<f32> = u_xlat8;
        let x_664 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_662.x, x_662.x, x_662.z, x_662.z) * vec4<f32>(x_664.x, x_664.x, x_664.z, x_664.z));
        let x_667 : vec4<f32> = u_xlat9;
        let x_671 : vec2<f32> = (vec2<f32>(x_667.y, x_667.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_672 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_671.x, x_672.y, x_671.y, x_672.w);
        let x_674 : vec4<f32> = u_xlat9;
        let x_677 : vec2<f32> = u_xlat48;
        let x_679 : vec2<f32> = ((vec2<f32>(x_674.x, x_674.z) * vec2<f32>(0.5f, 0.5f)) + -(x_677));
        let x_680 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
        let x_683 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_683) + vec2<f32>(1.0f, 1.0f));
        let x_687 : vec2<f32> = u_xlat48;
        let x_689 : vec2<f32> = min(x_687, vec2<f32>(0.0f, 0.0f));
        let x_690 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_692 : vec4<f32> = u_xlat10;
        let x_695 : vec4<f32> = u_xlat10;
        let x_698 : vec2<f32> = u_xlat51;
        let x_699 : vec2<f32> = ((-(vec2<f32>(x_692.x, x_692.y)) * vec2<f32>(x_695.x, x_695.y)) + x_698);
        let x_700 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
        let x_702 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_702, vec2<f32>(0.0f, 0.0f));
        let x_704 : vec2<f32> = u_xlat48;
        let x_706 : vec2<f32> = u_xlat48;
        let x_708 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_704) * x_706) + vec2<f32>(x_708.y, x_708.w));
        let x_711 : vec4<f32> = u_xlat10;
        let x_713 : vec2<f32> = (vec2<f32>(x_711.x, x_711.y) + vec2<f32>(1.0f, 1.0f));
        let x_714 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
        let x_716 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_716 + vec2<f32>(1.0f, 1.0f));
        let x_719 : vec4<f32> = u_xlat9;
        let x_723 : vec2<f32> = (vec2<f32>(x_719.x, x_719.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_724 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
        let x_726 : vec2<f32> = u_xlat51;
        let x_727 : vec2<f32> = (x_726 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_728 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_727.x, x_727.y, x_728.z, x_728.w);
        let x_730 : vec4<f32> = u_xlat10;
        let x_732 : vec2<f32> = (vec2<f32>(x_730.x, x_730.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_733 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_732.x, x_732.y, x_733.z, x_733.w);
        let x_736 : vec2<f32> = u_xlat48;
        let x_737 : vec2<f32> = (x_736 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_738 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_737.x, x_737.y, x_738.z, x_738.w);
        let x_740 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_740.y, x_740.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_744 : f32 = u_xlat10.x;
        u_xlat11.z = x_744;
        let x_747 : f32 = u_xlat48.x;
        u_xlat11.w = x_747;
        let x_750 : f32 = u_xlat12.x;
        u_xlat9.z = x_750;
        let x_753 : f32 = u_xlat8.x;
        u_xlat9.w = x_753;
        let x_756 : vec4<f32> = u_xlat9;
        let x_758 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_756.z, x_756.w, x_756.x, x_756.z) + vec4<f32>(x_758.z, x_758.w, x_758.x, x_758.z));
        let x_762 : f32 = u_xlat11.y;
        u_xlat10.z = x_762;
        let x_765 : f32 = u_xlat48.y;
        u_xlat10.w = x_765;
        let x_768 : f32 = u_xlat9.y;
        u_xlat12.z = x_768;
        let x_771 : f32 = u_xlat8.z;
        u_xlat12.w = x_771;
        let x_773 : vec4<f32> = u_xlat10;
        let x_775 : vec4<f32> = u_xlat12;
        let x_777 : vec3<f32> = (vec3<f32>(x_773.z, x_773.y, x_773.w) + vec3<f32>(x_775.z, x_775.y, x_775.w));
        let x_778 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
        let x_780 : vec4<f32> = u_xlat9;
        let x_782 : vec4<f32> = u_xlat13;
        let x_784 : vec3<f32> = (vec3<f32>(x_780.x, x_780.z, x_780.w) / vec3<f32>(x_782.z, x_782.w, x_782.y));
        let x_785 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
        let x_787 : vec4<f32> = u_xlat9;
        let x_793 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_794 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
        let x_796 : vec4<f32> = u_xlat12;
        let x_798 : vec4<f32> = u_xlat8;
        let x_800 : vec3<f32> = (vec3<f32>(x_796.z, x_796.y, x_796.w) / vec3<f32>(x_798.x, x_798.y, x_798.z));
        let x_801 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
        let x_803 : vec4<f32> = u_xlat10;
        let x_805 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_806 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
        let x_808 : vec4<f32> = u_xlat9;
        let x_811 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_813 : vec3<f32> = (vec3<f32>(x_808.y, x_808.x, x_808.z) * vec3<f32>(x_811.x, x_811.x, x_811.x));
        let x_814 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
        let x_816 : vec4<f32> = u_xlat10;
        let x_819 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_821 : vec3<f32> = (vec3<f32>(x_816.x, x_816.y, x_816.z) * vec3<f32>(x_819.y, x_819.y, x_819.y));
        let x_822 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
        let x_825 : f32 = u_xlat10.x;
        u_xlat9.w = x_825;
        let x_827 : vec4<f32> = u_xlat6;
        let x_830 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_833 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_827.x, x_827.y, x_827.x, x_827.y) * vec4<f32>(x_830.x, x_830.y, x_830.x, x_830.y)) + vec4<f32>(x_833.y, x_833.w, x_833.x, x_833.w));
        let x_836 : vec4<f32> = u_xlat6;
        let x_839 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_842 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_836.x, x_836.y) * vec2<f32>(x_839.x, x_839.y)) + vec2<f32>(x_842.z, x_842.w));
        let x_846 : f32 = u_xlat9.y;
        u_xlat10.w = x_846;
        let x_848 : vec4<f32> = u_xlat10;
        let x_849 : vec2<f32> = vec2<f32>(x_848.y, x_848.z);
        let x_850 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_850.x, x_849.x, x_850.z, x_849.y);
        let x_852 : vec4<f32> = u_xlat6;
        let x_855 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_858 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_852.x, x_852.y, x_852.x, x_852.y) * vec4<f32>(x_855.x, x_855.y, x_855.x, x_855.y)) + vec4<f32>(x_858.x, x_858.y, x_858.z, x_858.y));
        let x_861 : vec4<f32> = u_xlat6;
        let x_864 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_867 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_861.x, x_861.y, x_861.x, x_861.y) * vec4<f32>(x_864.x, x_864.y, x_864.x, x_864.y)) + vec4<f32>(x_867.w, x_867.y, x_867.w, x_867.z));
        let x_870 : vec4<f32> = u_xlat6;
        let x_873 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_876 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_870.x, x_870.y, x_870.x, x_870.y) * vec4<f32>(x_873.x, x_873.y, x_873.x, x_873.y)) + vec4<f32>(x_876.x, x_876.w, x_876.z, x_876.w));
        let x_880 : vec4<f32> = u_xlat8;
        let x_882 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_880.x, x_880.x, x_880.x, x_880.y) * vec4<f32>(x_882.z, x_882.w, x_882.y, x_882.z));
        let x_886 : vec4<f32> = u_xlat8;
        let x_888 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_886.y, x_886.y, x_886.z, x_886.z) * x_888);
        let x_891 : f32 = u_xlat8.z;
        let x_893 : f32 = u_xlat13.y;
        u_xlat6.x = (x_891 * x_893);
        let x_897 : vec4<f32> = u_xlat11;
        let x_898 : vec2<f32> = vec2<f32>(x_897.x, x_897.y);
        let x_900 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_898.x, x_898.y, x_900);
        let x_908 : vec3<f32> = txVec4;
        let x_910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_908.xy, x_908.z);
        u_xlat27 = x_910;
        let x_912 : vec4<f32> = u_xlat11;
        let x_913 : vec2<f32> = vec2<f32>(x_912.z, x_912.w);
        let x_915 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_913.x, x_913.y, x_915);
        let x_923 : vec3<f32> = txVec5;
        let x_925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_923.xy, x_923.z);
        u_xlat70 = x_925;
        let x_926 : f32 = u_xlat70;
        let x_928 : f32 = u_xlat14.y;
        u_xlat70 = (x_926 * x_928);
        let x_931 : f32 = u_xlat14.x;
        let x_932 : f32 = u_xlat27;
        let x_934 : f32 = u_xlat70;
        u_xlat27 = ((x_931 * x_932) + x_934);
        let x_937 : vec2<f32> = u_xlat48;
        let x_939 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_937.x, x_937.y, x_939);
        let x_946 : vec3<f32> = txVec6;
        let x_948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_946.xy, x_946.z);
        u_xlat48.x = x_948;
        let x_951 : f32 = u_xlat14.z;
        let x_953 : f32 = u_xlat48.x;
        let x_955 : f32 = u_xlat27;
        u_xlat27 = ((x_951 * x_953) + x_955);
        let x_958 : vec4<f32> = u_xlat10;
        let x_959 : vec2<f32> = vec2<f32>(x_958.x, x_958.y);
        let x_961 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_959.x, x_959.y, x_961);
        let x_968 : vec3<f32> = txVec7;
        let x_970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_968.xy, x_968.z);
        u_xlat48.x = x_970;
        let x_973 : f32 = u_xlat14.w;
        let x_975 : f32 = u_xlat48.x;
        let x_977 : f32 = u_xlat27;
        u_xlat27 = ((x_973 * x_975) + x_977);
        let x_980 : vec4<f32> = u_xlat12;
        let x_981 : vec2<f32> = vec2<f32>(x_980.x, x_980.y);
        let x_983 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_981.x, x_981.y, x_983);
        let x_990 : vec3<f32> = txVec8;
        let x_992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_990.xy, x_990.z);
        u_xlat48.x = x_992;
        let x_995 : f32 = u_xlat15.x;
        let x_997 : f32 = u_xlat48.x;
        let x_999 : f32 = u_xlat27;
        u_xlat27 = ((x_995 * x_997) + x_999);
        let x_1002 : vec4<f32> = u_xlat12;
        let x_1003 : vec2<f32> = vec2<f32>(x_1002.z, x_1002.w);
        let x_1005 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1003.x, x_1003.y, x_1005);
        let x_1012 : vec3<f32> = txVec9;
        let x_1014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1012.xy, x_1012.z);
        u_xlat48.x = x_1014;
        let x_1017 : f32 = u_xlat15.y;
        let x_1019 : f32 = u_xlat48.x;
        let x_1021 : f32 = u_xlat27;
        u_xlat27 = ((x_1017 * x_1019) + x_1021);
        let x_1024 : vec4<f32> = u_xlat10;
        let x_1025 : vec2<f32> = vec2<f32>(x_1024.z, x_1024.w);
        let x_1027 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1025.x, x_1025.y, x_1027);
        let x_1034 : vec3<f32> = txVec10;
        let x_1036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1034.xy, x_1034.z);
        u_xlat48.x = x_1036;
        let x_1039 : f32 = u_xlat15.z;
        let x_1041 : f32 = u_xlat48.x;
        let x_1043 : f32 = u_xlat27;
        u_xlat27 = ((x_1039 * x_1041) + x_1043);
        let x_1046 : vec4<f32> = u_xlat9;
        let x_1047 : vec2<f32> = vec2<f32>(x_1046.x, x_1046.y);
        let x_1049 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
        let x_1056 : vec3<f32> = txVec11;
        let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1056.xy, x_1056.z);
        u_xlat48.x = x_1058;
        let x_1061 : f32 = u_xlat15.w;
        let x_1063 : f32 = u_xlat48.x;
        let x_1065 : f32 = u_xlat27;
        u_xlat27 = ((x_1061 * x_1063) + x_1065);
        let x_1068 : vec4<f32> = u_xlat9;
        let x_1069 : vec2<f32> = vec2<f32>(x_1068.z, x_1068.w);
        let x_1071 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1069.x, x_1069.y, x_1071);
        let x_1078 : vec3<f32> = txVec12;
        let x_1080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1078.xy, x_1078.z);
        u_xlat48.x = x_1080;
        let x_1083 : f32 = u_xlat6.x;
        let x_1085 : f32 = u_xlat48.x;
        let x_1087 : f32 = u_xlat27;
        u_xlat67 = ((x_1083 * x_1085) + x_1087);
      } else {
        let x_1090 : vec4<f32> = vs_INTERP8;
        let x_1093 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1096 : vec2<f32> = ((vec2<f32>(x_1090.x, x_1090.y) * vec2<f32>(x_1093.z, x_1093.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1097 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1099 : vec4<f32> = u_xlat6;
        let x_1101 : vec2<f32> = floor(vec2<f32>(x_1099.x, x_1099.y));
        let x_1102 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
        let x_1104 : vec4<f32> = vs_INTERP8;
        let x_1107 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1110 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1104.x, x_1104.y) * vec2<f32>(x_1107.z, x_1107.w)) + -(vec2<f32>(x_1110.x, x_1110.y)));
        let x_1114 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1114.x, x_1114.x, x_1114.y, x_1114.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1117 : vec4<f32> = u_xlat8;
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1117.x, x_1117.x, x_1117.z, x_1117.z) * vec4<f32>(x_1119.x, x_1119.x, x_1119.z, x_1119.z));
        let x_1122 : vec4<f32> = u_xlat9;
        let x_1126 : vec2<f32> = (vec2<f32>(x_1122.y, x_1122.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1127 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1127.x, x_1126.x, x_1127.z, x_1126.y);
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1132 : vec2<f32> = u_xlat48;
        let x_1134 : vec2<f32> = ((vec2<f32>(x_1129.x, x_1129.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1132));
        let x_1135 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1134.x, x_1135.y, x_1134.y, x_1135.w);
        let x_1137 : vec2<f32> = u_xlat48;
        let x_1139 : vec2<f32> = (-(x_1137) + vec2<f32>(1.0f, 1.0f));
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
        let x_1142 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1142, vec2<f32>(0.0f, 0.0f));
        let x_1144 : vec2<f32> = u_xlat51;
        let x_1146 : vec2<f32> = u_xlat51;
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1150 : vec2<f32> = ((-(x_1144) * x_1146) + vec2<f32>(x_1148.x, x_1148.y));
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1150.x, x_1150.y, x_1151.z, x_1151.w);
        let x_1153 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1153, vec2<f32>(0.0f, 0.0f));
        let x_1156 : vec2<f32> = u_xlat51;
        let x_1158 : vec2<f32> = u_xlat51;
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1162 : vec2<f32> = ((-(x_1156) * x_1158) + vec2<f32>(x_1160.y, x_1160.w));
        let x_1163 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1162.x, x_1163.y, x_1162.y);
        let x_1165 : vec4<f32> = u_xlat9;
        let x_1167 : vec2<f32> = (vec2<f32>(x_1165.x, x_1165.y) + vec2<f32>(2.0f, 2.0f));
        let x_1168 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1167.x, x_1167.y, x_1168.z, x_1168.w);
        let x_1170 : vec3<f32> = u_xlat29;
        let x_1172 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.z) + vec2<f32>(2.0f, 2.0f));
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1173.x, x_1172.x, x_1173.z, x_1172.y);
        let x_1176 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1176 * 0.081632003f);
        let x_1180 : vec4<f32> = u_xlat8;
        let x_1183 : vec3<f32> = (vec3<f32>(x_1180.z, x_1180.x, x_1180.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1184 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
        let x_1186 : vec4<f32> = u_xlat9;
        let x_1189 : vec2<f32> = (vec2<f32>(x_1186.x, x_1186.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1193 : f32 = u_xlat12.y;
        u_xlat11.x = x_1193;
        let x_1195 : vec2<f32> = u_xlat48;
        let x_1202 : vec2<f32> = ((vec2<f32>(x_1195.x, x_1195.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1203 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1203.x, x_1202.x, x_1203.z, x_1202.y);
        let x_1205 : vec2<f32> = u_xlat48;
        let x_1209 : vec2<f32> = ((vec2<f32>(x_1205.x, x_1205.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1210 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1209.x, x_1210.y, x_1209.y, x_1210.w);
        let x_1213 : f32 = u_xlat8.x;
        u_xlat9.y = x_1213;
        let x_1216 : f32 = u_xlat10.y;
        u_xlat9.w = x_1216;
        let x_1218 : vec4<f32> = u_xlat9;
        let x_1219 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1218 + x_1219);
        let x_1221 : vec2<f32> = u_xlat48;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1221.y, x_1221.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1225 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1225.x, x_1224.x, x_1225.z, x_1224.y);
        let x_1227 : vec2<f32> = u_xlat48;
        let x_1230 : vec2<f32> = ((vec2<f32>(x_1227.y, x_1227.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1231 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1230.x, x_1231.y, x_1230.y, x_1231.w);
        let x_1234 : f32 = u_xlat8.y;
        u_xlat10.y = x_1234;
        let x_1236 : vec4<f32> = u_xlat10;
        let x_1237 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1236 + x_1237);
        let x_1239 : vec4<f32> = u_xlat9;
        let x_1240 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1239 / x_1240);
        let x_1242 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1242 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1248 : vec4<f32> = u_xlat10;
        let x_1249 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1248 / x_1249);
        let x_1251 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1251 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1253 : vec4<f32> = u_xlat9;
        let x_1256 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1253.w, x_1253.x, x_1253.y, x_1253.z) * vec4<f32>(x_1256.x, x_1256.x, x_1256.x, x_1256.x));
        let x_1259 : vec4<f32> = u_xlat10;
        let x_1262 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1259.x, x_1259.w, x_1259.y, x_1259.z) * vec4<f32>(x_1262.y, x_1262.y, x_1262.y, x_1262.y));
        let x_1265 : vec4<f32> = u_xlat9;
        let x_1266 : vec3<f32> = vec3<f32>(x_1265.y, x_1265.z, x_1265.w);
        let x_1267 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1266.x, x_1267.y, x_1266.y, x_1266.z);
        let x_1270 : f32 = u_xlat10.x;
        u_xlat12.y = x_1270;
        let x_1272 : vec4<f32> = u_xlat6;
        let x_1275 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1278 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y) * vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y)) + vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1278.y));
        let x_1281 : vec4<f32> = u_xlat6;
        let x_1284 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1287 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(x_1284.x, x_1284.y)) + vec2<f32>(x_1287.w, x_1287.y));
        let x_1291 : f32 = u_xlat12.y;
        u_xlat9.y = x_1291;
        let x_1294 : f32 = u_xlat10.z;
        u_xlat12.y = x_1294;
        let x_1296 : vec4<f32> = u_xlat6;
        let x_1299 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y) * vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y)) + vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1302.y));
        let x_1305 : vec4<f32> = u_xlat6;
        let x_1308 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat12;
        let x_1313 : vec2<f32> = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1308.x, x_1308.y)) + vec2<f32>(x_1311.w, x_1311.y));
        let x_1314 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1317 : f32 = u_xlat12.y;
        u_xlat9.z = x_1317;
        let x_1320 : vec4<f32> = u_xlat6;
        let x_1323 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1326 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y) * vec4<f32>(x_1323.x, x_1323.y, x_1323.x, x_1323.y)) + vec4<f32>(x_1326.x, x_1326.y, x_1326.x, x_1326.z));
        let x_1330 : f32 = u_xlat10.w;
        u_xlat12.y = x_1330;
        let x_1333 : vec4<f32> = u_xlat6;
        let x_1336 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1339 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1333.x, x_1333.y, x_1333.x, x_1333.y) * vec4<f32>(x_1336.x, x_1336.y, x_1336.x, x_1336.y)) + vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1339.y));
        let x_1343 : vec4<f32> = u_xlat6;
        let x_1346 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1349 : vec4<f32> = u_xlat12;
        let x_1351 : vec2<f32> = ((vec2<f32>(x_1343.x, x_1343.y) * vec2<f32>(x_1346.x, x_1346.y)) + vec2<f32>(x_1349.w, x_1349.y));
        let x_1352 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1351.x, x_1351.y, x_1352.z);
        let x_1355 : f32 = u_xlat12.y;
        u_xlat9.w = x_1355;
        let x_1358 : vec4<f32> = u_xlat6;
        let x_1361 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1364 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1358.x, x_1358.y) * vec2<f32>(x_1361.x, x_1361.y)) + vec2<f32>(x_1364.x, x_1364.w));
        let x_1367 : vec4<f32> = u_xlat12;
        let x_1368 : vec3<f32> = vec3<f32>(x_1367.x, x_1367.z, x_1367.w);
        let x_1369 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1368.x, x_1369.y, x_1368.y, x_1368.z);
        let x_1371 : vec4<f32> = u_xlat6;
        let x_1374 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1371.x, x_1371.y, x_1371.x, x_1371.y) * vec4<f32>(x_1374.x, x_1374.y, x_1374.x, x_1374.y)) + vec4<f32>(x_1377.x, x_1377.y, x_1377.z, x_1377.y));
        let x_1381 : vec4<f32> = u_xlat6;
        let x_1384 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1387 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1381.x, x_1381.y) * vec2<f32>(x_1384.x, x_1384.y)) + vec2<f32>(x_1387.w, x_1387.y));
        let x_1391 : f32 = u_xlat9.x;
        u_xlat10.x = x_1391;
        let x_1393 : vec4<f32> = u_xlat6;
        let x_1396 : vec4<f32> = x_526.x_MainLightShadowmapSize;
        let x_1399 : vec4<f32> = u_xlat10;
        let x_1401 : vec2<f32> = ((vec2<f32>(x_1393.x, x_1393.y) * vec2<f32>(x_1396.x, x_1396.y)) + vec2<f32>(x_1399.x, x_1399.y));
        let x_1402 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1401.x, x_1401.y, x_1402.z, x_1402.w);
        let x_1405 : vec4<f32> = u_xlat8;
        let x_1407 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1405.x, x_1405.x, x_1405.x, x_1405.x) * x_1407);
        let x_1410 : vec4<f32> = u_xlat8;
        let x_1412 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1410.y, x_1410.y, x_1410.y, x_1410.y) * x_1412);
        let x_1415 : vec4<f32> = u_xlat8;
        let x_1417 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1415.z, x_1415.z, x_1415.z, x_1415.z) * x_1417);
        let x_1419 : vec4<f32> = u_xlat8;
        let x_1421 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1419.w, x_1419.w, x_1419.w, x_1419.w) * x_1421);
        let x_1424 : vec4<f32> = u_xlat13;
        let x_1425 : vec2<f32> = vec2<f32>(x_1424.x, x_1424.y);
        let x_1427 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec13;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1434.xy, x_1434.z);
        u_xlat70 = x_1436;
        let x_1438 : vec4<f32> = u_xlat13;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.z, x_1438.w);
        let x_1441 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec14;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1448.xy, x_1448.z);
        u_xlat9.x = x_1450;
        let x_1453 : f32 = u_xlat9.x;
        let x_1455 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1453 * x_1455);
        let x_1459 : f32 = u_xlat18.x;
        let x_1460 : f32 = u_xlat70;
        let x_1463 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1459 * x_1460) + x_1463);
        let x_1466 : vec2<f32> = u_xlat48;
        let x_1468 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec15;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1475.xy, x_1475.z);
        u_xlat48.x = x_1477;
        let x_1480 : f32 = u_xlat18.z;
        let x_1482 : f32 = u_xlat48.x;
        let x_1484 : f32 = u_xlat70;
        u_xlat48.x = ((x_1480 * x_1482) + x_1484);
        let x_1488 : vec4<f32> = u_xlat16;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.x, x_1488.y);
        let x_1491 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1499 : vec3<f32> = txVec16;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1499.xy, x_1499.z);
        u_xlat69 = x_1501;
        let x_1503 : f32 = u_xlat18.w;
        let x_1504 : f32 = u_xlat69;
        let x_1507 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1503 * x_1504) + x_1507);
        let x_1511 : vec4<f32> = u_xlat14;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.x, x_1511.y);
        let x_1514 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec17;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1521.xy, x_1521.z);
        u_xlat69 = x_1523;
        let x_1525 : f32 = u_xlat19.x;
        let x_1526 : f32 = u_xlat69;
        let x_1529 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1525 * x_1526) + x_1529);
        let x_1533 : vec4<f32> = u_xlat14;
        let x_1534 : vec2<f32> = vec2<f32>(x_1533.z, x_1533.w);
        let x_1536 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1534.x, x_1534.y, x_1536);
        let x_1543 : vec3<f32> = txVec18;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1543.xy, x_1543.z);
        u_xlat69 = x_1545;
        let x_1547 : f32 = u_xlat19.y;
        let x_1548 : f32 = u_xlat69;
        let x_1551 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1547 * x_1548) + x_1551);
        let x_1555 : vec4<f32> = u_xlat15;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.x, x_1555.y);
        let x_1558 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec19;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1565.xy, x_1565.z);
        u_xlat69 = x_1567;
        let x_1569 : f32 = u_xlat19.z;
        let x_1570 : f32 = u_xlat69;
        let x_1573 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1569 * x_1570) + x_1573);
        let x_1577 : vec4<f32> = u_xlat16;
        let x_1578 : vec2<f32> = vec2<f32>(x_1577.z, x_1577.w);
        let x_1580 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1578.x, x_1578.y, x_1580);
        let x_1587 : vec3<f32> = txVec20;
        let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1587.xy, x_1587.z);
        u_xlat69 = x_1589;
        let x_1591 : f32 = u_xlat19.w;
        let x_1592 : f32 = u_xlat69;
        let x_1595 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1591 * x_1592) + x_1595);
        let x_1599 : vec4<f32> = u_xlat17;
        let x_1600 : vec2<f32> = vec2<f32>(x_1599.x, x_1599.y);
        let x_1602 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
        let x_1609 : vec3<f32> = txVec21;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1609.xy, x_1609.z);
        u_xlat69 = x_1611;
        let x_1613 : f32 = u_xlat20.x;
        let x_1614 : f32 = u_xlat69;
        let x_1617 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1613 * x_1614) + x_1617);
        let x_1621 : vec4<f32> = u_xlat17;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.z, x_1621.w);
        let x_1624 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec22;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1631.xy, x_1631.z);
        u_xlat69 = x_1633;
        let x_1635 : f32 = u_xlat20.y;
        let x_1636 : f32 = u_xlat69;
        let x_1639 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1635 * x_1636) + x_1639);
        let x_1643 : vec3<f32> = u_xlat30;
        let x_1644 : vec2<f32> = vec2<f32>(x_1643.x, x_1643.y);
        let x_1646 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1644.x, x_1644.y, x_1646);
        let x_1653 : vec3<f32> = txVec23;
        let x_1655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1653.xy, x_1653.z);
        u_xlat69 = x_1655;
        let x_1657 : f32 = u_xlat20.z;
        let x_1658 : f32 = u_xlat69;
        let x_1661 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1657 * x_1658) + x_1661);
        let x_1665 : vec2<f32> = u_xlat57;
        let x_1667 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1665.x, x_1665.y, x_1667);
        let x_1674 : vec3<f32> = txVec24;
        let x_1676 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1674.xy, x_1674.z);
        u_xlat69 = x_1676;
        let x_1678 : f32 = u_xlat20.w;
        let x_1679 : f32 = u_xlat69;
        let x_1682 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1678 * x_1679) + x_1682);
        let x_1686 : vec4<f32> = u_xlat12;
        let x_1687 : vec2<f32> = vec2<f32>(x_1686.x, x_1686.y);
        let x_1689 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1687.x, x_1687.y, x_1689);
        let x_1696 : vec3<f32> = txVec25;
        let x_1698 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1696.xy, x_1696.z);
        u_xlat69 = x_1698;
        let x_1700 : f32 = u_xlat8.x;
        let x_1701 : f32 = u_xlat69;
        let x_1704 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1700 * x_1701) + x_1704);
        let x_1708 : vec4<f32> = u_xlat12;
        let x_1709 : vec2<f32> = vec2<f32>(x_1708.z, x_1708.w);
        let x_1711 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1709.x, x_1709.y, x_1711);
        let x_1718 : vec3<f32> = txVec26;
        let x_1720 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1718.xy, x_1718.z);
        u_xlat69 = x_1720;
        let x_1722 : f32 = u_xlat8.y;
        let x_1723 : f32 = u_xlat69;
        let x_1726 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1722 * x_1723) + x_1726);
        let x_1730 : vec2<f32> = u_xlat52;
        let x_1732 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1730.x, x_1730.y, x_1732);
        let x_1739 : vec3<f32> = txVec27;
        let x_1741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1739.xy, x_1739.z);
        u_xlat69 = x_1741;
        let x_1743 : f32 = u_xlat8.z;
        let x_1744 : f32 = u_xlat69;
        let x_1747 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1743 * x_1744) + x_1747);
        let x_1751 : vec4<f32> = u_xlat6;
        let x_1752 : vec2<f32> = vec2<f32>(x_1751.x, x_1751.y);
        let x_1754 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1752.x, x_1752.y, x_1754);
        let x_1761 : vec3<f32> = txVec28;
        let x_1763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1761.xy, x_1761.z);
        u_xlat6.x = x_1763;
        let x_1766 : f32 = u_xlat8.w;
        let x_1768 : f32 = u_xlat6.x;
        let x_1771 : f32 = u_xlat48.x;
        u_xlat67 = ((x_1766 * x_1768) + x_1771);
      }
    }
  } else {
    let x_1775 : vec4<f32> = vs_INTERP8;
    let x_1776 : vec2<f32> = vec2<f32>(x_1775.x, x_1775.y);
    let x_1778 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
    let x_1785 : vec3<f32> = txVec29;
    let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1785.xy, x_1785.z);
    u_xlat67 = x_1787;
  }
  let x_1789 : f32 = x_526.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1789) + 1.0f);
  let x_1793 : f32 = u_xlat67;
  let x_1795 : f32 = x_526.x_MainLightShadowParams.x;
  let x_1798 : f32 = u_xlat6.x;
  u_xlat67 = ((x_1793 * x_1795) + x_1798);
  let x_1801 : f32 = vs_INTERP8.z;
  u_xlatb6 = (0.0f >= x_1801);
  let x_1805 : f32 = vs_INTERP8.z;
  u_xlatb27 = (x_1805 >= 1.0f);
  let x_1807 : bool = u_xlatb27;
  let x_1808 : bool = u_xlatb6;
  u_xlatb6 = (x_1807 | x_1808);
  let x_1810 : bool = u_xlatb6;
  let x_1811 : f32 = u_xlat67;
  u_xlat67 = select(x_1811, 1.0f, x_1810);
  let x_1813 : vec3<f32> = vs_INTERP0;
  let x_1815 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1817 : vec3<f32> = (x_1813 + -(x_1815));
  let x_1818 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
  let x_1820 : vec4<f32> = u_xlat6;
  let x_1822 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1820.x, x_1820.y, x_1820.z), vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
  let x_1827 : f32 = u_xlat6.x;
  let x_1829 : f32 = x_526.x_MainLightShadowParams.z;
  let x_1832 : f32 = x_526.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1827 * x_1829) + x_1832);
  let x_1836 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1836, 0.0f, 1.0f);
  let x_1839 : f32 = u_xlat67;
  u_xlat27 = (-(x_1839) + 1.0f);
  let x_1843 : f32 = u_xlat6.x;
  let x_1844 : f32 = u_xlat27;
  let x_1846 : f32 = u_xlat67;
  u_xlat67 = ((x_1843 * x_1844) + x_1846);
  let x_1854 : f32 = x_1852.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1854 == -1.0f));
  let x_1856 : bool = u_xlatb6;
  if (x_1856) {
    let x_1859 : vec3<f32> = vs_INTERP0;
    let x_1862 : vec4<f32> = x_1852.x_MainLightWorldToLight[1i];
    let x_1864 : vec2<f32> = (vec2<f32>(x_1859.y, x_1859.y) * vec2<f32>(x_1862.x, x_1862.y));
    let x_1865 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1864.x, x_1864.y, x_1865.z, x_1865.w);
    let x_1868 : vec4<f32> = x_1852.x_MainLightWorldToLight[0i];
    let x_1870 : vec3<f32> = vs_INTERP0;
    let x_1873 : vec4<f32> = u_xlat6;
    let x_1875 : vec2<f32> = ((vec2<f32>(x_1868.x, x_1868.y) * vec2<f32>(x_1870.x, x_1870.x)) + vec2<f32>(x_1873.x, x_1873.y));
    let x_1876 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1875.x, x_1875.y, x_1876.z, x_1876.w);
    let x_1879 : vec4<f32> = x_1852.x_MainLightWorldToLight[2i];
    let x_1881 : vec3<f32> = vs_INTERP0;
    let x_1884 : vec4<f32> = u_xlat6;
    let x_1886 : vec2<f32> = ((vec2<f32>(x_1879.x, x_1879.y) * vec2<f32>(x_1881.z, x_1881.z)) + vec2<f32>(x_1884.x, x_1884.y));
    let x_1887 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1886.x, x_1886.y, x_1887.z, x_1887.w);
    let x_1889 : vec4<f32> = u_xlat6;
    let x_1892 : vec4<f32> = x_1852.x_MainLightWorldToLight[3i];
    let x_1894 : vec2<f32> = (vec2<f32>(x_1889.x, x_1889.y) + vec2<f32>(x_1892.x, x_1892.y));
    let x_1895 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1894.x, x_1894.y, x_1895.z, x_1895.w);
    let x_1897 : vec4<f32> = u_xlat6;
    let x_1900 : vec2<f32> = ((vec2<f32>(x_1897.x, x_1897.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1901 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1900.x, x_1900.y, x_1901.z, x_1901.w);
    let x_1908 : vec4<f32> = u_xlat6;
    let x_1911 : f32 = x_45.x_GlobalMipBias.x;
    let x_1912 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1908.x, x_1908.y), x_1911);
    u_xlat6 = x_1912;
    let x_1917 : f32 = x_1852.x_MainLightCookieTextureFormat;
    let x_1919 : f32 = x_1852.x_MainLightCookieTextureFormat;
    let x_1921 : f32 = x_1852.x_MainLightCookieTextureFormat;
    let x_1923 : f32 = x_1852.x_MainLightCookieTextureFormat;
    let x_1924 : vec4<f32> = vec4<f32>(x_1917, x_1919, x_1921, x_1923);
    let x_1932 : vec4<bool> = (vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1924.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1932.x, x_1932.y);
    let x_1935 : bool = u_xlatb8.y;
    if (x_1935) {
      let x_1940 : f32 = u_xlat6.w;
      x_1936 = x_1940;
    } else {
      let x_1943 : f32 = u_xlat6.x;
      x_1936 = x_1943;
    }
    let x_1944 : f32 = x_1936;
    u_xlat69 = x_1944;
    let x_1946 : bool = u_xlatb8.x;
    if (x_1946) {
      let x_1950 : vec4<f32> = u_xlat6;
      x_1947 = vec3<f32>(x_1950.x, x_1950.y, x_1950.z);
    } else {
      let x_1953 : f32 = u_xlat69;
      x_1947 = vec3<f32>(x_1953, x_1953, x_1953);
    }
    let x_1955 : vec3<f32> = x_1947;
    let x_1956 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1962 : vec4<f32> = u_xlat6;
  let x_1965 : vec4<f32> = x_45.x_MainLightColor;
  let x_1967 : vec3<f32> = (vec3<f32>(x_1962.x, x_1962.y, x_1962.z) * vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
  let x_1968 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
  let x_1970 : f32 = u_xlat68;
  let x_1972 : vec4<f32> = u_xlat6;
  let x_1974 : vec3<f32> = (vec3<f32>(x_1970, x_1970, x_1970) * vec3<f32>(x_1972.x, x_1972.y, x_1972.z));
  let x_1975 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1975.w);
  let x_1977 : vec3<f32> = u_xlat5;
  let x_1979 : vec4<f32> = u_xlat4;
  u_xlat69 = dot(-(x_1977), vec3<f32>(x_1979.x, x_1979.y, x_1979.z));
  let x_1982 : f32 = u_xlat69;
  let x_1983 : f32 = u_xlat69;
  u_xlat69 = (x_1982 + x_1983);
  let x_1985 : vec4<f32> = u_xlat4;
  let x_1987 : f32 = u_xlat69;
  let x_1991 : vec3<f32> = u_xlat5;
  let x_1993 : vec3<f32> = ((vec3<f32>(x_1985.x, x_1985.y, x_1985.z) * -(vec3<f32>(x_1987, x_1987, x_1987))) + -(x_1991));
  let x_1994 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
  let x_1996 : vec4<f32> = u_xlat4;
  let x_1998 : vec3<f32> = u_xlat5;
  u_xlat69 = dot(vec3<f32>(x_1996.x, x_1996.y, x_1996.z), x_1998);
  let x_2000 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2000, 0.0f, 1.0f);
  let x_2002 : f32 = u_xlat69;
  u_xlat69 = (-(x_2002) + 1.0f);
  let x_2005 : f32 = u_xlat69;
  let x_2006 : f32 = u_xlat69;
  u_xlat69 = (x_2005 * x_2006);
  let x_2008 : f32 = u_xlat69;
  let x_2009 : f32 = u_xlat69;
  u_xlat69 = (x_2008 * x_2009);
  let x_2011 : f32 = u_xlat63;
  u_xlat70 = ((-(x_2011) * 0.699999988f) + 1.700000048f);
  let x_2017 : f32 = u_xlat63;
  let x_2018 : f32 = u_xlat70;
  u_xlat63 = (x_2017 * x_2018);
  let x_2020 : f32 = u_xlat63;
  u_xlat63 = (x_2020 * 6.0f);
  let x_2031 : vec4<f32> = u_xlat8;
  let x_2033 : f32 = u_xlat63;
  let x_2034 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2031.x, x_2031.y, x_2031.z), x_2033);
  u_xlat8 = x_2034;
  let x_2036 : f32 = u_xlat8.w;
  u_xlat63 = (x_2036 + -1.0f);
  let x_2039 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_2040 : f32 = u_xlat63;
  u_xlat63 = ((x_2039 * x_2040) + 1.0f);
  let x_2043 : f32 = u_xlat63;
  u_xlat63 = max(x_2043, 0.0f);
  let x_2045 : f32 = u_xlat63;
  u_xlat63 = log2(x_2045);
  let x_2047 : f32 = u_xlat63;
  let x_2049 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2047 * x_2049);
  let x_2051 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2051);
  let x_2053 : f32 = u_xlat63;
  let x_2055 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2053 * x_2055);
  let x_2057 : vec4<f32> = u_xlat8;
  let x_2059 : f32 = u_xlat63;
  let x_2061 : vec3<f32> = (vec3<f32>(x_2057.x, x_2057.y, x_2057.z) * vec3<f32>(x_2059, x_2059, x_2059));
  let x_2062 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
  let x_2064 : vec3<f32> = u_xlat3;
  let x_2066 : vec3<f32> = u_xlat3;
  let x_2070 : vec2<f32> = ((vec2<f32>(x_2064.x, x_2064.x) * vec2<f32>(x_2066.x, x_2066.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2071 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2070.x, x_2070.y, x_2071.z, x_2071.w);
  let x_2074 : f32 = u_xlat9.y;
  u_xlat63 = (1.0f / x_2074);
  let x_2076 : vec3<f32> = u_xlat0;
  let x_2078 : f32 = u_xlat65;
  u_xlat30 = (-(x_2076) + vec3<f32>(x_2078, x_2078, x_2078));
  let x_2081 : f32 = u_xlat69;
  let x_2083 : vec3<f32> = u_xlat30;
  let x_2085 : vec3<f32> = u_xlat0;
  u_xlat30 = ((vec3<f32>(x_2081, x_2081, x_2081) * x_2083) + x_2085);
  let x_2087 : f32 = u_xlat63;
  let x_2089 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_2087, x_2087, x_2087) * x_2089);
  let x_2091 : vec4<f32> = u_xlat8;
  let x_2093 : vec3<f32> = u_xlat30;
  let x_2094 : vec3<f32> = (vec3<f32>(x_2091.x, x_2091.y, x_2091.z) * x_2093);
  let x_2095 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
  let x_2097 : vec4<f32> = u_xlat1;
  let x_2099 : vec4<f32> = u_xlat7;
  let x_2102 : vec4<f32> = u_xlat8;
  let x_2104 : vec3<f32> = ((vec3<f32>(x_2097.x, x_2097.y, x_2097.w) * vec3<f32>(x_2099.x, x_2099.y, x_2099.z)) + vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
  let x_2105 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2104.x, x_2104.y, x_2105.z, x_2104.z);
  let x_2107 : f32 = u_xlat67;
  let x_2110 : f32 = x_122.unity_LightData.z;
  u_xlat63 = (x_2107 * x_2110);
  let x_2112 : vec4<f32> = u_xlat4;
  let x_2115 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2112.x, x_2112.y, x_2112.z), vec3<f32>(x_2115.x, x_2115.y, x_2115.z));
  let x_2118 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2118, 0.0f, 1.0f);
  let x_2120 : f32 = u_xlat63;
  let x_2121 : f32 = u_xlat65;
  u_xlat63 = (x_2120 * x_2121);
  let x_2123 : f32 = u_xlat63;
  let x_2125 : vec4<f32> = u_xlat6;
  let x_2127 : vec3<f32> = (vec3<f32>(x_2123, x_2123, x_2123) * vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
  let x_2128 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2127.x, x_2127.y, x_2127.z, x_2128.w);
  let x_2130 : vec3<f32> = u_xlat5;
  let x_2132 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2134 : vec3<f32> = (x_2130 + vec3<f32>(x_2132.x, x_2132.y, x_2132.z));
  let x_2135 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2134.x, x_2134.y, x_2134.z, x_2135.w);
  let x_2137 : vec4<f32> = u_xlat8;
  let x_2139 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_2137.x, x_2137.y, x_2137.z), vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
  let x_2142 : f32 = u_xlat63;
  u_xlat63 = max(x_2142, 1.17549435e-37f);
  let x_2145 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2145);
  let x_2147 : f32 = u_xlat63;
  let x_2149 : vec4<f32> = u_xlat8;
  let x_2151 : vec3<f32> = (vec3<f32>(x_2147, x_2147, x_2147) * vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
  let x_2152 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
  let x_2154 : vec4<f32> = u_xlat4;
  let x_2156 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_2154.x, x_2154.y, x_2154.z), vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
  let x_2159 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2159, 0.0f, 1.0f);
  let x_2162 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2164 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(vec3<f32>(x_2162.x, x_2162.y, x_2162.z), vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
  let x_2167 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2167, 0.0f, 1.0f);
  let x_2169 : f32 = u_xlat63;
  let x_2170 : f32 = u_xlat63;
  u_xlat63 = (x_2169 * x_2170);
  let x_2172 : f32 = u_xlat63;
  let x_2174 : f32 = u_xlat9.x;
  u_xlat63 = ((x_2172 * x_2174) + 1.000010014f);
  let x_2178 : f32 = u_xlat65;
  let x_2179 : f32 = u_xlat65;
  u_xlat65 = (x_2178 * x_2179);
  let x_2181 : f32 = u_xlat63;
  let x_2182 : f32 = u_xlat63;
  u_xlat63 = (x_2181 * x_2182);
  let x_2184 : f32 = u_xlat65;
  u_xlat65 = max(x_2184, 0.100000001f);
  let x_2187 : f32 = u_xlat63;
  let x_2188 : f32 = u_xlat65;
  u_xlat63 = (x_2187 * x_2188);
  let x_2190 : f32 = u_xlat66;
  let x_2191 : f32 = u_xlat63;
  u_xlat63 = (x_2190 * x_2191);
  let x_2193 : f32 = u_xlat24;
  let x_2194 : f32 = u_xlat63;
  u_xlat63 = (x_2193 / x_2194);
  let x_2196 : vec3<f32> = u_xlat0;
  let x_2197 : f32 = u_xlat63;
  let x_2200 : vec4<f32> = u_xlat7;
  let x_2202 : vec3<f32> = ((x_2196 * vec3<f32>(x_2197, x_2197, x_2197)) + vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
  let x_2203 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
  let x_2205 : vec4<f32> = u_xlat6;
  let x_2207 : vec4<f32> = u_xlat8;
  let x_2209 : vec3<f32> = (vec3<f32>(x_2205.x, x_2205.y, x_2205.z) * vec3<f32>(x_2207.x, x_2207.y, x_2207.z));
  let x_2210 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2209.x, x_2209.y, x_2209.z, x_2210.w);
  let x_2213 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2215 : f32 = x_122.unity_LightData.y;
  u_xlat63 = min(x_2213, x_2215);
  let x_2219 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2219));
  let x_2223 : f32 = x_1852.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2225 : f32 = x_1852.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2227 : f32 = x_1852.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2229 : f32 = x_1852.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2230 : vec4<f32> = vec4<f32>(x_2223, x_2225, x_2227, x_2229);
  let x_2236 : vec4<bool> = (vec4<f32>(x_2230.x, x_2230.y, x_2230.z, x_2230.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_2236.x, x_2236.y);
  u_xlat30.x = 0.0f;
  u_xlat30.y = 0.0f;
  u_xlat30.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2247 : u32 = u_xlatu_loop_1;
    let x_2248 : u32 = u_xlatu63;
    if ((x_2247 < x_2248)) {
    } else {
      break;
    }
    let x_2251 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_2251 >> 2u);
    let x_2255 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2255 & 3u));
    let x_2258 : u32 = u_xlatu3;
    let x_2261 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_2258)];
    let x_2271 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2276 : vec4<u32> = indexable[x_2271];
    u_xlat3.x = dot(x_2261, bitcast<vec4<f32>>(x_2276));
    let x_2281 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_2281));
    let x_2284 : vec3<f32> = vs_INTERP0;
    let x_2296 : u32 = u_xlatu3;
    let x_2299 : vec4<f32> = x_2295.x_AdditionalLightsPosition[bitcast<i32>(x_2296)];
    let x_2302 : u32 = u_xlatu3;
    let x_2305 : vec4<f32> = x_2295.x_AdditionalLightsPosition[bitcast<i32>(x_2302)];
    let x_2307 : vec3<f32> = ((-(x_2284) * vec3<f32>(x_2299.w, x_2299.w, x_2299.w)) + vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
    let x_2308 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
    let x_2310 : vec4<f32> = u_xlat10;
    let x_2312 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2310.x, x_2310.y, x_2310.z), vec3<f32>(x_2312.x, x_2312.y, x_2312.z));
    let x_2315 : f32 = u_xlat67;
    u_xlat67 = max(x_2315, 6.10351562e-05f);
    let x_2318 : f32 = u_xlat67;
    u_xlat69 = inverseSqrt(x_2318);
    let x_2320 : f32 = u_xlat69;
    let x_2322 : vec4<f32> = u_xlat10;
    let x_2324 : vec3<f32> = (vec3<f32>(x_2320, x_2320, x_2320) * vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
    let x_2325 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2324.x, x_2324.y, x_2324.z, x_2325.w);
    let x_2327 : f32 = u_xlat67;
    u_xlat70 = (1.0f / x_2327);
    let x_2329 : f32 = u_xlat67;
    let x_2330 : u32 = u_xlatu3;
    let x_2333 : f32 = x_2295.x_AdditionalLightsAttenuation[bitcast<i32>(x_2330)].x;
    u_xlat67 = (x_2329 * x_2333);
    let x_2335 : f32 = u_xlat67;
    let x_2337 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2335) * x_2337) + 1.0f);
    let x_2340 : f32 = u_xlat67;
    u_xlat67 = max(x_2340, 0.0f);
    let x_2342 : f32 = u_xlat67;
    let x_2343 : f32 = u_xlat67;
    u_xlat67 = (x_2342 * x_2343);
    let x_2345 : f32 = u_xlat67;
    let x_2346 : f32 = u_xlat70;
    u_xlat67 = (x_2345 * x_2346);
    let x_2348 : u32 = u_xlatu3;
    let x_2351 : vec4<f32> = x_2295.x_AdditionalLightsSpotDir[bitcast<i32>(x_2348)];
    let x_2353 : vec4<f32> = u_xlat11;
    u_xlat70 = dot(vec3<f32>(x_2351.x, x_2351.y, x_2351.z), vec3<f32>(x_2353.x, x_2353.y, x_2353.z));
    let x_2356 : f32 = u_xlat70;
    let x_2357 : u32 = u_xlatu3;
    let x_2360 : f32 = x_2295.x_AdditionalLightsAttenuation[bitcast<i32>(x_2357)].z;
    let x_2362 : u32 = u_xlatu3;
    let x_2365 : f32 = x_2295.x_AdditionalLightsAttenuation[bitcast<i32>(x_2362)].w;
    u_xlat70 = ((x_2356 * x_2360) + x_2365);
    let x_2367 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2367, 0.0f, 1.0f);
    let x_2369 : f32 = u_xlat70;
    let x_2370 : f32 = u_xlat70;
    u_xlat70 = (x_2369 * x_2370);
    let x_2372 : f32 = u_xlat67;
    let x_2373 : f32 = u_xlat70;
    u_xlat67 = (x_2372 * x_2373);
    let x_2376 : u32 = u_xlatu3;
    u_xlatu70 = (x_2376 >> 5u);
    let x_2379 : u32 = u_xlatu3;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_2379) & 31i)));
    let x_2385 : i32 = u_xlati50;
    let x_2387 : u32 = u_xlatu70;
    let x_2390 : f32 = x_1852.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2387)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2385) & bitcast<u32>(x_2390)));
    let x_2394 : i32 = u_xlati70;
    if ((x_2394 != 0i)) {
      let x_2404 : u32 = u_xlatu3;
      let x_2407 : f32 = x_2403.x_AdditionalLightsLightTypes[bitcast<i32>(x_2404)].el;
      u_xlati70 = i32(x_2407);
      let x_2409 : i32 = u_xlati70;
      u_xlati50 = select(1i, 0i, (x_2409 != 0i));
      let x_2413 : u32 = u_xlatu3;
      u_xlati71 = (bitcast<i32>(x_2413) << bitcast<u32>(2i));
      let x_2416 : i32 = u_xlati50;
      if ((x_2416 != 0i)) {
        let x_2420 : vec3<f32> = vs_INTERP0;
        let x_2422 : i32 = u_xlati71;
        let x_2425 : i32 = u_xlati71;
        let x_2429 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_2422 + 1i) / 4i)][((x_2425 + 1i) % 4i)];
        let x_2431 : vec3<f32> = (vec3<f32>(x_2420.y, x_2420.y, x_2420.y) * vec3<f32>(x_2429.x, x_2429.y, x_2429.w));
        let x_2432 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2431.x, x_2431.y, x_2431.z, x_2432.w);
        let x_2434 : i32 = u_xlati71;
        let x_2436 : i32 = u_xlati71;
        let x_2439 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[(x_2434 / 4i)][(x_2436 % 4i)];
        let x_2441 : vec3<f32> = vs_INTERP0;
        let x_2444 : vec4<f32> = u_xlat12;
        let x_2446 : vec3<f32> = ((vec3<f32>(x_2439.x, x_2439.y, x_2439.w) * vec3<f32>(x_2441.x, x_2441.x, x_2441.x)) + vec3<f32>(x_2444.x, x_2444.y, x_2444.z));
        let x_2447 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2447.w);
        let x_2449 : i32 = u_xlati71;
        let x_2452 : i32 = u_xlati71;
        let x_2456 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_2449 + 2i) / 4i)][((x_2452 + 2i) % 4i)];
        let x_2458 : vec3<f32> = vs_INTERP0;
        let x_2461 : vec4<f32> = u_xlat12;
        let x_2463 : vec3<f32> = ((vec3<f32>(x_2456.x, x_2456.y, x_2456.w) * vec3<f32>(x_2458.z, x_2458.z, x_2458.z)) + vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
        let x_2464 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
        let x_2466 : vec4<f32> = u_xlat12;
        let x_2468 : i32 = u_xlati71;
        let x_2471 : i32 = u_xlati71;
        let x_2475 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_2468 + 3i) / 4i)][((x_2471 + 3i) % 4i)];
        let x_2477 : vec3<f32> = (vec3<f32>(x_2466.x, x_2466.y, x_2466.z) + vec3<f32>(x_2475.x, x_2475.y, x_2475.w));
        let x_2478 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
        let x_2480 : vec4<f32> = u_xlat12;
        let x_2482 : vec4<f32> = u_xlat12;
        let x_2484 : vec2<f32> = (vec2<f32>(x_2480.x, x_2480.y) / vec2<f32>(x_2482.z, x_2482.z));
        let x_2485 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2484.x, x_2484.y, x_2485.z, x_2485.w);
        let x_2487 : vec4<f32> = u_xlat12;
        let x_2490 : vec2<f32> = ((vec2<f32>(x_2487.x, x_2487.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2491 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2490.x, x_2490.y, x_2491.z, x_2491.w);
        let x_2493 : vec4<f32> = u_xlat12;
        let x_2497 : vec2<f32> = clamp(vec2<f32>(x_2493.x, x_2493.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2498 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2497.x, x_2497.y, x_2498.z, x_2498.w);
        let x_2500 : u32 = u_xlatu3;
        let x_2503 : vec4<f32> = x_2403.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2500)];
        let x_2505 : vec4<f32> = u_xlat12;
        let x_2508 : u32 = u_xlatu3;
        let x_2511 : vec4<f32> = x_2403.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2508)];
        let x_2513 : vec2<f32> = ((vec2<f32>(x_2503.x, x_2503.y) * vec2<f32>(x_2505.x, x_2505.y)) + vec2<f32>(x_2511.z, x_2511.w));
        let x_2514 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2513.x, x_2513.y, x_2514.z, x_2514.w);
      } else {
        let x_2518 : i32 = u_xlati70;
        u_xlatb70 = (x_2518 == 1i);
        let x_2520 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2520);
        let x_2522 : i32 = u_xlati70;
        if ((x_2522 != 0i)) {
          let x_2527 : vec3<f32> = vs_INTERP0;
          let x_2529 : i32 = u_xlati71;
          let x_2532 : i32 = u_xlati71;
          let x_2536 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_2529 + 1i) / 4i)][((x_2532 + 1i) % 4i)];
          u_xlat54 = (vec2<f32>(x_2527.y, x_2527.y) * vec2<f32>(x_2536.x, x_2536.y));
          let x_2539 : i32 = u_xlati71;
          let x_2541 : i32 = u_xlati71;
          let x_2544 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[(x_2539 / 4i)][(x_2541 % 4i)];
          let x_2546 : vec3<f32> = vs_INTERP0;
          let x_2549 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_2544.x, x_2544.y) * vec2<f32>(x_2546.x, x_2546.x)) + x_2549);
          let x_2551 : i32 = u_xlati71;
          let x_2554 : i32 = u_xlati71;
          let x_2558 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_2551 + 2i) / 4i)][((x_2554 + 2i) % 4i)];
          let x_2560 : vec3<f32> = vs_INTERP0;
          let x_2563 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_2558.x, x_2558.y) * vec2<f32>(x_2560.z, x_2560.z)) + x_2563);
          let x_2565 : vec2<f32> = u_xlat54;
          let x_2566 : i32 = u_xlati71;
          let x_2569 : i32 = u_xlati71;
          let x_2573 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_2566 + 3i) / 4i)][((x_2569 + 3i) % 4i)];
          u_xlat54 = (x_2565 + vec2<f32>(x_2573.x, x_2573.y));
          let x_2576 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_2576 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2579 : vec2<f32> = u_xlat54;
          u_xlat54 = fract(x_2579);
          let x_2581 : u32 = u_xlatu3;
          let x_2584 : vec4<f32> = x_2403.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2581)];
          let x_2586 : vec2<f32> = u_xlat54;
          let x_2588 : u32 = u_xlatu3;
          let x_2591 : vec4<f32> = x_2403.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2588)];
          let x_2593 : vec2<f32> = ((vec2<f32>(x_2584.x, x_2584.y) * x_2586) + vec2<f32>(x_2591.z, x_2591.w));
          let x_2594 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2593.x, x_2593.y, x_2594.z, x_2594.w);
        } else {
          let x_2597 : vec3<f32> = vs_INTERP0;
          let x_2599 : i32 = u_xlati71;
          let x_2602 : i32 = u_xlati71;
          let x_2606 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_2599 + 1i) / 4i)][((x_2602 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_2597.y, x_2597.y, x_2597.y, x_2597.y) * x_2606);
          let x_2608 : i32 = u_xlati71;
          let x_2610 : i32 = u_xlati71;
          let x_2613 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[(x_2608 / 4i)][(x_2610 % 4i)];
          let x_2614 : vec3<f32> = vs_INTERP0;
          let x_2617 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2613 * vec4<f32>(x_2614.x, x_2614.x, x_2614.x, x_2614.x)) + x_2617);
          let x_2619 : i32 = u_xlati71;
          let x_2622 : i32 = u_xlati71;
          let x_2626 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_2619 + 2i) / 4i)][((x_2622 + 2i) % 4i)];
          let x_2627 : vec3<f32> = vs_INTERP0;
          let x_2630 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2626 * vec4<f32>(x_2627.z, x_2627.z, x_2627.z, x_2627.z)) + x_2630);
          let x_2632 : vec4<f32> = u_xlat13;
          let x_2633 : i32 = u_xlati71;
          let x_2636 : i32 = u_xlati71;
          let x_2640 : vec4<f32> = x_2403.x_AdditionalLightsWorldToLights[((x_2633 + 3i) / 4i)][((x_2636 + 3i) % 4i)];
          u_xlat13 = (x_2632 + x_2640);
          let x_2642 : vec4<f32> = u_xlat13;
          let x_2644 : vec4<f32> = u_xlat13;
          let x_2646 : vec3<f32> = (vec3<f32>(x_2642.x, x_2642.y, x_2642.z) / vec3<f32>(x_2644.w, x_2644.w, x_2644.w));
          let x_2647 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2646.x, x_2646.y, x_2646.z, x_2647.w);
          let x_2649 : vec4<f32> = u_xlat13;
          let x_2651 : vec4<f32> = u_xlat13;
          u_xlat70 = dot(vec3<f32>(x_2649.x, x_2649.y, x_2649.z), vec3<f32>(x_2651.x, x_2651.y, x_2651.z));
          let x_2654 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2654);
          let x_2656 : f32 = u_xlat70;
          let x_2658 : vec4<f32> = u_xlat13;
          let x_2660 : vec3<f32> = (vec3<f32>(x_2656, x_2656, x_2656) * vec3<f32>(x_2658.x, x_2658.y, x_2658.z));
          let x_2661 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2660.x, x_2660.y, x_2660.z, x_2661.w);
          let x_2663 : vec4<f32> = u_xlat13;
          u_xlat70 = dot(abs(vec3<f32>(x_2663.x, x_2663.y, x_2663.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2668 : f32 = u_xlat70;
          u_xlat70 = max(x_2668, 0.000001f);
          let x_2671 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2671);
          let x_2673 : f32 = u_xlat70;
          let x_2675 : vec4<f32> = u_xlat13;
          let x_2677 : vec3<f32> = (vec3<f32>(x_2673, x_2673, x_2673) * vec3<f32>(x_2675.z, x_2675.x, x_2675.y));
          let x_2678 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_2677.x, x_2677.y, x_2677.z, x_2678.w);
          let x_2681 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_2681);
          let x_2685 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_2685, 0.0f, 1.0f);
          let x_2689 : vec4<f32> = u_xlat14;
          let x_2692 : vec4<bool> = (vec4<f32>(x_2689.y, x_2689.z, x_2689.y, x_2689.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb50 = vec2<bool>(x_2692.x, x_2692.y);
          let x_2696 : bool = u_xlatb50.x;
          if (x_2696) {
            let x_2701 : f32 = u_xlat14.x;
            x_2697 = x_2701;
          } else {
            let x_2704 : f32 = u_xlat14.x;
            x_2697 = -(x_2704);
          }
          let x_2706 : f32 = x_2697;
          u_xlat50.x = x_2706;
          let x_2709 : bool = u_xlatb50.y;
          if (x_2709) {
            let x_2714 : f32 = u_xlat14.x;
            x_2710 = x_2714;
          } else {
            let x_2717 : f32 = u_xlat14.x;
            x_2710 = -(x_2717);
          }
          let x_2719 : f32 = x_2710;
          u_xlat50.y = x_2719;
          let x_2721 : vec4<f32> = u_xlat13;
          let x_2723 : f32 = u_xlat70;
          let x_2726 : vec2<f32> = u_xlat50;
          u_xlat50 = ((vec2<f32>(x_2721.x, x_2721.y) * vec2<f32>(x_2723, x_2723)) + x_2726);
          let x_2728 : vec2<f32> = u_xlat50;
          u_xlat50 = ((x_2728 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2731 : vec2<f32> = u_xlat50;
          u_xlat50 = clamp(x_2731, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2735 : u32 = u_xlatu3;
          let x_2738 : vec4<f32> = x_2403.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2735)];
          let x_2740 : vec2<f32> = u_xlat50;
          let x_2742 : u32 = u_xlatu3;
          let x_2745 : vec4<f32> = x_2403.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2742)];
          let x_2747 : vec2<f32> = ((vec2<f32>(x_2738.x, x_2738.y) * x_2740) + vec2<f32>(x_2745.z, x_2745.w));
          let x_2748 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2747.x, x_2747.y, x_2748.z, x_2748.w);
        }
      }
      let x_2755 : vec4<f32> = u_xlat12;
      let x_2758 : f32 = x_45.x_GlobalMipBias.x;
      let x_2759 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2755.x, x_2755.y), x_2758);
      u_xlat12 = x_2759;
      let x_2761 : bool = u_xlatb8.y;
      if (x_2761) {
        let x_2766 : f32 = u_xlat12.w;
        x_2762 = x_2766;
      } else {
        let x_2769 : f32 = u_xlat12.x;
        x_2762 = x_2769;
      }
      let x_2770 : f32 = x_2762;
      u_xlat70 = x_2770;
      let x_2772 : bool = u_xlatb8.x;
      if (x_2772) {
        let x_2776 : vec4<f32> = u_xlat12;
        x_2773 = vec3<f32>(x_2776.x, x_2776.y, x_2776.z);
      } else {
        let x_2779 : f32 = u_xlat70;
        x_2773 = vec3<f32>(x_2779, x_2779, x_2779);
      }
      let x_2781 : vec3<f32> = x_2773;
      let x_2782 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2781.x, x_2781.y, x_2781.z, x_2782.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_2788 : vec4<f32> = u_xlat12;
    let x_2790 : u32 = u_xlatu3;
    let x_2793 : vec4<f32> = x_2295.x_AdditionalLightsColor[bitcast<i32>(x_2790)];
    let x_2795 : vec3<f32> = (vec3<f32>(x_2788.x, x_2788.y, x_2788.z) * vec3<f32>(x_2793.x, x_2793.y, x_2793.z));
    let x_2796 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2796.w);
    let x_2798 : f32 = u_xlat68;
    let x_2800 : vec4<f32> = u_xlat12;
    let x_2802 : vec3<f32> = (vec3<f32>(x_2798, x_2798, x_2798) * vec3<f32>(x_2800.x, x_2800.y, x_2800.z));
    let x_2803 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2802.x, x_2802.y, x_2802.z, x_2803.w);
    let x_2805 : vec4<f32> = u_xlat4;
    let x_2807 : vec4<f32> = u_xlat11;
    u_xlat3.x = dot(vec3<f32>(x_2805.x, x_2805.y, x_2805.z), vec3<f32>(x_2807.x, x_2807.y, x_2807.z));
    let x_2812 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2812, 0.0f, 1.0f);
    let x_2816 : f32 = u_xlat3.x;
    let x_2817 : f32 = u_xlat67;
    u_xlat3.x = (x_2816 * x_2817);
    let x_2820 : vec3<f32> = u_xlat3;
    let x_2822 : vec4<f32> = u_xlat12;
    let x_2824 : vec3<f32> = (vec3<f32>(x_2820.x, x_2820.x, x_2820.x) * vec3<f32>(x_2822.x, x_2822.y, x_2822.z));
    let x_2825 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2824.x, x_2824.y, x_2824.z, x_2825.w);
    let x_2827 : vec4<f32> = u_xlat10;
    let x_2829 : f32 = u_xlat69;
    let x_2832 : vec3<f32> = u_xlat5;
    let x_2833 : vec3<f32> = ((vec3<f32>(x_2827.x, x_2827.y, x_2827.z) * vec3<f32>(x_2829, x_2829, x_2829)) + x_2832);
    let x_2834 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2833.x, x_2833.y, x_2833.z, x_2834.w);
    let x_2836 : vec4<f32> = u_xlat10;
    let x_2838 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2836.x, x_2836.y, x_2836.z), vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
    let x_2843 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_2843, 1.17549435e-37f);
    let x_2847 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_2847);
    let x_2850 : vec3<f32> = u_xlat3;
    let x_2852 : vec4<f32> = u_xlat10;
    let x_2854 : vec3<f32> = (vec3<f32>(x_2850.x, x_2850.x, x_2850.x) * vec3<f32>(x_2852.x, x_2852.y, x_2852.z));
    let x_2855 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2854.x, x_2854.y, x_2854.z, x_2855.w);
    let x_2857 : vec4<f32> = u_xlat4;
    let x_2859 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2857.x, x_2857.y, x_2857.z), vec3<f32>(x_2859.x, x_2859.y, x_2859.z));
    let x_2864 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2864, 0.0f, 1.0f);
    let x_2867 : vec4<f32> = u_xlat11;
    let x_2869 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2867.x, x_2867.y, x_2867.z), vec3<f32>(x_2869.x, x_2869.y, x_2869.z));
    let x_2872 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2872, 0.0f, 1.0f);
    let x_2875 : f32 = u_xlat3.x;
    let x_2877 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2875 * x_2877);
    let x_2881 : f32 = u_xlat3.x;
    let x_2883 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_2881 * x_2883) + 1.000010014f);
    let x_2887 : f32 = u_xlat67;
    let x_2888 : f32 = u_xlat67;
    u_xlat67 = (x_2887 * x_2888);
    let x_2891 : f32 = u_xlat3.x;
    let x_2893 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2891 * x_2893);
    let x_2896 : f32 = u_xlat67;
    u_xlat67 = max(x_2896, 0.100000001f);
    let x_2899 : f32 = u_xlat3.x;
    let x_2900 : f32 = u_xlat67;
    u_xlat3.x = (x_2899 * x_2900);
    let x_2903 : f32 = u_xlat66;
    let x_2905 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2903 * x_2905);
    let x_2908 : f32 = u_xlat24;
    let x_2910 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2908 / x_2910);
    let x_2913 : vec3<f32> = u_xlat0;
    let x_2914 : vec3<f32> = u_xlat3;
    let x_2917 : vec4<f32> = u_xlat7;
    let x_2919 : vec3<f32> = ((x_2913 * vec3<f32>(x_2914.x, x_2914.x, x_2914.x)) + vec3<f32>(x_2917.x, x_2917.y, x_2917.z));
    let x_2920 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2919.x, x_2919.y, x_2919.z, x_2920.w);
    let x_2922 : vec4<f32> = u_xlat10;
    let x_2924 : vec4<f32> = u_xlat12;
    let x_2927 : vec3<f32> = u_xlat30;
    u_xlat30 = ((vec3<f32>(x_2922.x, x_2922.y, x_2922.z) * vec3<f32>(x_2924.x, x_2924.y, x_2924.z)) + x_2927);

    continuing {
      let x_2929 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2929 + bitcast<u32>(1i));
    }
  }
  let x_2931 : vec4<f32> = u_xlat1;
  let x_2933 : f32 = u_xlat45;
  let x_2936 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2931.x, x_2931.y, x_2931.w) * vec3<f32>(x_2933, x_2933, x_2933)) + vec3<f32>(x_2936.x, x_2936.y, x_2936.z));
  let x_2939 : vec3<f32> = u_xlat30;
  let x_2940 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_2939 + x_2940);
  let x_2944 : vec3<f32> = u_xlat2;
  let x_2945 : f32 = u_xlat43;
  let x_2948 : vec3<f32> = u_xlat0;
  let x_2949 : vec3<f32> = ((x_2944 * vec3<f32>(x_2945, x_2945, x_2945)) + x_2948);
  let x_2950 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2949.x, x_2949.y, x_2949.z, x_2950.w);
  let x_2955 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_2957 : f32 = x_122.unity_RenderingLayer.x;
  u_xlatu0 = (x_2955 & bitcast<u32>(x_2957));
  let x_2960 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2960);
  let x_2965 : f32 = u_xlat0.x;
  let x_2967 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2965 * x_2967);
  let x_2972 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2972, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2976 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2976.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

