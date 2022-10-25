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

@group(0) @binding(6) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(8) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(9) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_122 : UnityPerDraw;

@group(0) @binding(7) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_319 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1966 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2395 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2514 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var x_1918 : f32;
  var u_xlat26 : vec3<f32>;
  var u_xlat48 : f32;
  var x_2048 : f32;
  var x_2059 : vec3<f32>;
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
  var x_2815 : f32;
  var x_2828 : f32;
  var x_2880 : f32;
  var x_2892 : vec3<f32>;
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
  let x_512 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_509, x_511);
  let x_513 : vec3<f32> = vec3<f32>(x_512.x, x_512.y, x_512.z);
  let x_514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_518 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_519 : vec2<f32> = vec2<f32>(x_518.x, x_518.y);
  let x_523 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_519.x, x_519.y));
  let x_524 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat7;
  let x_528 : vec4<f32> = hlslcc_FragCoord;
  let x_530 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_528.x, x_528.y));
  let x_531 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
  let x_534 : f32 = u_xlat7.y;
  let x_537 : f32 = x_45.x_ScaleBiasRt.x;
  let x_540 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat66 = ((x_534 * x_537) + x_540);
  let x_542 : f32 = u_xlat66;
  u_xlat7.z = (-(x_542) + 1.0f);
  let x_546 : vec3<f32> = u_xlat3;
  let x_547 : vec2<f32> = vec2<f32>(x_546.x, x_546.y);
  let x_548 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_547.x, x_547.y, x_548.z);
  let x_550 : vec3<f32> = u_xlat3;
  let x_554 : vec2<f32> = clamp(vec2<f32>(x_550.x, x_550.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_555 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_554.x, x_554.y, x_555.z);
  let x_558 : f32 = u_xlat3.x;
  u_xlat66 = ((-(x_558) * 0.959999979f) + 0.959999979f);
  let x_563 : f32 = u_xlat66;
  let x_566 : f32 = u_xlat3.y;
  u_xlat68 = (-(x_563) + x_566);
  let x_568 : f32 = u_xlat66;
  let x_570 : vec3<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_568, x_568, x_568) * x_570);
  let x_572 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_572 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_576 : vec3<f32> = u_xlat3;
  let x_578 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_576.x, x_576.x, x_576.x) * x_578) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_584 : f32 = u_xlat3.y;
  u_xlat66 = (-(x_584) + 1.0f);
  let x_587 : f32 = u_xlat66;
  let x_588 : f32 = u_xlat66;
  u_xlat3.x = (x_587 * x_588);
  let x_592 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_592, 0.0078125f);
  let x_598 : f32 = u_xlat3.x;
  let x_600 : f32 = u_xlat3.x;
  u_xlat25 = (x_598 * x_600);
  let x_602 : f32 = u_xlat68;
  u_xlat68 = (x_602 + 1.0f);
  let x_604 : f32 = u_xlat68;
  u_xlat68 = min(x_604, 1.0f);
  let x_608 : f32 = u_xlat3.x;
  u_xlat69 = ((x_608 * 4.0f) + 2.0f);
  let x_617 : vec4<f32> = u_xlat7;
  let x_620 : f32 = x_45.x_GlobalMipBias.x;
  let x_621 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_617.x, x_617.z), x_620);
  u_xlat70 = x_621.x;
  let x_624 : f32 = u_xlat70;
  u_xlat71 = (x_624 + -1.0f);
  let x_627 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_628 : f32 = u_xlat71;
  u_xlat71 = ((x_627 * x_628) + 1.0f);
  let x_633 : f32 = u_xlat3.z;
  let x_634 : f32 = u_xlat70;
  u_xlat47 = min(x_633, x_634);
  let x_638 : f32 = x_319.x_MainLightShadowParams.y;
  u_xlatb70 = (0.0f < x_638);
  let x_640 : bool = u_xlatb70;
  if (x_640) {
    let x_644 : f32 = x_319.x_MainLightShadowParams.y;
    u_xlatb70 = (x_644 == 1.0f);
    let x_646 : bool = u_xlatb70;
    if (x_646) {
      let x_649 : vec4<f32> = u_xlat4;
      let x_652 : vec4<f32> = x_319.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_649.x, x_649.y, x_649.x, x_649.y) + x_652);
      let x_655 : vec4<f32> = u_xlat7;
      let x_656 : vec2<f32> = vec2<f32>(x_655.x, x_655.y);
      let x_658 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_656.x, x_656.y, x_658);
      let x_671 : vec3<f32> = txVec0;
      let x_673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_671.xy, x_671.z);
      u_xlat9.x = x_673;
      let x_676 : vec4<f32> = u_xlat7;
      let x_677 : vec2<f32> = vec2<f32>(x_676.z, x_676.w);
      let x_679 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_677.x, x_677.y, x_679);
      let x_686 : vec3<f32> = txVec1;
      let x_688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_686.xy, x_686.z);
      u_xlat9.y = x_688;
      let x_690 : vec4<f32> = u_xlat4;
      let x_693 : vec4<f32> = x_319.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_690.x, x_690.y, x_690.x, x_690.y) + x_693);
      let x_696 : vec4<f32> = u_xlat7;
      let x_697 : vec2<f32> = vec2<f32>(x_696.x, x_696.y);
      let x_699 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_697.x, x_697.y, x_699);
      let x_706 : vec3<f32> = txVec2;
      let x_708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_706.xy, x_706.z);
      u_xlat9.z = x_708;
      let x_711 : vec4<f32> = u_xlat7;
      let x_712 : vec2<f32> = vec2<f32>(x_711.z, x_711.w);
      let x_714 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_712.x, x_712.y, x_714);
      let x_721 : vec3<f32> = txVec3;
      let x_723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_721.xy, x_721.z);
      u_xlat9.w = x_723;
      let x_725 : vec4<f32> = u_xlat9;
      u_xlat70 = dot(x_725, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_732 : f32 = x_319.x_MainLightShadowParams.y;
      u_xlatb72 = (x_732 == 2.0f);
      let x_734 : bool = u_xlatb72;
      if (x_734) {
        let x_737 : vec4<f32> = u_xlat4;
        let x_740 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_745 : vec2<f32> = ((vec2<f32>(x_737.x, x_737.y) * vec2<f32>(x_740.z, x_740.w)) + vec2<f32>(0.5f, 0.5f));
        let x_746 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
        let x_748 : vec4<f32> = u_xlat7;
        let x_750 : vec2<f32> = floor(vec2<f32>(x_748.x, x_748.y));
        let x_751 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
        let x_755 : vec4<f32> = u_xlat4;
        let x_758 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_761 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_755.x, x_755.y) * vec2<f32>(x_758.z, x_758.w)) + -(vec2<f32>(x_761.x, x_761.y)));
        let x_765 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_765.x, x_765.x, x_765.y, x_765.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_770 : vec4<f32> = u_xlat9;
        let x_772 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_770.x, x_770.x, x_770.z, x_770.z) * vec4<f32>(x_772.x, x_772.x, x_772.z, x_772.z));
        let x_775 : vec4<f32> = u_xlat10;
        let x_779 : vec2<f32> = (vec2<f32>(x_775.y, x_775.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_780 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_779.x, x_780.y, x_779.y, x_780.w);
        let x_782 : vec4<f32> = u_xlat10;
        let x_785 : vec2<f32> = u_xlat51;
        let x_787 : vec2<f32> = ((vec2<f32>(x_782.x, x_782.z) * vec2<f32>(0.5f, 0.5f)) + -(x_785));
        let x_788 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_787.x, x_787.y, x_788.z, x_788.w);
        let x_791 : vec2<f32> = u_xlat51;
        u_xlat54 = (-(x_791) + vec2<f32>(1.0f, 1.0f));
        let x_795 : vec2<f32> = u_xlat51;
        let x_797 : vec2<f32> = min(x_795, vec2<f32>(0.0f, 0.0f));
        let x_798 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_798.w);
        let x_800 : vec4<f32> = u_xlat11;
        let x_803 : vec4<f32> = u_xlat11;
        let x_806 : vec2<f32> = u_xlat54;
        let x_807 : vec2<f32> = ((-(vec2<f32>(x_800.x, x_800.y)) * vec2<f32>(x_803.x, x_803.y)) + x_806);
        let x_808 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
        let x_810 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_810, vec2<f32>(0.0f, 0.0f));
        let x_812 : vec2<f32> = u_xlat51;
        let x_814 : vec2<f32> = u_xlat51;
        let x_816 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_812) * x_814) + vec2<f32>(x_816.y, x_816.w));
        let x_819 : vec4<f32> = u_xlat11;
        let x_821 : vec2<f32> = (vec2<f32>(x_819.x, x_819.y) + vec2<f32>(1.0f, 1.0f));
        let x_822 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
        let x_824 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_824 + vec2<f32>(1.0f, 1.0f));
        let x_827 : vec4<f32> = u_xlat10;
        let x_831 : vec2<f32> = (vec2<f32>(x_827.x, x_827.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_832 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_831.x, x_831.y, x_832.z, x_832.w);
        let x_834 : vec2<f32> = u_xlat54;
        let x_835 : vec2<f32> = (x_834 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_836 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat11;
        let x_840 : vec2<f32> = (vec2<f32>(x_838.x, x_838.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_841 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
        let x_844 : vec2<f32> = u_xlat51;
        let x_845 : vec2<f32> = (x_844 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_846 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
        let x_848 : vec4<f32> = u_xlat9;
        u_xlat51 = (vec2<f32>(x_848.y, x_848.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_852 : f32 = u_xlat11.x;
        u_xlat12.z = x_852;
        let x_855 : f32 = u_xlat51.x;
        u_xlat12.w = x_855;
        let x_858 : f32 = u_xlat13.x;
        u_xlat10.z = x_858;
        let x_861 : f32 = u_xlat9.x;
        u_xlat10.w = x_861;
        let x_864 : vec4<f32> = u_xlat10;
        let x_866 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_864.z, x_864.w, x_864.x, x_864.z) + vec4<f32>(x_866.z, x_866.w, x_866.x, x_866.z));
        let x_870 : f32 = u_xlat12.y;
        u_xlat11.z = x_870;
        let x_873 : f32 = u_xlat51.y;
        u_xlat11.w = x_873;
        let x_876 : f32 = u_xlat10.y;
        u_xlat13.z = x_876;
        let x_879 : f32 = u_xlat9.z;
        u_xlat13.w = x_879;
        let x_881 : vec4<f32> = u_xlat11;
        let x_883 : vec4<f32> = u_xlat13;
        let x_885 : vec3<f32> = (vec3<f32>(x_881.z, x_881.y, x_881.w) + vec3<f32>(x_883.z, x_883.y, x_883.w));
        let x_886 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
        let x_888 : vec4<f32> = u_xlat10;
        let x_890 : vec4<f32> = u_xlat14;
        let x_892 : vec3<f32> = (vec3<f32>(x_888.x, x_888.z, x_888.w) / vec3<f32>(x_890.z, x_890.w, x_890.y));
        let x_893 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
        let x_895 : vec4<f32> = u_xlat10;
        let x_901 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_902 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
        let x_904 : vec4<f32> = u_xlat13;
        let x_906 : vec4<f32> = u_xlat9;
        let x_908 : vec3<f32> = (vec3<f32>(x_904.z, x_904.y, x_904.w) / vec3<f32>(x_906.x, x_906.y, x_906.z));
        let x_909 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
        let x_911 : vec4<f32> = u_xlat11;
        let x_913 : vec3<f32> = (vec3<f32>(x_911.x, x_911.y, x_911.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_914 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
        let x_916 : vec4<f32> = u_xlat10;
        let x_919 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_921 : vec3<f32> = (vec3<f32>(x_916.y, x_916.x, x_916.z) * vec3<f32>(x_919.x, x_919.x, x_919.x));
        let x_922 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
        let x_924 : vec4<f32> = u_xlat11;
        let x_927 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_929 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) * vec3<f32>(x_927.y, x_927.y, x_927.y));
        let x_930 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
        let x_933 : f32 = u_xlat11.x;
        u_xlat10.w = x_933;
        let x_935 : vec4<f32> = u_xlat7;
        let x_938 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_941 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_935.x, x_935.y, x_935.x, x_935.y) * vec4<f32>(x_938.x, x_938.y, x_938.x, x_938.y)) + vec4<f32>(x_941.y, x_941.w, x_941.x, x_941.w));
        let x_944 : vec4<f32> = u_xlat7;
        let x_947 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_950 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_944.x, x_944.y) * vec2<f32>(x_947.x, x_947.y)) + vec2<f32>(x_950.z, x_950.w));
        let x_954 : f32 = u_xlat10.y;
        u_xlat11.w = x_954;
        let x_956 : vec4<f32> = u_xlat11;
        let x_957 : vec2<f32> = vec2<f32>(x_956.y, x_956.z);
        let x_958 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_958.x, x_957.x, x_958.z, x_957.y);
        let x_960 : vec4<f32> = u_xlat7;
        let x_963 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_966 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_960.x, x_960.y, x_960.x, x_960.y) * vec4<f32>(x_963.x, x_963.y, x_963.x, x_963.y)) + vec4<f32>(x_966.x, x_966.y, x_966.z, x_966.y));
        let x_969 : vec4<f32> = u_xlat7;
        let x_972 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_975 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_969.x, x_969.y, x_969.x, x_969.y) * vec4<f32>(x_972.x, x_972.y, x_972.x, x_972.y)) + vec4<f32>(x_975.w, x_975.y, x_975.w, x_975.z));
        let x_978 : vec4<f32> = u_xlat7;
        let x_981 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_984 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_978.x, x_978.y, x_978.x, x_978.y) * vec4<f32>(x_981.x, x_981.y, x_981.x, x_981.y)) + vec4<f32>(x_984.x, x_984.w, x_984.z, x_984.w));
        let x_988 : vec4<f32> = u_xlat9;
        let x_990 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_988.x, x_988.x, x_988.x, x_988.y) * vec4<f32>(x_990.z, x_990.w, x_990.y, x_990.z));
        let x_994 : vec4<f32> = u_xlat9;
        let x_996 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_994.y, x_994.y, x_994.z, x_994.z) * x_996);
        let x_1000 : f32 = u_xlat9.z;
        let x_1002 : f32 = u_xlat14.y;
        u_xlat72 = (x_1000 * x_1002);
        let x_1005 : vec4<f32> = u_xlat12;
        let x_1006 : vec2<f32> = vec2<f32>(x_1005.x, x_1005.y);
        let x_1008 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1006.x, x_1006.y, x_1008);
        let x_1015 : vec3<f32> = txVec4;
        let x_1017 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1015.xy, x_1015.z);
        u_xlat7.x = x_1017;
        let x_1020 : vec4<f32> = u_xlat12;
        let x_1021 : vec2<f32> = vec2<f32>(x_1020.z, x_1020.w);
        let x_1023 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1021.x, x_1021.y, x_1023);
        let x_1031 : vec3<f32> = txVec5;
        let x_1033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1031.xy, x_1031.z);
        u_xlat29 = x_1033;
        let x_1034 : f32 = u_xlat29;
        let x_1036 : f32 = u_xlat15.y;
        u_xlat29 = (x_1034 * x_1036);
        let x_1039 : f32 = u_xlat15.x;
        let x_1041 : f32 = u_xlat7.x;
        let x_1043 : f32 = u_xlat29;
        u_xlat7.x = ((x_1039 * x_1041) + x_1043);
        let x_1047 : vec2<f32> = u_xlat51;
        let x_1049 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
        let x_1056 : vec3<f32> = txVec6;
        let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1056.xy, x_1056.z);
        u_xlat29 = x_1058;
        let x_1060 : f32 = u_xlat15.z;
        let x_1061 : f32 = u_xlat29;
        let x_1064 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1060 * x_1061) + x_1064);
        let x_1068 : vec4<f32> = u_xlat11;
        let x_1069 : vec2<f32> = vec2<f32>(x_1068.x, x_1068.y);
        let x_1071 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1069.x, x_1069.y, x_1071);
        let x_1078 : vec3<f32> = txVec7;
        let x_1080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1078.xy, x_1078.z);
        u_xlat29 = x_1080;
        let x_1082 : f32 = u_xlat15.w;
        let x_1083 : f32 = u_xlat29;
        let x_1086 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1082 * x_1083) + x_1086);
        let x_1090 : vec4<f32> = u_xlat13;
        let x_1091 : vec2<f32> = vec2<f32>(x_1090.x, x_1090.y);
        let x_1093 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1091.x, x_1091.y, x_1093);
        let x_1100 : vec3<f32> = txVec8;
        let x_1102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1100.xy, x_1100.z);
        u_xlat29 = x_1102;
        let x_1104 : f32 = u_xlat16.x;
        let x_1105 : f32 = u_xlat29;
        let x_1108 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1104 * x_1105) + x_1108);
        let x_1112 : vec4<f32> = u_xlat13;
        let x_1113 : vec2<f32> = vec2<f32>(x_1112.z, x_1112.w);
        let x_1115 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1113.x, x_1113.y, x_1115);
        let x_1122 : vec3<f32> = txVec9;
        let x_1124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1122.xy, x_1122.z);
        u_xlat29 = x_1124;
        let x_1126 : f32 = u_xlat16.y;
        let x_1127 : f32 = u_xlat29;
        let x_1130 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1126 * x_1127) + x_1130);
        let x_1134 : vec4<f32> = u_xlat11;
        let x_1135 : vec2<f32> = vec2<f32>(x_1134.z, x_1134.w);
        let x_1137 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1135.x, x_1135.y, x_1137);
        let x_1144 : vec3<f32> = txVec10;
        let x_1146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1144.xy, x_1144.z);
        u_xlat29 = x_1146;
        let x_1148 : f32 = u_xlat16.z;
        let x_1149 : f32 = u_xlat29;
        let x_1152 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1148 * x_1149) + x_1152);
        let x_1156 : vec4<f32> = u_xlat10;
        let x_1157 : vec2<f32> = vec2<f32>(x_1156.x, x_1156.y);
        let x_1159 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1157.x, x_1157.y, x_1159);
        let x_1166 : vec3<f32> = txVec11;
        let x_1168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1166.xy, x_1166.z);
        u_xlat29 = x_1168;
        let x_1170 : f32 = u_xlat16.w;
        let x_1171 : f32 = u_xlat29;
        let x_1174 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1170 * x_1171) + x_1174);
        let x_1178 : vec4<f32> = u_xlat10;
        let x_1179 : vec2<f32> = vec2<f32>(x_1178.z, x_1178.w);
        let x_1181 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1179.x, x_1179.y, x_1181);
        let x_1188 : vec3<f32> = txVec12;
        let x_1190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1188.xy, x_1188.z);
        u_xlat29 = x_1190;
        let x_1191 : f32 = u_xlat72;
        let x_1192 : f32 = u_xlat29;
        let x_1195 : f32 = u_xlat7.x;
        u_xlat70 = ((x_1191 * x_1192) + x_1195);
      } else {
        let x_1198 : vec4<f32> = u_xlat4;
        let x_1201 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1204 : vec2<f32> = ((vec2<f32>(x_1198.x, x_1198.y) * vec2<f32>(x_1201.z, x_1201.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1205 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1205.w);
        let x_1207 : vec4<f32> = u_xlat7;
        let x_1209 : vec2<f32> = floor(vec2<f32>(x_1207.x, x_1207.y));
        let x_1210 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1209.x, x_1209.y, x_1210.z, x_1210.w);
        let x_1212 : vec4<f32> = u_xlat4;
        let x_1215 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1218 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1212.x, x_1212.y) * vec2<f32>(x_1215.z, x_1215.w)) + -(vec2<f32>(x_1218.x, x_1218.y)));
        let x_1222 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_1222.x, x_1222.x, x_1222.y, x_1222.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1225 : vec4<f32> = u_xlat9;
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1225.x, x_1225.x, x_1225.z, x_1225.z) * vec4<f32>(x_1227.x, x_1227.x, x_1227.z, x_1227.z));
        let x_1230 : vec4<f32> = u_xlat10;
        let x_1234 : vec2<f32> = (vec2<f32>(x_1230.y, x_1230.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1235 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1235.x, x_1234.x, x_1235.z, x_1234.y);
        let x_1237 : vec4<f32> = u_xlat10;
        let x_1240 : vec2<f32> = u_xlat51;
        let x_1242 : vec2<f32> = ((vec2<f32>(x_1237.x, x_1237.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1240));
        let x_1243 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1242.x, x_1243.y, x_1242.y, x_1243.w);
        let x_1245 : vec2<f32> = u_xlat51;
        let x_1247 : vec2<f32> = (-(x_1245) + vec2<f32>(1.0f, 1.0f));
        let x_1248 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
        let x_1250 : vec2<f32> = u_xlat51;
        u_xlat54 = min(x_1250, vec2<f32>(0.0f, 0.0f));
        let x_1252 : vec2<f32> = u_xlat54;
        let x_1254 : vec2<f32> = u_xlat54;
        let x_1256 : vec4<f32> = u_xlat10;
        let x_1258 : vec2<f32> = ((-(x_1252) * x_1254) + vec2<f32>(x_1256.x, x_1256.y));
        let x_1259 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1258.x, x_1258.y, x_1259.z, x_1259.w);
        let x_1261 : vec2<f32> = u_xlat51;
        u_xlat54 = max(x_1261, vec2<f32>(0.0f, 0.0f));
        let x_1264 : vec2<f32> = u_xlat54;
        let x_1266 : vec2<f32> = u_xlat54;
        let x_1268 : vec4<f32> = u_xlat9;
        let x_1270 : vec2<f32> = ((-(x_1264) * x_1266) + vec2<f32>(x_1268.y, x_1268.w));
        let x_1271 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1270.x, x_1271.y, x_1270.y);
        let x_1273 : vec4<f32> = u_xlat10;
        let x_1275 : vec2<f32> = (vec2<f32>(x_1273.x, x_1273.y) + vec2<f32>(2.0f, 2.0f));
        let x_1276 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1275.x, x_1275.y, x_1276.z, x_1276.w);
        let x_1278 : vec3<f32> = u_xlat31;
        let x_1280 : vec2<f32> = (vec2<f32>(x_1278.x, x_1278.z) + vec2<f32>(2.0f, 2.0f));
        let x_1281 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1281.x, x_1280.x, x_1281.z, x_1280.y);
        let x_1284 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1284 * 0.081632003f);
        let x_1288 : vec4<f32> = u_xlat9;
        let x_1291 : vec3<f32> = (vec3<f32>(x_1288.z, x_1288.x, x_1288.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1292 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
        let x_1294 : vec4<f32> = u_xlat10;
        let x_1297 : vec2<f32> = (vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1298 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1297.x, x_1297.y, x_1298.z, x_1298.w);
        let x_1301 : f32 = u_xlat13.y;
        u_xlat12.x = x_1301;
        let x_1303 : vec2<f32> = u_xlat51;
        let x_1310 : vec2<f32> = ((vec2<f32>(x_1303.x, x_1303.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1311 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1311.x, x_1310.x, x_1311.z, x_1310.y);
        let x_1313 : vec2<f32> = u_xlat51;
        let x_1317 : vec2<f32> = ((vec2<f32>(x_1313.x, x_1313.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1318 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1317.x, x_1318.y, x_1317.y, x_1318.w);
        let x_1321 : f32 = u_xlat9.x;
        u_xlat10.y = x_1321;
        let x_1324 : f32 = u_xlat11.y;
        u_xlat10.w = x_1324;
        let x_1326 : vec4<f32> = u_xlat10;
        let x_1327 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1326 + x_1327);
        let x_1329 : vec2<f32> = u_xlat51;
        let x_1332 : vec2<f32> = ((vec2<f32>(x_1329.y, x_1329.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1333 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1333.x, x_1332.x, x_1333.z, x_1332.y);
        let x_1335 : vec2<f32> = u_xlat51;
        let x_1338 : vec2<f32> = ((vec2<f32>(x_1335.y, x_1335.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1339 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1338.x, x_1339.y, x_1338.y, x_1339.w);
        let x_1342 : f32 = u_xlat9.y;
        u_xlat11.y = x_1342;
        let x_1344 : vec4<f32> = u_xlat11;
        let x_1345 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1344 + x_1345);
        let x_1347 : vec4<f32> = u_xlat10;
        let x_1348 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1347 / x_1348);
        let x_1350 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1350 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1356 : vec4<f32> = u_xlat11;
        let x_1357 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1356 / x_1357);
        let x_1359 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1359 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1361 : vec4<f32> = u_xlat10;
        let x_1364 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1361.w, x_1361.x, x_1361.y, x_1361.z) * vec4<f32>(x_1364.x, x_1364.x, x_1364.x, x_1364.x));
        let x_1367 : vec4<f32> = u_xlat11;
        let x_1370 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1367.x, x_1367.w, x_1367.y, x_1367.z) * vec4<f32>(x_1370.y, x_1370.y, x_1370.y, x_1370.y));
        let x_1373 : vec4<f32> = u_xlat10;
        let x_1374 : vec3<f32> = vec3<f32>(x_1373.y, x_1373.z, x_1373.w);
        let x_1375 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1374.x, x_1375.y, x_1374.y, x_1374.z);
        let x_1378 : f32 = u_xlat11.x;
        u_xlat13.y = x_1378;
        let x_1380 : vec4<f32> = u_xlat7;
        let x_1383 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1386 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1380.x, x_1380.y, x_1380.x, x_1380.y) * vec4<f32>(x_1383.x, x_1383.y, x_1383.x, x_1383.y)) + vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1386.y));
        let x_1389 : vec4<f32> = u_xlat7;
        let x_1392 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1395 : vec4<f32> = u_xlat13;
        u_xlat51 = ((vec2<f32>(x_1389.x, x_1389.y) * vec2<f32>(x_1392.x, x_1392.y)) + vec2<f32>(x_1395.w, x_1395.y));
        let x_1399 : f32 = u_xlat13.y;
        u_xlat10.y = x_1399;
        let x_1402 : f32 = u_xlat11.z;
        u_xlat13.y = x_1402;
        let x_1404 : vec4<f32> = u_xlat7;
        let x_1407 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1410 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1404.x, x_1404.y, x_1404.x, x_1404.y) * vec4<f32>(x_1407.x, x_1407.y, x_1407.x, x_1407.y)) + vec4<f32>(x_1410.x, x_1410.y, x_1410.z, x_1410.y));
        let x_1413 : vec4<f32> = u_xlat7;
        let x_1416 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1419 : vec4<f32> = u_xlat13;
        let x_1421 : vec2<f32> = ((vec2<f32>(x_1413.x, x_1413.y) * vec2<f32>(x_1416.x, x_1416.y)) + vec2<f32>(x_1419.w, x_1419.y));
        let x_1422 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1421.x, x_1421.y, x_1422.z, x_1422.w);
        let x_1425 : f32 = u_xlat13.y;
        u_xlat10.z = x_1425;
        let x_1428 : vec4<f32> = u_xlat7;
        let x_1431 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1434 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1428.x, x_1428.y, x_1428.x, x_1428.y) * vec4<f32>(x_1431.x, x_1431.y, x_1431.x, x_1431.y)) + vec4<f32>(x_1434.x, x_1434.y, x_1434.x, x_1434.z));
        let x_1438 : f32 = u_xlat11.w;
        u_xlat13.y = x_1438;
        let x_1441 : vec4<f32> = u_xlat7;
        let x_1444 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1447 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1441.x, x_1441.y, x_1441.x, x_1441.y) * vec4<f32>(x_1444.x, x_1444.y, x_1444.x, x_1444.y)) + vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1447.y));
        let x_1451 : vec4<f32> = u_xlat7;
        let x_1454 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1457 : vec4<f32> = u_xlat13;
        u_xlat32 = ((vec2<f32>(x_1451.x, x_1451.y) * vec2<f32>(x_1454.x, x_1454.y)) + vec2<f32>(x_1457.w, x_1457.y));
        let x_1461 : f32 = u_xlat13.y;
        u_xlat10.w = x_1461;
        let x_1464 : vec4<f32> = u_xlat7;
        let x_1467 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1470 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1464.x, x_1464.y) * vec2<f32>(x_1467.x, x_1467.y)) + vec2<f32>(x_1470.x, x_1470.w));
        let x_1473 : vec4<f32> = u_xlat13;
        let x_1474 : vec3<f32> = vec3<f32>(x_1473.x, x_1473.z, x_1473.w);
        let x_1475 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1474.x, x_1475.y, x_1474.y, x_1474.z);
        let x_1477 : vec4<f32> = u_xlat7;
        let x_1480 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1483 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1477.x, x_1477.y, x_1477.x, x_1477.y) * vec4<f32>(x_1480.x, x_1480.y, x_1480.x, x_1480.y)) + vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1483.y));
        let x_1487 : vec4<f32> = u_xlat7;
        let x_1490 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1493 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1487.x, x_1487.y) * vec2<f32>(x_1490.x, x_1490.y)) + vec2<f32>(x_1493.w, x_1493.y));
        let x_1497 : f32 = u_xlat10.x;
        u_xlat11.x = x_1497;
        let x_1499 : vec4<f32> = u_xlat7;
        let x_1502 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1505 : vec4<f32> = u_xlat11;
        let x_1507 : vec2<f32> = ((vec2<f32>(x_1499.x, x_1499.y) * vec2<f32>(x_1502.x, x_1502.y)) + vec2<f32>(x_1505.x, x_1505.y));
        let x_1508 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1507.x, x_1507.y, x_1508.z, x_1508.w);
        let x_1511 : vec4<f32> = u_xlat9;
        let x_1513 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1511.x, x_1511.x, x_1511.x, x_1511.x) * x_1513);
        let x_1516 : vec4<f32> = u_xlat9;
        let x_1518 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1516.y, x_1516.y, x_1516.y, x_1516.y) * x_1518);
        let x_1521 : vec4<f32> = u_xlat9;
        let x_1523 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1521.z, x_1521.z, x_1521.z, x_1521.z) * x_1523);
        let x_1525 : vec4<f32> = u_xlat9;
        let x_1527 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1525.w, x_1525.w, x_1525.w, x_1525.w) * x_1527);
        let x_1530 : vec4<f32> = u_xlat14;
        let x_1531 : vec2<f32> = vec2<f32>(x_1530.x, x_1530.y);
        let x_1533 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec13;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1540.xy, x_1540.z);
        u_xlat72 = x_1542;
        let x_1544 : vec4<f32> = u_xlat14;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.z, x_1544.w);
        let x_1547 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1555 : vec3<f32> = txVec14;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1555.xy, x_1555.z);
        u_xlat74 = x_1557;
        let x_1558 : f32 = u_xlat74;
        let x_1560 : f32 = u_xlat19.y;
        u_xlat74 = (x_1558 * x_1560);
        let x_1563 : f32 = u_xlat19.x;
        let x_1564 : f32 = u_xlat72;
        let x_1566 : f32 = u_xlat74;
        u_xlat72 = ((x_1563 * x_1564) + x_1566);
        let x_1569 : vec2<f32> = u_xlat51;
        let x_1571 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec15;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1578.xy, x_1578.z);
        u_xlat51.x = x_1580;
        let x_1583 : f32 = u_xlat19.z;
        let x_1585 : f32 = u_xlat51.x;
        let x_1587 : f32 = u_xlat72;
        u_xlat72 = ((x_1583 * x_1585) + x_1587);
        let x_1590 : vec4<f32> = u_xlat17;
        let x_1591 : vec2<f32> = vec2<f32>(x_1590.x, x_1590.y);
        let x_1593 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
        let x_1600 : vec3<f32> = txVec16;
        let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1600.xy, x_1600.z);
        u_xlat51.x = x_1602;
        let x_1605 : f32 = u_xlat19.w;
        let x_1607 : f32 = u_xlat51.x;
        let x_1609 : f32 = u_xlat72;
        u_xlat72 = ((x_1605 * x_1607) + x_1609);
        let x_1612 : vec4<f32> = u_xlat15;
        let x_1613 : vec2<f32> = vec2<f32>(x_1612.x, x_1612.y);
        let x_1615 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1613.x, x_1613.y, x_1615);
        let x_1622 : vec3<f32> = txVec17;
        let x_1624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1622.xy, x_1622.z);
        u_xlat51.x = x_1624;
        let x_1627 : f32 = u_xlat20.x;
        let x_1629 : f32 = u_xlat51.x;
        let x_1631 : f32 = u_xlat72;
        u_xlat72 = ((x_1627 * x_1629) + x_1631);
        let x_1634 : vec4<f32> = u_xlat15;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.z, x_1634.w);
        let x_1637 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec18;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1644.xy, x_1644.z);
        u_xlat51.x = x_1646;
        let x_1649 : f32 = u_xlat20.y;
        let x_1651 : f32 = u_xlat51.x;
        let x_1653 : f32 = u_xlat72;
        u_xlat72 = ((x_1649 * x_1651) + x_1653);
        let x_1656 : vec4<f32> = u_xlat16;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.x, x_1656.y);
        let x_1659 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec19;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1666.xy, x_1666.z);
        u_xlat51.x = x_1668;
        let x_1671 : f32 = u_xlat20.z;
        let x_1673 : f32 = u_xlat51.x;
        let x_1675 : f32 = u_xlat72;
        u_xlat72 = ((x_1671 * x_1673) + x_1675);
        let x_1678 : vec4<f32> = u_xlat17;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.z, x_1678.w);
        let x_1681 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec20;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1688.xy, x_1688.z);
        u_xlat51.x = x_1690;
        let x_1693 : f32 = u_xlat20.w;
        let x_1695 : f32 = u_xlat51.x;
        let x_1697 : f32 = u_xlat72;
        u_xlat72 = ((x_1693 * x_1695) + x_1697);
        let x_1700 : vec4<f32> = u_xlat18;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.x, x_1700.y);
        let x_1703 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec21;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1710.xy, x_1710.z);
        u_xlat51.x = x_1712;
        let x_1715 : f32 = u_xlat21.x;
        let x_1717 : f32 = u_xlat51.x;
        let x_1719 : f32 = u_xlat72;
        u_xlat72 = ((x_1715 * x_1717) + x_1719);
        let x_1722 : vec4<f32> = u_xlat18;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.z, x_1722.w);
        let x_1725 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec22;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1732.xy, x_1732.z);
        u_xlat51.x = x_1734;
        let x_1737 : f32 = u_xlat21.y;
        let x_1739 : f32 = u_xlat51.x;
        let x_1741 : f32 = u_xlat72;
        u_xlat72 = ((x_1737 * x_1739) + x_1741);
        let x_1744 : vec2<f32> = u_xlat32;
        let x_1746 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1744.x, x_1744.y, x_1746);
        let x_1753 : vec3<f32> = txVec23;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1753.xy, x_1753.z);
        u_xlat51.x = x_1755;
        let x_1758 : f32 = u_xlat21.z;
        let x_1760 : f32 = u_xlat51.x;
        let x_1762 : f32 = u_xlat72;
        u_xlat72 = ((x_1758 * x_1760) + x_1762);
        let x_1765 : vec2<f32> = u_xlat60;
        let x_1767 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1765.x, x_1765.y, x_1767);
        let x_1774 : vec3<f32> = txVec24;
        let x_1776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1774.xy, x_1774.z);
        u_xlat51.x = x_1776;
        let x_1779 : f32 = u_xlat21.w;
        let x_1781 : f32 = u_xlat51.x;
        let x_1783 : f32 = u_xlat72;
        u_xlat72 = ((x_1779 * x_1781) + x_1783);
        let x_1786 : vec4<f32> = u_xlat13;
        let x_1787 : vec2<f32> = vec2<f32>(x_1786.x, x_1786.y);
        let x_1789 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1787.x, x_1787.y, x_1789);
        let x_1796 : vec3<f32> = txVec25;
        let x_1798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1796.xy, x_1796.z);
        u_xlat51.x = x_1798;
        let x_1801 : f32 = u_xlat9.x;
        let x_1803 : f32 = u_xlat51.x;
        let x_1805 : f32 = u_xlat72;
        u_xlat72 = ((x_1801 * x_1803) + x_1805);
        let x_1808 : vec4<f32> = u_xlat13;
        let x_1809 : vec2<f32> = vec2<f32>(x_1808.z, x_1808.w);
        let x_1811 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1809.x, x_1809.y, x_1811);
        let x_1818 : vec3<f32> = txVec26;
        let x_1820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1818.xy, x_1818.z);
        u_xlat51.x = x_1820;
        let x_1823 : f32 = u_xlat9.y;
        let x_1825 : f32 = u_xlat51.x;
        let x_1827 : f32 = u_xlat72;
        u_xlat72 = ((x_1823 * x_1825) + x_1827);
        let x_1830 : vec2<f32> = u_xlat55;
        let x_1832 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1830.x, x_1830.y, x_1832);
        let x_1839 : vec3<f32> = txVec27;
        let x_1841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1839.xy, x_1839.z);
        u_xlat51.x = x_1841;
        let x_1844 : f32 = u_xlat9.z;
        let x_1846 : f32 = u_xlat51.x;
        let x_1848 : f32 = u_xlat72;
        u_xlat72 = ((x_1844 * x_1846) + x_1848);
        let x_1851 : vec4<f32> = u_xlat7;
        let x_1852 : vec2<f32> = vec2<f32>(x_1851.x, x_1851.y);
        let x_1854 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1852.x, x_1852.y, x_1854);
        let x_1861 : vec3<f32> = txVec28;
        let x_1863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1861.xy, x_1861.z);
        u_xlat7.x = x_1863;
        let x_1866 : f32 = u_xlat9.w;
        let x_1868 : f32 = u_xlat7.x;
        let x_1870 : f32 = u_xlat72;
        u_xlat70 = ((x_1866 * x_1868) + x_1870);
      }
    }
  } else {
    let x_1874 : vec4<f32> = u_xlat4;
    let x_1875 : vec2<f32> = vec2<f32>(x_1874.x, x_1874.y);
    let x_1877 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1875.x, x_1875.y, x_1877);
    let x_1884 : vec3<f32> = txVec29;
    let x_1886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1884.xy, x_1884.z);
    u_xlat70 = x_1886;
  }
  let x_1888 : f32 = x_319.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1888) + 1.0f);
  let x_1892 : f32 = u_xlat70;
  let x_1894 : f32 = x_319.x_MainLightShadowParams.x;
  let x_1897 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1892 * x_1894) + x_1897);
  let x_1904 : f32 = u_xlat4.z;
  u_xlatb26.x = (0.0f >= x_1904);
  let x_1909 : f32 = u_xlat4.z;
  u_xlatb48 = (x_1909 >= 1.0f);
  let x_1911 : bool = u_xlatb48;
  let x_1913 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_1911 | x_1913);
  let x_1917 : bool = u_xlatb26.x;
  if (x_1917) {
    x_1918 = 1.0f;
  } else {
    let x_1923 : f32 = u_xlat4.x;
    x_1918 = x_1923;
  }
  let x_1924 : f32 = x_1918;
  u_xlat4.x = x_1924;
  let x_1927 : vec3<f32> = vs_INTERP0;
  let x_1929 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1927 + -(x_1929));
  let x_1932 : vec3<f32> = u_xlat26;
  let x_1933 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1932, x_1933);
  let x_1937 : f32 = u_xlat26.x;
  let x_1939 : f32 = x_319.x_MainLightShadowParams.z;
  let x_1942 : f32 = x_319.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1937 * x_1939) + x_1942);
  let x_1946 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1946, 0.0f, 1.0f);
  let x_1951 : f32 = u_xlat4.x;
  u_xlat48 = (-(x_1951) + 1.0f);
  let x_1955 : f32 = u_xlat26.x;
  let x_1956 : f32 = u_xlat48;
  let x_1959 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1955 * x_1956) + x_1959);
  let x_1968 : f32 = x_1966.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_1968 == -1.0f));
  let x_1972 : bool = u_xlatb26.x;
  if (x_1972) {
    let x_1975 : vec3<f32> = vs_INTERP0;
    let x_1978 : vec4<f32> = x_1966.x_MainLightWorldToLight[1i];
    let x_1980 : vec2<f32> = (vec2<f32>(x_1975.y, x_1975.y) * vec2<f32>(x_1978.x, x_1978.y));
    let x_1981 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1980.x, x_1980.y, x_1981.z);
    let x_1984 : vec4<f32> = x_1966.x_MainLightWorldToLight[0i];
    let x_1986 : vec3<f32> = vs_INTERP0;
    let x_1989 : vec3<f32> = u_xlat26;
    let x_1991 : vec2<f32> = ((vec2<f32>(x_1984.x, x_1984.y) * vec2<f32>(x_1986.x, x_1986.x)) + vec2<f32>(x_1989.x, x_1989.y));
    let x_1992 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1991.x, x_1991.y, x_1992.z);
    let x_1995 : vec4<f32> = x_1966.x_MainLightWorldToLight[2i];
    let x_1997 : vec3<f32> = vs_INTERP0;
    let x_2000 : vec3<f32> = u_xlat26;
    let x_2002 : vec2<f32> = ((vec2<f32>(x_1995.x, x_1995.y) * vec2<f32>(x_1997.z, x_1997.z)) + vec2<f32>(x_2000.x, x_2000.y));
    let x_2003 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2002.x, x_2002.y, x_2003.z);
    let x_2005 : vec3<f32> = u_xlat26;
    let x_2008 : vec4<f32> = x_1966.x_MainLightWorldToLight[3i];
    let x_2010 : vec2<f32> = (vec2<f32>(x_2005.x, x_2005.y) + vec2<f32>(x_2008.x, x_2008.y));
    let x_2011 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2010.x, x_2010.y, x_2011.z);
    let x_2013 : vec3<f32> = u_xlat26;
    let x_2016 : vec2<f32> = ((vec2<f32>(x_2013.x, x_2013.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2017 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_2016.x, x_2016.y, x_2017.z);
    let x_2024 : vec3<f32> = u_xlat26;
    let x_2027 : f32 = x_45.x_GlobalMipBias.x;
    let x_2028 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2024.x, x_2024.y), x_2027);
    u_xlat7 = x_2028;
    let x_2030 : f32 = x_1966.x_MainLightCookieTextureFormat;
    let x_2032 : f32 = x_1966.x_MainLightCookieTextureFormat;
    let x_2034 : f32 = x_1966.x_MainLightCookieTextureFormat;
    let x_2036 : f32 = x_1966.x_MainLightCookieTextureFormat;
    let x_2037 : vec4<f32> = vec4<f32>(x_2030, x_2032, x_2034, x_2036);
    let x_2044 : vec4<bool> = (vec4<f32>(x_2037.x, x_2037.y, x_2037.z, x_2037.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_2044.x, x_2044.y);
    let x_2047 : bool = u_xlatb26.y;
    if (x_2047) {
      let x_2052 : f32 = u_xlat7.w;
      x_2048 = x_2052;
    } else {
      let x_2055 : f32 = u_xlat7.x;
      x_2048 = x_2055;
    }
    let x_2056 : f32 = x_2048;
    u_xlat48 = x_2056;
    let x_2058 : bool = u_xlatb26.x;
    if (x_2058) {
      let x_2062 : vec4<f32> = u_xlat7;
      x_2059 = vec3<f32>(x_2062.x, x_2062.y, x_2062.z);
    } else {
      let x_2065 : f32 = u_xlat48;
      x_2059 = vec3<f32>(x_2065, x_2065, x_2065);
    }
    let x_2067 : vec3<f32> = x_2059;
    u_xlat26 = x_2067;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_2072 : vec3<f32> = u_xlat26;
  let x_2074 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat26 = (x_2072 * vec3<f32>(x_2074.x, x_2074.y, x_2074.z));
  let x_2077 : f32 = u_xlat71;
  let x_2079 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2077, x_2077, x_2077) * x_2079);
  let x_2081 : vec3<f32> = u_xlat5;
  let x_2083 : vec4<f32> = u_xlat1;
  u_xlat72 = dot(-(x_2081), vec3<f32>(x_2083.x, x_2083.y, x_2083.w));
  let x_2086 : f32 = u_xlat72;
  let x_2087 : f32 = u_xlat72;
  u_xlat72 = (x_2086 + x_2087);
  let x_2089 : vec4<f32> = u_xlat1;
  let x_2091 : f32 = u_xlat72;
  let x_2095 : vec3<f32> = u_xlat5;
  let x_2097 : vec3<f32> = ((vec3<f32>(x_2089.x, x_2089.y, x_2089.w) * -(vec3<f32>(x_2091, x_2091, x_2091))) + -(x_2095));
  let x_2098 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
  let x_2100 : vec4<f32> = u_xlat1;
  let x_2102 : vec3<f32> = u_xlat5;
  u_xlat72 = dot(vec3<f32>(x_2100.x, x_2100.y, x_2100.w), x_2102);
  let x_2104 : f32 = u_xlat72;
  u_xlat72 = clamp(x_2104, 0.0f, 1.0f);
  let x_2106 : f32 = u_xlat72;
  u_xlat72 = (-(x_2106) + 1.0f);
  let x_2109 : f32 = u_xlat72;
  let x_2110 : f32 = u_xlat72;
  u_xlat72 = (x_2109 * x_2110);
  let x_2112 : f32 = u_xlat72;
  let x_2113 : f32 = u_xlat72;
  u_xlat72 = (x_2112 * x_2113);
  let x_2116 : f32 = u_xlat66;
  u_xlat73 = ((-(x_2116) * 0.699999988f) + 1.700000048f);
  let x_2122 : f32 = u_xlat66;
  let x_2123 : f32 = u_xlat73;
  u_xlat66 = (x_2122 * x_2123);
  let x_2125 : f32 = u_xlat66;
  u_xlat66 = (x_2125 * 6.0f);
  let x_2136 : vec4<f32> = u_xlat7;
  let x_2138 : f32 = u_xlat66;
  let x_2139 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2136.x, x_2136.y, x_2136.z), x_2138);
  u_xlat7 = x_2139;
  let x_2141 : f32 = u_xlat7.w;
  u_xlat66 = (x_2141 + -1.0f);
  let x_2144 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_2145 : f32 = u_xlat66;
  u_xlat66 = ((x_2144 * x_2145) + 1.0f);
  let x_2148 : f32 = u_xlat66;
  u_xlat66 = max(x_2148, 0.0f);
  let x_2150 : f32 = u_xlat66;
  u_xlat66 = log2(x_2150);
  let x_2152 : f32 = u_xlat66;
  let x_2154 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat66 = (x_2152 * x_2154);
  let x_2156 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2156);
  let x_2158 : f32 = u_xlat66;
  let x_2160 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat66 = (x_2158 * x_2160);
  let x_2162 : vec4<f32> = u_xlat7;
  let x_2164 : f32 = u_xlat66;
  let x_2166 : vec3<f32> = (vec3<f32>(x_2162.x, x_2162.y, x_2162.z) * vec3<f32>(x_2164, x_2164, x_2164));
  let x_2167 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2166.x, x_2166.y, x_2166.z, x_2167.w);
  let x_2169 : vec3<f32> = u_xlat3;
  let x_2171 : vec3<f32> = u_xlat3;
  let x_2175 : vec2<f32> = ((vec2<f32>(x_2169.x, x_2169.x) * vec2<f32>(x_2171.x, x_2171.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2176 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2175.x, x_2175.y, x_2176.z, x_2176.w);
  let x_2179 : f32 = u_xlat9.y;
  u_xlat66 = (1.0f / x_2179);
  let x_2181 : vec3<f32> = u_xlat0;
  let x_2183 : f32 = u_xlat68;
  u_xlat31 = (-(x_2181) + vec3<f32>(x_2183, x_2183, x_2183));
  let x_2186 : f32 = u_xlat72;
  let x_2188 : vec3<f32> = u_xlat31;
  let x_2190 : vec3<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_2186, x_2186, x_2186) * x_2188) + x_2190);
  let x_2192 : f32 = u_xlat66;
  let x_2194 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2192, x_2192, x_2192) * x_2194);
  let x_2196 : vec4<f32> = u_xlat7;
  let x_2198 : vec3<f32> = u_xlat31;
  let x_2199 : vec3<f32> = (vec3<f32>(x_2196.x, x_2196.y, x_2196.z) * x_2198);
  let x_2200 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2200.w);
  let x_2202 : vec4<f32> = u_xlat6;
  let x_2204 : vec3<f32> = u_xlat8;
  let x_2206 : vec4<f32> = u_xlat7;
  let x_2208 : vec3<f32> = ((vec3<f32>(x_2202.x, x_2202.y, x_2202.z) * x_2204) + vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
  let x_2209 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2212 : f32 = u_xlat4.x;
  let x_2214 : f32 = x_122.unity_LightData.z;
  u_xlat66 = (x_2212 * x_2214);
  let x_2216 : vec4<f32> = u_xlat1;
  let x_2219 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat68 = dot(vec3<f32>(x_2216.x, x_2216.y, x_2216.w), vec3<f32>(x_2219.x, x_2219.y, x_2219.z));
  let x_2222 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2222, 0.0f, 1.0f);
  let x_2224 : f32 = u_xlat66;
  let x_2225 : f32 = u_xlat68;
  u_xlat66 = (x_2224 * x_2225);
  let x_2227 : f32 = u_xlat66;
  let x_2229 : vec3<f32> = u_xlat26;
  let x_2230 : vec3<f32> = (vec3<f32>(x_2227, x_2227, x_2227) * x_2229);
  let x_2231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2230.x, x_2230.y, x_2230.z, x_2231.w);
  let x_2233 : vec3<f32> = u_xlat5;
  let x_2235 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2237 : vec3<f32> = (x_2233 + vec3<f32>(x_2235.x, x_2235.y, x_2235.z));
  let x_2238 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2237.x, x_2237.y, x_2237.z, x_2238.w);
  let x_2240 : vec4<f32> = u_xlat7;
  let x_2242 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2240.x, x_2240.y, x_2240.z), vec3<f32>(x_2242.x, x_2242.y, x_2242.z));
  let x_2245 : f32 = u_xlat66;
  u_xlat66 = max(x_2245, 1.17549435e-37f);
  let x_2248 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_2248);
  let x_2250 : f32 = u_xlat66;
  let x_2252 : vec4<f32> = u_xlat7;
  let x_2254 : vec3<f32> = (vec3<f32>(x_2250, x_2250, x_2250) * vec3<f32>(x_2252.x, x_2252.y, x_2252.z));
  let x_2255 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2254.x, x_2254.y, x_2254.z, x_2255.w);
  let x_2257 : vec4<f32> = u_xlat1;
  let x_2259 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2257.x, x_2257.y, x_2257.w), vec3<f32>(x_2259.x, x_2259.y, x_2259.z));
  let x_2262 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2262, 0.0f, 1.0f);
  let x_2265 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2267 : vec4<f32> = u_xlat7;
  u_xlat68 = dot(vec3<f32>(x_2265.x, x_2265.y, x_2265.z), vec3<f32>(x_2267.x, x_2267.y, x_2267.z));
  let x_2270 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2270, 0.0f, 1.0f);
  let x_2272 : f32 = u_xlat66;
  let x_2273 : f32 = u_xlat66;
  u_xlat66 = (x_2272 * x_2273);
  let x_2275 : f32 = u_xlat66;
  let x_2277 : f32 = u_xlat9.x;
  u_xlat66 = ((x_2275 * x_2277) + 1.000010014f);
  let x_2281 : f32 = u_xlat68;
  let x_2282 : f32 = u_xlat68;
  u_xlat68 = (x_2281 * x_2282);
  let x_2284 : f32 = u_xlat66;
  let x_2285 : f32 = u_xlat66;
  u_xlat66 = (x_2284 * x_2285);
  let x_2287 : f32 = u_xlat68;
  u_xlat68 = max(x_2287, 0.100000001f);
  let x_2290 : f32 = u_xlat66;
  let x_2291 : f32 = u_xlat68;
  u_xlat66 = (x_2290 * x_2291);
  let x_2293 : f32 = u_xlat69;
  let x_2294 : f32 = u_xlat66;
  u_xlat66 = (x_2293 * x_2294);
  let x_2296 : f32 = u_xlat25;
  let x_2297 : f32 = u_xlat66;
  u_xlat66 = (x_2296 / x_2297);
  let x_2299 : vec3<f32> = u_xlat0;
  let x_2300 : f32 = u_xlat66;
  let x_2303 : vec3<f32> = u_xlat8;
  let x_2304 : vec3<f32> = ((x_2299 * vec3<f32>(x_2300, x_2300, x_2300)) + x_2303);
  let x_2305 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
  let x_2307 : vec4<f32> = u_xlat4;
  let x_2309 : vec4<f32> = u_xlat7;
  let x_2311 : vec3<f32> = (vec3<f32>(x_2307.x, x_2307.y, x_2307.z) * vec3<f32>(x_2309.x, x_2309.y, x_2309.z));
  let x_2312 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2312.w);
  let x_2315 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2317 : f32 = x_122.unity_LightData.y;
  u_xlat66 = min(x_2315, x_2317);
  let x_2319 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_2319));
  let x_2324 : f32 = x_1966.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2326 : f32 = x_1966.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2328 : f32 = x_1966.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2330 : f32 = x_1966.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2331 : vec4<f32> = vec4<f32>(x_2324, x_2326, x_2328, x_2330);
  let x_2337 : vec4<bool> = (vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2331.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2337.x, x_2337.y);
  u_xlat31.x = 0.0f;
  u_xlat31.y = 0.0f;
  u_xlat31.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2348 : u32 = u_xlatu_loop_1;
    let x_2349 : u32 = u_xlatu66;
    if ((x_2348 < x_2349)) {
    } else {
      break;
    }
    let x_2352 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_2352 >> 2u);
    let x_2355 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2355 & 3u));
    let x_2358 : u32 = u_xlatu3;
    let x_2361 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_2358)];
    let x_2371 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2376 : vec4<u32> = indexable[x_2371];
    u_xlat3.x = dot(x_2361, bitcast<vec4<f32>>(x_2376));
    let x_2381 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_2381));
    let x_2384 : vec3<f32> = vs_INTERP0;
    let x_2396 : u32 = u_xlatu3;
    let x_2399 : vec4<f32> = x_2395.x_AdditionalLightsPosition[bitcast<i32>(x_2396)];
    let x_2402 : u32 = u_xlatu3;
    let x_2405 : vec4<f32> = x_2395.x_AdditionalLightsPosition[bitcast<i32>(x_2402)];
    let x_2407 : vec3<f32> = ((-(x_2384) * vec3<f32>(x_2399.w, x_2399.w, x_2399.w)) + vec3<f32>(x_2405.x, x_2405.y, x_2405.z));
    let x_2408 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2407.x, x_2407.y, x_2407.z, x_2408.w);
    let x_2410 : vec4<f32> = u_xlat10;
    let x_2412 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2410.x, x_2410.y, x_2410.z), vec3<f32>(x_2412.x, x_2412.y, x_2412.z));
    let x_2415 : f32 = u_xlat70;
    u_xlat70 = max(x_2415, 6.10351562e-05f);
    let x_2418 : f32 = u_xlat70;
    u_xlat72 = inverseSqrt(x_2418);
    let x_2420 : f32 = u_xlat72;
    let x_2422 : vec4<f32> = u_xlat10;
    let x_2424 : vec3<f32> = (vec3<f32>(x_2420, x_2420, x_2420) * vec3<f32>(x_2422.x, x_2422.y, x_2422.z));
    let x_2425 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2424.x, x_2424.y, x_2424.z, x_2425.w);
    let x_2427 : f32 = u_xlat70;
    u_xlat51.x = (1.0f / x_2427);
    let x_2430 : f32 = u_xlat70;
    let x_2431 : u32 = u_xlatu3;
    let x_2434 : f32 = x_2395.x_AdditionalLightsAttenuation[bitcast<i32>(x_2431)].x;
    u_xlat70 = (x_2430 * x_2434);
    let x_2436 : f32 = u_xlat70;
    let x_2438 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2436) * x_2438) + 1.0f);
    let x_2441 : f32 = u_xlat70;
    u_xlat70 = max(x_2441, 0.0f);
    let x_2443 : f32 = u_xlat70;
    let x_2444 : f32 = u_xlat70;
    u_xlat70 = (x_2443 * x_2444);
    let x_2446 : f32 = u_xlat70;
    let x_2448 : f32 = u_xlat51.x;
    u_xlat70 = (x_2446 * x_2448);
    let x_2450 : u32 = u_xlatu3;
    let x_2453 : vec4<f32> = x_2395.x_AdditionalLightsSpotDir[bitcast<i32>(x_2450)];
    let x_2455 : vec4<f32> = u_xlat11;
    u_xlat51.x = dot(vec3<f32>(x_2453.x, x_2453.y, x_2453.z), vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
    let x_2460 : f32 = u_xlat51.x;
    let x_2461 : u32 = u_xlatu3;
    let x_2464 : f32 = x_2395.x_AdditionalLightsAttenuation[bitcast<i32>(x_2461)].z;
    let x_2466 : u32 = u_xlatu3;
    let x_2469 : f32 = x_2395.x_AdditionalLightsAttenuation[bitcast<i32>(x_2466)].w;
    u_xlat51.x = ((x_2460 * x_2464) + x_2469);
    let x_2473 : f32 = u_xlat51.x;
    u_xlat51.x = clamp(x_2473, 0.0f, 1.0f);
    let x_2477 : f32 = u_xlat51.x;
    let x_2479 : f32 = u_xlat51.x;
    u_xlat51.x = (x_2477 * x_2479);
    let x_2482 : f32 = u_xlat70;
    let x_2484 : f32 = u_xlat51.x;
    u_xlat70 = (x_2482 * x_2484);
    let x_2487 : u32 = u_xlatu3;
    u_xlatu51 = (x_2487 >> 5u);
    let x_2490 : u32 = u_xlatu3;
    u_xlati73 = (1i << bitcast<u32>((bitcast<i32>(x_2490) & 31i)));
    let x_2496 : i32 = u_xlati73;
    let x_2498 : u32 = u_xlatu51;
    let x_2501 : f32 = x_1966.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2498)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_2496) & bitcast<u32>(x_2501)));
    let x_2505 : i32 = u_xlati51;
    if ((x_2505 != 0i)) {
      let x_2515 : u32 = u_xlatu3;
      let x_2518 : f32 = x_2514.x_AdditionalLightsLightTypes[bitcast<i32>(x_2515)].el;
      u_xlati51 = i32(x_2518);
      let x_2520 : i32 = u_xlati51;
      u_xlati73 = select(1i, 0i, (x_2520 != 0i));
      let x_2524 : u32 = u_xlatu3;
      u_xlati74 = (bitcast<i32>(x_2524) << bitcast<u32>(2i));
      let x_2527 : i32 = u_xlati73;
      if ((x_2527 != 0i)) {
        let x_2531 : vec3<f32> = vs_INTERP0;
        let x_2533 : i32 = u_xlati74;
        let x_2536 : i32 = u_xlati74;
        let x_2540 : vec4<f32> = x_2514.x_AdditionalLightsWorldToLights[((x_2533 + 1i) / 4i)][((x_2536 + 1i) % 4i)];
        let x_2542 : vec3<f32> = (vec3<f32>(x_2531.y, x_2531.y, x_2531.y) * vec3<f32>(x_2540.x, x_2540.y, x_2540.w));
        let x_2543 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2542.x, x_2542.y, x_2542.z, x_2543.w);
        let x_2545 : i32 = u_xlati74;
        let x_2547 : i32 = u_xlati74;
        let x_2550 : vec4<f32> = x_2514.x_AdditionalLightsWorldToLights[(x_2545 / 4i)][(x_2547 % 4i)];
        let x_2552 : vec3<f32> = vs_INTERP0;
        let x_2555 : vec4<f32> = u_xlat12;
        let x_2557 : vec3<f32> = ((vec3<f32>(x_2550.x, x_2550.y, x_2550.w) * vec3<f32>(x_2552.x, x_2552.x, x_2552.x)) + vec3<f32>(x_2555.x, x_2555.y, x_2555.z));
        let x_2558 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2557.x, x_2557.y, x_2557.z, x_2558.w);
        let x_2560 : i32 = u_xlati74;
        let x_2563 : i32 = u_xlati74;
        let x_2567 : vec4<f32> = x_2514.x_AdditionalLightsWorldToLights[((x_2560 + 2i) / 4i)][((x_2563 + 2i) % 4i)];
        let x_2569 : vec3<f32> = vs_INTERP0;
        let x_2572 : vec4<f32> = u_xlat12;
        let x_2574 : vec3<f32> = ((vec3<f32>(x_2567.x, x_2567.y, x_2567.w) * vec3<f32>(x_2569.z, x_2569.z, x_2569.z)) + vec3<f32>(x_2572.x, x_2572.y, x_2572.z));
        let x_2575 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
        let x_2577 : vec4<f32> = u_xlat12;
        let x_2579 : i32 = u_xlati74;
        let x_2582 : i32 = u_xlati74;
        let x_2586 : vec4<f32> = x_2514.x_AdditionalLightsWorldToLights[((x_2579 + 3i) / 4i)][((x_2582 + 3i) % 4i)];
        let x_2588 : vec3<f32> = (vec3<f32>(x_2577.x, x_2577.y, x_2577.z) + vec3<f32>(x_2586.x, x_2586.y, x_2586.w));
        let x_2589 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2588.x, x_2588.y, x_2588.z, x_2589.w);
        let x_2591 : vec4<f32> = u_xlat12;
        let x_2593 : vec4<f32> = u_xlat12;
        let x_2595 : vec2<f32> = (vec2<f32>(x_2591.x, x_2591.y) / vec2<f32>(x_2593.z, x_2593.z));
        let x_2596 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2595.x, x_2595.y, x_2596.z, x_2596.w);
        let x_2598 : vec4<f32> = u_xlat12;
        let x_2601 : vec2<f32> = ((vec2<f32>(x_2598.x, x_2598.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2602 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2601.x, x_2601.y, x_2602.z, x_2602.w);
        let x_2604 : vec4<f32> = u_xlat12;
        let x_2608 : vec2<f32> = clamp(vec2<f32>(x_2604.x, x_2604.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2609 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2608.x, x_2608.y, x_2609.z, x_2609.w);
        let x_2611 : u32 = u_xlatu3;
        let x_2614 : vec4<f32> = x_2514.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2611)];
        let x_2616 : vec4<f32> = u_xlat12;
        let x_2619 : u32 = u_xlatu3;
        let x_2622 : vec4<f32> = x_2514.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2619)];
        let x_2624 : vec2<f32> = ((vec2<f32>(x_2614.x, x_2614.y) * vec2<f32>(x_2616.x, x_2616.y)) + vec2<f32>(x_2622.z, x_2622.w));
        let x_2625 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
      } else {
        let x_2629 : i32 = u_xlati51;
        u_xlatb51 = (x_2629 == 1i);
        let x_2631 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_2631);
        let x_2633 : i32 = u_xlati51;
        if ((x_2633 != 0i)) {
          let x_2637 : vec3<f32> = vs_INTERP0;
          let x_2639 : i32 = u_xlati74;
          let x_2642 : i32 = u_xlati74;
          let x_2646 : vec4<f32> = x_2514.x_AdditionalLightsWorldToLights[((x_2639 + 1i) / 4i)][((x_2642 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2637.y, x_2637.y) * vec2<f32>(x_2646.x, x_2646.y));
          let x_2649 : i32 = u_xlati74;
          let x_2651 : i32 = u_xlati74;
          let x_2654 : vec4<f32> = x_2514.x_AdditionalLightsWorldToLights[(x_2649 / 4i)][(x_2651 % 4i)];
          let x_2656 : vec3<f32> = vs_INTERP0;
          let x_2659 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2654.x, x_2654.y) * vec2<f32>(x_2656.x, x_2656.x)) + x_2659);
          let x_2661 : i32 = u_xlati74;
          let x_2664 : i32 = u_xlati74;
          let x_2668 : vec4<f32> = x_2514.x_AdditionalLightsWorldToLights[((x_2661 + 2i) / 4i)][((x_2664 + 2i) % 4i)];
          let x_2670 : vec3<f32> = vs_INTERP0;
          let x_2673 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2668.x, x_2668.y) * vec2<f32>(x_2670.z, x_2670.z)) + x_2673);
          let x_2675 : vec2<f32> = u_xlat51;
          let x_2676 : i32 = u_xlati74;
          let x_2679 : i32 = u_xlati74;
          let x_2683 : vec4<f32> = x_2514.x_AdditionalLightsWorldToLights[((x_2676 + 3i) / 4i)][((x_2679 + 3i) % 4i)];
          u_xlat51 = (x_2675 + vec2<f32>(x_2683.x, x_2683.y));
          let x_2686 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2686 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2689 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2689);
          let x_2691 : u32 = u_xlatu3;
          let x_2694 : vec4<f32> = x_2514.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2691)];
          let x_2696 : vec2<f32> = u_xlat51;
          let x_2698 : u32 = u_xlatu3;
          let x_2701 : vec4<f32> = x_2514.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2698)];
          let x_2703 : vec2<f32> = ((vec2<f32>(x_2694.x, x_2694.y) * x_2696) + vec2<f32>(x_2701.z, x_2701.w));
          let x_2704 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2703.x, x_2703.y, x_2704.z, x_2704.w);
        } else {
          let x_2707 : vec3<f32> = vs_INTERP0;
          let x_2709 : i32 = u_xlati74;
          let x_2712 : i32 = u_xlati74;
          let x_2716 : vec4<f32> = x_2514.x_AdditionalLightsWorldToLights[((x_2709 + 1i) / 4i)][((x_2712 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_2707.y, x_2707.y, x_2707.y, x_2707.y) * x_2716);
          let x_2718 : i32 = u_xlati74;
          let x_2720 : i32 = u_xlati74;
          let x_2723 : vec4<f32> = x_2514.x_AdditionalLightsWorldToLights[(x_2718 / 4i)][(x_2720 % 4i)];
          let x_2724 : vec3<f32> = vs_INTERP0;
          let x_2727 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2723 * vec4<f32>(x_2724.x, x_2724.x, x_2724.x, x_2724.x)) + x_2727);
          let x_2729 : i32 = u_xlati74;
          let x_2732 : i32 = u_xlati74;
          let x_2736 : vec4<f32> = x_2514.x_AdditionalLightsWorldToLights[((x_2729 + 2i) / 4i)][((x_2732 + 2i) % 4i)];
          let x_2737 : vec3<f32> = vs_INTERP0;
          let x_2740 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2736 * vec4<f32>(x_2737.z, x_2737.z, x_2737.z, x_2737.z)) + x_2740);
          let x_2742 : vec4<f32> = u_xlat13;
          let x_2743 : i32 = u_xlati74;
          let x_2746 : i32 = u_xlati74;
          let x_2750 : vec4<f32> = x_2514.x_AdditionalLightsWorldToLights[((x_2743 + 3i) / 4i)][((x_2746 + 3i) % 4i)];
          u_xlat13 = (x_2742 + x_2750);
          let x_2752 : vec4<f32> = u_xlat13;
          let x_2754 : vec4<f32> = u_xlat13;
          let x_2756 : vec3<f32> = (vec3<f32>(x_2752.x, x_2752.y, x_2752.z) / vec3<f32>(x_2754.w, x_2754.w, x_2754.w));
          let x_2757 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2756.x, x_2756.y, x_2756.z, x_2757.w);
          let x_2759 : vec4<f32> = u_xlat13;
          let x_2761 : vec4<f32> = u_xlat13;
          u_xlat51.x = dot(vec3<f32>(x_2759.x, x_2759.y, x_2759.z), vec3<f32>(x_2761.x, x_2761.y, x_2761.z));
          let x_2766 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_2766);
          let x_2769 : vec2<f32> = u_xlat51;
          let x_2771 : vec4<f32> = u_xlat13;
          let x_2773 : vec3<f32> = (vec3<f32>(x_2769.x, x_2769.x, x_2769.x) * vec3<f32>(x_2771.x, x_2771.y, x_2771.z));
          let x_2774 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2774.w);
          let x_2776 : vec4<f32> = u_xlat13;
          u_xlat51.x = dot(abs(vec3<f32>(x_2776.x, x_2776.y, x_2776.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2783 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_2783, 0.000001f);
          let x_2788 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_2788);
          let x_2791 : vec2<f32> = u_xlat51;
          let x_2793 : vec4<f32> = u_xlat13;
          let x_2795 : vec3<f32> = (vec3<f32>(x_2791.x, x_2791.x, x_2791.x) * vec3<f32>(x_2793.z, x_2793.x, x_2793.y));
          let x_2796 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2796.w);
          let x_2799 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_2799);
          let x_2803 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_2803, 0.0f, 1.0f);
          let x_2807 : vec4<f32> = u_xlat14;
          let x_2810 : vec4<bool> = (vec4<f32>(x_2807.y, x_2807.z, x_2807.y, x_2807.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2810.x, x_2810.y);
          let x_2814 : bool = u_xlatb56.x;
          if (x_2814) {
            let x_2819 : f32 = u_xlat14.x;
            x_2815 = x_2819;
          } else {
            let x_2822 : f32 = u_xlat14.x;
            x_2815 = -(x_2822);
          }
          let x_2824 : f32 = x_2815;
          u_xlat56.x = x_2824;
          let x_2827 : bool = u_xlatb56.y;
          if (x_2827) {
            let x_2832 : f32 = u_xlat14.x;
            x_2828 = x_2832;
          } else {
            let x_2835 : f32 = u_xlat14.x;
            x_2828 = -(x_2835);
          }
          let x_2837 : f32 = x_2828;
          u_xlat56.y = x_2837;
          let x_2839 : vec4<f32> = u_xlat13;
          let x_2841 : vec2<f32> = u_xlat51;
          let x_2844 : vec2<f32> = u_xlat56;
          u_xlat51 = ((vec2<f32>(x_2839.x, x_2839.y) * vec2<f32>(x_2841.x, x_2841.x)) + x_2844);
          let x_2846 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2846 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2849 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_2849, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2853 : u32 = u_xlatu3;
          let x_2856 : vec4<f32> = x_2514.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2853)];
          let x_2858 : vec2<f32> = u_xlat51;
          let x_2860 : u32 = u_xlatu3;
          let x_2863 : vec4<f32> = x_2514.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2860)];
          let x_2865 : vec2<f32> = ((vec2<f32>(x_2856.x, x_2856.y) * x_2858) + vec2<f32>(x_2863.z, x_2863.w));
          let x_2866 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2865.x, x_2865.y, x_2866.z, x_2866.w);
        }
      }
      let x_2873 : vec4<f32> = u_xlat12;
      let x_2876 : f32 = x_45.x_GlobalMipBias.x;
      let x_2877 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2873.x, x_2873.y), x_2876);
      u_xlat12 = x_2877;
      let x_2879 : bool = u_xlatb7.y;
      if (x_2879) {
        let x_2884 : f32 = u_xlat12.w;
        x_2880 = x_2884;
      } else {
        let x_2887 : f32 = u_xlat12.x;
        x_2880 = x_2887;
      }
      let x_2888 : f32 = x_2880;
      u_xlat51.x = x_2888;
      let x_2891 : bool = u_xlatb7.x;
      if (x_2891) {
        let x_2895 : vec4<f32> = u_xlat12;
        x_2892 = vec3<f32>(x_2895.x, x_2895.y, x_2895.z);
      } else {
        let x_2898 : vec2<f32> = u_xlat51;
        x_2892 = vec3<f32>(x_2898.x, x_2898.x, x_2898.x);
      }
      let x_2900 : vec3<f32> = x_2892;
      let x_2901 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2900.x, x_2900.y, x_2900.z, x_2901.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_2907 : vec4<f32> = u_xlat12;
    let x_2909 : u32 = u_xlatu3;
    let x_2912 : vec4<f32> = x_2395.x_AdditionalLightsColor[bitcast<i32>(x_2909)];
    let x_2914 : vec3<f32> = (vec3<f32>(x_2907.x, x_2907.y, x_2907.z) * vec3<f32>(x_2912.x, x_2912.y, x_2912.z));
    let x_2915 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2914.x, x_2914.y, x_2914.z, x_2915.w);
    let x_2917 : f32 = u_xlat71;
    let x_2919 : vec4<f32> = u_xlat12;
    let x_2921 : vec3<f32> = (vec3<f32>(x_2917, x_2917, x_2917) * vec3<f32>(x_2919.x, x_2919.y, x_2919.z));
    let x_2922 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2921.x, x_2921.y, x_2921.z, x_2922.w);
    let x_2924 : vec4<f32> = u_xlat1;
    let x_2926 : vec4<f32> = u_xlat11;
    u_xlat3.x = dot(vec3<f32>(x_2924.x, x_2924.y, x_2924.w), vec3<f32>(x_2926.x, x_2926.y, x_2926.z));
    let x_2931 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2931, 0.0f, 1.0f);
    let x_2935 : f32 = u_xlat3.x;
    let x_2936 : f32 = u_xlat70;
    u_xlat3.x = (x_2935 * x_2936);
    let x_2939 : vec3<f32> = u_xlat3;
    let x_2941 : vec4<f32> = u_xlat12;
    let x_2943 : vec3<f32> = (vec3<f32>(x_2939.x, x_2939.x, x_2939.x) * vec3<f32>(x_2941.x, x_2941.y, x_2941.z));
    let x_2944 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2943.x, x_2943.y, x_2943.z, x_2944.w);
    let x_2946 : vec4<f32> = u_xlat10;
    let x_2948 : f32 = u_xlat72;
    let x_2951 : vec3<f32> = u_xlat5;
    let x_2952 : vec3<f32> = ((vec3<f32>(x_2946.x, x_2946.y, x_2946.z) * vec3<f32>(x_2948, x_2948, x_2948)) + x_2951);
    let x_2953 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2952.x, x_2952.y, x_2952.z, x_2953.w);
    let x_2955 : vec4<f32> = u_xlat10;
    let x_2957 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2955.x, x_2955.y, x_2955.z), vec3<f32>(x_2957.x, x_2957.y, x_2957.z));
    let x_2962 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_2962, 1.17549435e-37f);
    let x_2966 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_2966);
    let x_2969 : vec3<f32> = u_xlat3;
    let x_2971 : vec4<f32> = u_xlat10;
    let x_2973 : vec3<f32> = (vec3<f32>(x_2969.x, x_2969.x, x_2969.x) * vec3<f32>(x_2971.x, x_2971.y, x_2971.z));
    let x_2974 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2973.x, x_2973.y, x_2973.z, x_2974.w);
    let x_2976 : vec4<f32> = u_xlat1;
    let x_2978 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2976.x, x_2976.y, x_2976.w), vec3<f32>(x_2978.x, x_2978.y, x_2978.z));
    let x_2983 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2983, 0.0f, 1.0f);
    let x_2986 : vec4<f32> = u_xlat11;
    let x_2988 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2986.x, x_2986.y, x_2986.z), vec3<f32>(x_2988.x, x_2988.y, x_2988.z));
    let x_2991 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2991, 0.0f, 1.0f);
    let x_2994 : f32 = u_xlat3.x;
    let x_2996 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2994 * x_2996);
    let x_3000 : f32 = u_xlat3.x;
    let x_3002 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_3000 * x_3002) + 1.000010014f);
    let x_3006 : f32 = u_xlat70;
    let x_3007 : f32 = u_xlat70;
    u_xlat70 = (x_3006 * x_3007);
    let x_3010 : f32 = u_xlat3.x;
    let x_3012 : f32 = u_xlat3.x;
    u_xlat3.x = (x_3010 * x_3012);
    let x_3015 : f32 = u_xlat70;
    u_xlat70 = max(x_3015, 0.100000001f);
    let x_3018 : f32 = u_xlat3.x;
    let x_3019 : f32 = u_xlat70;
    u_xlat3.x = (x_3018 * x_3019);
    let x_3022 : f32 = u_xlat69;
    let x_3024 : f32 = u_xlat3.x;
    u_xlat3.x = (x_3022 * x_3024);
    let x_3027 : f32 = u_xlat25;
    let x_3029 : f32 = u_xlat3.x;
    u_xlat3.x = (x_3027 / x_3029);
    let x_3032 : vec3<f32> = u_xlat0;
    let x_3033 : vec3<f32> = u_xlat3;
    let x_3036 : vec3<f32> = u_xlat8;
    let x_3037 : vec3<f32> = ((x_3032 * vec3<f32>(x_3033.x, x_3033.x, x_3033.x)) + x_3036);
    let x_3038 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3037.x, x_3037.y, x_3037.z, x_3038.w);
    let x_3040 : vec4<f32> = u_xlat10;
    let x_3042 : vec4<f32> = u_xlat12;
    let x_3045 : vec3<f32> = u_xlat31;
    u_xlat31 = ((vec3<f32>(x_3040.x, x_3040.y, x_3040.z) * vec3<f32>(x_3042.x, x_3042.y, x_3042.z)) + x_3045);

    continuing {
      let x_3047 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3047 + bitcast<u32>(1i));
    }
  }
  let x_3049 : vec4<f32> = u_xlat6;
  let x_3051 : f32 = u_xlat47;
  let x_3054 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_3049.x, x_3049.y, x_3049.z) * vec3<f32>(x_3051, x_3051, x_3051)) + vec3<f32>(x_3054.x, x_3054.y, x_3054.z));
  let x_3057 : vec3<f32> = u_xlat31;
  let x_3058 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_3057 + x_3058);
  let x_3062 : vec3<f32> = u_xlat2;
  let x_3063 : f32 = u_xlat45;
  let x_3066 : vec3<f32> = u_xlat0;
  let x_3067 : vec3<f32> = ((x_3062 * vec3<f32>(x_3063, x_3063, x_3063)) + x_3066);
  let x_3068 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3067.x, x_3067.y, x_3067.z, x_3068.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

