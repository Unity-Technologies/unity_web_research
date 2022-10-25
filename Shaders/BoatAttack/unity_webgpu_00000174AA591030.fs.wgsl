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

@group(0) @binding(7) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(9) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(10) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(20) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_122 : UnityPerDraw;

@group(0) @binding(8) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_319 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2007 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2436 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2555 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat66 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlatb45 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlatb67 : bool;
  var u_xlat67 : f32;
  var u_xlatb68 : bool;
  var u_xlat68 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlatb66 : bool;
  var u_xlat5 : vec3<f32>;
  var x_279 : f32;
  var x_291 : f32;
  var x_303 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu66 : u32;
  var u_xlati66 : i32;
  var u_xlat25 : f32;
  var u_xlat69 : f32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlat47 : f32;
  var u_xlatb70 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb72 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat72 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat29 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat31 : vec3<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat32 : vec2<f32>;
  var u_xlat60 : vec2<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var u_xlat21 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat74 : f32;
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
  var u_xlatb26 : vec2<bool>;
  var u_xlatb48 : bool;
  var x_1959 : f32;
  var u_xlat26 : vec3<f32>;
  var u_xlat48 : f32;
  var x_2089 : f32;
  var x_2100 : vec3<f32>;
  var u_xlat73 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu51 : u32;
  var u_xlati73 : i32;
  var u_xlati51 : i32;
  var u_xlati74 : i32;
  var u_xlatb51 : bool;
  var u_xlatb56 : vec2<bool>;
  var u_xlat56 : vec2<f32>;
  var x_2856 : f32;
  var x_2869 : f32;
  var x_2921 : f32;
  var x_2933 : vec3<f32>;
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
  u_xlat66 = dot(vec2<f32>(x_87.x, x_87.y), vec2<f32>(x_89.x, x_89.y));
  let x_92 : f32 = u_xlat66;
  u_xlat66 = min(x_92, 1.0f);
  let x_94 : f32 = u_xlat66;
  u_xlat66 = (-(x_94) + 1.0f);
  let x_97 : f32 = u_xlat66;
  u_xlat66 = sqrt(x_97);
  let x_99 : f32 = u_xlat66;
  u_xlat66 = max(x_99, 1.00000002e-16f);
  let x_108 : vec4<f32> = vs_INTERP3;
  let x_111 : f32 = x_45.x_GlobalMipBias.x;
  let x_112 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_108.x, x_108.y), x_111);
  u_xlat2 = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_114 * vec3<f32>(14.0f, 14.0f, 14.0f));
  let x_127 : vec4<f32> = x_122.unity_ObjectToWorld[3i];
  let x_130 : vec4<f32> = x_122.unity_ObjectToWorld[3i];
  u_xlat45 = dot(vec3<f32>(x_127.x, x_127.y, x_127.z), vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : f32 = u_xlat45;
  u_xlat45 = sqrt(x_133);
  let x_135 : f32 = u_xlat45;
  u_xlat45 = fract(x_135);
  let x_137 : f32 = u_xlat45;
  let x_140 : f32 = x_45.x_NightFade;
  u_xlat45 = (x_137 + x_140);
  let x_145 : f32 = u_xlat45;
  u_xlatb45 = (x_145 >= 1.0f);
  let x_147 : bool = u_xlatb45;
  u_xlat45 = select(0.0f, 1.0f, x_147);
  let x_156 : vec4<f32> = vs_INTERP3;
  let x_159 : f32 = x_45.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_156.x, x_156.y), x_159);
  u_xlat3 = vec3<f32>(x_160.x, x_160.w, x_160.y);
  let x_165 : f32 = vs_INTERP2.w;
  u_xlatb67 = (0.0f < x_165);
  let x_168 : bool = u_xlatb67;
  u_xlat67 = select(-1.0f, 1.0f, x_168);
  let x_172 : f32 = x_122.unity_WorldTransformParams.w;
  u_xlatb68 = (x_172 >= 0.0f);
  let x_175 : bool = u_xlatb68;
  u_xlat68 = select(-1.0f, 1.0f, x_175);
  let x_177 : f32 = u_xlat67;
  let x_178 : f32 = u_xlat68;
  u_xlat67 = (x_177 * x_178);
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
  let x_201 : f32 = u_xlat67;
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
  let x_225 : f32 = u_xlat66;
  let x_227 : vec3<f32> = vs_INTERP1;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = ((vec3<f32>(x_225, x_225, x_225) * x_227) + vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_231.z);
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat66 = dot(vec3<f32>(x_234.x, x_234.y, x_234.w), vec3<f32>(x_236.x, x_236.y, x_236.w));
  let x_239 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_239);
  let x_241 : f32 = u_xlat66;
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = (vec3<f32>(x_241, x_241, x_241) * vec3<f32>(x_243.x, x_243.y, x_243.w));
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_246.z, x_245.z);
  let x_251 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb66 = (x_251 == 0.0f);
  let x_254 : vec3<f32> = vs_INTERP0;
  let x_259 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_260 : vec3<f32> = (-(x_254) + x_259);
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat4;
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat68 = dot(vec3<f32>(x_263.x, x_263.y, x_263.z), vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_268);
  let x_270 : f32 = u_xlat68;
  let x_272 : vec4<f32> = u_xlat4;
  let x_274 : vec3<f32> = (vec3<f32>(x_270, x_270, x_270) * vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : bool = u_xlatb66;
  if (x_278) {
    let x_283 : f32 = u_xlat4.x;
    x_279 = x_283;
  } else {
    let x_287 : f32 = x_45.unity_MatrixV[0i].z;
    x_279 = x_287;
  }
  let x_288 : f32 = x_279;
  u_xlat5.x = x_288;
  let x_290 : bool = u_xlatb66;
  if (x_290) {
    let x_296 : f32 = u_xlat4.y;
    x_291 = x_296;
  } else {
    let x_299 : f32 = x_45.unity_MatrixV[1i].z;
    x_291 = x_299;
  }
  let x_300 : f32 = x_291;
  u_xlat5.y = x_300;
  let x_302 : bool = u_xlatb66;
  if (x_302) {
    let x_307 : f32 = u_xlat4.z;
    x_303 = x_307;
  } else {
    let x_311 : f32 = x_45.unity_MatrixV[2i].z;
    x_303 = x_311;
  }
  let x_312 : f32 = x_303;
  u_xlat5.z = x_312;
  let x_314 : vec3<f32> = vs_INTERP0;
  let x_321 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres0;
  let x_324 : vec3<f32> = (x_314 + -(vec3<f32>(x_321.x, x_321.y, x_321.z)));
  let x_325 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_328 : vec3<f32> = vs_INTERP0;
  let x_330 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres1;
  let x_333 : vec3<f32> = (x_328 + -(vec3<f32>(x_330.x, x_330.y, x_330.z)));
  let x_334 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_337 : vec3<f32> = vs_INTERP0;
  let x_339 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres2;
  let x_342 : vec3<f32> = (x_337 + -(vec3<f32>(x_339.x, x_339.y, x_339.z)));
  let x_343 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_346 : vec3<f32> = vs_INTERP0;
  let x_349 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_346 + -(vec3<f32>(x_349.x, x_349.y, x_349.z)));
  let x_353 : vec4<f32> = u_xlat4;
  let x_355 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_353.x, x_353.y, x_353.z), vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_359 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat4.y = dot(vec3<f32>(x_359.x, x_359.y, x_359.z), vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_365 : vec4<f32> = u_xlat7;
  let x_367 : vec4<f32> = u_xlat7;
  u_xlat4.z = dot(vec3<f32>(x_365.x, x_365.y, x_365.z), vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_371 : vec3<f32> = u_xlat8;
  let x_372 : vec3<f32> = u_xlat8;
  u_xlat4.w = dot(x_371, x_372);
  let x_378 : vec4<f32> = u_xlat4;
  let x_381 : vec4<f32> = x_319.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_378 < x_381);
  let x_384 : bool = u_xlatb4.x;
  u_xlat6.x = select(0.0f, 1.0f, x_384);
  let x_388 : bool = u_xlatb4.y;
  u_xlat6.y = select(0.0f, 1.0f, x_388);
  let x_392 : bool = u_xlatb4.z;
  u_xlat6.z = select(0.0f, 1.0f, x_392);
  let x_396 : bool = u_xlatb4.w;
  u_xlat6.w = select(0.0f, 1.0f, x_396);
  let x_400 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_400);
  let x_405 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_405);
  let x_409 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_409);
  let x_412 : vec4<f32> = u_xlat4;
  let x_414 : vec4<f32> = u_xlat6;
  let x_416 : vec3<f32> = (vec3<f32>(x_412.x, x_412.y, x_412.z) + vec3<f32>(x_414.y, x_414.z, x_414.w));
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat4;
  let x_422 : vec3<f32> = max(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_423 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_423.x, x_422.x, x_422.y, x_422.z);
  let x_425 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(x_425, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_430 : f32 = u_xlat66;
  u_xlat66 = (-(x_430) + 4.0f);
  let x_435 : f32 = u_xlat66;
  u_xlatu66 = u32(x_435);
  let x_439 : u32 = u_xlatu66;
  u_xlati66 = (bitcast<i32>(x_439) << bitcast<u32>(2i));
  let x_442 : vec3<f32> = vs_INTERP0;
  let x_444 : i32 = u_xlati66;
  let x_447 : i32 = u_xlati66;
  let x_451 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_444 + 1i) / 4i)][((x_447 + 1i) % 4i)];
  let x_453 : vec3<f32> = (vec3<f32>(x_442.y, x_442.y, x_442.y) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : i32 = u_xlati66;
  let x_458 : i32 = u_xlati66;
  let x_461 : vec4<f32> = x_319.x_MainLightWorldToShadow[(x_456 / 4i)][(x_458 % 4i)];
  let x_463 : vec3<f32> = vs_INTERP0;
  let x_466 : vec4<f32> = u_xlat4;
  let x_468 : vec3<f32> = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463.x, x_463.x, x_463.x)) + vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : i32 = u_xlati66;
  let x_474 : i32 = u_xlati66;
  let x_478 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_471 + 2i) / 4i)][((x_474 + 2i) % 4i)];
  let x_480 : vec3<f32> = vs_INTERP0;
  let x_483 : vec4<f32> = u_xlat4;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480.z, x_480.z, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat4;
  let x_490 : i32 = u_xlati66;
  let x_493 : i32 = u_xlati66;
  let x_497 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_490 + 3i) / 4i)][((x_493 + 3i) % 4i)];
  let x_499 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) + vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_509 : vec2<f32> = vs_INTERP4;
  let x_511 : f32 = x_45.x_GlobalMipBias.x;
  let x_512 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_509, x_511);
  u_xlat6 = x_512;
  let x_517 : vec2<f32> = vs_INTERP4;
  let x_519 : f32 = x_45.x_GlobalMipBias.x;
  let x_520 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_517, x_519);
  let x_521 : vec3<f32> = vec3<f32>(x_520.x, x_520.y, x_520.z);
  let x_522 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat6;
  let x_528 : vec3<f32> = (vec3<f32>(x_524.x, x_524.y, x_524.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_529 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat1;
  let x_533 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(vec3<f32>(x_531.x, x_531.y, x_531.w), vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : f32 = u_xlat66;
  u_xlat66 = (x_536 + 0.5f);
  let x_539 : f32 = u_xlat66;
  let x_541 : vec4<f32> = u_xlat7;
  let x_543 : vec3<f32> = (vec3<f32>(x_539, x_539, x_539) * vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_547 : f32 = u_xlat6.w;
  u_xlat66 = max(x_547, 0.0001f);
  let x_550 : vec4<f32> = u_xlat6;
  let x_552 : f32 = u_xlat66;
  let x_554 : vec3<f32> = (vec3<f32>(x_550.x, x_550.y, x_550.z) / vec3<f32>(x_552, x_552, x_552));
  let x_555 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_559 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_560 : vec2<f32> = vec2<f32>(x_559.x, x_559.y);
  let x_564 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_560.x, x_560.y));
  let x_565 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat7;
  let x_569 : vec4<f32> = hlslcc_FragCoord;
  let x_571 : vec2<f32> = (vec2<f32>(x_567.x, x_567.y) * vec2<f32>(x_569.x, x_569.y));
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
  let x_575 : f32 = u_xlat7.y;
  let x_578 : f32 = x_45.x_ScaleBiasRt.x;
  let x_581 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat66 = ((x_575 * x_578) + x_581);
  let x_583 : f32 = u_xlat66;
  u_xlat7.z = (-(x_583) + 1.0f);
  let x_587 : vec3<f32> = u_xlat3;
  let x_588 : vec2<f32> = vec2<f32>(x_587.x, x_587.y);
  let x_589 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_588.x, x_588.y, x_589.z);
  let x_591 : vec3<f32> = u_xlat3;
  let x_595 : vec2<f32> = clamp(vec2<f32>(x_591.x, x_591.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_596 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_595.x, x_595.y, x_596.z);
  let x_599 : f32 = u_xlat3.x;
  u_xlat66 = ((-(x_599) * 0.959999979f) + 0.959999979f);
  let x_604 : f32 = u_xlat66;
  let x_607 : f32 = u_xlat3.y;
  u_xlat68 = (-(x_604) + x_607);
  let x_609 : f32 = u_xlat66;
  let x_611 : vec3<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_609, x_609, x_609) * x_611);
  let x_613 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_613 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_617 : vec3<f32> = u_xlat3;
  let x_619 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_617.x, x_617.x, x_617.x) * x_619) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_625 : f32 = u_xlat3.y;
  u_xlat66 = (-(x_625) + 1.0f);
  let x_628 : f32 = u_xlat66;
  let x_629 : f32 = u_xlat66;
  u_xlat3.x = (x_628 * x_629);
  let x_633 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_633, 0.0078125f);
  let x_639 : f32 = u_xlat3.x;
  let x_641 : f32 = u_xlat3.x;
  u_xlat25 = (x_639 * x_641);
  let x_643 : f32 = u_xlat68;
  u_xlat68 = (x_643 + 1.0f);
  let x_645 : f32 = u_xlat68;
  u_xlat68 = min(x_645, 1.0f);
  let x_649 : f32 = u_xlat3.x;
  u_xlat69 = ((x_649 * 4.0f) + 2.0f);
  let x_658 : vec4<f32> = u_xlat7;
  let x_661 : f32 = x_45.x_GlobalMipBias.x;
  let x_662 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_658.x, x_658.z), x_661);
  u_xlat70 = x_662.x;
  let x_665 : f32 = u_xlat70;
  u_xlat71 = (x_665 + -1.0f);
  let x_668 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_669 : f32 = u_xlat71;
  u_xlat71 = ((x_668 * x_669) + 1.0f);
  let x_674 : f32 = u_xlat3.z;
  let x_675 : f32 = u_xlat70;
  u_xlat47 = min(x_674, x_675);
  let x_679 : f32 = x_319.x_MainLightShadowParams.y;
  u_xlatb70 = (0.0f < x_679);
  let x_681 : bool = u_xlatb70;
  if (x_681) {
    let x_685 : f32 = x_319.x_MainLightShadowParams.y;
    u_xlatb70 = (x_685 == 1.0f);
    let x_687 : bool = u_xlatb70;
    if (x_687) {
      let x_690 : vec4<f32> = u_xlat4;
      let x_694 : vec4<f32> = x_319.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_690.x, x_690.y, x_690.x, x_690.y) + x_694);
      let x_697 : vec4<f32> = u_xlat7;
      let x_698 : vec2<f32> = vec2<f32>(x_697.x, x_697.y);
      let x_700 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_698.x, x_698.y, x_700);
      let x_713 : vec3<f32> = txVec0;
      let x_715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_713.xy, x_713.z);
      u_xlat9.x = x_715;
      let x_718 : vec4<f32> = u_xlat7;
      let x_719 : vec2<f32> = vec2<f32>(x_718.z, x_718.w);
      let x_721 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_719.x, x_719.y, x_721);
      let x_728 : vec3<f32> = txVec1;
      let x_730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_728.xy, x_728.z);
      u_xlat9.y = x_730;
      let x_732 : vec4<f32> = u_xlat4;
      let x_736 : vec4<f32> = x_319.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_732.x, x_732.y, x_732.x, x_732.y) + x_736);
      let x_739 : vec4<f32> = u_xlat7;
      let x_740 : vec2<f32> = vec2<f32>(x_739.x, x_739.y);
      let x_742 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_740.x, x_740.y, x_742);
      let x_749 : vec3<f32> = txVec2;
      let x_751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_749.xy, x_749.z);
      u_xlat9.z = x_751;
      let x_754 : vec4<f32> = u_xlat7;
      let x_755 : vec2<f32> = vec2<f32>(x_754.z, x_754.w);
      let x_757 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_755.x, x_755.y, x_757);
      let x_764 : vec3<f32> = txVec3;
      let x_766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_764.xy, x_764.z);
      u_xlat9.w = x_766;
      let x_768 : vec4<f32> = u_xlat9;
      u_xlat70 = dot(x_768, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_775 : f32 = x_319.x_MainLightShadowParams.y;
      u_xlatb72 = (x_775 == 2.0f);
      let x_777 : bool = u_xlatb72;
      if (x_777) {
        let x_780 : vec4<f32> = u_xlat4;
        let x_783 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_787 : vec2<f32> = ((vec2<f32>(x_780.x, x_780.y) * vec2<f32>(x_783.z, x_783.w)) + vec2<f32>(0.5f, 0.5f));
        let x_788 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_787.x, x_787.y, x_788.z, x_788.w);
        let x_790 : vec4<f32> = u_xlat7;
        let x_792 : vec2<f32> = floor(vec2<f32>(x_790.x, x_790.y));
        let x_793 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
        let x_797 : vec4<f32> = u_xlat4;
        let x_800 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_803 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_797.x, x_797.y) * vec2<f32>(x_800.z, x_800.w)) + -(vec2<f32>(x_803.x, x_803.y)));
        let x_807 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_807.x, x_807.x, x_807.y, x_807.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_812 : vec4<f32> = u_xlat9;
        let x_814 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_812.x, x_812.x, x_812.z, x_812.z) * vec4<f32>(x_814.x, x_814.x, x_814.z, x_814.z));
        let x_817 : vec4<f32> = u_xlat10;
        let x_821 : vec2<f32> = (vec2<f32>(x_817.y, x_817.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_822 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_821.x, x_822.y, x_821.y, x_822.w);
        let x_824 : vec4<f32> = u_xlat10;
        let x_827 : vec2<f32> = u_xlat51;
        let x_829 : vec2<f32> = ((vec2<f32>(x_824.x, x_824.z) * vec2<f32>(0.5f, 0.5f)) + -(x_827));
        let x_830 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_829.x, x_829.y, x_830.z, x_830.w);
        let x_833 : vec2<f32> = u_xlat51;
        u_xlat54 = (-(x_833) + vec2<f32>(1.0f, 1.0f));
        let x_837 : vec2<f32> = u_xlat51;
        let x_839 : vec2<f32> = min(x_837, vec2<f32>(0.0f, 0.0f));
        let x_840 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat11;
        let x_845 : vec4<f32> = u_xlat11;
        let x_848 : vec2<f32> = u_xlat54;
        let x_849 : vec2<f32> = ((-(vec2<f32>(x_842.x, x_842.y)) * vec2<f32>(x_845.x, x_845.y)) + x_848);
        let x_850 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_852 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_852, vec2<f32>(0.0f, 0.0f));
        let x_854 : vec2<f32> = u_xlat51;
        let x_856 : vec2<f32> = u_xlat51;
        let x_858 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_854) * x_856) + vec2<f32>(x_858.y, x_858.w));
        let x_861 : vec4<f32> = u_xlat11;
        let x_863 : vec2<f32> = (vec2<f32>(x_861.x, x_861.y) + vec2<f32>(1.0f, 1.0f));
        let x_864 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_863.x, x_863.y, x_864.z, x_864.w);
        let x_866 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_866 + vec2<f32>(1.0f, 1.0f));
        let x_869 : vec4<f32> = u_xlat10;
        let x_873 : vec2<f32> = (vec2<f32>(x_869.x, x_869.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_874 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_876 : vec2<f32> = u_xlat54;
        let x_877 : vec2<f32> = (x_876 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_878 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_877.x, x_877.y, x_878.z, x_878.w);
        let x_880 : vec4<f32> = u_xlat11;
        let x_882 : vec2<f32> = (vec2<f32>(x_880.x, x_880.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_883 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_882.x, x_882.y, x_883.z, x_883.w);
        let x_886 : vec2<f32> = u_xlat51;
        let x_887 : vec2<f32> = (x_886 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_888 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_887.x, x_887.y, x_888.z, x_888.w);
        let x_890 : vec4<f32> = u_xlat9;
        u_xlat51 = (vec2<f32>(x_890.y, x_890.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_894 : f32 = u_xlat11.x;
        u_xlat12.z = x_894;
        let x_897 : f32 = u_xlat51.x;
        u_xlat12.w = x_897;
        let x_900 : f32 = u_xlat13.x;
        u_xlat10.z = x_900;
        let x_903 : f32 = u_xlat9.x;
        u_xlat10.w = x_903;
        let x_906 : vec4<f32> = u_xlat10;
        let x_908 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_906.z, x_906.w, x_906.x, x_906.z) + vec4<f32>(x_908.z, x_908.w, x_908.x, x_908.z));
        let x_912 : f32 = u_xlat12.y;
        u_xlat11.z = x_912;
        let x_915 : f32 = u_xlat51.y;
        u_xlat11.w = x_915;
        let x_918 : f32 = u_xlat10.y;
        u_xlat13.z = x_918;
        let x_921 : f32 = u_xlat9.z;
        u_xlat13.w = x_921;
        let x_923 : vec4<f32> = u_xlat11;
        let x_925 : vec4<f32> = u_xlat13;
        let x_927 : vec3<f32> = (vec3<f32>(x_923.z, x_923.y, x_923.w) + vec3<f32>(x_925.z, x_925.y, x_925.w));
        let x_928 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
        let x_930 : vec4<f32> = u_xlat10;
        let x_932 : vec4<f32> = u_xlat14;
        let x_934 : vec3<f32> = (vec3<f32>(x_930.x, x_930.z, x_930.w) / vec3<f32>(x_932.z, x_932.w, x_932.y));
        let x_935 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
        let x_937 : vec4<f32> = u_xlat10;
        let x_942 : vec3<f32> = (vec3<f32>(x_937.x, x_937.y, x_937.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_943 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
        let x_945 : vec4<f32> = u_xlat13;
        let x_947 : vec4<f32> = u_xlat9;
        let x_949 : vec3<f32> = (vec3<f32>(x_945.z, x_945.y, x_945.w) / vec3<f32>(x_947.x, x_947.y, x_947.z));
        let x_950 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat11;
        let x_954 : vec3<f32> = (vec3<f32>(x_952.x, x_952.y, x_952.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_955 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
        let x_957 : vec4<f32> = u_xlat10;
        let x_960 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_962 : vec3<f32> = (vec3<f32>(x_957.y, x_957.x, x_957.z) * vec3<f32>(x_960.x, x_960.x, x_960.x));
        let x_963 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
        let x_965 : vec4<f32> = u_xlat11;
        let x_968 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_970 : vec3<f32> = (vec3<f32>(x_965.x, x_965.y, x_965.z) * vec3<f32>(x_968.y, x_968.y, x_968.y));
        let x_971 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
        let x_974 : f32 = u_xlat11.x;
        u_xlat10.w = x_974;
        let x_976 : vec4<f32> = u_xlat7;
        let x_979 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_982 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_976.x, x_976.y, x_976.x, x_976.y) * vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y)) + vec4<f32>(x_982.y, x_982.w, x_982.x, x_982.w));
        let x_985 : vec4<f32> = u_xlat7;
        let x_988 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_991 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_985.x, x_985.y) * vec2<f32>(x_988.x, x_988.y)) + vec2<f32>(x_991.z, x_991.w));
        let x_995 : f32 = u_xlat10.y;
        u_xlat11.w = x_995;
        let x_997 : vec4<f32> = u_xlat11;
        let x_998 : vec2<f32> = vec2<f32>(x_997.y, x_997.z);
        let x_999 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_999.x, x_998.x, x_999.z, x_998.y);
        let x_1001 : vec4<f32> = u_xlat7;
        let x_1004 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1007 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y) * vec4<f32>(x_1004.x, x_1004.y, x_1004.x, x_1004.y)) + vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1007.y));
        let x_1010 : vec4<f32> = u_xlat7;
        let x_1013 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1016 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1010.x, x_1010.y, x_1010.x, x_1010.y) * vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y)) + vec4<f32>(x_1016.w, x_1016.y, x_1016.w, x_1016.z));
        let x_1019 : vec4<f32> = u_xlat7;
        let x_1022 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1025 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y) * vec4<f32>(x_1022.x, x_1022.y, x_1022.x, x_1022.y)) + vec4<f32>(x_1025.x, x_1025.w, x_1025.z, x_1025.w));
        let x_1029 : vec4<f32> = u_xlat9;
        let x_1031 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_1029.x, x_1029.x, x_1029.x, x_1029.y) * vec4<f32>(x_1031.z, x_1031.w, x_1031.y, x_1031.z));
        let x_1035 : vec4<f32> = u_xlat9;
        let x_1037 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_1035.y, x_1035.y, x_1035.z, x_1035.z) * x_1037);
        let x_1041 : f32 = u_xlat9.z;
        let x_1043 : f32 = u_xlat14.y;
        u_xlat72 = (x_1041 * x_1043);
        let x_1046 : vec4<f32> = u_xlat12;
        let x_1047 : vec2<f32> = vec2<f32>(x_1046.x, x_1046.y);
        let x_1049 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
        let x_1056 : vec3<f32> = txVec4;
        let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1056.xy, x_1056.z);
        u_xlat7.x = x_1058;
        let x_1061 : vec4<f32> = u_xlat12;
        let x_1062 : vec2<f32> = vec2<f32>(x_1061.z, x_1061.w);
        let x_1064 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
        let x_1072 : vec3<f32> = txVec5;
        let x_1074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1072.xy, x_1072.z);
        u_xlat29 = x_1074;
        let x_1075 : f32 = u_xlat29;
        let x_1077 : f32 = u_xlat15.y;
        u_xlat29 = (x_1075 * x_1077);
        let x_1080 : f32 = u_xlat15.x;
        let x_1082 : f32 = u_xlat7.x;
        let x_1084 : f32 = u_xlat29;
        u_xlat7.x = ((x_1080 * x_1082) + x_1084);
        let x_1088 : vec2<f32> = u_xlat51;
        let x_1090 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
        let x_1097 : vec3<f32> = txVec6;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1097.xy, x_1097.z);
        u_xlat29 = x_1099;
        let x_1101 : f32 = u_xlat15.z;
        let x_1102 : f32 = u_xlat29;
        let x_1105 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1101 * x_1102) + x_1105);
        let x_1109 : vec4<f32> = u_xlat11;
        let x_1110 : vec2<f32> = vec2<f32>(x_1109.x, x_1109.y);
        let x_1112 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1119 : vec3<f32> = txVec7;
        let x_1121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1119.xy, x_1119.z);
        u_xlat29 = x_1121;
        let x_1123 : f32 = u_xlat15.w;
        let x_1124 : f32 = u_xlat29;
        let x_1127 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1123 * x_1124) + x_1127);
        let x_1131 : vec4<f32> = u_xlat13;
        let x_1132 : vec2<f32> = vec2<f32>(x_1131.x, x_1131.y);
        let x_1134 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1132.x, x_1132.y, x_1134);
        let x_1141 : vec3<f32> = txVec8;
        let x_1143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1141.xy, x_1141.z);
        u_xlat29 = x_1143;
        let x_1145 : f32 = u_xlat16.x;
        let x_1146 : f32 = u_xlat29;
        let x_1149 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1145 * x_1146) + x_1149);
        let x_1153 : vec4<f32> = u_xlat13;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.z, x_1153.w);
        let x_1156 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec9;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1163.xy, x_1163.z);
        u_xlat29 = x_1165;
        let x_1167 : f32 = u_xlat16.y;
        let x_1168 : f32 = u_xlat29;
        let x_1171 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1167 * x_1168) + x_1171);
        let x_1175 : vec4<f32> = u_xlat11;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.z, x_1175.w);
        let x_1178 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec10;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1185.xy, x_1185.z);
        u_xlat29 = x_1187;
        let x_1189 : f32 = u_xlat16.z;
        let x_1190 : f32 = u_xlat29;
        let x_1193 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1189 * x_1190) + x_1193);
        let x_1197 : vec4<f32> = u_xlat10;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec11;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1207.xy, x_1207.z);
        u_xlat29 = x_1209;
        let x_1211 : f32 = u_xlat16.w;
        let x_1212 : f32 = u_xlat29;
        let x_1215 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1211 * x_1212) + x_1215);
        let x_1219 : vec4<f32> = u_xlat10;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec12;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1229.xy, x_1229.z);
        u_xlat29 = x_1231;
        let x_1232 : f32 = u_xlat72;
        let x_1233 : f32 = u_xlat29;
        let x_1236 : f32 = u_xlat7.x;
        u_xlat70 = ((x_1232 * x_1233) + x_1236);
      } else {
        let x_1239 : vec4<f32> = u_xlat4;
        let x_1242 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1245 : vec2<f32> = ((vec2<f32>(x_1239.x, x_1239.y) * vec2<f32>(x_1242.z, x_1242.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1246 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1248 : vec4<f32> = u_xlat7;
        let x_1250 : vec2<f32> = floor(vec2<f32>(x_1248.x, x_1248.y));
        let x_1251 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1250.x, x_1250.y, x_1251.z, x_1251.w);
        let x_1253 : vec4<f32> = u_xlat4;
        let x_1256 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.z, x_1256.w)) + -(vec2<f32>(x_1259.x, x_1259.y)));
        let x_1263 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_1263.x, x_1263.x, x_1263.y, x_1263.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1266 : vec4<f32> = u_xlat9;
        let x_1268 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1266.x, x_1266.x, x_1266.z, x_1266.z) * vec4<f32>(x_1268.x, x_1268.x, x_1268.z, x_1268.z));
        let x_1271 : vec4<f32> = u_xlat10;
        let x_1275 : vec2<f32> = (vec2<f32>(x_1271.y, x_1271.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1276 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1276.x, x_1275.x, x_1276.z, x_1275.y);
        let x_1278 : vec4<f32> = u_xlat10;
        let x_1281 : vec2<f32> = u_xlat51;
        let x_1283 : vec2<f32> = ((vec2<f32>(x_1278.x, x_1278.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1281));
        let x_1284 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1283.x, x_1284.y, x_1283.y, x_1284.w);
        let x_1286 : vec2<f32> = u_xlat51;
        let x_1288 : vec2<f32> = (-(x_1286) + vec2<f32>(1.0f, 1.0f));
        let x_1289 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1291 : vec2<f32> = u_xlat51;
        u_xlat54 = min(x_1291, vec2<f32>(0.0f, 0.0f));
        let x_1293 : vec2<f32> = u_xlat54;
        let x_1295 : vec2<f32> = u_xlat54;
        let x_1297 : vec4<f32> = u_xlat10;
        let x_1299 : vec2<f32> = ((-(x_1293) * x_1295) + vec2<f32>(x_1297.x, x_1297.y));
        let x_1300 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1299.x, x_1299.y, x_1300.z, x_1300.w);
        let x_1302 : vec2<f32> = u_xlat51;
        u_xlat54 = max(x_1302, vec2<f32>(0.0f, 0.0f));
        let x_1305 : vec2<f32> = u_xlat54;
        let x_1307 : vec2<f32> = u_xlat54;
        let x_1309 : vec4<f32> = u_xlat9;
        let x_1311 : vec2<f32> = ((-(x_1305) * x_1307) + vec2<f32>(x_1309.y, x_1309.w));
        let x_1312 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1311.x, x_1312.y, x_1311.y);
        let x_1314 : vec4<f32> = u_xlat10;
        let x_1316 : vec2<f32> = (vec2<f32>(x_1314.x, x_1314.y) + vec2<f32>(2.0f, 2.0f));
        let x_1317 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1316.x, x_1316.y, x_1317.z, x_1317.w);
        let x_1319 : vec3<f32> = u_xlat31;
        let x_1321 : vec2<f32> = (vec2<f32>(x_1319.x, x_1319.z) + vec2<f32>(2.0f, 2.0f));
        let x_1322 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1322.x, x_1321.x, x_1322.z, x_1321.y);
        let x_1325 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1325 * 0.081632003f);
        let x_1329 : vec4<f32> = u_xlat9;
        let x_1332 : vec3<f32> = (vec3<f32>(x_1329.z, x_1329.x, x_1329.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1333 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
        let x_1335 : vec4<f32> = u_xlat10;
        let x_1338 : vec2<f32> = (vec2<f32>(x_1335.x, x_1335.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1339 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1342 : f32 = u_xlat13.y;
        u_xlat12.x = x_1342;
        let x_1344 : vec2<f32> = u_xlat51;
        let x_1351 : vec2<f32> = ((vec2<f32>(x_1344.x, x_1344.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1352 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1352.x, x_1351.x, x_1352.z, x_1351.y);
        let x_1354 : vec2<f32> = u_xlat51;
        let x_1358 : vec2<f32> = ((vec2<f32>(x_1354.x, x_1354.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1359 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1358.x, x_1359.y, x_1358.y, x_1359.w);
        let x_1362 : f32 = u_xlat9.x;
        u_xlat10.y = x_1362;
        let x_1365 : f32 = u_xlat11.y;
        u_xlat10.w = x_1365;
        let x_1367 : vec4<f32> = u_xlat10;
        let x_1368 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1367 + x_1368);
        let x_1370 : vec2<f32> = u_xlat51;
        let x_1373 : vec2<f32> = ((vec2<f32>(x_1370.y, x_1370.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1374 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1374.x, x_1373.x, x_1374.z, x_1373.y);
        let x_1376 : vec2<f32> = u_xlat51;
        let x_1379 : vec2<f32> = ((vec2<f32>(x_1376.y, x_1376.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1380 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1379.x, x_1380.y, x_1379.y, x_1380.w);
        let x_1383 : f32 = u_xlat9.y;
        u_xlat11.y = x_1383;
        let x_1385 : vec4<f32> = u_xlat11;
        let x_1386 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1385 + x_1386);
        let x_1388 : vec4<f32> = u_xlat10;
        let x_1389 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1388 / x_1389);
        let x_1391 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1391 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1397 : vec4<f32> = u_xlat11;
        let x_1398 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1397 / x_1398);
        let x_1400 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1400 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1402 : vec4<f32> = u_xlat10;
        let x_1405 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1402.w, x_1402.x, x_1402.y, x_1402.z) * vec4<f32>(x_1405.x, x_1405.x, x_1405.x, x_1405.x));
        let x_1408 : vec4<f32> = u_xlat11;
        let x_1411 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1408.x, x_1408.w, x_1408.y, x_1408.z) * vec4<f32>(x_1411.y, x_1411.y, x_1411.y, x_1411.y));
        let x_1414 : vec4<f32> = u_xlat10;
        let x_1415 : vec3<f32> = vec3<f32>(x_1414.y, x_1414.z, x_1414.w);
        let x_1416 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1415.x, x_1416.y, x_1415.y, x_1415.z);
        let x_1419 : f32 = u_xlat11.x;
        u_xlat13.y = x_1419;
        let x_1421 : vec4<f32> = u_xlat7;
        let x_1424 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1427 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1421.x, x_1421.y, x_1421.x, x_1421.y) * vec4<f32>(x_1424.x, x_1424.y, x_1424.x, x_1424.y)) + vec4<f32>(x_1427.x, x_1427.y, x_1427.z, x_1427.y));
        let x_1430 : vec4<f32> = u_xlat7;
        let x_1433 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1436 : vec4<f32> = u_xlat13;
        u_xlat51 = ((vec2<f32>(x_1430.x, x_1430.y) * vec2<f32>(x_1433.x, x_1433.y)) + vec2<f32>(x_1436.w, x_1436.y));
        let x_1440 : f32 = u_xlat13.y;
        u_xlat10.y = x_1440;
        let x_1443 : f32 = u_xlat11.z;
        u_xlat13.y = x_1443;
        let x_1445 : vec4<f32> = u_xlat7;
        let x_1448 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1451 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1445.x, x_1445.y, x_1445.x, x_1445.y) * vec4<f32>(x_1448.x, x_1448.y, x_1448.x, x_1448.y)) + vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1451.y));
        let x_1454 : vec4<f32> = u_xlat7;
        let x_1457 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1460 : vec4<f32> = u_xlat13;
        let x_1462 : vec2<f32> = ((vec2<f32>(x_1454.x, x_1454.y) * vec2<f32>(x_1457.x, x_1457.y)) + vec2<f32>(x_1460.w, x_1460.y));
        let x_1463 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1462.x, x_1462.y, x_1463.z, x_1463.w);
        let x_1466 : f32 = u_xlat13.y;
        u_xlat10.z = x_1466;
        let x_1469 : vec4<f32> = u_xlat7;
        let x_1472 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1475 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1469.x, x_1469.y, x_1469.x, x_1469.y) * vec4<f32>(x_1472.x, x_1472.y, x_1472.x, x_1472.y)) + vec4<f32>(x_1475.x, x_1475.y, x_1475.x, x_1475.z));
        let x_1479 : f32 = u_xlat11.w;
        u_xlat13.y = x_1479;
        let x_1482 : vec4<f32> = u_xlat7;
        let x_1485 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1488 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1482.x, x_1482.y, x_1482.x, x_1482.y) * vec4<f32>(x_1485.x, x_1485.y, x_1485.x, x_1485.y)) + vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1488.y));
        let x_1492 : vec4<f32> = u_xlat7;
        let x_1495 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1498 : vec4<f32> = u_xlat13;
        u_xlat32 = ((vec2<f32>(x_1492.x, x_1492.y) * vec2<f32>(x_1495.x, x_1495.y)) + vec2<f32>(x_1498.w, x_1498.y));
        let x_1502 : f32 = u_xlat13.y;
        u_xlat10.w = x_1502;
        let x_1505 : vec4<f32> = u_xlat7;
        let x_1508 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1511 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1505.x, x_1505.y) * vec2<f32>(x_1508.x, x_1508.y)) + vec2<f32>(x_1511.x, x_1511.w));
        let x_1514 : vec4<f32> = u_xlat13;
        let x_1515 : vec3<f32> = vec3<f32>(x_1514.x, x_1514.z, x_1514.w);
        let x_1516 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1515.x, x_1516.y, x_1515.y, x_1515.z);
        let x_1518 : vec4<f32> = u_xlat7;
        let x_1521 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1524 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1518.x, x_1518.y, x_1518.x, x_1518.y) * vec4<f32>(x_1521.x, x_1521.y, x_1521.x, x_1521.y)) + vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1524.y));
        let x_1528 : vec4<f32> = u_xlat7;
        let x_1531 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1534 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1528.x, x_1528.y) * vec2<f32>(x_1531.x, x_1531.y)) + vec2<f32>(x_1534.w, x_1534.y));
        let x_1538 : f32 = u_xlat10.x;
        u_xlat11.x = x_1538;
        let x_1540 : vec4<f32> = u_xlat7;
        let x_1543 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1546 : vec4<f32> = u_xlat11;
        let x_1548 : vec2<f32> = ((vec2<f32>(x_1540.x, x_1540.y) * vec2<f32>(x_1543.x, x_1543.y)) + vec2<f32>(x_1546.x, x_1546.y));
        let x_1549 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1548.x, x_1548.y, x_1549.z, x_1549.w);
        let x_1552 : vec4<f32> = u_xlat9;
        let x_1554 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1552.x, x_1552.x, x_1552.x, x_1552.x) * x_1554);
        let x_1557 : vec4<f32> = u_xlat9;
        let x_1559 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1557.y, x_1557.y, x_1557.y, x_1557.y) * x_1559);
        let x_1562 : vec4<f32> = u_xlat9;
        let x_1564 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1562.z, x_1562.z, x_1562.z, x_1562.z) * x_1564);
        let x_1566 : vec4<f32> = u_xlat9;
        let x_1568 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1566.w, x_1566.w, x_1566.w, x_1566.w) * x_1568);
        let x_1571 : vec4<f32> = u_xlat14;
        let x_1572 : vec2<f32> = vec2<f32>(x_1571.x, x_1571.y);
        let x_1574 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec13;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1581.xy, x_1581.z);
        u_xlat72 = x_1583;
        let x_1585 : vec4<f32> = u_xlat14;
        let x_1586 : vec2<f32> = vec2<f32>(x_1585.z, x_1585.w);
        let x_1588 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1596 : vec3<f32> = txVec14;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1596.xy, x_1596.z);
        u_xlat74 = x_1598;
        let x_1599 : f32 = u_xlat74;
        let x_1601 : f32 = u_xlat19.y;
        u_xlat74 = (x_1599 * x_1601);
        let x_1604 : f32 = u_xlat19.x;
        let x_1605 : f32 = u_xlat72;
        let x_1607 : f32 = u_xlat74;
        u_xlat72 = ((x_1604 * x_1605) + x_1607);
        let x_1610 : vec2<f32> = u_xlat51;
        let x_1612 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1610.x, x_1610.y, x_1612);
        let x_1619 : vec3<f32> = txVec15;
        let x_1621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1619.xy, x_1619.z);
        u_xlat51.x = x_1621;
        let x_1624 : f32 = u_xlat19.z;
        let x_1626 : f32 = u_xlat51.x;
        let x_1628 : f32 = u_xlat72;
        u_xlat72 = ((x_1624 * x_1626) + x_1628);
        let x_1631 : vec4<f32> = u_xlat17;
        let x_1632 : vec2<f32> = vec2<f32>(x_1631.x, x_1631.y);
        let x_1634 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
        let x_1641 : vec3<f32> = txVec16;
        let x_1643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1641.xy, x_1641.z);
        u_xlat51.x = x_1643;
        let x_1646 : f32 = u_xlat19.w;
        let x_1648 : f32 = u_xlat51.x;
        let x_1650 : f32 = u_xlat72;
        u_xlat72 = ((x_1646 * x_1648) + x_1650);
        let x_1653 : vec4<f32> = u_xlat15;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.x, x_1653.y);
        let x_1656 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec17;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat51.x = x_1665;
        let x_1668 : f32 = u_xlat20.x;
        let x_1670 : f32 = u_xlat51.x;
        let x_1672 : f32 = u_xlat72;
        u_xlat72 = ((x_1668 * x_1670) + x_1672);
        let x_1675 : vec4<f32> = u_xlat15;
        let x_1676 : vec2<f32> = vec2<f32>(x_1675.z, x_1675.w);
        let x_1678 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec18;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1685.xy, x_1685.z);
        u_xlat51.x = x_1687;
        let x_1690 : f32 = u_xlat20.y;
        let x_1692 : f32 = u_xlat51.x;
        let x_1694 : f32 = u_xlat72;
        u_xlat72 = ((x_1690 * x_1692) + x_1694);
        let x_1697 : vec4<f32> = u_xlat16;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.x, x_1697.y);
        let x_1700 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec19;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1707.xy, x_1707.z);
        u_xlat51.x = x_1709;
        let x_1712 : f32 = u_xlat20.z;
        let x_1714 : f32 = u_xlat51.x;
        let x_1716 : f32 = u_xlat72;
        u_xlat72 = ((x_1712 * x_1714) + x_1716);
        let x_1719 : vec4<f32> = u_xlat17;
        let x_1720 : vec2<f32> = vec2<f32>(x_1719.z, x_1719.w);
        let x_1722 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec20;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1729.xy, x_1729.z);
        u_xlat51.x = x_1731;
        let x_1734 : f32 = u_xlat20.w;
        let x_1736 : f32 = u_xlat51.x;
        let x_1738 : f32 = u_xlat72;
        u_xlat72 = ((x_1734 * x_1736) + x_1738);
        let x_1741 : vec4<f32> = u_xlat18;
        let x_1742 : vec2<f32> = vec2<f32>(x_1741.x, x_1741.y);
        let x_1744 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1742.x, x_1742.y, x_1744);
        let x_1751 : vec3<f32> = txVec21;
        let x_1753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1751.xy, x_1751.z);
        u_xlat51.x = x_1753;
        let x_1756 : f32 = u_xlat21.x;
        let x_1758 : f32 = u_xlat51.x;
        let x_1760 : f32 = u_xlat72;
        u_xlat72 = ((x_1756 * x_1758) + x_1760);
        let x_1763 : vec4<f32> = u_xlat18;
        let x_1764 : vec2<f32> = vec2<f32>(x_1763.z, x_1763.w);
        let x_1766 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1764.x, x_1764.y, x_1766);
        let x_1773 : vec3<f32> = txVec22;
        let x_1775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1773.xy, x_1773.z);
        u_xlat51.x = x_1775;
        let x_1778 : f32 = u_xlat21.y;
        let x_1780 : f32 = u_xlat51.x;
        let x_1782 : f32 = u_xlat72;
        u_xlat72 = ((x_1778 * x_1780) + x_1782);
        let x_1785 : vec2<f32> = u_xlat32;
        let x_1787 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1785.x, x_1785.y, x_1787);
        let x_1794 : vec3<f32> = txVec23;
        let x_1796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1794.xy, x_1794.z);
        u_xlat51.x = x_1796;
        let x_1799 : f32 = u_xlat21.z;
        let x_1801 : f32 = u_xlat51.x;
        let x_1803 : f32 = u_xlat72;
        u_xlat72 = ((x_1799 * x_1801) + x_1803);
        let x_1806 : vec2<f32> = u_xlat60;
        let x_1808 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1806.x, x_1806.y, x_1808);
        let x_1815 : vec3<f32> = txVec24;
        let x_1817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1815.xy, x_1815.z);
        u_xlat51.x = x_1817;
        let x_1820 : f32 = u_xlat21.w;
        let x_1822 : f32 = u_xlat51.x;
        let x_1824 : f32 = u_xlat72;
        u_xlat72 = ((x_1820 * x_1822) + x_1824);
        let x_1827 : vec4<f32> = u_xlat13;
        let x_1828 : vec2<f32> = vec2<f32>(x_1827.x, x_1827.y);
        let x_1830 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1828.x, x_1828.y, x_1830);
        let x_1837 : vec3<f32> = txVec25;
        let x_1839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1837.xy, x_1837.z);
        u_xlat51.x = x_1839;
        let x_1842 : f32 = u_xlat9.x;
        let x_1844 : f32 = u_xlat51.x;
        let x_1846 : f32 = u_xlat72;
        u_xlat72 = ((x_1842 * x_1844) + x_1846);
        let x_1849 : vec4<f32> = u_xlat13;
        let x_1850 : vec2<f32> = vec2<f32>(x_1849.z, x_1849.w);
        let x_1852 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1850.x, x_1850.y, x_1852);
        let x_1859 : vec3<f32> = txVec26;
        let x_1861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1859.xy, x_1859.z);
        u_xlat51.x = x_1861;
        let x_1864 : f32 = u_xlat9.y;
        let x_1866 : f32 = u_xlat51.x;
        let x_1868 : f32 = u_xlat72;
        u_xlat72 = ((x_1864 * x_1866) + x_1868);
        let x_1871 : vec2<f32> = u_xlat55;
        let x_1873 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1880 : vec3<f32> = txVec27;
        let x_1882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1880.xy, x_1880.z);
        u_xlat51.x = x_1882;
        let x_1885 : f32 = u_xlat9.z;
        let x_1887 : f32 = u_xlat51.x;
        let x_1889 : f32 = u_xlat72;
        u_xlat72 = ((x_1885 * x_1887) + x_1889);
        let x_1892 : vec4<f32> = u_xlat7;
        let x_1893 : vec2<f32> = vec2<f32>(x_1892.x, x_1892.y);
        let x_1895 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec28;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1902.xy, x_1902.z);
        u_xlat7.x = x_1904;
        let x_1907 : f32 = u_xlat9.w;
        let x_1909 : f32 = u_xlat7.x;
        let x_1911 : f32 = u_xlat72;
        u_xlat70 = ((x_1907 * x_1909) + x_1911);
      }
    }
  } else {
    let x_1915 : vec4<f32> = u_xlat4;
    let x_1916 : vec2<f32> = vec2<f32>(x_1915.x, x_1915.y);
    let x_1918 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1916.x, x_1916.y, x_1918);
    let x_1925 : vec3<f32> = txVec29;
    let x_1927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1925.xy, x_1925.z);
    u_xlat70 = x_1927;
  }
  let x_1929 : f32 = x_319.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1929) + 1.0f);
  let x_1933 : f32 = u_xlat70;
  let x_1935 : f32 = x_319.x_MainLightShadowParams.x;
  let x_1938 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1933 * x_1935) + x_1938);
  let x_1945 : f32 = u_xlat4.z;
  u_xlatb26.x = (0.0f >= x_1945);
  let x_1950 : f32 = u_xlat4.z;
  u_xlatb48 = (x_1950 >= 1.0f);
  let x_1952 : bool = u_xlatb48;
  let x_1954 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_1952 | x_1954);
  let x_1958 : bool = u_xlatb26.x;
  if (x_1958) {
    x_1959 = 1.0f;
  } else {
    let x_1964 : f32 = u_xlat4.x;
    x_1959 = x_1964;
  }
  let x_1965 : f32 = x_1959;
  u_xlat4.x = x_1965;
  let x_1968 : vec3<f32> = vs_INTERP0;
  let x_1970 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1968 + -(x_1970));
  let x_1973 : vec3<f32> = u_xlat26;
  let x_1974 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1973, x_1974);
  let x_1978 : f32 = u_xlat26.x;
  let x_1980 : f32 = x_319.x_MainLightShadowParams.z;
  let x_1983 : f32 = x_319.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1978 * x_1980) + x_1983);
  let x_1987 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1987, 0.0f, 1.0f);
  let x_1992 : f32 = u_xlat4.x;
  u_xlat48 = (-(x_1992) + 1.0f);
  let x_1996 : f32 = u_xlat26.x;
  let x_1997 : f32 = u_xlat48;
  let x_2000 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1996 * x_1997) + x_2000);
  let x_2009 : f32 = x_2007.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_2009 == -1.0f));
  let x_2013 : bool = u_xlatb26.x;
  if (x_2013) {
    let x_2016 : vec3<f32> = vs_INTERP0;
    let x_2019 : vec4<f32> = x_2007.x_MainLightWorldToLight[1i];
    let x_2021 : vec2<f32> = (vec2<f32>(x_2016.y, x_2016.y) * vec2<f32>(x_2019.x, x_2019.y));
    let x_2022 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2021.x, x_2021.y, x_2022.z);
    let x_2025 : vec4<f32> = x_2007.x_MainLightWorldToLight[0i];
    let x_2027 : vec3<f32> = vs_INTERP0;
    let x_2030 : vec3<f32> = u_xlat26;
    let x_2032 : vec2<f32> = ((vec2<f32>(x_2025.x, x_2025.y) * vec2<f32>(x_2027.x, x_2027.x)) + vec2<f32>(x_2030.x, x_2030.y));
    let x_2033 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2032.x, x_2032.y, x_2033.z);
    let x_2036 : vec4<f32> = x_2007.x_MainLightWorldToLight[2i];
    let x_2038 : vec3<f32> = vs_INTERP0;
    let x_2041 : vec3<f32> = u_xlat26;
    let x_2043 : vec2<f32> = ((vec2<f32>(x_2036.x, x_2036.y) * vec2<f32>(x_2038.z, x_2038.z)) + vec2<f32>(x_2041.x, x_2041.y));
    let x_2044 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2043.x, x_2043.y, x_2044.z);
    let x_2046 : vec3<f32> = u_xlat26;
    let x_2049 : vec4<f32> = x_2007.x_MainLightWorldToLight[3i];
    let x_2051 : vec2<f32> = (vec2<f32>(x_2046.x, x_2046.y) + vec2<f32>(x_2049.x, x_2049.y));
    let x_2052 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2051.x, x_2051.y, x_2052.z);
    let x_2054 : vec3<f32> = u_xlat26;
    let x_2057 : vec2<f32> = ((vec2<f32>(x_2054.x, x_2054.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2058 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2057.x, x_2057.y, x_2058.z);
    let x_2065 : vec3<f32> = u_xlat26;
    let x_2068 : f32 = x_45.x_GlobalMipBias.x;
    let x_2069 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2065.x, x_2065.y), x_2068);
    u_xlat7 = x_2069;
    let x_2071 : f32 = x_2007.x_MainLightCookieTextureFormat;
    let x_2073 : f32 = x_2007.x_MainLightCookieTextureFormat;
    let x_2075 : f32 = x_2007.x_MainLightCookieTextureFormat;
    let x_2077 : f32 = x_2007.x_MainLightCookieTextureFormat;
    let x_2078 : vec4<f32> = vec4<f32>(x_2071, x_2073, x_2075, x_2077);
    let x_2085 : vec4<bool> = (vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2078.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_2085.x, x_2085.y);
    let x_2088 : bool = u_xlatb26.y;
    if (x_2088) {
      let x_2093 : f32 = u_xlat7.w;
      x_2089 = x_2093;
    } else {
      let x_2096 : f32 = u_xlat7.x;
      x_2089 = x_2096;
    }
    let x_2097 : f32 = x_2089;
    u_xlat48 = x_2097;
    let x_2099 : bool = u_xlatb26.x;
    if (x_2099) {
      let x_2103 : vec4<f32> = u_xlat7;
      x_2100 = vec3<f32>(x_2103.x, x_2103.y, x_2103.z);
    } else {
      let x_2106 : f32 = u_xlat48;
      x_2100 = vec3<f32>(x_2106, x_2106, x_2106);
    }
    let x_2108 : vec3<f32> = x_2100;
    u_xlat26 = x_2108;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_2113 : vec3<f32> = u_xlat26;
  let x_2115 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat26 = (x_2113 * vec3<f32>(x_2115.x, x_2115.y, x_2115.z));
  let x_2118 : f32 = u_xlat71;
  let x_2120 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2118, x_2118, x_2118) * x_2120);
  let x_2122 : vec3<f32> = u_xlat5;
  let x_2124 : vec4<f32> = u_xlat1;
  u_xlat72 = dot(-(x_2122), vec3<f32>(x_2124.x, x_2124.y, x_2124.w));
  let x_2127 : f32 = u_xlat72;
  let x_2128 : f32 = u_xlat72;
  u_xlat72 = (x_2127 + x_2128);
  let x_2130 : vec4<f32> = u_xlat1;
  let x_2132 : f32 = u_xlat72;
  let x_2136 : vec3<f32> = u_xlat5;
  let x_2138 : vec3<f32> = ((vec3<f32>(x_2130.x, x_2130.y, x_2130.w) * -(vec3<f32>(x_2132, x_2132, x_2132))) + -(x_2136));
  let x_2139 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2138.x, x_2138.y, x_2138.z, x_2139.w);
  let x_2141 : vec4<f32> = u_xlat1;
  let x_2143 : vec3<f32> = u_xlat5;
  u_xlat72 = dot(vec3<f32>(x_2141.x, x_2141.y, x_2141.w), x_2143);
  let x_2145 : f32 = u_xlat72;
  u_xlat72 = clamp(x_2145, 0.0f, 1.0f);
  let x_2147 : f32 = u_xlat72;
  u_xlat72 = (-(x_2147) + 1.0f);
  let x_2150 : f32 = u_xlat72;
  let x_2151 : f32 = u_xlat72;
  u_xlat72 = (x_2150 * x_2151);
  let x_2153 : f32 = u_xlat72;
  let x_2154 : f32 = u_xlat72;
  u_xlat72 = (x_2153 * x_2154);
  let x_2157 : f32 = u_xlat66;
  u_xlat73 = ((-(x_2157) * 0.699999988f) + 1.700000048f);
  let x_2163 : f32 = u_xlat66;
  let x_2164 : f32 = u_xlat73;
  u_xlat66 = (x_2163 * x_2164);
  let x_2166 : f32 = u_xlat66;
  u_xlat66 = (x_2166 * 6.0f);
  let x_2177 : vec4<f32> = u_xlat7;
  let x_2179 : f32 = u_xlat66;
  let x_2180 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2177.x, x_2177.y, x_2177.z), x_2179);
  u_xlat7 = x_2180;
  let x_2182 : f32 = u_xlat7.w;
  u_xlat66 = (x_2182 + -1.0f);
  let x_2185 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_2186 : f32 = u_xlat66;
  u_xlat66 = ((x_2185 * x_2186) + 1.0f);
  let x_2189 : f32 = u_xlat66;
  u_xlat66 = max(x_2189, 0.0f);
  let x_2191 : f32 = u_xlat66;
  u_xlat66 = log2(x_2191);
  let x_2193 : f32 = u_xlat66;
  let x_2195 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat66 = (x_2193 * x_2195);
  let x_2197 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2197);
  let x_2199 : f32 = u_xlat66;
  let x_2201 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat66 = (x_2199 * x_2201);
  let x_2203 : vec4<f32> = u_xlat7;
  let x_2205 : f32 = u_xlat66;
  let x_2207 : vec3<f32> = (vec3<f32>(x_2203.x, x_2203.y, x_2203.z) * vec3<f32>(x_2205, x_2205, x_2205));
  let x_2208 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
  let x_2210 : vec3<f32> = u_xlat3;
  let x_2212 : vec3<f32> = u_xlat3;
  let x_2216 : vec2<f32> = ((vec2<f32>(x_2210.x, x_2210.x) * vec2<f32>(x_2212.x, x_2212.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2217 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2216.x, x_2216.y, x_2217.z, x_2217.w);
  let x_2220 : f32 = u_xlat9.y;
  u_xlat66 = (1.0f / x_2220);
  let x_2222 : vec3<f32> = u_xlat0;
  let x_2224 : f32 = u_xlat68;
  u_xlat31 = (-(x_2222) + vec3<f32>(x_2224, x_2224, x_2224));
  let x_2227 : f32 = u_xlat72;
  let x_2229 : vec3<f32> = u_xlat31;
  let x_2231 : vec3<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_2227, x_2227, x_2227) * x_2229) + x_2231);
  let x_2233 : f32 = u_xlat66;
  let x_2235 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2233, x_2233, x_2233) * x_2235);
  let x_2237 : vec4<f32> = u_xlat7;
  let x_2239 : vec3<f32> = u_xlat31;
  let x_2240 : vec3<f32> = (vec3<f32>(x_2237.x, x_2237.y, x_2237.z) * x_2239);
  let x_2241 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
  let x_2243 : vec4<f32> = u_xlat6;
  let x_2245 : vec3<f32> = u_xlat8;
  let x_2247 : vec4<f32> = u_xlat7;
  let x_2249 : vec3<f32> = ((vec3<f32>(x_2243.x, x_2243.y, x_2243.z) * x_2245) + vec3<f32>(x_2247.x, x_2247.y, x_2247.z));
  let x_2250 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2249.x, x_2249.y, x_2249.z, x_2250.w);
  let x_2253 : f32 = u_xlat4.x;
  let x_2255 : f32 = x_122.unity_LightData.z;
  u_xlat66 = (x_2253 * x_2255);
  let x_2257 : vec4<f32> = u_xlat1;
  let x_2260 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat68 = dot(vec3<f32>(x_2257.x, x_2257.y, x_2257.w), vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
  let x_2263 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2263, 0.0f, 1.0f);
  let x_2265 : f32 = u_xlat66;
  let x_2266 : f32 = u_xlat68;
  u_xlat66 = (x_2265 * x_2266);
  let x_2268 : f32 = u_xlat66;
  let x_2270 : vec3<f32> = u_xlat26;
  let x_2271 : vec3<f32> = (vec3<f32>(x_2268, x_2268, x_2268) * x_2270);
  let x_2272 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
  let x_2274 : vec3<f32> = u_xlat5;
  let x_2276 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2278 : vec3<f32> = (x_2274 + vec3<f32>(x_2276.x, x_2276.y, x_2276.z));
  let x_2279 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2278.x, x_2278.y, x_2278.z, x_2279.w);
  let x_2281 : vec4<f32> = u_xlat7;
  let x_2283 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2281.x, x_2281.y, x_2281.z), vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
  let x_2286 : f32 = u_xlat66;
  u_xlat66 = max(x_2286, 1.17549435e-37f);
  let x_2289 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_2289);
  let x_2291 : f32 = u_xlat66;
  let x_2293 : vec4<f32> = u_xlat7;
  let x_2295 : vec3<f32> = (vec3<f32>(x_2291, x_2291, x_2291) * vec3<f32>(x_2293.x, x_2293.y, x_2293.z));
  let x_2296 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
  let x_2298 : vec4<f32> = u_xlat1;
  let x_2300 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2298.x, x_2298.y, x_2298.w), vec3<f32>(x_2300.x, x_2300.y, x_2300.z));
  let x_2303 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2303, 0.0f, 1.0f);
  let x_2306 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2308 : vec4<f32> = u_xlat7;
  u_xlat68 = dot(vec3<f32>(x_2306.x, x_2306.y, x_2306.z), vec3<f32>(x_2308.x, x_2308.y, x_2308.z));
  let x_2311 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2311, 0.0f, 1.0f);
  let x_2313 : f32 = u_xlat66;
  let x_2314 : f32 = u_xlat66;
  u_xlat66 = (x_2313 * x_2314);
  let x_2316 : f32 = u_xlat66;
  let x_2318 : f32 = u_xlat9.x;
  u_xlat66 = ((x_2316 * x_2318) + 1.000010014f);
  let x_2322 : f32 = u_xlat68;
  let x_2323 : f32 = u_xlat68;
  u_xlat68 = (x_2322 * x_2323);
  let x_2325 : f32 = u_xlat66;
  let x_2326 : f32 = u_xlat66;
  u_xlat66 = (x_2325 * x_2326);
  let x_2328 : f32 = u_xlat68;
  u_xlat68 = max(x_2328, 0.100000001f);
  let x_2331 : f32 = u_xlat66;
  let x_2332 : f32 = u_xlat68;
  u_xlat66 = (x_2331 * x_2332);
  let x_2334 : f32 = u_xlat69;
  let x_2335 : f32 = u_xlat66;
  u_xlat66 = (x_2334 * x_2335);
  let x_2337 : f32 = u_xlat25;
  let x_2338 : f32 = u_xlat66;
  u_xlat66 = (x_2337 / x_2338);
  let x_2340 : vec3<f32> = u_xlat0;
  let x_2341 : f32 = u_xlat66;
  let x_2344 : vec3<f32> = u_xlat8;
  let x_2345 : vec3<f32> = ((x_2340 * vec3<f32>(x_2341, x_2341, x_2341)) + x_2344);
  let x_2346 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
  let x_2348 : vec4<f32> = u_xlat4;
  let x_2350 : vec4<f32> = u_xlat7;
  let x_2352 : vec3<f32> = (vec3<f32>(x_2348.x, x_2348.y, x_2348.z) * vec3<f32>(x_2350.x, x_2350.y, x_2350.z));
  let x_2353 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2352.x, x_2352.y, x_2352.z, x_2353.w);
  let x_2356 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2358 : f32 = x_122.unity_LightData.y;
  u_xlat66 = min(x_2356, x_2358);
  let x_2360 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_2360));
  let x_2365 : f32 = x_2007.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2367 : f32 = x_2007.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2369 : f32 = x_2007.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2371 : f32 = x_2007.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2372 : vec4<f32> = vec4<f32>(x_2365, x_2367, x_2369, x_2371);
  let x_2378 : vec4<bool> = (vec4<f32>(x_2372.x, x_2372.y, x_2372.z, x_2372.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2378.x, x_2378.y);
  u_xlat31.x = 0.0f;
  u_xlat31.y = 0.0f;
  u_xlat31.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2389 : u32 = u_xlatu_loop_1;
    let x_2390 : u32 = u_xlatu66;
    if ((x_2389 < x_2390)) {
    } else {
      break;
    }
    let x_2393 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_2393 >> 2u);
    let x_2396 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2396 & 3u));
    let x_2399 : u32 = u_xlatu3;
    let x_2402 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_2399)];
    let x_2412 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2417 : vec4<u32> = indexable[x_2412];
    u_xlat3.x = dot(x_2402, bitcast<vec4<f32>>(x_2417));
    let x_2422 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_2422));
    let x_2425 : vec3<f32> = vs_INTERP0;
    let x_2437 : u32 = u_xlatu3;
    let x_2440 : vec4<f32> = x_2436.x_AdditionalLightsPosition[bitcast<i32>(x_2437)];
    let x_2443 : u32 = u_xlatu3;
    let x_2446 : vec4<f32> = x_2436.x_AdditionalLightsPosition[bitcast<i32>(x_2443)];
    let x_2448 : vec3<f32> = ((-(x_2425) * vec3<f32>(x_2440.w, x_2440.w, x_2440.w)) + vec3<f32>(x_2446.x, x_2446.y, x_2446.z));
    let x_2449 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
    let x_2451 : vec4<f32> = u_xlat10;
    let x_2453 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2451.x, x_2451.y, x_2451.z), vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
    let x_2456 : f32 = u_xlat70;
    u_xlat70 = max(x_2456, 6.10351562e-05f);
    let x_2459 : f32 = u_xlat70;
    u_xlat72 = inverseSqrt(x_2459);
    let x_2461 : f32 = u_xlat72;
    let x_2463 : vec4<f32> = u_xlat10;
    let x_2465 : vec3<f32> = (vec3<f32>(x_2461, x_2461, x_2461) * vec3<f32>(x_2463.x, x_2463.y, x_2463.z));
    let x_2466 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
    let x_2468 : f32 = u_xlat70;
    u_xlat51.x = (1.0f / x_2468);
    let x_2471 : f32 = u_xlat70;
    let x_2472 : u32 = u_xlatu3;
    let x_2475 : f32 = x_2436.x_AdditionalLightsAttenuation[bitcast<i32>(x_2472)].x;
    u_xlat70 = (x_2471 * x_2475);
    let x_2477 : f32 = u_xlat70;
    let x_2479 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2477) * x_2479) + 1.0f);
    let x_2482 : f32 = u_xlat70;
    u_xlat70 = max(x_2482, 0.0f);
    let x_2484 : f32 = u_xlat70;
    let x_2485 : f32 = u_xlat70;
    u_xlat70 = (x_2484 * x_2485);
    let x_2487 : f32 = u_xlat70;
    let x_2489 : f32 = u_xlat51.x;
    u_xlat70 = (x_2487 * x_2489);
    let x_2491 : u32 = u_xlatu3;
    let x_2494 : vec4<f32> = x_2436.x_AdditionalLightsSpotDir[bitcast<i32>(x_2491)];
    let x_2496 : vec4<f32> = u_xlat11;
    u_xlat51.x = dot(vec3<f32>(x_2494.x, x_2494.y, x_2494.z), vec3<f32>(x_2496.x, x_2496.y, x_2496.z));
    let x_2501 : f32 = u_xlat51.x;
    let x_2502 : u32 = u_xlatu3;
    let x_2505 : f32 = x_2436.x_AdditionalLightsAttenuation[bitcast<i32>(x_2502)].z;
    let x_2507 : u32 = u_xlatu3;
    let x_2510 : f32 = x_2436.x_AdditionalLightsAttenuation[bitcast<i32>(x_2507)].w;
    u_xlat51.x = ((x_2501 * x_2505) + x_2510);
    let x_2514 : f32 = u_xlat51.x;
    u_xlat51.x = clamp(x_2514, 0.0f, 1.0f);
    let x_2518 : f32 = u_xlat51.x;
    let x_2520 : f32 = u_xlat51.x;
    u_xlat51.x = (x_2518 * x_2520);
    let x_2523 : f32 = u_xlat70;
    let x_2525 : f32 = u_xlat51.x;
    u_xlat70 = (x_2523 * x_2525);
    let x_2528 : u32 = u_xlatu3;
    u_xlatu51 = (x_2528 >> 5u);
    let x_2531 : u32 = u_xlatu3;
    u_xlati73 = (1i << bitcast<u32>((bitcast<i32>(x_2531) & 31i)));
    let x_2537 : i32 = u_xlati73;
    let x_2539 : u32 = u_xlatu51;
    let x_2542 : f32 = x_2007.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2539)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_2537) & bitcast<u32>(x_2542)));
    let x_2546 : i32 = u_xlati51;
    if ((x_2546 != 0i)) {
      let x_2556 : u32 = u_xlatu3;
      let x_2559 : f32 = x_2555.x_AdditionalLightsLightTypes[bitcast<i32>(x_2556)].el;
      u_xlati51 = i32(x_2559);
      let x_2561 : i32 = u_xlati51;
      u_xlati73 = select(1i, 0i, (x_2561 != 0i));
      let x_2565 : u32 = u_xlatu3;
      u_xlati74 = (bitcast<i32>(x_2565) << bitcast<u32>(2i));
      let x_2568 : i32 = u_xlati73;
      if ((x_2568 != 0i)) {
        let x_2572 : vec3<f32> = vs_INTERP0;
        let x_2574 : i32 = u_xlati74;
        let x_2577 : i32 = u_xlati74;
        let x_2581 : vec4<f32> = x_2555.x_AdditionalLightsWorldToLights[((x_2574 + 1i) / 4i)][((x_2577 + 1i) % 4i)];
        let x_2583 : vec3<f32> = (vec3<f32>(x_2572.y, x_2572.y, x_2572.y) * vec3<f32>(x_2581.x, x_2581.y, x_2581.w));
        let x_2584 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
        let x_2586 : i32 = u_xlati74;
        let x_2588 : i32 = u_xlati74;
        let x_2591 : vec4<f32> = x_2555.x_AdditionalLightsWorldToLights[(x_2586 / 4i)][(x_2588 % 4i)];
        let x_2593 : vec3<f32> = vs_INTERP0;
        let x_2596 : vec4<f32> = u_xlat12;
        let x_2598 : vec3<f32> = ((vec3<f32>(x_2591.x, x_2591.y, x_2591.w) * vec3<f32>(x_2593.x, x_2593.x, x_2593.x)) + vec3<f32>(x_2596.x, x_2596.y, x_2596.z));
        let x_2599 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
        let x_2601 : i32 = u_xlati74;
        let x_2604 : i32 = u_xlati74;
        let x_2608 : vec4<f32> = x_2555.x_AdditionalLightsWorldToLights[((x_2601 + 2i) / 4i)][((x_2604 + 2i) % 4i)];
        let x_2610 : vec3<f32> = vs_INTERP0;
        let x_2613 : vec4<f32> = u_xlat12;
        let x_2615 : vec3<f32> = ((vec3<f32>(x_2608.x, x_2608.y, x_2608.w) * vec3<f32>(x_2610.z, x_2610.z, x_2610.z)) + vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
        let x_2616 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
        let x_2618 : vec4<f32> = u_xlat12;
        let x_2620 : i32 = u_xlati74;
        let x_2623 : i32 = u_xlati74;
        let x_2627 : vec4<f32> = x_2555.x_AdditionalLightsWorldToLights[((x_2620 + 3i) / 4i)][((x_2623 + 3i) % 4i)];
        let x_2629 : vec3<f32> = (vec3<f32>(x_2618.x, x_2618.y, x_2618.z) + vec3<f32>(x_2627.x, x_2627.y, x_2627.w));
        let x_2630 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2630.w);
        let x_2632 : vec4<f32> = u_xlat12;
        let x_2634 : vec4<f32> = u_xlat12;
        let x_2636 : vec2<f32> = (vec2<f32>(x_2632.x, x_2632.y) / vec2<f32>(x_2634.z, x_2634.z));
        let x_2637 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2636.x, x_2636.y, x_2637.z, x_2637.w);
        let x_2639 : vec4<f32> = u_xlat12;
        let x_2642 : vec2<f32> = ((vec2<f32>(x_2639.x, x_2639.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2643 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2642.x, x_2642.y, x_2643.z, x_2643.w);
        let x_2645 : vec4<f32> = u_xlat12;
        let x_2649 : vec2<f32> = clamp(vec2<f32>(x_2645.x, x_2645.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2650 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2649.x, x_2649.y, x_2650.z, x_2650.w);
        let x_2652 : u32 = u_xlatu3;
        let x_2655 : vec4<f32> = x_2555.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2652)];
        let x_2657 : vec4<f32> = u_xlat12;
        let x_2660 : u32 = u_xlatu3;
        let x_2663 : vec4<f32> = x_2555.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2660)];
        let x_2665 : vec2<f32> = ((vec2<f32>(x_2655.x, x_2655.y) * vec2<f32>(x_2657.x, x_2657.y)) + vec2<f32>(x_2663.z, x_2663.w));
        let x_2666 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2665.x, x_2665.y, x_2666.z, x_2666.w);
      } else {
        let x_2670 : i32 = u_xlati51;
        u_xlatb51 = (x_2670 == 1i);
        let x_2672 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_2672);
        let x_2674 : i32 = u_xlati51;
        if ((x_2674 != 0i)) {
          let x_2678 : vec3<f32> = vs_INTERP0;
          let x_2680 : i32 = u_xlati74;
          let x_2683 : i32 = u_xlati74;
          let x_2687 : vec4<f32> = x_2555.x_AdditionalLightsWorldToLights[((x_2680 + 1i) / 4i)][((x_2683 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2678.y, x_2678.y) * vec2<f32>(x_2687.x, x_2687.y));
          let x_2690 : i32 = u_xlati74;
          let x_2692 : i32 = u_xlati74;
          let x_2695 : vec4<f32> = x_2555.x_AdditionalLightsWorldToLights[(x_2690 / 4i)][(x_2692 % 4i)];
          let x_2697 : vec3<f32> = vs_INTERP0;
          let x_2700 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2695.x, x_2695.y) * vec2<f32>(x_2697.x, x_2697.x)) + x_2700);
          let x_2702 : i32 = u_xlati74;
          let x_2705 : i32 = u_xlati74;
          let x_2709 : vec4<f32> = x_2555.x_AdditionalLightsWorldToLights[((x_2702 + 2i) / 4i)][((x_2705 + 2i) % 4i)];
          let x_2711 : vec3<f32> = vs_INTERP0;
          let x_2714 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2709.x, x_2709.y) * vec2<f32>(x_2711.z, x_2711.z)) + x_2714);
          let x_2716 : vec2<f32> = u_xlat51;
          let x_2717 : i32 = u_xlati74;
          let x_2720 : i32 = u_xlati74;
          let x_2724 : vec4<f32> = x_2555.x_AdditionalLightsWorldToLights[((x_2717 + 3i) / 4i)][((x_2720 + 3i) % 4i)];
          u_xlat51 = (x_2716 + vec2<f32>(x_2724.x, x_2724.y));
          let x_2727 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2727 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2730 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2730);
          let x_2732 : u32 = u_xlatu3;
          let x_2735 : vec4<f32> = x_2555.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2732)];
          let x_2737 : vec2<f32> = u_xlat51;
          let x_2739 : u32 = u_xlatu3;
          let x_2742 : vec4<f32> = x_2555.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2739)];
          let x_2744 : vec2<f32> = ((vec2<f32>(x_2735.x, x_2735.y) * x_2737) + vec2<f32>(x_2742.z, x_2742.w));
          let x_2745 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2744.x, x_2744.y, x_2745.z, x_2745.w);
        } else {
          let x_2748 : vec3<f32> = vs_INTERP0;
          let x_2750 : i32 = u_xlati74;
          let x_2753 : i32 = u_xlati74;
          let x_2757 : vec4<f32> = x_2555.x_AdditionalLightsWorldToLights[((x_2750 + 1i) / 4i)][((x_2753 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_2748.y, x_2748.y, x_2748.y, x_2748.y) * x_2757);
          let x_2759 : i32 = u_xlati74;
          let x_2761 : i32 = u_xlati74;
          let x_2764 : vec4<f32> = x_2555.x_AdditionalLightsWorldToLights[(x_2759 / 4i)][(x_2761 % 4i)];
          let x_2765 : vec3<f32> = vs_INTERP0;
          let x_2768 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2764 * vec4<f32>(x_2765.x, x_2765.x, x_2765.x, x_2765.x)) + x_2768);
          let x_2770 : i32 = u_xlati74;
          let x_2773 : i32 = u_xlati74;
          let x_2777 : vec4<f32> = x_2555.x_AdditionalLightsWorldToLights[((x_2770 + 2i) / 4i)][((x_2773 + 2i) % 4i)];
          let x_2778 : vec3<f32> = vs_INTERP0;
          let x_2781 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2777 * vec4<f32>(x_2778.z, x_2778.z, x_2778.z, x_2778.z)) + x_2781);
          let x_2783 : vec4<f32> = u_xlat13;
          let x_2784 : i32 = u_xlati74;
          let x_2787 : i32 = u_xlati74;
          let x_2791 : vec4<f32> = x_2555.x_AdditionalLightsWorldToLights[((x_2784 + 3i) / 4i)][((x_2787 + 3i) % 4i)];
          u_xlat13 = (x_2783 + x_2791);
          let x_2793 : vec4<f32> = u_xlat13;
          let x_2795 : vec4<f32> = u_xlat13;
          let x_2797 : vec3<f32> = (vec3<f32>(x_2793.x, x_2793.y, x_2793.z) / vec3<f32>(x_2795.w, x_2795.w, x_2795.w));
          let x_2798 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2797.x, x_2797.y, x_2797.z, x_2798.w);
          let x_2800 : vec4<f32> = u_xlat13;
          let x_2802 : vec4<f32> = u_xlat13;
          u_xlat51.x = dot(vec3<f32>(x_2800.x, x_2800.y, x_2800.z), vec3<f32>(x_2802.x, x_2802.y, x_2802.z));
          let x_2807 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_2807);
          let x_2810 : vec2<f32> = u_xlat51;
          let x_2812 : vec4<f32> = u_xlat13;
          let x_2814 : vec3<f32> = (vec3<f32>(x_2810.x, x_2810.x, x_2810.x) * vec3<f32>(x_2812.x, x_2812.y, x_2812.z));
          let x_2815 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2814.x, x_2814.y, x_2814.z, x_2815.w);
          let x_2817 : vec4<f32> = u_xlat13;
          u_xlat51.x = dot(abs(vec3<f32>(x_2817.x, x_2817.y, x_2817.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2824 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_2824, 0.000001f);
          let x_2829 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_2829);
          let x_2832 : vec2<f32> = u_xlat51;
          let x_2834 : vec4<f32> = u_xlat13;
          let x_2836 : vec3<f32> = (vec3<f32>(x_2832.x, x_2832.x, x_2832.x) * vec3<f32>(x_2834.z, x_2834.x, x_2834.y));
          let x_2837 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_2836.x, x_2836.y, x_2836.z, x_2837.w);
          let x_2840 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_2840);
          let x_2844 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_2844, 0.0f, 1.0f);
          let x_2848 : vec4<f32> = u_xlat14;
          let x_2851 : vec4<bool> = (vec4<f32>(x_2848.y, x_2848.z, x_2848.y, x_2848.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2851.x, x_2851.y);
          let x_2855 : bool = u_xlatb56.x;
          if (x_2855) {
            let x_2860 : f32 = u_xlat14.x;
            x_2856 = x_2860;
          } else {
            let x_2863 : f32 = u_xlat14.x;
            x_2856 = -(x_2863);
          }
          let x_2865 : f32 = x_2856;
          u_xlat56.x = x_2865;
          let x_2868 : bool = u_xlatb56.y;
          if (x_2868) {
            let x_2873 : f32 = u_xlat14.x;
            x_2869 = x_2873;
          } else {
            let x_2876 : f32 = u_xlat14.x;
            x_2869 = -(x_2876);
          }
          let x_2878 : f32 = x_2869;
          u_xlat56.y = x_2878;
          let x_2880 : vec4<f32> = u_xlat13;
          let x_2882 : vec2<f32> = u_xlat51;
          let x_2885 : vec2<f32> = u_xlat56;
          u_xlat51 = ((vec2<f32>(x_2880.x, x_2880.y) * vec2<f32>(x_2882.x, x_2882.x)) + x_2885);
          let x_2887 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2887 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2890 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_2890, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2894 : u32 = u_xlatu3;
          let x_2897 : vec4<f32> = x_2555.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2894)];
          let x_2899 : vec2<f32> = u_xlat51;
          let x_2901 : u32 = u_xlatu3;
          let x_2904 : vec4<f32> = x_2555.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2901)];
          let x_2906 : vec2<f32> = ((vec2<f32>(x_2897.x, x_2897.y) * x_2899) + vec2<f32>(x_2904.z, x_2904.w));
          let x_2907 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2906.x, x_2906.y, x_2907.z, x_2907.w);
        }
      }
      let x_2914 : vec4<f32> = u_xlat12;
      let x_2917 : f32 = x_45.x_GlobalMipBias.x;
      let x_2918 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2914.x, x_2914.y), x_2917);
      u_xlat12 = x_2918;
      let x_2920 : bool = u_xlatb7.y;
      if (x_2920) {
        let x_2925 : f32 = u_xlat12.w;
        x_2921 = x_2925;
      } else {
        let x_2928 : f32 = u_xlat12.x;
        x_2921 = x_2928;
      }
      let x_2929 : f32 = x_2921;
      u_xlat51.x = x_2929;
      let x_2932 : bool = u_xlatb7.x;
      if (x_2932) {
        let x_2936 : vec4<f32> = u_xlat12;
        x_2933 = vec3<f32>(x_2936.x, x_2936.y, x_2936.z);
      } else {
        let x_2939 : vec2<f32> = u_xlat51;
        x_2933 = vec3<f32>(x_2939.x, x_2939.x, x_2939.x);
      }
      let x_2941 : vec3<f32> = x_2933;
      let x_2942 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2941.x, x_2941.y, x_2941.z, x_2942.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_2948 : vec4<f32> = u_xlat12;
    let x_2950 : u32 = u_xlatu3;
    let x_2953 : vec4<f32> = x_2436.x_AdditionalLightsColor[bitcast<i32>(x_2950)];
    let x_2955 : vec3<f32> = (vec3<f32>(x_2948.x, x_2948.y, x_2948.z) * vec3<f32>(x_2953.x, x_2953.y, x_2953.z));
    let x_2956 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2955.x, x_2955.y, x_2955.z, x_2956.w);
    let x_2958 : f32 = u_xlat71;
    let x_2960 : vec4<f32> = u_xlat12;
    let x_2962 : vec3<f32> = (vec3<f32>(x_2958, x_2958, x_2958) * vec3<f32>(x_2960.x, x_2960.y, x_2960.z));
    let x_2963 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2962.x, x_2962.y, x_2962.z, x_2963.w);
    let x_2965 : vec4<f32> = u_xlat1;
    let x_2967 : vec4<f32> = u_xlat11;
    u_xlat3.x = dot(vec3<f32>(x_2965.x, x_2965.y, x_2965.w), vec3<f32>(x_2967.x, x_2967.y, x_2967.z));
    let x_2972 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2972, 0.0f, 1.0f);
    let x_2976 : f32 = u_xlat3.x;
    let x_2977 : f32 = u_xlat70;
    u_xlat3.x = (x_2976 * x_2977);
    let x_2980 : vec3<f32> = u_xlat3;
    let x_2982 : vec4<f32> = u_xlat12;
    let x_2984 : vec3<f32> = (vec3<f32>(x_2980.x, x_2980.x, x_2980.x) * vec3<f32>(x_2982.x, x_2982.y, x_2982.z));
    let x_2985 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2984.x, x_2984.y, x_2984.z, x_2985.w);
    let x_2987 : vec4<f32> = u_xlat10;
    let x_2989 : f32 = u_xlat72;
    let x_2992 : vec3<f32> = u_xlat5;
    let x_2993 : vec3<f32> = ((vec3<f32>(x_2987.x, x_2987.y, x_2987.z) * vec3<f32>(x_2989, x_2989, x_2989)) + x_2992);
    let x_2994 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2993.x, x_2993.y, x_2993.z, x_2994.w);
    let x_2996 : vec4<f32> = u_xlat10;
    let x_2998 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2996.x, x_2996.y, x_2996.z), vec3<f32>(x_2998.x, x_2998.y, x_2998.z));
    let x_3003 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_3003, 1.17549435e-37f);
    let x_3007 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_3007);
    let x_3010 : vec3<f32> = u_xlat3;
    let x_3012 : vec4<f32> = u_xlat10;
    let x_3014 : vec3<f32> = (vec3<f32>(x_3010.x, x_3010.x, x_3010.x) * vec3<f32>(x_3012.x, x_3012.y, x_3012.z));
    let x_3015 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3014.x, x_3014.y, x_3014.z, x_3015.w);
    let x_3017 : vec4<f32> = u_xlat1;
    let x_3019 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_3017.x, x_3017.y, x_3017.w), vec3<f32>(x_3019.x, x_3019.y, x_3019.z));
    let x_3024 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_3024, 0.0f, 1.0f);
    let x_3027 : vec4<f32> = u_xlat11;
    let x_3029 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_3027.x, x_3027.y, x_3027.z), vec3<f32>(x_3029.x, x_3029.y, x_3029.z));
    let x_3032 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3032, 0.0f, 1.0f);
    let x_3035 : f32 = u_xlat3.x;
    let x_3037 : f32 = u_xlat3.x;
    u_xlat3.x = (x_3035 * x_3037);
    let x_3041 : f32 = u_xlat3.x;
    let x_3043 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_3041 * x_3043) + 1.000010014f);
    let x_3047 : f32 = u_xlat70;
    let x_3048 : f32 = u_xlat70;
    u_xlat70 = (x_3047 * x_3048);
    let x_3051 : f32 = u_xlat3.x;
    let x_3053 : f32 = u_xlat3.x;
    u_xlat3.x = (x_3051 * x_3053);
    let x_3056 : f32 = u_xlat70;
    u_xlat70 = max(x_3056, 0.100000001f);
    let x_3059 : f32 = u_xlat3.x;
    let x_3060 : f32 = u_xlat70;
    u_xlat3.x = (x_3059 * x_3060);
    let x_3063 : f32 = u_xlat69;
    let x_3065 : f32 = u_xlat3.x;
    u_xlat3.x = (x_3063 * x_3065);
    let x_3068 : f32 = u_xlat25;
    let x_3070 : f32 = u_xlat3.x;
    u_xlat3.x = (x_3068 / x_3070);
    let x_3073 : vec3<f32> = u_xlat0;
    let x_3074 : vec3<f32> = u_xlat3;
    let x_3077 : vec3<f32> = u_xlat8;
    let x_3078 : vec3<f32> = ((x_3073 * vec3<f32>(x_3074.x, x_3074.x, x_3074.x)) + x_3077);
    let x_3079 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3078.x, x_3078.y, x_3078.z, x_3079.w);
    let x_3081 : vec4<f32> = u_xlat10;
    let x_3083 : vec4<f32> = u_xlat12;
    let x_3086 : vec3<f32> = u_xlat31;
    u_xlat31 = ((vec3<f32>(x_3081.x, x_3081.y, x_3081.z) * vec3<f32>(x_3083.x, x_3083.y, x_3083.z)) + x_3086);

    continuing {
      let x_3088 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3088 + bitcast<u32>(1i));
    }
  }
  let x_3090 : vec4<f32> = u_xlat6;
  let x_3092 : f32 = u_xlat47;
  let x_3095 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_3090.x, x_3090.y, x_3090.z) * vec3<f32>(x_3092, x_3092, x_3092)) + vec3<f32>(x_3095.x, x_3095.y, x_3095.z));
  let x_3098 : vec3<f32> = u_xlat31;
  let x_3099 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_3098 + x_3099);
  let x_3103 : vec3<f32> = u_xlat2;
  let x_3104 : f32 = u_xlat45;
  let x_3107 : vec3<f32> = u_xlat0;
  let x_3108 : vec3<f32> = ((x_3103 * vec3<f32>(x_3104, x_3104, x_3104)) + x_3107);
  let x_3109 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3108.x, x_3108.y, x_3108.z, x_3109.w);
  let x_3114 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_3116 : f32 = x_122.unity_RenderingLayer.x;
  u_xlatu0 = (x_3114 & bitcast<u32>(x_3116));
  let x_3119 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3119);
  let x_3124 : f32 = u_xlat0.x;
  let x_3126 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3124 * x_3126);
  let x_3131 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3131, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3135 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3135.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

