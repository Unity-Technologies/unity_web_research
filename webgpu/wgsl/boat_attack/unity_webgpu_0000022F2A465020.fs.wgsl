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

@group(1) @binding(3) var<uniform> x_319 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2025 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2483 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2597 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu66 : u32;
  var u_xlati66 : i32;
  var u_xlat69 : f32;
  var u_xlat25 : f32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlat47 : f32;
  var u_xlatb70 : bool;
  var txVec0 : vec3<f32>;
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
  var u_xlat32 : vec3<f32>;
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
  var u_xlatb23 : vec3<bool>;
  var x_1974 : f32;
  var u_xlat23 : vec3<f32>;
  var x_2110 : f32;
  var x_2121 : vec3<f32>;
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
  var x_2898 : f32;
  var x_2911 : f32;
  var x_2963 : f32;
  var x_2975 : vec3<f32>;
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
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_251 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb66 = (x_251 == 0.0f);
  let x_254 : vec3<f32> = vs_INTERP0;
  let x_259 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_260 : vec3<f32> = (-(x_254) + x_259);
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_260.z);
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat68 = dot(vec3<f32>(x_263.x, x_263.y, x_263.w), vec3<f32>(x_265.x, x_265.y, x_265.w));
  let x_268 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_268);
  let x_270 : vec4<f32> = u_xlat1;
  let x_272 : f32 = u_xlat68;
  let x_274 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.w) * vec3<f32>(x_272, x_272, x_272));
  let x_275 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_274.x, x_274.y, x_275.z, x_274.z);
  let x_278 : bool = u_xlatb66;
  if (x_278) {
    let x_283 : f32 = u_xlat1.x;
    x_279 = x_283;
  } else {
    let x_287 : f32 = x_45.unity_MatrixV[0i].z;
    x_279 = x_287;
  }
  let x_288 : f32 = x_279;
  u_xlat5.x = x_288;
  let x_290 : bool = u_xlatb66;
  if (x_290) {
    let x_296 : f32 = u_xlat1.y;
    x_291 = x_296;
  } else {
    let x_299 : f32 = x_45.unity_MatrixV[1i].z;
    x_291 = x_299;
  }
  let x_300 : f32 = x_291;
  u_xlat5.y = x_300;
  let x_302 : bool = u_xlatb66;
  if (x_302) {
    let x_307 : f32 = u_xlat1.w;
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
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_324.x, x_324.y, x_325.z, x_324.z);
  let x_328 : vec3<f32> = vs_INTERP0;
  let x_330 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres1;
  u_xlat6 = (x_328 + -(vec3<f32>(x_330.x, x_330.y, x_330.z)));
  let x_335 : vec3<f32> = vs_INTERP0;
  let x_337 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres2;
  let x_340 : vec3<f32> = (x_335 + -(vec3<f32>(x_337.x, x_337.y, x_337.z)));
  let x_341 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_344 : vec3<f32> = vs_INTERP0;
  let x_347 : vec4<f32> = x_319.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_344 + -(vec3<f32>(x_347.x, x_347.y, x_347.z)));
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat9.x = dot(vec3<f32>(x_352.x, x_352.y, x_352.w), vec3<f32>(x_354.x, x_354.y, x_354.w));
  let x_358 : vec3<f32> = u_xlat6;
  let x_359 : vec3<f32> = u_xlat6;
  u_xlat9.y = dot(x_358, x_359);
  let x_362 : vec4<f32> = u_xlat7;
  let x_364 : vec4<f32> = u_xlat7;
  u_xlat9.z = dot(vec3<f32>(x_362.x, x_362.y, x_362.z), vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_368 : vec3<f32> = u_xlat8;
  let x_369 : vec3<f32> = u_xlat8;
  u_xlat9.w = dot(x_368, x_369);
  let x_375 : vec4<f32> = u_xlat9;
  let x_378 : vec4<f32> = x_319.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_375 < x_378);
  let x_381 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_381);
  let x_385 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_385);
  let x_389 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_389);
  let x_393 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_393);
  let x_397 : bool = u_xlatb6.x;
  u_xlat1.x = select(-0.0f, -1.0f, x_397);
  let x_402 : bool = u_xlatb6.y;
  u_xlat1.y = select(-0.0f, -1.0f, x_402);
  let x_406 : bool = u_xlatb6.z;
  u_xlat1.w = select(-0.0f, -1.0f, x_406);
  let x_409 : vec4<f32> = u_xlat1;
  let x_411 : vec4<f32> = u_xlat7;
  let x_413 : vec3<f32> = (vec3<f32>(x_409.x, x_409.y, x_409.w) + vec3<f32>(x_411.y, x_411.z, x_411.w));
  let x_414 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_413.z);
  let x_416 : vec4<f32> = u_xlat1;
  let x_419 : vec3<f32> = max(vec3<f32>(x_416.x, x_416.y, x_416.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_420 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_420.x, x_419.x, x_419.y, x_419.z);
  let x_422 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(x_422, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_427 : f32 = u_xlat66;
  u_xlat66 = (-(x_427) + 4.0f);
  let x_432 : f32 = u_xlat66;
  u_xlatu66 = u32(x_432);
  let x_436 : u32 = u_xlatu66;
  u_xlati66 = (bitcast<i32>(x_436) << bitcast<u32>(2i));
  let x_439 : vec3<f32> = vs_INTERP0;
  let x_441 : i32 = u_xlati66;
  let x_444 : i32 = u_xlati66;
  let x_448 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_441 + 1i) / 4i)][((x_444 + 1i) % 4i)];
  let x_450 : vec3<f32> = (vec3<f32>(x_439.y, x_439.y, x_439.y) * vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_450.z);
  let x_453 : i32 = u_xlati66;
  let x_455 : i32 = u_xlati66;
  let x_458 : vec4<f32> = x_319.x_MainLightWorldToShadow[(x_453 / 4i)][(x_455 % 4i)];
  let x_460 : vec3<f32> = vs_INTERP0;
  let x_463 : vec4<f32> = u_xlat1;
  let x_465 : vec3<f32> = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_460.x, x_460.x, x_460.x)) + vec3<f32>(x_463.x, x_463.y, x_463.w));
  let x_466 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_465.z);
  let x_468 : i32 = u_xlati66;
  let x_471 : i32 = u_xlati66;
  let x_475 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_468 + 2i) / 4i)][((x_471 + 2i) % 4i)];
  let x_477 : vec3<f32> = vs_INTERP0;
  let x_480 : vec4<f32> = u_xlat1;
  let x_482 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_477.z, x_477.z, x_477.z)) + vec3<f32>(x_480.x, x_480.y, x_480.w));
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_482.z);
  let x_485 : vec4<f32> = u_xlat1;
  let x_487 : i32 = u_xlati66;
  let x_490 : i32 = u_xlati66;
  let x_494 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_487 + 3i) / 4i)][((x_490 + 3i) % 4i)];
  let x_496 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.w) + vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_496.z);
  u_xlat4.w = 1.0f;
  let x_502 : vec4<f32> = x_122.unity_SHAr;
  let x_503 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_502, x_503);
  let x_508 : vec4<f32> = x_122.unity_SHAg;
  let x_509 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_508, x_509);
  let x_514 : vec4<f32> = x_122.unity_SHAb;
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_514, x_515);
  let x_518 : vec4<f32> = u_xlat4;
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_518.y, x_518.z, x_518.z, x_518.x) * vec4<f32>(x_520.x, x_520.y, x_520.z, x_520.z));
  let x_525 : vec4<f32> = x_122.unity_SHBr;
  let x_526 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_525, x_526);
  let x_531 : vec4<f32> = x_122.unity_SHBg;
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_531, x_532);
  let x_537 : vec4<f32> = x_122.unity_SHBb;
  let x_538 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_537, x_538);
  let x_542 : f32 = u_xlat4.y;
  let x_544 : f32 = u_xlat4.y;
  u_xlat66 = (x_542 * x_544);
  let x_547 : f32 = u_xlat4.x;
  let x_549 : f32 = u_xlat4.x;
  let x_551 : f32 = u_xlat66;
  u_xlat66 = ((x_547 * x_549) + -(x_551));
  let x_556 : vec4<f32> = x_122.unity_SHC;
  let x_558 : f32 = u_xlat66;
  let x_561 : vec3<f32> = u_xlat8;
  let x_562 : vec3<f32> = ((vec3<f32>(x_556.x, x_556.y, x_556.z) * vec3<f32>(x_558, x_558, x_558)) + x_561);
  let x_563 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_565 : vec3<f32> = u_xlat6;
  let x_566 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_565 + vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_569, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_573 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_574 : vec2<f32> = vec2<f32>(x_573.x, x_573.y);
  let x_578 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_574.x, x_574.y));
  let x_579 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat7;
  let x_583 : vec4<f32> = hlslcc_FragCoord;
  let x_585 : vec2<f32> = (vec2<f32>(x_581.x, x_581.y) * vec2<f32>(x_583.x, x_583.y));
  let x_586 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
  let x_589 : f32 = u_xlat7.y;
  let x_592 : f32 = x_45.x_ScaleBiasRt.x;
  let x_595 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat66 = ((x_589 * x_592) + x_595);
  let x_597 : f32 = u_xlat66;
  u_xlat7.z = (-(x_597) + 1.0f);
  let x_601 : vec3<f32> = u_xlat3;
  let x_602 : vec2<f32> = vec2<f32>(x_601.x, x_601.y);
  let x_603 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_602.x, x_602.y, x_603.z);
  let x_605 : vec3<f32> = u_xlat3;
  let x_609 : vec2<f32> = clamp(vec2<f32>(x_605.x, x_605.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_610 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_609.x, x_609.y, x_610.z);
  let x_613 : f32 = u_xlat3.x;
  u_xlat66 = ((-(x_613) * 0.959999979f) + 0.959999979f);
  let x_618 : f32 = u_xlat66;
  u_xlat68 = (-(x_618) + 1.0f);
  let x_621 : f32 = u_xlat66;
  let x_623 : vec3<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_621, x_621, x_621) * x_623);
  let x_625 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_625 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_629 : vec3<f32> = u_xlat3;
  let x_631 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_629.x, x_629.x, x_629.x) * x_631) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_637 : f32 = u_xlat3.y;
  u_xlat66 = (-(x_637) + 1.0f);
  let x_640 : f32 = u_xlat66;
  let x_641 : f32 = u_xlat66;
  u_xlat3.x = (x_640 * x_641);
  let x_645 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_645, 0.0078125f);
  let x_651 : f32 = u_xlat3.x;
  let x_653 : f32 = u_xlat3.x;
  u_xlat69 = (x_651 * x_653);
  let x_655 : f32 = u_xlat68;
  let x_657 : f32 = u_xlat3.y;
  u_xlat68 = (x_655 + x_657);
  let x_659 : f32 = u_xlat68;
  u_xlat68 = min(x_659, 1.0f);
  let x_663 : f32 = u_xlat3.x;
  u_xlat25 = ((x_663 * 4.0f) + 2.0f);
  let x_672 : vec4<f32> = u_xlat7;
  let x_675 : f32 = x_45.x_GlobalMipBias.x;
  let x_676 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_672.x, x_672.z), x_675);
  u_xlat70 = x_676.x;
  let x_679 : f32 = u_xlat70;
  u_xlat71 = (x_679 + -1.0f);
  let x_682 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_683 : f32 = u_xlat71;
  u_xlat71 = ((x_682 * x_683) + 1.0f);
  let x_688 : f32 = u_xlat3.z;
  let x_689 : f32 = u_xlat70;
  u_xlat47 = min(x_688, x_689);
  let x_693 : f32 = x_319.x_MainLightShadowParams.y;
  u_xlatb70 = (0.0f < x_693);
  let x_695 : bool = u_xlatb70;
  if (x_695) {
    let x_699 : f32 = x_319.x_MainLightShadowParams.y;
    u_xlatb70 = (x_699 == 1.0f);
    let x_701 : bool = u_xlatb70;
    if (x_701) {
      let x_704 : vec4<f32> = u_xlat1;
      let x_707 : vec4<f32> = x_319.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_704.x, x_704.y, x_704.x, x_704.y) + x_707);
      let x_710 : vec4<f32> = u_xlat7;
      let x_711 : vec2<f32> = vec2<f32>(x_710.x, x_710.y);
      let x_713 : f32 = u_xlat1.w;
      txVec0 = vec3<f32>(x_711.x, x_711.y, x_713);
      let x_725 : vec3<f32> = txVec0;
      let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_725.xy, x_725.z);
      u_xlat9.x = x_727;
      let x_730 : vec4<f32> = u_xlat7;
      let x_731 : vec2<f32> = vec2<f32>(x_730.z, x_730.w);
      let x_733 : f32 = u_xlat1.w;
      txVec1 = vec3<f32>(x_731.x, x_731.y, x_733);
      let x_740 : vec3<f32> = txVec1;
      let x_742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_740.xy, x_740.z);
      u_xlat9.y = x_742;
      let x_744 : vec4<f32> = u_xlat1;
      let x_747 : vec4<f32> = x_319.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.y) + x_747);
      let x_750 : vec4<f32> = u_xlat7;
      let x_751 : vec2<f32> = vec2<f32>(x_750.x, x_750.y);
      let x_753 : f32 = u_xlat1.w;
      txVec2 = vec3<f32>(x_751.x, x_751.y, x_753);
      let x_760 : vec3<f32> = txVec2;
      let x_762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_760.xy, x_760.z);
      u_xlat9.z = x_762;
      let x_765 : vec4<f32> = u_xlat7;
      let x_766 : vec2<f32> = vec2<f32>(x_765.z, x_765.w);
      let x_768 : f32 = u_xlat1.w;
      txVec3 = vec3<f32>(x_766.x, x_766.y, x_768);
      let x_775 : vec3<f32> = txVec3;
      let x_777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_775.xy, x_775.z);
      u_xlat9.w = x_777;
      let x_779 : vec4<f32> = u_xlat9;
      u_xlat70 = dot(x_779, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_786 : f32 = x_319.x_MainLightShadowParams.y;
      u_xlatb72 = (x_786 == 2.0f);
      let x_788 : bool = u_xlatb72;
      if (x_788) {
        let x_791 : vec4<f32> = u_xlat1;
        let x_794 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_799 : vec2<f32> = ((vec2<f32>(x_791.x, x_791.y) * vec2<f32>(x_794.z, x_794.w)) + vec2<f32>(0.5f, 0.5f));
        let x_800 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_799.x, x_799.y, x_800.z, x_800.w);
        let x_802 : vec4<f32> = u_xlat7;
        let x_804 : vec2<f32> = floor(vec2<f32>(x_802.x, x_802.y));
        let x_805 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_804.x, x_804.y, x_805.z, x_805.w);
        let x_809 : vec4<f32> = u_xlat1;
        let x_812 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_815 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_809.x, x_809.y) * vec2<f32>(x_812.z, x_812.w)) + -(vec2<f32>(x_815.x, x_815.y)));
        let x_819 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_819.x, x_819.x, x_819.y, x_819.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_824 : vec4<f32> = u_xlat9;
        let x_826 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_824.x, x_824.x, x_824.z, x_824.z) * vec4<f32>(x_826.x, x_826.x, x_826.z, x_826.z));
        let x_829 : vec4<f32> = u_xlat10;
        let x_833 : vec2<f32> = (vec2<f32>(x_829.y, x_829.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_834 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_833.x, x_834.y, x_833.y, x_834.w);
        let x_836 : vec4<f32> = u_xlat10;
        let x_839 : vec2<f32> = u_xlat51;
        let x_841 : vec2<f32> = ((vec2<f32>(x_836.x, x_836.z) * vec2<f32>(0.5f, 0.5f)) + -(x_839));
        let x_842 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
        let x_845 : vec2<f32> = u_xlat51;
        u_xlat54 = (-(x_845) + vec2<f32>(1.0f, 1.0f));
        let x_849 : vec2<f32> = u_xlat51;
        let x_851 : vec2<f32> = min(x_849, vec2<f32>(0.0f, 0.0f));
        let x_852 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_851.x, x_851.y, x_852.z, x_852.w);
        let x_854 : vec4<f32> = u_xlat11;
        let x_857 : vec4<f32> = u_xlat11;
        let x_860 : vec2<f32> = u_xlat54;
        let x_861 : vec2<f32> = ((-(vec2<f32>(x_854.x, x_854.y)) * vec2<f32>(x_857.x, x_857.y)) + x_860);
        let x_862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_864, vec2<f32>(0.0f, 0.0f));
        let x_866 : vec2<f32> = u_xlat51;
        let x_868 : vec2<f32> = u_xlat51;
        let x_870 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_866) * x_868) + vec2<f32>(x_870.y, x_870.w));
        let x_873 : vec4<f32> = u_xlat11;
        let x_875 : vec2<f32> = (vec2<f32>(x_873.x, x_873.y) + vec2<f32>(1.0f, 1.0f));
        let x_876 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_878 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_878 + vec2<f32>(1.0f, 1.0f));
        let x_881 : vec4<f32> = u_xlat10;
        let x_885 : vec2<f32> = (vec2<f32>(x_881.x, x_881.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_886 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
        let x_888 : vec2<f32> = u_xlat54;
        let x_889 : vec2<f32> = (x_888 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_890 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_889.x, x_889.y, x_890.z, x_890.w);
        let x_892 : vec4<f32> = u_xlat11;
        let x_894 : vec2<f32> = (vec2<f32>(x_892.x, x_892.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_895 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
        let x_898 : vec2<f32> = u_xlat51;
        let x_899 : vec2<f32> = (x_898 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_900 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
        let x_902 : vec4<f32> = u_xlat9;
        u_xlat51 = (vec2<f32>(x_902.y, x_902.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_906 : f32 = u_xlat11.x;
        u_xlat12.z = x_906;
        let x_909 : f32 = u_xlat51.x;
        u_xlat12.w = x_909;
        let x_912 : f32 = u_xlat13.x;
        u_xlat10.z = x_912;
        let x_915 : f32 = u_xlat9.x;
        u_xlat10.w = x_915;
        let x_918 : vec4<f32> = u_xlat10;
        let x_920 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_918.z, x_918.w, x_918.x, x_918.z) + vec4<f32>(x_920.z, x_920.w, x_920.x, x_920.z));
        let x_924 : f32 = u_xlat12.y;
        u_xlat11.z = x_924;
        let x_927 : f32 = u_xlat51.y;
        u_xlat11.w = x_927;
        let x_930 : f32 = u_xlat10.y;
        u_xlat13.z = x_930;
        let x_933 : f32 = u_xlat9.z;
        u_xlat13.w = x_933;
        let x_935 : vec4<f32> = u_xlat11;
        let x_937 : vec4<f32> = u_xlat13;
        let x_939 : vec3<f32> = (vec3<f32>(x_935.z, x_935.y, x_935.w) + vec3<f32>(x_937.z, x_937.y, x_937.w));
        let x_940 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
        let x_942 : vec4<f32> = u_xlat10;
        let x_944 : vec4<f32> = u_xlat14;
        let x_946 : vec3<f32> = (vec3<f32>(x_942.x, x_942.z, x_942.w) / vec3<f32>(x_944.z, x_944.w, x_944.y));
        let x_947 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
        let x_949 : vec4<f32> = u_xlat10;
        let x_955 : vec3<f32> = (vec3<f32>(x_949.x, x_949.y, x_949.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_956 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
        let x_958 : vec4<f32> = u_xlat13;
        let x_960 : vec4<f32> = u_xlat9;
        let x_962 : vec3<f32> = (vec3<f32>(x_958.z, x_958.y, x_958.w) / vec3<f32>(x_960.x, x_960.y, x_960.z));
        let x_963 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
        let x_965 : vec4<f32> = u_xlat11;
        let x_967 : vec3<f32> = (vec3<f32>(x_965.x, x_965.y, x_965.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_968 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
        let x_970 : vec4<f32> = u_xlat10;
        let x_973 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_975 : vec3<f32> = (vec3<f32>(x_970.y, x_970.x, x_970.z) * vec3<f32>(x_973.x, x_973.x, x_973.x));
        let x_976 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat11;
        let x_981 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_983 : vec3<f32> = (vec3<f32>(x_978.x, x_978.y, x_978.z) * vec3<f32>(x_981.y, x_981.y, x_981.y));
        let x_984 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
        let x_987 : f32 = u_xlat11.x;
        u_xlat10.w = x_987;
        let x_989 : vec4<f32> = u_xlat7;
        let x_992 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_995 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_989.x, x_989.y, x_989.x, x_989.y) * vec4<f32>(x_992.x, x_992.y, x_992.x, x_992.y)) + vec4<f32>(x_995.y, x_995.w, x_995.x, x_995.w));
        let x_998 : vec4<f32> = u_xlat7;
        let x_1001 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_998.x, x_998.y) * vec2<f32>(x_1001.x, x_1001.y)) + vec2<f32>(x_1004.z, x_1004.w));
        let x_1008 : f32 = u_xlat10.y;
        u_xlat11.w = x_1008;
        let x_1010 : vec4<f32> = u_xlat11;
        let x_1011 : vec2<f32> = vec2<f32>(x_1010.y, x_1010.z);
        let x_1012 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1012.x, x_1011.x, x_1012.z, x_1011.y);
        let x_1014 : vec4<f32> = u_xlat7;
        let x_1017 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1020 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1014.x, x_1014.y, x_1014.x, x_1014.y) * vec4<f32>(x_1017.x, x_1017.y, x_1017.x, x_1017.y)) + vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1020.y));
        let x_1023 : vec4<f32> = u_xlat7;
        let x_1026 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1029 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y) * vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y)) + vec4<f32>(x_1029.w, x_1029.y, x_1029.w, x_1029.z));
        let x_1032 : vec4<f32> = u_xlat7;
        let x_1035 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1038 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y) * vec4<f32>(x_1035.x, x_1035.y, x_1035.x, x_1035.y)) + vec4<f32>(x_1038.x, x_1038.w, x_1038.z, x_1038.w));
        let x_1042 : vec4<f32> = u_xlat9;
        let x_1044 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_1042.x, x_1042.x, x_1042.x, x_1042.y) * vec4<f32>(x_1044.z, x_1044.w, x_1044.y, x_1044.z));
        let x_1048 : vec4<f32> = u_xlat9;
        let x_1050 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_1048.y, x_1048.y, x_1048.z, x_1048.z) * x_1050);
        let x_1054 : f32 = u_xlat9.z;
        let x_1056 : f32 = u_xlat14.y;
        u_xlat72 = (x_1054 * x_1056);
        let x_1059 : vec4<f32> = u_xlat12;
        let x_1060 : vec2<f32> = vec2<f32>(x_1059.x, x_1059.y);
        let x_1062 : f32 = u_xlat1.w;
        txVec4 = vec3<f32>(x_1060.x, x_1060.y, x_1062);
        let x_1069 : vec3<f32> = txVec4;
        let x_1071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1069.xy, x_1069.z);
        u_xlat7.x = x_1071;
        let x_1074 : vec4<f32> = u_xlat12;
        let x_1075 : vec2<f32> = vec2<f32>(x_1074.z, x_1074.w);
        let x_1077 : f32 = u_xlat1.w;
        txVec5 = vec3<f32>(x_1075.x, x_1075.y, x_1077);
        let x_1085 : vec3<f32> = txVec5;
        let x_1087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1085.xy, x_1085.z);
        u_xlat29 = x_1087;
        let x_1088 : f32 = u_xlat29;
        let x_1090 : f32 = u_xlat15.y;
        u_xlat29 = (x_1088 * x_1090);
        let x_1093 : f32 = u_xlat15.x;
        let x_1095 : f32 = u_xlat7.x;
        let x_1097 : f32 = u_xlat29;
        u_xlat7.x = ((x_1093 * x_1095) + x_1097);
        let x_1101 : vec2<f32> = u_xlat51;
        let x_1103 : f32 = u_xlat1.w;
        txVec6 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1110 : vec3<f32> = txVec6;
        let x_1112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1110.xy, x_1110.z);
        u_xlat29 = x_1112;
        let x_1114 : f32 = u_xlat15.z;
        let x_1115 : f32 = u_xlat29;
        let x_1118 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1114 * x_1115) + x_1118);
        let x_1122 : vec4<f32> = u_xlat11;
        let x_1123 : vec2<f32> = vec2<f32>(x_1122.x, x_1122.y);
        let x_1125 : f32 = u_xlat1.w;
        txVec7 = vec3<f32>(x_1123.x, x_1123.y, x_1125);
        let x_1132 : vec3<f32> = txVec7;
        let x_1134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1132.xy, x_1132.z);
        u_xlat29 = x_1134;
        let x_1136 : f32 = u_xlat15.w;
        let x_1137 : f32 = u_xlat29;
        let x_1140 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1136 * x_1137) + x_1140);
        let x_1144 : vec4<f32> = u_xlat13;
        let x_1145 : vec2<f32> = vec2<f32>(x_1144.x, x_1144.y);
        let x_1147 : f32 = u_xlat1.w;
        txVec8 = vec3<f32>(x_1145.x, x_1145.y, x_1147);
        let x_1154 : vec3<f32> = txVec8;
        let x_1156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1154.xy, x_1154.z);
        u_xlat29 = x_1156;
        let x_1158 : f32 = u_xlat16.x;
        let x_1159 : f32 = u_xlat29;
        let x_1162 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1158 * x_1159) + x_1162);
        let x_1166 : vec4<f32> = u_xlat13;
        let x_1167 : vec2<f32> = vec2<f32>(x_1166.z, x_1166.w);
        let x_1169 : f32 = u_xlat1.w;
        txVec9 = vec3<f32>(x_1167.x, x_1167.y, x_1169);
        let x_1176 : vec3<f32> = txVec9;
        let x_1178 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1176.xy, x_1176.z);
        u_xlat29 = x_1178;
        let x_1180 : f32 = u_xlat16.y;
        let x_1181 : f32 = u_xlat29;
        let x_1184 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1180 * x_1181) + x_1184);
        let x_1188 : vec4<f32> = u_xlat11;
        let x_1189 : vec2<f32> = vec2<f32>(x_1188.z, x_1188.w);
        let x_1191 : f32 = u_xlat1.w;
        txVec10 = vec3<f32>(x_1189.x, x_1189.y, x_1191);
        let x_1198 : vec3<f32> = txVec10;
        let x_1200 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1198.xy, x_1198.z);
        u_xlat29 = x_1200;
        let x_1202 : f32 = u_xlat16.z;
        let x_1203 : f32 = u_xlat29;
        let x_1206 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1202 * x_1203) + x_1206);
        let x_1210 : vec4<f32> = u_xlat10;
        let x_1211 : vec2<f32> = vec2<f32>(x_1210.x, x_1210.y);
        let x_1213 : f32 = u_xlat1.w;
        txVec11 = vec3<f32>(x_1211.x, x_1211.y, x_1213);
        let x_1220 : vec3<f32> = txVec11;
        let x_1222 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1220.xy, x_1220.z);
        u_xlat29 = x_1222;
        let x_1224 : f32 = u_xlat16.w;
        let x_1225 : f32 = u_xlat29;
        let x_1228 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1224 * x_1225) + x_1228);
        let x_1232 : vec4<f32> = u_xlat10;
        let x_1233 : vec2<f32> = vec2<f32>(x_1232.z, x_1232.w);
        let x_1235 : f32 = u_xlat1.w;
        txVec12 = vec3<f32>(x_1233.x, x_1233.y, x_1235);
        let x_1242 : vec3<f32> = txVec12;
        let x_1244 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1242.xy, x_1242.z);
        u_xlat29 = x_1244;
        let x_1245 : f32 = u_xlat72;
        let x_1246 : f32 = u_xlat29;
        let x_1249 : f32 = u_xlat7.x;
        u_xlat70 = ((x_1245 * x_1246) + x_1249);
      } else {
        let x_1252 : vec4<f32> = u_xlat1;
        let x_1255 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1258 : vec2<f32> = ((vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(x_1255.z, x_1255.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1259 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1258.x, x_1258.y, x_1259.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat7;
        let x_1263 : vec2<f32> = floor(vec2<f32>(x_1261.x, x_1261.y));
        let x_1264 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1263.x, x_1263.y, x_1264.z, x_1264.w);
        let x_1266 : vec4<f32> = u_xlat1;
        let x_1269 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.z, x_1269.w)) + -(vec2<f32>(x_1272.x, x_1272.y)));
        let x_1276 : vec2<f32> = u_xlat51;
        u_xlat9 = (vec4<f32>(x_1276.x, x_1276.x, x_1276.y, x_1276.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1279 : vec4<f32> = u_xlat9;
        let x_1281 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1279.x, x_1279.x, x_1279.z, x_1279.z) * vec4<f32>(x_1281.x, x_1281.x, x_1281.z, x_1281.z));
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1288 : vec2<f32> = (vec2<f32>(x_1284.y, x_1284.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1289 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1289.x, x_1288.x, x_1289.z, x_1288.y);
        let x_1291 : vec4<f32> = u_xlat10;
        let x_1294 : vec2<f32> = u_xlat51;
        let x_1296 : vec2<f32> = ((vec2<f32>(x_1291.x, x_1291.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1294));
        let x_1297 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1296.x, x_1297.y, x_1296.y, x_1297.w);
        let x_1299 : vec2<f32> = u_xlat51;
        let x_1301 : vec2<f32> = (-(x_1299) + vec2<f32>(1.0f, 1.0f));
        let x_1302 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1301.x, x_1301.y, x_1302.z, x_1302.w);
        let x_1304 : vec2<f32> = u_xlat51;
        u_xlat54 = min(x_1304, vec2<f32>(0.0f, 0.0f));
        let x_1306 : vec2<f32> = u_xlat54;
        let x_1308 : vec2<f32> = u_xlat54;
        let x_1310 : vec4<f32> = u_xlat10;
        let x_1312 : vec2<f32> = ((-(x_1306) * x_1308) + vec2<f32>(x_1310.x, x_1310.y));
        let x_1313 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1315 : vec2<f32> = u_xlat51;
        u_xlat54 = max(x_1315, vec2<f32>(0.0f, 0.0f));
        let x_1318 : vec2<f32> = u_xlat54;
        let x_1320 : vec2<f32> = u_xlat54;
        let x_1322 : vec4<f32> = u_xlat9;
        let x_1324 : vec2<f32> = ((-(x_1318) * x_1320) + vec2<f32>(x_1322.y, x_1322.w));
        let x_1325 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1324.x, x_1325.y, x_1324.y);
        let x_1327 : vec4<f32> = u_xlat10;
        let x_1329 : vec2<f32> = (vec2<f32>(x_1327.x, x_1327.y) + vec2<f32>(2.0f, 2.0f));
        let x_1330 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1329.x, x_1329.y, x_1330.z, x_1330.w);
        let x_1332 : vec3<f32> = u_xlat31;
        let x_1334 : vec2<f32> = (vec2<f32>(x_1332.x, x_1332.z) + vec2<f32>(2.0f, 2.0f));
        let x_1335 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1335.x, x_1334.x, x_1335.z, x_1334.y);
        let x_1338 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1338 * 0.081632003f);
        let x_1342 : vec4<f32> = u_xlat9;
        let x_1345 : vec3<f32> = (vec3<f32>(x_1342.z, x_1342.x, x_1342.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1346 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
        let x_1348 : vec4<f32> = u_xlat10;
        let x_1351 : vec2<f32> = (vec2<f32>(x_1348.x, x_1348.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1352 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1351.x, x_1351.y, x_1352.z, x_1352.w);
        let x_1355 : f32 = u_xlat13.y;
        u_xlat12.x = x_1355;
        let x_1357 : vec2<f32> = u_xlat51;
        let x_1364 : vec2<f32> = ((vec2<f32>(x_1357.x, x_1357.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1365 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1365.x, x_1364.x, x_1365.z, x_1364.y);
        let x_1367 : vec2<f32> = u_xlat51;
        let x_1371 : vec2<f32> = ((vec2<f32>(x_1367.x, x_1367.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1372 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1371.x, x_1372.y, x_1371.y, x_1372.w);
        let x_1375 : f32 = u_xlat9.x;
        u_xlat10.y = x_1375;
        let x_1378 : f32 = u_xlat11.y;
        u_xlat10.w = x_1378;
        let x_1380 : vec4<f32> = u_xlat10;
        let x_1381 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1380 + x_1381);
        let x_1383 : vec2<f32> = u_xlat51;
        let x_1386 : vec2<f32> = ((vec2<f32>(x_1383.y, x_1383.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1387 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1387.x, x_1386.x, x_1387.z, x_1386.y);
        let x_1389 : vec2<f32> = u_xlat51;
        let x_1392 : vec2<f32> = ((vec2<f32>(x_1389.y, x_1389.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1393 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1392.x, x_1393.y, x_1392.y, x_1393.w);
        let x_1396 : f32 = u_xlat9.y;
        u_xlat11.y = x_1396;
        let x_1398 : vec4<f32> = u_xlat11;
        let x_1399 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1398 + x_1399);
        let x_1401 : vec4<f32> = u_xlat10;
        let x_1402 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1401 / x_1402);
        let x_1404 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1404 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1410 : vec4<f32> = u_xlat11;
        let x_1411 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1410 / x_1411);
        let x_1413 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1413 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1415 : vec4<f32> = u_xlat10;
        let x_1418 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1415.w, x_1415.x, x_1415.y, x_1415.z) * vec4<f32>(x_1418.x, x_1418.x, x_1418.x, x_1418.x));
        let x_1421 : vec4<f32> = u_xlat11;
        let x_1424 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1421.x, x_1421.w, x_1421.y, x_1421.z) * vec4<f32>(x_1424.y, x_1424.y, x_1424.y, x_1424.y));
        let x_1427 : vec4<f32> = u_xlat10;
        let x_1428 : vec3<f32> = vec3<f32>(x_1427.y, x_1427.z, x_1427.w);
        let x_1429 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1428.x, x_1429.y, x_1428.y, x_1428.z);
        let x_1432 : f32 = u_xlat11.x;
        u_xlat13.y = x_1432;
        let x_1434 : vec4<f32> = u_xlat7;
        let x_1437 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1440 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1434.x, x_1434.y, x_1434.x, x_1434.y) * vec4<f32>(x_1437.x, x_1437.y, x_1437.x, x_1437.y)) + vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1440.y));
        let x_1443 : vec4<f32> = u_xlat7;
        let x_1446 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1449 : vec4<f32> = u_xlat13;
        u_xlat51 = ((vec2<f32>(x_1443.x, x_1443.y) * vec2<f32>(x_1446.x, x_1446.y)) + vec2<f32>(x_1449.w, x_1449.y));
        let x_1453 : f32 = u_xlat13.y;
        u_xlat10.y = x_1453;
        let x_1456 : f32 = u_xlat11.z;
        u_xlat13.y = x_1456;
        let x_1458 : vec4<f32> = u_xlat7;
        let x_1461 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1464 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1458.x, x_1458.y, x_1458.x, x_1458.y) * vec4<f32>(x_1461.x, x_1461.y, x_1461.x, x_1461.y)) + vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1464.y));
        let x_1467 : vec4<f32> = u_xlat7;
        let x_1470 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1473 : vec4<f32> = u_xlat13;
        let x_1475 : vec2<f32> = ((vec2<f32>(x_1467.x, x_1467.y) * vec2<f32>(x_1470.x, x_1470.y)) + vec2<f32>(x_1473.w, x_1473.y));
        let x_1476 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1475.x, x_1475.y, x_1476.z, x_1476.w);
        let x_1479 : f32 = u_xlat13.y;
        u_xlat10.z = x_1479;
        let x_1482 : vec4<f32> = u_xlat7;
        let x_1485 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1488 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1482.x, x_1482.y, x_1482.x, x_1482.y) * vec4<f32>(x_1485.x, x_1485.y, x_1485.x, x_1485.y)) + vec4<f32>(x_1488.x, x_1488.y, x_1488.x, x_1488.z));
        let x_1492 : f32 = u_xlat11.w;
        u_xlat13.y = x_1492;
        let x_1495 : vec4<f32> = u_xlat7;
        let x_1498 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1501 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1495.x, x_1495.y, x_1495.x, x_1495.y) * vec4<f32>(x_1498.x, x_1498.y, x_1498.x, x_1498.y)) + vec4<f32>(x_1501.x, x_1501.y, x_1501.z, x_1501.y));
        let x_1505 : vec4<f32> = u_xlat7;
        let x_1508 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1511 : vec4<f32> = u_xlat13;
        let x_1513 : vec2<f32> = ((vec2<f32>(x_1505.x, x_1505.y) * vec2<f32>(x_1508.x, x_1508.y)) + vec2<f32>(x_1511.w, x_1511.y));
        let x_1514 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1513.x, x_1513.y, x_1514.z);
        let x_1517 : f32 = u_xlat13.y;
        u_xlat10.w = x_1517;
        let x_1520 : vec4<f32> = u_xlat7;
        let x_1523 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1526 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1520.x, x_1520.y) * vec2<f32>(x_1523.x, x_1523.y)) + vec2<f32>(x_1526.x, x_1526.w));
        let x_1529 : vec4<f32> = u_xlat13;
        let x_1530 : vec3<f32> = vec3<f32>(x_1529.x, x_1529.z, x_1529.w);
        let x_1531 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1530.x, x_1531.y, x_1530.y, x_1530.z);
        let x_1533 : vec4<f32> = u_xlat7;
        let x_1536 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1539 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1533.x, x_1533.y, x_1533.x, x_1533.y) * vec4<f32>(x_1536.x, x_1536.y, x_1536.x, x_1536.y)) + vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1539.y));
        let x_1543 : vec4<f32> = u_xlat7;
        let x_1546 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1549 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1543.x, x_1543.y) * vec2<f32>(x_1546.x, x_1546.y)) + vec2<f32>(x_1549.w, x_1549.y));
        let x_1553 : f32 = u_xlat10.x;
        u_xlat11.x = x_1553;
        let x_1555 : vec4<f32> = u_xlat7;
        let x_1558 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1561 : vec4<f32> = u_xlat11;
        let x_1563 : vec2<f32> = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(x_1558.x, x_1558.y)) + vec2<f32>(x_1561.x, x_1561.y));
        let x_1564 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1563.x, x_1563.y, x_1564.z, x_1564.w);
        let x_1567 : vec4<f32> = u_xlat9;
        let x_1569 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1567.x, x_1567.x, x_1567.x, x_1567.x) * x_1569);
        let x_1572 : vec4<f32> = u_xlat9;
        let x_1574 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1572.y, x_1572.y, x_1572.y, x_1572.y) * x_1574);
        let x_1577 : vec4<f32> = u_xlat9;
        let x_1579 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1577.z, x_1577.z, x_1577.z, x_1577.z) * x_1579);
        let x_1581 : vec4<f32> = u_xlat9;
        let x_1583 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1581.w, x_1581.w, x_1581.w, x_1581.w) * x_1583);
        let x_1586 : vec4<f32> = u_xlat14;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.x, x_1586.y);
        let x_1589 : f32 = u_xlat1.w;
        txVec13 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec13;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1596.xy, x_1596.z);
        u_xlat72 = x_1598;
        let x_1600 : vec4<f32> = u_xlat14;
        let x_1601 : vec2<f32> = vec2<f32>(x_1600.z, x_1600.w);
        let x_1603 : f32 = u_xlat1.w;
        txVec14 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1611 : vec3<f32> = txVec14;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1611.xy, x_1611.z);
        u_xlat74 = x_1613;
        let x_1614 : f32 = u_xlat74;
        let x_1616 : f32 = u_xlat19.y;
        u_xlat74 = (x_1614 * x_1616);
        let x_1619 : f32 = u_xlat19.x;
        let x_1620 : f32 = u_xlat72;
        let x_1622 : f32 = u_xlat74;
        u_xlat72 = ((x_1619 * x_1620) + x_1622);
        let x_1625 : vec2<f32> = u_xlat51;
        let x_1627 : f32 = u_xlat1.w;
        txVec15 = vec3<f32>(x_1625.x, x_1625.y, x_1627);
        let x_1634 : vec3<f32> = txVec15;
        let x_1636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1634.xy, x_1634.z);
        u_xlat51.x = x_1636;
        let x_1639 : f32 = u_xlat19.z;
        let x_1641 : f32 = u_xlat51.x;
        let x_1643 : f32 = u_xlat72;
        u_xlat72 = ((x_1639 * x_1641) + x_1643);
        let x_1646 : vec4<f32> = u_xlat17;
        let x_1647 : vec2<f32> = vec2<f32>(x_1646.x, x_1646.y);
        let x_1649 : f32 = u_xlat1.w;
        txVec16 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec16;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1656.xy, x_1656.z);
        u_xlat51.x = x_1658;
        let x_1661 : f32 = u_xlat19.w;
        let x_1663 : f32 = u_xlat51.x;
        let x_1665 : f32 = u_xlat72;
        u_xlat72 = ((x_1661 * x_1663) + x_1665);
        let x_1668 : vec4<f32> = u_xlat15;
        let x_1669 : vec2<f32> = vec2<f32>(x_1668.x, x_1668.y);
        let x_1671 : f32 = u_xlat1.w;
        txVec17 = vec3<f32>(x_1669.x, x_1669.y, x_1671);
        let x_1678 : vec3<f32> = txVec17;
        let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1678.xy, x_1678.z);
        u_xlat51.x = x_1680;
        let x_1683 : f32 = u_xlat20.x;
        let x_1685 : f32 = u_xlat51.x;
        let x_1687 : f32 = u_xlat72;
        u_xlat72 = ((x_1683 * x_1685) + x_1687);
        let x_1690 : vec4<f32> = u_xlat15;
        let x_1691 : vec2<f32> = vec2<f32>(x_1690.z, x_1690.w);
        let x_1693 : f32 = u_xlat1.w;
        txVec18 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
        let x_1700 : vec3<f32> = txVec18;
        let x_1702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1700.xy, x_1700.z);
        u_xlat51.x = x_1702;
        let x_1705 : f32 = u_xlat20.y;
        let x_1707 : f32 = u_xlat51.x;
        let x_1709 : f32 = u_xlat72;
        u_xlat72 = ((x_1705 * x_1707) + x_1709);
        let x_1712 : vec4<f32> = u_xlat16;
        let x_1713 : vec2<f32> = vec2<f32>(x_1712.x, x_1712.y);
        let x_1715 : f32 = u_xlat1.w;
        txVec19 = vec3<f32>(x_1713.x, x_1713.y, x_1715);
        let x_1722 : vec3<f32> = txVec19;
        let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1722.xy, x_1722.z);
        u_xlat51.x = x_1724;
        let x_1727 : f32 = u_xlat20.z;
        let x_1729 : f32 = u_xlat51.x;
        let x_1731 : f32 = u_xlat72;
        u_xlat72 = ((x_1727 * x_1729) + x_1731);
        let x_1734 : vec4<f32> = u_xlat17;
        let x_1735 : vec2<f32> = vec2<f32>(x_1734.z, x_1734.w);
        let x_1737 : f32 = u_xlat1.w;
        txVec20 = vec3<f32>(x_1735.x, x_1735.y, x_1737);
        let x_1744 : vec3<f32> = txVec20;
        let x_1746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1744.xy, x_1744.z);
        u_xlat51.x = x_1746;
        let x_1749 : f32 = u_xlat20.w;
        let x_1751 : f32 = u_xlat51.x;
        let x_1753 : f32 = u_xlat72;
        u_xlat72 = ((x_1749 * x_1751) + x_1753);
        let x_1756 : vec4<f32> = u_xlat18;
        let x_1757 : vec2<f32> = vec2<f32>(x_1756.x, x_1756.y);
        let x_1759 : f32 = u_xlat1.w;
        txVec21 = vec3<f32>(x_1757.x, x_1757.y, x_1759);
        let x_1766 : vec3<f32> = txVec21;
        let x_1768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1766.xy, x_1766.z);
        u_xlat51.x = x_1768;
        let x_1771 : f32 = u_xlat21.x;
        let x_1773 : f32 = u_xlat51.x;
        let x_1775 : f32 = u_xlat72;
        u_xlat72 = ((x_1771 * x_1773) + x_1775);
        let x_1778 : vec4<f32> = u_xlat18;
        let x_1779 : vec2<f32> = vec2<f32>(x_1778.z, x_1778.w);
        let x_1781 : f32 = u_xlat1.w;
        txVec22 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
        let x_1788 : vec3<f32> = txVec22;
        let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1788.xy, x_1788.z);
        u_xlat51.x = x_1790;
        let x_1793 : f32 = u_xlat21.y;
        let x_1795 : f32 = u_xlat51.x;
        let x_1797 : f32 = u_xlat72;
        u_xlat72 = ((x_1793 * x_1795) + x_1797);
        let x_1800 : vec3<f32> = u_xlat32;
        let x_1801 : vec2<f32> = vec2<f32>(x_1800.x, x_1800.y);
        let x_1803 : f32 = u_xlat1.w;
        txVec23 = vec3<f32>(x_1801.x, x_1801.y, x_1803);
        let x_1810 : vec3<f32> = txVec23;
        let x_1812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1810.xy, x_1810.z);
        u_xlat51.x = x_1812;
        let x_1815 : f32 = u_xlat21.z;
        let x_1817 : f32 = u_xlat51.x;
        let x_1819 : f32 = u_xlat72;
        u_xlat72 = ((x_1815 * x_1817) + x_1819);
        let x_1822 : vec2<f32> = u_xlat60;
        let x_1824 : f32 = u_xlat1.w;
        txVec24 = vec3<f32>(x_1822.x, x_1822.y, x_1824);
        let x_1831 : vec3<f32> = txVec24;
        let x_1833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1831.xy, x_1831.z);
        u_xlat51.x = x_1833;
        let x_1836 : f32 = u_xlat21.w;
        let x_1838 : f32 = u_xlat51.x;
        let x_1840 : f32 = u_xlat72;
        u_xlat72 = ((x_1836 * x_1838) + x_1840);
        let x_1843 : vec4<f32> = u_xlat13;
        let x_1844 : vec2<f32> = vec2<f32>(x_1843.x, x_1843.y);
        let x_1846 : f32 = u_xlat1.w;
        txVec25 = vec3<f32>(x_1844.x, x_1844.y, x_1846);
        let x_1853 : vec3<f32> = txVec25;
        let x_1855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1853.xy, x_1853.z);
        u_xlat51.x = x_1855;
        let x_1858 : f32 = u_xlat9.x;
        let x_1860 : f32 = u_xlat51.x;
        let x_1862 : f32 = u_xlat72;
        u_xlat72 = ((x_1858 * x_1860) + x_1862);
        let x_1865 : vec4<f32> = u_xlat13;
        let x_1866 : vec2<f32> = vec2<f32>(x_1865.z, x_1865.w);
        let x_1868 : f32 = u_xlat1.w;
        txVec26 = vec3<f32>(x_1866.x, x_1866.y, x_1868);
        let x_1875 : vec3<f32> = txVec26;
        let x_1877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1875.xy, x_1875.z);
        u_xlat51.x = x_1877;
        let x_1880 : f32 = u_xlat9.y;
        let x_1882 : f32 = u_xlat51.x;
        let x_1884 : f32 = u_xlat72;
        u_xlat72 = ((x_1880 * x_1882) + x_1884);
        let x_1887 : vec2<f32> = u_xlat55;
        let x_1889 : f32 = u_xlat1.w;
        txVec27 = vec3<f32>(x_1887.x, x_1887.y, x_1889);
        let x_1896 : vec3<f32> = txVec27;
        let x_1898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1896.xy, x_1896.z);
        u_xlat51.x = x_1898;
        let x_1901 : f32 = u_xlat9.z;
        let x_1903 : f32 = u_xlat51.x;
        let x_1905 : f32 = u_xlat72;
        u_xlat72 = ((x_1901 * x_1903) + x_1905);
        let x_1908 : vec4<f32> = u_xlat7;
        let x_1909 : vec2<f32> = vec2<f32>(x_1908.x, x_1908.y);
        let x_1911 : f32 = u_xlat1.w;
        txVec28 = vec3<f32>(x_1909.x, x_1909.y, x_1911);
        let x_1918 : vec3<f32> = txVec28;
        let x_1920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1918.xy, x_1918.z);
        u_xlat7.x = x_1920;
        let x_1923 : f32 = u_xlat9.w;
        let x_1925 : f32 = u_xlat7.x;
        let x_1927 : f32 = u_xlat72;
        u_xlat70 = ((x_1923 * x_1925) + x_1927);
      }
    }
  } else {
    let x_1931 : vec4<f32> = u_xlat1;
    let x_1932 : vec2<f32> = vec2<f32>(x_1931.x, x_1931.y);
    let x_1934 : f32 = u_xlat1.w;
    txVec29 = vec3<f32>(x_1932.x, x_1932.y, x_1934);
    let x_1941 : vec3<f32> = txVec29;
    let x_1943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1941.xy, x_1941.z);
    u_xlat70 = x_1943;
  }
  let x_1945 : f32 = x_319.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1945) + 1.0f);
  let x_1949 : f32 = u_xlat70;
  let x_1951 : f32 = x_319.x_MainLightShadowParams.x;
  let x_1954 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1949 * x_1951) + x_1954);
  let x_1961 : f32 = u_xlat1.w;
  u_xlatb23.x = (0.0f >= x_1961);
  let x_1965 : f32 = u_xlat1.w;
  u_xlatb67 = (x_1965 >= 1.0f);
  let x_1967 : bool = u_xlatb67;
  let x_1969 : bool = u_xlatb23.x;
  u_xlatb23.x = (x_1967 | x_1969);
  let x_1973 : bool = u_xlatb23.x;
  if (x_1973) {
    x_1974 = 1.0f;
  } else {
    let x_1979 : f32 = u_xlat1.x;
    x_1974 = x_1979;
  }
  let x_1980 : f32 = x_1974;
  u_xlat1.x = x_1980;
  let x_1982 : vec3<f32> = vs_INTERP0;
  let x_1984 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1986 : vec3<f32> = (x_1982 + -(x_1984));
  let x_1987 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
  let x_1990 : vec4<f32> = u_xlat7;
  let x_1992 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_1990.x, x_1990.y, x_1990.z), vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
  let x_1997 : f32 = u_xlat23.x;
  let x_1999 : f32 = x_319.x_MainLightShadowParams.z;
  let x_2002 : f32 = x_319.x_MainLightShadowParams.w;
  u_xlat23.x = ((x_1997 * x_1999) + x_2002);
  let x_2006 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2006, 0.0f, 1.0f);
  let x_2010 : f32 = u_xlat1.x;
  u_xlat67 = (-(x_2010) + 1.0f);
  let x_2014 : f32 = u_xlat23.x;
  let x_2015 : f32 = u_xlat67;
  let x_2018 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2014 * x_2015) + x_2018);
  let x_2027 : f32 = x_2025.x_MainLightCookieTextureFormat;
  u_xlatb23.x = !((x_2027 == -1.0f));
  let x_2031 : bool = u_xlatb23.x;
  if (x_2031) {
    let x_2034 : vec3<f32> = vs_INTERP0;
    let x_2037 : vec4<f32> = x_2025.x_MainLightWorldToLight[1i];
    let x_2039 : vec2<f32> = (vec2<f32>(x_2034.y, x_2034.y) * vec2<f32>(x_2037.x, x_2037.y));
    let x_2040 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2039.x, x_2040.y, x_2039.y);
    let x_2043 : vec4<f32> = x_2025.x_MainLightWorldToLight[0i];
    let x_2045 : vec3<f32> = vs_INTERP0;
    let x_2048 : vec3<f32> = u_xlat23;
    let x_2050 : vec2<f32> = ((vec2<f32>(x_2043.x, x_2043.y) * vec2<f32>(x_2045.x, x_2045.x)) + vec2<f32>(x_2048.x, x_2048.z));
    let x_2051 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2050.x, x_2051.y, x_2050.y);
    let x_2054 : vec4<f32> = x_2025.x_MainLightWorldToLight[2i];
    let x_2056 : vec3<f32> = vs_INTERP0;
    let x_2059 : vec3<f32> = u_xlat23;
    let x_2061 : vec2<f32> = ((vec2<f32>(x_2054.x, x_2054.y) * vec2<f32>(x_2056.z, x_2056.z)) + vec2<f32>(x_2059.x, x_2059.z));
    let x_2062 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2061.x, x_2062.y, x_2061.y);
    let x_2064 : vec3<f32> = u_xlat23;
    let x_2067 : vec4<f32> = x_2025.x_MainLightWorldToLight[3i];
    let x_2069 : vec2<f32> = (vec2<f32>(x_2064.x, x_2064.z) + vec2<f32>(x_2067.x, x_2067.y));
    let x_2070 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2069.x, x_2070.y, x_2069.y);
    let x_2072 : vec3<f32> = u_xlat23;
    let x_2075 : vec2<f32> = ((vec2<f32>(x_2072.x, x_2072.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2076 : vec3<f32> = u_xlat23;
    u_xlat23 = vec3<f32>(x_2075.x, x_2076.y, x_2075.y);
    let x_2083 : vec3<f32> = u_xlat23;
    let x_2086 : f32 = x_45.x_GlobalMipBias.x;
    let x_2087 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2083.x, x_2083.z), x_2086);
    u_xlat7 = x_2087;
    let x_2089 : f32 = x_2025.x_MainLightCookieTextureFormat;
    let x_2091 : f32 = x_2025.x_MainLightCookieTextureFormat;
    let x_2093 : f32 = x_2025.x_MainLightCookieTextureFormat;
    let x_2095 : f32 = x_2025.x_MainLightCookieTextureFormat;
    let x_2096 : vec4<f32> = vec4<f32>(x_2089, x_2091, x_2093, x_2095);
    let x_2103 : vec4<bool> = (vec4<f32>(x_2096.x, x_2096.y, x_2096.z, x_2096.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 1.0f));
    let x_2105 : vec2<bool> = vec2<bool>(x_2103.x, x_2103.z);
    let x_2106 : vec3<bool> = u_xlatb23;
    u_xlatb23 = vec3<bool>(x_2105.x, x_2106.y, x_2105.y);
    let x_2109 : bool = u_xlatb23.z;
    if (x_2109) {
      let x_2114 : f32 = u_xlat7.w;
      x_2110 = x_2114;
    } else {
      let x_2117 : f32 = u_xlat7.x;
      x_2110 = x_2117;
    }
    let x_2118 : f32 = x_2110;
    u_xlat67 = x_2118;
    let x_2120 : bool = u_xlatb23.x;
    if (x_2120) {
      let x_2124 : vec4<f32> = u_xlat7;
      x_2121 = vec3<f32>(x_2124.x, x_2124.y, x_2124.z);
    } else {
      let x_2127 : f32 = u_xlat67;
      x_2121 = vec3<f32>(x_2127, x_2127, x_2127);
    }
    let x_2129 : vec3<f32> = x_2121;
    let x_2130 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2129.x, x_2129.y, x_2129.z, x_2130.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2136 : vec4<f32> = u_xlat7;
  let x_2139 : vec4<f32> = x_45.x_MainLightColor;
  let x_2141 : vec3<f32> = (vec3<f32>(x_2136.x, x_2136.y, x_2136.z) * vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
  let x_2142 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2142.w);
  let x_2144 : f32 = u_xlat71;
  let x_2146 : vec4<f32> = u_xlat7;
  let x_2148 : vec3<f32> = (vec3<f32>(x_2144, x_2144, x_2144) * vec3<f32>(x_2146.x, x_2146.y, x_2146.z));
  let x_2149 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2148.x, x_2148.y, x_2148.z, x_2149.w);
  let x_2151 : vec3<f32> = u_xlat5;
  let x_2153 : vec4<f32> = u_xlat4;
  u_xlat23.x = dot(-(x_2151), vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
  let x_2158 : f32 = u_xlat23.x;
  let x_2160 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2158 + x_2160);
  let x_2163 : vec4<f32> = u_xlat4;
  let x_2165 : vec3<f32> = u_xlat23;
  let x_2169 : vec3<f32> = u_xlat5;
  let x_2171 : vec3<f32> = ((vec3<f32>(x_2163.x, x_2163.y, x_2163.z) * -(vec3<f32>(x_2165.x, x_2165.x, x_2165.x))) + -(x_2169));
  let x_2172 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
  let x_2174 : vec4<f32> = u_xlat4;
  let x_2176 : vec3<f32> = u_xlat5;
  u_xlat23.x = dot(vec3<f32>(x_2174.x, x_2174.y, x_2174.z), x_2176);
  let x_2180 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_2180, 0.0f, 1.0f);
  let x_2184 : f32 = u_xlat23.x;
  u_xlat23.x = (-(x_2184) + 1.0f);
  let x_2189 : f32 = u_xlat23.x;
  let x_2191 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2189 * x_2191);
  let x_2195 : f32 = u_xlat23.x;
  let x_2197 : f32 = u_xlat23.x;
  u_xlat23.x = (x_2195 * x_2197);
  let x_2200 : f32 = u_xlat66;
  u_xlat67 = ((-(x_2200) * 0.699999988f) + 1.700000048f);
  let x_2206 : f32 = u_xlat66;
  let x_2207 : f32 = u_xlat67;
  u_xlat66 = (x_2206 * x_2207);
  let x_2209 : f32 = u_xlat66;
  u_xlat66 = (x_2209 * 6.0f);
  let x_2220 : vec4<f32> = u_xlat9;
  let x_2222 : f32 = u_xlat66;
  let x_2223 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2220.x, x_2220.y, x_2220.z), x_2222);
  u_xlat9 = x_2223;
  let x_2225 : f32 = u_xlat9.w;
  u_xlat66 = (x_2225 + -1.0f);
  let x_2228 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_2229 : f32 = u_xlat66;
  u_xlat66 = ((x_2228 * x_2229) + 1.0f);
  let x_2232 : f32 = u_xlat66;
  u_xlat66 = max(x_2232, 0.0f);
  let x_2234 : f32 = u_xlat66;
  u_xlat66 = log2(x_2234);
  let x_2236 : f32 = u_xlat66;
  let x_2238 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat66 = (x_2236 * x_2238);
  let x_2240 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2240);
  let x_2242 : f32 = u_xlat66;
  let x_2244 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat66 = (x_2242 * x_2244);
  let x_2246 : vec4<f32> = u_xlat9;
  let x_2248 : f32 = u_xlat66;
  let x_2250 : vec3<f32> = (vec3<f32>(x_2246.x, x_2246.y, x_2246.z) * vec3<f32>(x_2248, x_2248, x_2248));
  let x_2251 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
  let x_2253 : vec3<f32> = u_xlat3;
  let x_2255 : vec3<f32> = u_xlat3;
  let x_2259 : vec2<f32> = ((vec2<f32>(x_2253.x, x_2253.x) * vec2<f32>(x_2255.x, x_2255.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2260 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2259.x, x_2259.y, x_2260.z, x_2260.w);
  let x_2263 : f32 = u_xlat10.y;
  u_xlat66 = (1.0f / x_2263);
  let x_2265 : vec3<f32> = u_xlat0;
  let x_2267 : f32 = u_xlat68;
  u_xlat32 = (-(x_2265) + vec3<f32>(x_2267, x_2267, x_2267));
  let x_2270 : vec3<f32> = u_xlat23;
  let x_2272 : vec3<f32> = u_xlat32;
  let x_2274 : vec3<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_2270.x, x_2270.x, x_2270.x) * x_2272) + x_2274);
  let x_2276 : f32 = u_xlat66;
  let x_2278 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2276, x_2276, x_2276) * x_2278);
  let x_2280 : vec4<f32> = u_xlat9;
  let x_2282 : vec3<f32> = u_xlat32;
  let x_2283 : vec3<f32> = (vec3<f32>(x_2280.x, x_2280.y, x_2280.z) * x_2282);
  let x_2284 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
  let x_2286 : vec3<f32> = u_xlat6;
  let x_2287 : vec3<f32> = u_xlat8;
  let x_2289 : vec4<f32> = u_xlat9;
  u_xlat6 = ((x_2286 * x_2287) + vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
  let x_2293 : f32 = u_xlat1.x;
  let x_2295 : f32 = x_122.unity_LightData.z;
  u_xlat66 = (x_2293 * x_2295);
  let x_2297 : vec4<f32> = u_xlat4;
  let x_2300 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2297.x, x_2297.y, x_2297.z), vec3<f32>(x_2300.x, x_2300.y, x_2300.z));
  let x_2305 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2305, 0.0f, 1.0f);
  let x_2308 : f32 = u_xlat66;
  let x_2310 : f32 = u_xlat1.x;
  u_xlat66 = (x_2308 * x_2310);
  let x_2312 : f32 = u_xlat66;
  let x_2314 : vec4<f32> = u_xlat7;
  let x_2316 : vec3<f32> = (vec3<f32>(x_2312, x_2312, x_2312) * vec3<f32>(x_2314.x, x_2314.y, x_2314.z));
  let x_2317 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2316.x, x_2316.y, x_2317.z, x_2316.z);
  let x_2319 : vec3<f32> = u_xlat5;
  let x_2321 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2323 : vec3<f32> = (x_2319 + vec3<f32>(x_2321.x, x_2321.y, x_2321.z));
  let x_2324 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
  let x_2326 : vec4<f32> = u_xlat7;
  let x_2328 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2326.x, x_2326.y, x_2326.z), vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
  let x_2331 : f32 = u_xlat66;
  u_xlat66 = max(x_2331, 1.17549435e-37f);
  let x_2334 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_2334);
  let x_2336 : f32 = u_xlat66;
  let x_2338 : vec4<f32> = u_xlat7;
  let x_2340 : vec3<f32> = (vec3<f32>(x_2336, x_2336, x_2336) * vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
  let x_2343 : vec4<f32> = u_xlat4;
  let x_2345 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2343.x, x_2343.y, x_2343.z), vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
  let x_2348 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2348, 0.0f, 1.0f);
  let x_2351 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2353 : vec4<f32> = u_xlat7;
  u_xlat68 = dot(vec3<f32>(x_2351.x, x_2351.y, x_2351.z), vec3<f32>(x_2353.x, x_2353.y, x_2353.z));
  let x_2356 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2356, 0.0f, 1.0f);
  let x_2358 : f32 = u_xlat66;
  let x_2359 : f32 = u_xlat66;
  u_xlat66 = (x_2358 * x_2359);
  let x_2361 : f32 = u_xlat66;
  let x_2363 : f32 = u_xlat10.x;
  u_xlat66 = ((x_2361 * x_2363) + 1.000010014f);
  let x_2367 : f32 = u_xlat68;
  let x_2368 : f32 = u_xlat68;
  u_xlat68 = (x_2367 * x_2368);
  let x_2370 : f32 = u_xlat66;
  let x_2371 : f32 = u_xlat66;
  u_xlat66 = (x_2370 * x_2371);
  let x_2373 : f32 = u_xlat68;
  u_xlat68 = max(x_2373, 0.100000001f);
  let x_2376 : f32 = u_xlat66;
  let x_2377 : f32 = u_xlat68;
  u_xlat66 = (x_2376 * x_2377);
  let x_2379 : f32 = u_xlat25;
  let x_2380 : f32 = u_xlat66;
  u_xlat66 = (x_2379 * x_2380);
  let x_2382 : f32 = u_xlat69;
  let x_2383 : f32 = u_xlat66;
  u_xlat66 = (x_2382 / x_2383);
  let x_2385 : vec3<f32> = u_xlat0;
  let x_2386 : f32 = u_xlat66;
  let x_2389 : vec3<f32> = u_xlat8;
  let x_2390 : vec3<f32> = ((x_2385 * vec3<f32>(x_2386, x_2386, x_2386)) + x_2389);
  let x_2391 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
  let x_2393 : vec4<f32> = u_xlat1;
  let x_2395 : vec4<f32> = u_xlat7;
  let x_2397 : vec3<f32> = (vec3<f32>(x_2393.x, x_2393.y, x_2393.w) * vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
  let x_2398 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2397.x, x_2397.y, x_2398.z, x_2397.z);
  let x_2401 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2403 : f32 = x_122.unity_LightData.y;
  u_xlat66 = min(x_2401, x_2403);
  let x_2405 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_2405));
  let x_2411 : f32 = x_2025.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2413 : f32 = x_2025.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2415 : f32 = x_2025.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2417 : f32 = x_2025.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2418 : vec4<f32> = vec4<f32>(x_2411, x_2413, x_2415, x_2417);
  let x_2425 : vec4<bool> = (vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2418.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2425.x, x_2425.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2436 : u32 = u_xlatu_loop_1;
    let x_2437 : u32 = u_xlatu66;
    if ((x_2436 < x_2437)) {
    } else {
      break;
    }
    let x_2440 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_2440 >> 2u);
    let x_2443 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2443 & 3u));
    let x_2446 : u32 = u_xlatu3;
    let x_2449 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_2446)];
    let x_2459 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2464 : vec4<u32> = indexable[x_2459];
    u_xlat3.x = dot(x_2449, bitcast<vec4<f32>>(x_2464));
    let x_2469 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_2469));
    let x_2472 : vec3<f32> = vs_INTERP0;
    let x_2484 : u32 = u_xlatu3;
    let x_2487 : vec4<f32> = x_2483.x_AdditionalLightsPosition[bitcast<i32>(x_2484)];
    let x_2490 : u32 = u_xlatu3;
    let x_2493 : vec4<f32> = x_2483.x_AdditionalLightsPosition[bitcast<i32>(x_2490)];
    u_xlat32 = ((-(x_2472) * vec3<f32>(x_2487.w, x_2487.w, x_2487.w)) + vec3<f32>(x_2493.x, x_2493.y, x_2493.z));
    let x_2496 : vec3<f32> = u_xlat32;
    let x_2497 : vec3<f32> = u_xlat32;
    u_xlat70 = dot(x_2496, x_2497);
    let x_2499 : f32 = u_xlat70;
    u_xlat70 = max(x_2499, 6.10351562e-05f);
    let x_2502 : f32 = u_xlat70;
    u_xlat72 = inverseSqrt(x_2502);
    let x_2504 : f32 = u_xlat72;
    let x_2506 : vec3<f32> = u_xlat32;
    let x_2507 : vec3<f32> = (vec3<f32>(x_2504, x_2504, x_2504) * x_2506);
    let x_2508 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
    let x_2510 : f32 = u_xlat70;
    u_xlat51.x = (1.0f / x_2510);
    let x_2513 : f32 = u_xlat70;
    let x_2514 : u32 = u_xlatu3;
    let x_2517 : f32 = x_2483.x_AdditionalLightsAttenuation[bitcast<i32>(x_2514)].x;
    u_xlat70 = (x_2513 * x_2517);
    let x_2519 : f32 = u_xlat70;
    let x_2521 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2519) * x_2521) + 1.0f);
    let x_2524 : f32 = u_xlat70;
    u_xlat70 = max(x_2524, 0.0f);
    let x_2526 : f32 = u_xlat70;
    let x_2527 : f32 = u_xlat70;
    u_xlat70 = (x_2526 * x_2527);
    let x_2529 : f32 = u_xlat70;
    let x_2531 : f32 = u_xlat51.x;
    u_xlat70 = (x_2529 * x_2531);
    let x_2533 : u32 = u_xlatu3;
    let x_2536 : vec4<f32> = x_2483.x_AdditionalLightsSpotDir[bitcast<i32>(x_2533)];
    let x_2538 : vec4<f32> = u_xlat11;
    u_xlat51.x = dot(vec3<f32>(x_2536.x, x_2536.y, x_2536.z), vec3<f32>(x_2538.x, x_2538.y, x_2538.z));
    let x_2543 : f32 = u_xlat51.x;
    let x_2544 : u32 = u_xlatu3;
    let x_2547 : f32 = x_2483.x_AdditionalLightsAttenuation[bitcast<i32>(x_2544)].z;
    let x_2549 : u32 = u_xlatu3;
    let x_2552 : f32 = x_2483.x_AdditionalLightsAttenuation[bitcast<i32>(x_2549)].w;
    u_xlat51.x = ((x_2543 * x_2547) + x_2552);
    let x_2556 : f32 = u_xlat51.x;
    u_xlat51.x = clamp(x_2556, 0.0f, 1.0f);
    let x_2560 : f32 = u_xlat51.x;
    let x_2562 : f32 = u_xlat51.x;
    u_xlat51.x = (x_2560 * x_2562);
    let x_2565 : f32 = u_xlat70;
    let x_2567 : f32 = u_xlat51.x;
    u_xlat70 = (x_2565 * x_2567);
    let x_2570 : u32 = u_xlatu3;
    u_xlatu51 = (x_2570 >> 5u);
    let x_2573 : u32 = u_xlatu3;
    u_xlati73 = (1i << bitcast<u32>((bitcast<i32>(x_2573) & 31i)));
    let x_2579 : i32 = u_xlati73;
    let x_2581 : u32 = u_xlatu51;
    let x_2584 : f32 = x_2025.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2581)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_2579) & bitcast<u32>(x_2584)));
    let x_2588 : i32 = u_xlati51;
    if ((x_2588 != 0i)) {
      let x_2598 : u32 = u_xlatu3;
      let x_2601 : f32 = x_2597.x_AdditionalLightsLightTypes[bitcast<i32>(x_2598)].el;
      u_xlati51 = i32(x_2601);
      let x_2603 : i32 = u_xlati51;
      u_xlati73 = select(1i, 0i, (x_2603 != 0i));
      let x_2607 : u32 = u_xlatu3;
      u_xlati74 = (bitcast<i32>(x_2607) << bitcast<u32>(2i));
      let x_2610 : i32 = u_xlati73;
      if ((x_2610 != 0i)) {
        let x_2614 : vec3<f32> = vs_INTERP0;
        let x_2616 : i32 = u_xlati74;
        let x_2619 : i32 = u_xlati74;
        let x_2623 : vec4<f32> = x_2597.x_AdditionalLightsWorldToLights[((x_2616 + 1i) / 4i)][((x_2619 + 1i) % 4i)];
        let x_2625 : vec3<f32> = (vec3<f32>(x_2614.y, x_2614.y, x_2614.y) * vec3<f32>(x_2623.x, x_2623.y, x_2623.w));
        let x_2626 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2625.x, x_2625.y, x_2625.z, x_2626.w);
        let x_2628 : i32 = u_xlati74;
        let x_2630 : i32 = u_xlati74;
        let x_2633 : vec4<f32> = x_2597.x_AdditionalLightsWorldToLights[(x_2628 / 4i)][(x_2630 % 4i)];
        let x_2635 : vec3<f32> = vs_INTERP0;
        let x_2638 : vec4<f32> = u_xlat12;
        let x_2640 : vec3<f32> = ((vec3<f32>(x_2633.x, x_2633.y, x_2633.w) * vec3<f32>(x_2635.x, x_2635.x, x_2635.x)) + vec3<f32>(x_2638.x, x_2638.y, x_2638.z));
        let x_2641 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2641.w);
        let x_2643 : i32 = u_xlati74;
        let x_2646 : i32 = u_xlati74;
        let x_2650 : vec4<f32> = x_2597.x_AdditionalLightsWorldToLights[((x_2643 + 2i) / 4i)][((x_2646 + 2i) % 4i)];
        let x_2652 : vec3<f32> = vs_INTERP0;
        let x_2655 : vec4<f32> = u_xlat12;
        let x_2657 : vec3<f32> = ((vec3<f32>(x_2650.x, x_2650.y, x_2650.w) * vec3<f32>(x_2652.z, x_2652.z, x_2652.z)) + vec3<f32>(x_2655.x, x_2655.y, x_2655.z));
        let x_2658 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2657.x, x_2657.y, x_2657.z, x_2658.w);
        let x_2660 : vec4<f32> = u_xlat12;
        let x_2662 : i32 = u_xlati74;
        let x_2665 : i32 = u_xlati74;
        let x_2669 : vec4<f32> = x_2597.x_AdditionalLightsWorldToLights[((x_2662 + 3i) / 4i)][((x_2665 + 3i) % 4i)];
        let x_2671 : vec3<f32> = (vec3<f32>(x_2660.x, x_2660.y, x_2660.z) + vec3<f32>(x_2669.x, x_2669.y, x_2669.w));
        let x_2672 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2671.x, x_2671.y, x_2671.z, x_2672.w);
        let x_2674 : vec4<f32> = u_xlat12;
        let x_2676 : vec4<f32> = u_xlat12;
        let x_2678 : vec2<f32> = (vec2<f32>(x_2674.x, x_2674.y) / vec2<f32>(x_2676.z, x_2676.z));
        let x_2679 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2678.x, x_2678.y, x_2679.z, x_2679.w);
        let x_2681 : vec4<f32> = u_xlat12;
        let x_2684 : vec2<f32> = ((vec2<f32>(x_2681.x, x_2681.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2685 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2684.x, x_2684.y, x_2685.z, x_2685.w);
        let x_2687 : vec4<f32> = u_xlat12;
        let x_2691 : vec2<f32> = clamp(vec2<f32>(x_2687.x, x_2687.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2692 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2691.x, x_2691.y, x_2692.z, x_2692.w);
        let x_2694 : u32 = u_xlatu3;
        let x_2697 : vec4<f32> = x_2597.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2694)];
        let x_2699 : vec4<f32> = u_xlat12;
        let x_2702 : u32 = u_xlatu3;
        let x_2705 : vec4<f32> = x_2597.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2702)];
        let x_2707 : vec2<f32> = ((vec2<f32>(x_2697.x, x_2697.y) * vec2<f32>(x_2699.x, x_2699.y)) + vec2<f32>(x_2705.z, x_2705.w));
        let x_2708 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2707.x, x_2707.y, x_2708.z, x_2708.w);
      } else {
        let x_2712 : i32 = u_xlati51;
        u_xlatb51 = (x_2712 == 1i);
        let x_2714 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_2714);
        let x_2716 : i32 = u_xlati51;
        if ((x_2716 != 0i)) {
          let x_2720 : vec3<f32> = vs_INTERP0;
          let x_2722 : i32 = u_xlati74;
          let x_2725 : i32 = u_xlati74;
          let x_2729 : vec4<f32> = x_2597.x_AdditionalLightsWorldToLights[((x_2722 + 1i) / 4i)][((x_2725 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2720.y, x_2720.y) * vec2<f32>(x_2729.x, x_2729.y));
          let x_2732 : i32 = u_xlati74;
          let x_2734 : i32 = u_xlati74;
          let x_2737 : vec4<f32> = x_2597.x_AdditionalLightsWorldToLights[(x_2732 / 4i)][(x_2734 % 4i)];
          let x_2739 : vec3<f32> = vs_INTERP0;
          let x_2742 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2737.x, x_2737.y) * vec2<f32>(x_2739.x, x_2739.x)) + x_2742);
          let x_2744 : i32 = u_xlati74;
          let x_2747 : i32 = u_xlati74;
          let x_2751 : vec4<f32> = x_2597.x_AdditionalLightsWorldToLights[((x_2744 + 2i) / 4i)][((x_2747 + 2i) % 4i)];
          let x_2753 : vec3<f32> = vs_INTERP0;
          let x_2756 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2751.x, x_2751.y) * vec2<f32>(x_2753.z, x_2753.z)) + x_2756);
          let x_2758 : vec2<f32> = u_xlat51;
          let x_2759 : i32 = u_xlati74;
          let x_2762 : i32 = u_xlati74;
          let x_2766 : vec4<f32> = x_2597.x_AdditionalLightsWorldToLights[((x_2759 + 3i) / 4i)][((x_2762 + 3i) % 4i)];
          u_xlat51 = (x_2758 + vec2<f32>(x_2766.x, x_2766.y));
          let x_2769 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2769 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2772 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2772);
          let x_2774 : u32 = u_xlatu3;
          let x_2777 : vec4<f32> = x_2597.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2774)];
          let x_2779 : vec2<f32> = u_xlat51;
          let x_2781 : u32 = u_xlatu3;
          let x_2784 : vec4<f32> = x_2597.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2781)];
          let x_2786 : vec2<f32> = ((vec2<f32>(x_2777.x, x_2777.y) * x_2779) + vec2<f32>(x_2784.z, x_2784.w));
          let x_2787 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2786.x, x_2786.y, x_2787.z, x_2787.w);
        } else {
          let x_2790 : vec3<f32> = vs_INTERP0;
          let x_2792 : i32 = u_xlati74;
          let x_2795 : i32 = u_xlati74;
          let x_2799 : vec4<f32> = x_2597.x_AdditionalLightsWorldToLights[((x_2792 + 1i) / 4i)][((x_2795 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_2790.y, x_2790.y, x_2790.y, x_2790.y) * x_2799);
          let x_2801 : i32 = u_xlati74;
          let x_2803 : i32 = u_xlati74;
          let x_2806 : vec4<f32> = x_2597.x_AdditionalLightsWorldToLights[(x_2801 / 4i)][(x_2803 % 4i)];
          let x_2807 : vec3<f32> = vs_INTERP0;
          let x_2810 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2806 * vec4<f32>(x_2807.x, x_2807.x, x_2807.x, x_2807.x)) + x_2810);
          let x_2812 : i32 = u_xlati74;
          let x_2815 : i32 = u_xlati74;
          let x_2819 : vec4<f32> = x_2597.x_AdditionalLightsWorldToLights[((x_2812 + 2i) / 4i)][((x_2815 + 2i) % 4i)];
          let x_2820 : vec3<f32> = vs_INTERP0;
          let x_2823 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2819 * vec4<f32>(x_2820.z, x_2820.z, x_2820.z, x_2820.z)) + x_2823);
          let x_2825 : vec4<f32> = u_xlat13;
          let x_2826 : i32 = u_xlati74;
          let x_2829 : i32 = u_xlati74;
          let x_2833 : vec4<f32> = x_2597.x_AdditionalLightsWorldToLights[((x_2826 + 3i) / 4i)][((x_2829 + 3i) % 4i)];
          u_xlat13 = (x_2825 + x_2833);
          let x_2835 : vec4<f32> = u_xlat13;
          let x_2837 : vec4<f32> = u_xlat13;
          let x_2839 : vec3<f32> = (vec3<f32>(x_2835.x, x_2835.y, x_2835.z) / vec3<f32>(x_2837.w, x_2837.w, x_2837.w));
          let x_2840 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2839.x, x_2839.y, x_2839.z, x_2840.w);
          let x_2842 : vec4<f32> = u_xlat13;
          let x_2844 : vec4<f32> = u_xlat13;
          u_xlat51.x = dot(vec3<f32>(x_2842.x, x_2842.y, x_2842.z), vec3<f32>(x_2844.x, x_2844.y, x_2844.z));
          let x_2849 : f32 = u_xlat51.x;
          u_xlat51.x = inverseSqrt(x_2849);
          let x_2852 : vec2<f32> = u_xlat51;
          let x_2854 : vec4<f32> = u_xlat13;
          let x_2856 : vec3<f32> = (vec3<f32>(x_2852.x, x_2852.x, x_2852.x) * vec3<f32>(x_2854.x, x_2854.y, x_2854.z));
          let x_2857 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2856.x, x_2856.y, x_2856.z, x_2857.w);
          let x_2859 : vec4<f32> = u_xlat13;
          u_xlat51.x = dot(abs(vec3<f32>(x_2859.x, x_2859.y, x_2859.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2866 : f32 = u_xlat51.x;
          u_xlat51.x = max(x_2866, 0.000001f);
          let x_2871 : f32 = u_xlat51.x;
          u_xlat51.x = (1.0f / x_2871);
          let x_2874 : vec2<f32> = u_xlat51;
          let x_2876 : vec4<f32> = u_xlat13;
          let x_2878 : vec3<f32> = (vec3<f32>(x_2874.x, x_2874.x, x_2874.x) * vec3<f32>(x_2876.z, x_2876.x, x_2876.y));
          let x_2879 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_2878.x, x_2878.y, x_2878.z, x_2879.w);
          let x_2882 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_2882);
          let x_2886 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_2886, 0.0f, 1.0f);
          let x_2890 : vec4<f32> = u_xlat14;
          let x_2893 : vec4<bool> = (vec4<f32>(x_2890.y, x_2890.z, x_2890.y, x_2890.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb56 = vec2<bool>(x_2893.x, x_2893.y);
          let x_2897 : bool = u_xlatb56.x;
          if (x_2897) {
            let x_2902 : f32 = u_xlat14.x;
            x_2898 = x_2902;
          } else {
            let x_2905 : f32 = u_xlat14.x;
            x_2898 = -(x_2905);
          }
          let x_2907 : f32 = x_2898;
          u_xlat56.x = x_2907;
          let x_2910 : bool = u_xlatb56.y;
          if (x_2910) {
            let x_2915 : f32 = u_xlat14.x;
            x_2911 = x_2915;
          } else {
            let x_2918 : f32 = u_xlat14.x;
            x_2911 = -(x_2918);
          }
          let x_2920 : f32 = x_2911;
          u_xlat56.y = x_2920;
          let x_2922 : vec4<f32> = u_xlat13;
          let x_2924 : vec2<f32> = u_xlat51;
          let x_2927 : vec2<f32> = u_xlat56;
          u_xlat51 = ((vec2<f32>(x_2922.x, x_2922.y) * vec2<f32>(x_2924.x, x_2924.x)) + x_2927);
          let x_2929 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2929 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2932 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_2932, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2936 : u32 = u_xlatu3;
          let x_2939 : vec4<f32> = x_2597.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2936)];
          let x_2941 : vec2<f32> = u_xlat51;
          let x_2943 : u32 = u_xlatu3;
          let x_2946 : vec4<f32> = x_2597.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2943)];
          let x_2948 : vec2<f32> = ((vec2<f32>(x_2939.x, x_2939.y) * x_2941) + vec2<f32>(x_2946.z, x_2946.w));
          let x_2949 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2948.x, x_2948.y, x_2949.z, x_2949.w);
        }
      }
      let x_2956 : vec4<f32> = u_xlat12;
      let x_2959 : f32 = x_45.x_GlobalMipBias.x;
      let x_2960 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2956.x, x_2956.y), x_2959);
      u_xlat12 = x_2960;
      let x_2962 : bool = u_xlatb7.y;
      if (x_2962) {
        let x_2967 : f32 = u_xlat12.w;
        x_2963 = x_2967;
      } else {
        let x_2970 : f32 = u_xlat12.x;
        x_2963 = x_2970;
      }
      let x_2971 : f32 = x_2963;
      u_xlat51.x = x_2971;
      let x_2974 : bool = u_xlatb7.x;
      if (x_2974) {
        let x_2978 : vec4<f32> = u_xlat12;
        x_2975 = vec3<f32>(x_2978.x, x_2978.y, x_2978.z);
      } else {
        let x_2981 : vec2<f32> = u_xlat51;
        x_2975 = vec3<f32>(x_2981.x, x_2981.x, x_2981.x);
      }
      let x_2983 : vec3<f32> = x_2975;
      let x_2984 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2983.x, x_2983.y, x_2983.z, x_2984.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_2990 : vec4<f32> = u_xlat12;
    let x_2992 : u32 = u_xlatu3;
    let x_2995 : vec4<f32> = x_2483.x_AdditionalLightsColor[bitcast<i32>(x_2992)];
    let x_2997 : vec3<f32> = (vec3<f32>(x_2990.x, x_2990.y, x_2990.z) * vec3<f32>(x_2995.x, x_2995.y, x_2995.z));
    let x_2998 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2997.x, x_2997.y, x_2997.z, x_2998.w);
    let x_3000 : f32 = u_xlat71;
    let x_3002 : vec4<f32> = u_xlat12;
    let x_3004 : vec3<f32> = (vec3<f32>(x_3000, x_3000, x_3000) * vec3<f32>(x_3002.x, x_3002.y, x_3002.z));
    let x_3005 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_3004.x, x_3004.y, x_3004.z, x_3005.w);
    let x_3007 : vec4<f32> = u_xlat4;
    let x_3009 : vec4<f32> = u_xlat11;
    u_xlat3.x = dot(vec3<f32>(x_3007.x, x_3007.y, x_3007.z), vec3<f32>(x_3009.x, x_3009.y, x_3009.z));
    let x_3014 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_3014, 0.0f, 1.0f);
    let x_3018 : f32 = u_xlat3.x;
    let x_3019 : f32 = u_xlat70;
    u_xlat3.x = (x_3018 * x_3019);
    let x_3022 : vec3<f32> = u_xlat3;
    let x_3024 : vec4<f32> = u_xlat12;
    let x_3026 : vec3<f32> = (vec3<f32>(x_3022.x, x_3022.x, x_3022.x) * vec3<f32>(x_3024.x, x_3024.y, x_3024.z));
    let x_3027 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_3026.x, x_3026.y, x_3026.z, x_3027.w);
    let x_3029 : vec3<f32> = u_xlat32;
    let x_3030 : f32 = u_xlat72;
    let x_3033 : vec3<f32> = u_xlat5;
    u_xlat32 = ((x_3029 * vec3<f32>(x_3030, x_3030, x_3030)) + x_3033);
    let x_3035 : vec3<f32> = u_xlat32;
    let x_3036 : vec3<f32> = u_xlat32;
    u_xlat3.x = dot(x_3035, x_3036);
    let x_3040 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_3040, 1.17549435e-37f);
    let x_3044 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_3044);
    let x_3047 : vec3<f32> = u_xlat3;
    let x_3049 : vec3<f32> = u_xlat32;
    u_xlat32 = (vec3<f32>(x_3047.x, x_3047.x, x_3047.x) * x_3049);
    let x_3051 : vec4<f32> = u_xlat4;
    let x_3053 : vec3<f32> = u_xlat32;
    u_xlat3.x = dot(vec3<f32>(x_3051.x, x_3051.y, x_3051.z), x_3053);
    let x_3057 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_3057, 0.0f, 1.0f);
    let x_3060 : vec4<f32> = u_xlat11;
    let x_3062 : vec3<f32> = u_xlat32;
    u_xlat70 = dot(vec3<f32>(x_3060.x, x_3060.y, x_3060.z), x_3062);
    let x_3064 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3064, 0.0f, 1.0f);
    let x_3067 : f32 = u_xlat3.x;
    let x_3069 : f32 = u_xlat3.x;
    u_xlat3.x = (x_3067 * x_3069);
    let x_3073 : f32 = u_xlat3.x;
    let x_3075 : f32 = u_xlat10.x;
    u_xlat3.x = ((x_3073 * x_3075) + 1.000010014f);
    let x_3079 : f32 = u_xlat70;
    let x_3080 : f32 = u_xlat70;
    u_xlat70 = (x_3079 * x_3080);
    let x_3083 : f32 = u_xlat3.x;
    let x_3085 : f32 = u_xlat3.x;
    u_xlat3.x = (x_3083 * x_3085);
    let x_3088 : f32 = u_xlat70;
    u_xlat70 = max(x_3088, 0.100000001f);
    let x_3091 : f32 = u_xlat3.x;
    let x_3092 : f32 = u_xlat70;
    u_xlat3.x = (x_3091 * x_3092);
    let x_3095 : f32 = u_xlat25;
    let x_3097 : f32 = u_xlat3.x;
    u_xlat3.x = (x_3095 * x_3097);
    let x_3100 : f32 = u_xlat69;
    let x_3102 : f32 = u_xlat3.x;
    u_xlat3.x = (x_3100 / x_3102);
    let x_3105 : vec3<f32> = u_xlat0;
    let x_3106 : vec3<f32> = u_xlat3;
    let x_3109 : vec3<f32> = u_xlat8;
    u_xlat32 = ((x_3105 * vec3<f32>(x_3106.x, x_3106.x, x_3106.x)) + x_3109);
    let x_3111 : vec3<f32> = u_xlat32;
    let x_3112 : vec4<f32> = u_xlat12;
    let x_3115 : vec4<f32> = u_xlat9;
    let x_3117 : vec3<f32> = ((x_3111 * vec3<f32>(x_3112.x, x_3112.y, x_3112.z)) + vec3<f32>(x_3115.x, x_3115.y, x_3115.z));
    let x_3118 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3117.x, x_3117.y, x_3117.z, x_3118.w);

    continuing {
      let x_3120 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3120 + bitcast<u32>(1i));
    }
  }
  let x_3122 : vec3<f32> = u_xlat6;
  let x_3123 : f32 = u_xlat47;
  let x_3126 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_3122 * vec3<f32>(x_3123, x_3123, x_3123)) + vec3<f32>(x_3126.x, x_3126.y, x_3126.w));
  let x_3129 : vec4<f32> = u_xlat9;
  let x_3131 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3129.x, x_3129.y, x_3129.z) + x_3131);
  let x_3135 : vec3<f32> = u_xlat2;
  let x_3136 : f32 = u_xlat45;
  let x_3139 : vec3<f32> = u_xlat0;
  let x_3140 : vec3<f32> = ((x_3135 * vec3<f32>(x_3136, x_3136, x_3136)) + x_3139);
  let x_3141 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3140.x, x_3140.y, x_3140.z, x_3141.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0);
}

