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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_498 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1821 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2262 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2370 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat7 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat45 : f32;
  var u_xlatb67 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
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
  var x_1905 : f32;
  var x_1916 : vec3<f32>;
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
  var x_2664 : f32;
  var x_2677 : f32;
  var x_2729 : f32;
  var x_2740 : vec3<f32>;
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
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_246.z, x_245.z);
  let x_251 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb63 = (x_251 == 0.0f);
  let x_254 : vec3<f32> = vs_INTERP0;
  let x_259 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_260 : vec3<f32> = (-(x_254) + x_259);
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat4;
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat65 = dot(vec3<f32>(x_263.x, x_263.y, x_263.z), vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_268);
  let x_270 : f32 = u_xlat65;
  let x_272 : vec4<f32> = u_xlat4;
  let x_274 : vec3<f32> = (vec3<f32>(x_270, x_270, x_270) * vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : bool = u_xlatb63;
  if (x_278) {
    let x_283 : f32 = u_xlat4.x;
    x_279 = x_283;
  } else {
    let x_287 : f32 = x_45.unity_MatrixV[0i].z;
    x_279 = x_287;
  }
  let x_288 : f32 = x_279;
  u_xlat5.x = x_288;
  let x_290 : bool = u_xlatb63;
  if (x_290) {
    let x_296 : f32 = u_xlat4.y;
    x_291 = x_296;
  } else {
    let x_299 : f32 = x_45.unity_MatrixV[1i].z;
    x_291 = x_299;
  }
  let x_300 : f32 = x_291;
  u_xlat5.y = x_300;
  let x_302 : bool = u_xlatb63;
  if (x_302) {
    let x_307 : f32 = u_xlat4.z;
    x_303 = x_307;
  } else {
    let x_311 : f32 = x_45.unity_MatrixV[2i].z;
    x_303 = x_311;
  }
  let x_312 : f32 = x_303;
  u_xlat5.z = x_312;
  let x_321 : vec2<f32> = vs_INTERP4;
  let x_323 : f32 = x_45.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_321, x_323);
  u_xlat4 = x_324;
  let x_330 : vec2<f32> = vs_INTERP4;
  let x_332 : f32 = x_45.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_330, x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.y, x_333.z);
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat4;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat1;
  let x_346 : vec4<f32> = u_xlat4;
  u_xlat63 = dot(vec3<f32>(x_344.x, x_344.y, x_344.w), vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : f32 = u_xlat63;
  u_xlat63 = (x_349 + 0.5f);
  let x_352 : f32 = u_xlat63;
  let x_354 : vec4<f32> = u_xlat6;
  let x_356 : vec3<f32> = (vec3<f32>(x_352, x_352, x_352) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : f32 = u_xlat4.w;
  u_xlat63 = max(x_360, 0.0001f);
  let x_363 : vec4<f32> = u_xlat4;
  let x_365 : f32 = u_xlat63;
  let x_367 : vec3<f32> = (vec3<f32>(x_363.x, x_363.y, x_363.z) / vec3<f32>(x_365, x_365, x_365));
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_372 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_373 : vec2<f32> = vec2<f32>(x_372.x, x_372.y);
  let x_377 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_373.x, x_373.y));
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat6;
  let x_382 : vec4<f32> = hlslcc_FragCoord;
  let x_384 : vec2<f32> = (vec2<f32>(x_380.x, x_380.y) * vec2<f32>(x_382.x, x_382.y));
  let x_385 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_384.x, x_384.y, x_385.z, x_385.w);
  let x_388 : f32 = u_xlat6.y;
  let x_391 : f32 = x_45.x_ScaleBiasRt.x;
  let x_394 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat63 = ((x_388 * x_391) + x_394);
  let x_396 : f32 = u_xlat63;
  u_xlat6.z = (-(x_396) + 1.0f);
  let x_400 : vec3<f32> = u_xlat3;
  let x_401 : vec2<f32> = vec2<f32>(x_400.x, x_400.y);
  let x_402 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_401.x, x_401.y, x_402.z);
  let x_404 : vec3<f32> = u_xlat3;
  let x_408 : vec2<f32> = clamp(vec2<f32>(x_404.x, x_404.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_409 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_408.x, x_408.y, x_409.z);
  let x_412 : f32 = u_xlat3.x;
  u_xlat63 = ((-(x_412) * 0.959999979f) + 0.959999979f);
  let x_417 : f32 = u_xlat63;
  let x_420 : f32 = u_xlat3.y;
  u_xlat65 = (-(x_417) + x_420);
  let x_423 : f32 = u_xlat63;
  let x_425 : vec3<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_423, x_423, x_423) * x_425);
  let x_427 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_427 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_431 : vec3<f32> = u_xlat3;
  let x_433 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_431.x, x_431.x, x_431.x) * x_433) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_439 : f32 = u_xlat3.y;
  u_xlat63 = (-(x_439) + 1.0f);
  let x_442 : f32 = u_xlat63;
  let x_443 : f32 = u_xlat63;
  u_xlat3.x = (x_442 * x_443);
  let x_447 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_447, 0.0078125f);
  let x_453 : f32 = u_xlat3.x;
  let x_455 : f32 = u_xlat3.x;
  u_xlat24 = (x_453 * x_455);
  let x_457 : f32 = u_xlat65;
  u_xlat65 = (x_457 + 1.0f);
  let x_459 : f32 = u_xlat65;
  u_xlat65 = min(x_459, 1.0f);
  let x_463 : f32 = u_xlat3.x;
  u_xlat66 = ((x_463 * 4.0f) + 2.0f);
  let x_473 : vec4<f32> = u_xlat6;
  let x_476 : f32 = x_45.x_GlobalMipBias.x;
  let x_477 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_473.x, x_473.z), x_476);
  u_xlat67 = x_477.x;
  let x_480 : f32 = u_xlat67;
  u_xlat68 = (x_480 + -1.0f);
  let x_484 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_485 : f32 = u_xlat68;
  u_xlat68 = ((x_484 * x_485) + 1.0f);
  let x_490 : f32 = u_xlat3.z;
  let x_491 : f32 = u_xlat67;
  u_xlat45 = min(x_490, x_491);
  let x_500 : f32 = x_498.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_500);
  let x_502 : bool = u_xlatb67;
  if (x_502) {
    let x_506 : f32 = x_498.x_MainLightShadowParams.y;
    u_xlatb67 = (x_506 == 1.0f);
    let x_508 : bool = u_xlatb67;
    if (x_508) {
      let x_512 : vec4<f32> = vs_INTERP8;
      let x_515 : vec4<f32> = x_498.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_512.x, x_512.y, x_512.x, x_512.y) + x_515);
      let x_518 : vec4<f32> = u_xlat6;
      let x_519 : vec2<f32> = vec2<f32>(x_518.x, x_518.y);
      let x_521 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_519.x, x_519.y, x_521);
      let x_534 : vec3<f32> = txVec0;
      let x_536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_534.xy, x_534.z);
      u_xlat8.x = x_536;
      let x_539 : vec4<f32> = u_xlat6;
      let x_540 : vec2<f32> = vec2<f32>(x_539.z, x_539.w);
      let x_542 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_540.x, x_540.y, x_542);
      let x_549 : vec3<f32> = txVec1;
      let x_551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_549.xy, x_549.z);
      u_xlat8.y = x_551;
      let x_553 : vec4<f32> = vs_INTERP8;
      let x_556 : vec4<f32> = x_498.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_553.x, x_553.y, x_553.x, x_553.y) + x_556);
      let x_559 : vec4<f32> = u_xlat6;
      let x_560 : vec2<f32> = vec2<f32>(x_559.x, x_559.y);
      let x_562 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_560.x, x_560.y, x_562);
      let x_569 : vec3<f32> = txVec2;
      let x_571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_569.xy, x_569.z);
      u_xlat8.z = x_571;
      let x_574 : vec4<f32> = u_xlat6;
      let x_575 : vec2<f32> = vec2<f32>(x_574.z, x_574.w);
      let x_577 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_575.x, x_575.y, x_577);
      let x_584 : vec3<f32> = txVec3;
      let x_586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_584.xy, x_584.z);
      u_xlat8.w = x_586;
      let x_588 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_588, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_595 : f32 = x_498.x_MainLightShadowParams.y;
      u_xlatb6 = (x_595 == 2.0f);
      let x_597 : bool = u_xlatb6;
      if (x_597) {
        let x_600 : vec4<f32> = vs_INTERP8;
        let x_603 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_607 : vec2<f32> = ((vec2<f32>(x_600.x, x_600.y) * vec2<f32>(x_603.z, x_603.w)) + vec2<f32>(0.5f, 0.5f));
        let x_608 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
        let x_610 : vec4<f32> = u_xlat6;
        let x_612 : vec2<f32> = floor(vec2<f32>(x_610.x, x_610.y));
        let x_613 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
        let x_617 : vec4<f32> = vs_INTERP8;
        let x_620 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_623 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_617.x, x_617.y) * vec2<f32>(x_620.z, x_620.w)) + -(vec2<f32>(x_623.x, x_623.y)));
        let x_627 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_627.x, x_627.x, x_627.y, x_627.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_632 : vec4<f32> = u_xlat8;
        let x_634 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_632.x, x_632.x, x_632.z, x_632.z) * vec4<f32>(x_634.x, x_634.x, x_634.z, x_634.z));
        let x_637 : vec4<f32> = u_xlat9;
        let x_641 : vec2<f32> = (vec2<f32>(x_637.y, x_637.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_641.x, x_642.y, x_641.y, x_642.w);
        let x_644 : vec4<f32> = u_xlat9;
        let x_647 : vec2<f32> = u_xlat48;
        let x_649 : vec2<f32> = ((vec2<f32>(x_644.x, x_644.z) * vec2<f32>(0.5f, 0.5f)) + -(x_647));
        let x_650 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
        let x_653 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_653) + vec2<f32>(1.0f, 1.0f));
        let x_657 : vec2<f32> = u_xlat48;
        let x_659 : vec2<f32> = min(x_657, vec2<f32>(0.0f, 0.0f));
        let x_660 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_662 : vec4<f32> = u_xlat10;
        let x_665 : vec4<f32> = u_xlat10;
        let x_668 : vec2<f32> = u_xlat51;
        let x_669 : vec2<f32> = ((-(vec2<f32>(x_662.x, x_662.y)) * vec2<f32>(x_665.x, x_665.y)) + x_668);
        let x_670 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
        let x_672 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_672, vec2<f32>(0.0f, 0.0f));
        let x_674 : vec2<f32> = u_xlat48;
        let x_676 : vec2<f32> = u_xlat48;
        let x_678 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_674) * x_676) + vec2<f32>(x_678.y, x_678.w));
        let x_681 : vec4<f32> = u_xlat10;
        let x_683 : vec2<f32> = (vec2<f32>(x_681.x, x_681.y) + vec2<f32>(1.0f, 1.0f));
        let x_684 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_686 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_686 + vec2<f32>(1.0f, 1.0f));
        let x_689 : vec4<f32> = u_xlat9;
        let x_693 : vec2<f32> = (vec2<f32>(x_689.x, x_689.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_694 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_696 : vec2<f32> = u_xlat51;
        let x_697 : vec2<f32> = (x_696 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_698 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
        let x_700 : vec4<f32> = u_xlat10;
        let x_702 : vec2<f32> = (vec2<f32>(x_700.x, x_700.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_703 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_706 : vec2<f32> = u_xlat48;
        let x_707 : vec2<f32> = (x_706 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_708 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_707.x, x_707.y, x_708.z, x_708.w);
        let x_710 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_710.y, x_710.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_714 : f32 = u_xlat10.x;
        u_xlat11.z = x_714;
        let x_717 : f32 = u_xlat48.x;
        u_xlat11.w = x_717;
        let x_720 : f32 = u_xlat12.x;
        u_xlat9.z = x_720;
        let x_723 : f32 = u_xlat8.x;
        u_xlat9.w = x_723;
        let x_726 : vec4<f32> = u_xlat9;
        let x_728 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_726.z, x_726.w, x_726.x, x_726.z) + vec4<f32>(x_728.z, x_728.w, x_728.x, x_728.z));
        let x_732 : f32 = u_xlat11.y;
        u_xlat10.z = x_732;
        let x_735 : f32 = u_xlat48.y;
        u_xlat10.w = x_735;
        let x_738 : f32 = u_xlat9.y;
        u_xlat12.z = x_738;
        let x_741 : f32 = u_xlat8.z;
        u_xlat12.w = x_741;
        let x_743 : vec4<f32> = u_xlat10;
        let x_745 : vec4<f32> = u_xlat12;
        let x_747 : vec3<f32> = (vec3<f32>(x_743.z, x_743.y, x_743.w) + vec3<f32>(x_745.z, x_745.y, x_745.w));
        let x_748 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
        let x_750 : vec4<f32> = u_xlat9;
        let x_752 : vec4<f32> = u_xlat13;
        let x_754 : vec3<f32> = (vec3<f32>(x_750.x, x_750.z, x_750.w) / vec3<f32>(x_752.z, x_752.w, x_752.y));
        let x_755 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
        let x_757 : vec4<f32> = u_xlat9;
        let x_762 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_763 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
        let x_765 : vec4<f32> = u_xlat12;
        let x_767 : vec4<f32> = u_xlat8;
        let x_769 : vec3<f32> = (vec3<f32>(x_765.z, x_765.y, x_765.w) / vec3<f32>(x_767.x, x_767.y, x_767.z));
        let x_770 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
        let x_772 : vec4<f32> = u_xlat10;
        let x_774 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_775 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
        let x_777 : vec4<f32> = u_xlat9;
        let x_780 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_782 : vec3<f32> = (vec3<f32>(x_777.y, x_777.x, x_777.z) * vec3<f32>(x_780.x, x_780.x, x_780.x));
        let x_783 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
        let x_785 : vec4<f32> = u_xlat10;
        let x_788 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_790 : vec3<f32> = (vec3<f32>(x_785.x, x_785.y, x_785.z) * vec3<f32>(x_788.y, x_788.y, x_788.y));
        let x_791 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
        let x_794 : f32 = u_xlat10.x;
        u_xlat9.w = x_794;
        let x_796 : vec4<f32> = u_xlat6;
        let x_799 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_802 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_796.x, x_796.y, x_796.x, x_796.y) * vec4<f32>(x_799.x, x_799.y, x_799.x, x_799.y)) + vec4<f32>(x_802.y, x_802.w, x_802.x, x_802.w));
        let x_805 : vec4<f32> = u_xlat6;
        let x_808 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_811 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_805.x, x_805.y) * vec2<f32>(x_808.x, x_808.y)) + vec2<f32>(x_811.z, x_811.w));
        let x_815 : f32 = u_xlat9.y;
        u_xlat10.w = x_815;
        let x_817 : vec4<f32> = u_xlat10;
        let x_818 : vec2<f32> = vec2<f32>(x_817.y, x_817.z);
        let x_819 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_819.x, x_818.x, x_819.z, x_818.y);
        let x_821 : vec4<f32> = u_xlat6;
        let x_824 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_827 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_821.x, x_821.y, x_821.x, x_821.y) * vec4<f32>(x_824.x, x_824.y, x_824.x, x_824.y)) + vec4<f32>(x_827.x, x_827.y, x_827.z, x_827.y));
        let x_830 : vec4<f32> = u_xlat6;
        let x_833 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_836 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_830.x, x_830.y, x_830.x, x_830.y) * vec4<f32>(x_833.x, x_833.y, x_833.x, x_833.y)) + vec4<f32>(x_836.w, x_836.y, x_836.w, x_836.z));
        let x_839 : vec4<f32> = u_xlat6;
        let x_842 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_845 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_839.x, x_839.y, x_839.x, x_839.y) * vec4<f32>(x_842.x, x_842.y, x_842.x, x_842.y)) + vec4<f32>(x_845.x, x_845.w, x_845.z, x_845.w));
        let x_849 : vec4<f32> = u_xlat8;
        let x_851 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_849.x, x_849.x, x_849.x, x_849.y) * vec4<f32>(x_851.z, x_851.w, x_851.y, x_851.z));
        let x_855 : vec4<f32> = u_xlat8;
        let x_857 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_855.y, x_855.y, x_855.z, x_855.z) * x_857);
        let x_860 : f32 = u_xlat8.z;
        let x_862 : f32 = u_xlat13.y;
        u_xlat6.x = (x_860 * x_862);
        let x_866 : vec4<f32> = u_xlat11;
        let x_867 : vec2<f32> = vec2<f32>(x_866.x, x_866.y);
        let x_869 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_867.x, x_867.y, x_869);
        let x_877 : vec3<f32> = txVec4;
        let x_879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_877.xy, x_877.z);
        u_xlat27 = x_879;
        let x_881 : vec4<f32> = u_xlat11;
        let x_882 : vec2<f32> = vec2<f32>(x_881.z, x_881.w);
        let x_884 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_882.x, x_882.y, x_884);
        let x_892 : vec3<f32> = txVec5;
        let x_894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_892.xy, x_892.z);
        u_xlat70 = x_894;
        let x_895 : f32 = u_xlat70;
        let x_897 : f32 = u_xlat14.y;
        u_xlat70 = (x_895 * x_897);
        let x_900 : f32 = u_xlat14.x;
        let x_901 : f32 = u_xlat27;
        let x_903 : f32 = u_xlat70;
        u_xlat27 = ((x_900 * x_901) + x_903);
        let x_906 : vec2<f32> = u_xlat48;
        let x_908 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_906.x, x_906.y, x_908);
        let x_915 : vec3<f32> = txVec6;
        let x_917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_915.xy, x_915.z);
        u_xlat48.x = x_917;
        let x_920 : f32 = u_xlat14.z;
        let x_922 : f32 = u_xlat48.x;
        let x_924 : f32 = u_xlat27;
        u_xlat27 = ((x_920 * x_922) + x_924);
        let x_927 : vec4<f32> = u_xlat10;
        let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
        let x_930 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_928.x, x_928.y, x_930);
        let x_937 : vec3<f32> = txVec7;
        let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_937.xy, x_937.z);
        u_xlat48.x = x_939;
        let x_942 : f32 = u_xlat14.w;
        let x_944 : f32 = u_xlat48.x;
        let x_946 : f32 = u_xlat27;
        u_xlat27 = ((x_942 * x_944) + x_946);
        let x_949 : vec4<f32> = u_xlat12;
        let x_950 : vec2<f32> = vec2<f32>(x_949.x, x_949.y);
        let x_952 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_950.x, x_950.y, x_952);
        let x_959 : vec3<f32> = txVec8;
        let x_961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_959.xy, x_959.z);
        u_xlat48.x = x_961;
        let x_964 : f32 = u_xlat15.x;
        let x_966 : f32 = u_xlat48.x;
        let x_968 : f32 = u_xlat27;
        u_xlat27 = ((x_964 * x_966) + x_968);
        let x_971 : vec4<f32> = u_xlat12;
        let x_972 : vec2<f32> = vec2<f32>(x_971.z, x_971.w);
        let x_974 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_972.x, x_972.y, x_974);
        let x_981 : vec3<f32> = txVec9;
        let x_983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_981.xy, x_981.z);
        u_xlat48.x = x_983;
        let x_986 : f32 = u_xlat15.y;
        let x_988 : f32 = u_xlat48.x;
        let x_990 : f32 = u_xlat27;
        u_xlat27 = ((x_986 * x_988) + x_990);
        let x_993 : vec4<f32> = u_xlat10;
        let x_994 : vec2<f32> = vec2<f32>(x_993.z, x_993.w);
        let x_996 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_994.x, x_994.y, x_996);
        let x_1003 : vec3<f32> = txVec10;
        let x_1005 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1003.xy, x_1003.z);
        u_xlat48.x = x_1005;
        let x_1008 : f32 = u_xlat15.z;
        let x_1010 : f32 = u_xlat48.x;
        let x_1012 : f32 = u_xlat27;
        u_xlat27 = ((x_1008 * x_1010) + x_1012);
        let x_1015 : vec4<f32> = u_xlat9;
        let x_1016 : vec2<f32> = vec2<f32>(x_1015.x, x_1015.y);
        let x_1018 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1016.x, x_1016.y, x_1018);
        let x_1025 : vec3<f32> = txVec11;
        let x_1027 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1025.xy, x_1025.z);
        u_xlat48.x = x_1027;
        let x_1030 : f32 = u_xlat15.w;
        let x_1032 : f32 = u_xlat48.x;
        let x_1034 : f32 = u_xlat27;
        u_xlat27 = ((x_1030 * x_1032) + x_1034);
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1038 : vec2<f32> = vec2<f32>(x_1037.z, x_1037.w);
        let x_1040 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1038.x, x_1038.y, x_1040);
        let x_1047 : vec3<f32> = txVec12;
        let x_1049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1047.xy, x_1047.z);
        u_xlat48.x = x_1049;
        let x_1052 : f32 = u_xlat6.x;
        let x_1054 : f32 = u_xlat48.x;
        let x_1056 : f32 = u_xlat27;
        u_xlat67 = ((x_1052 * x_1054) + x_1056);
      } else {
        let x_1059 : vec4<f32> = vs_INTERP8;
        let x_1062 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1065 : vec2<f32> = ((vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(x_1062.z, x_1062.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1066 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1068 : vec4<f32> = u_xlat6;
        let x_1070 : vec2<f32> = floor(vec2<f32>(x_1068.x, x_1068.y));
        let x_1071 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1070.x, x_1070.y, x_1071.z, x_1071.w);
        let x_1073 : vec4<f32> = vs_INTERP8;
        let x_1076 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1076.z, x_1076.w)) + -(vec2<f32>(x_1079.x, x_1079.y)));
        let x_1083 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1083.x, x_1083.x, x_1083.y, x_1083.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1086 : vec4<f32> = u_xlat8;
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1086.x, x_1086.x, x_1086.z, x_1086.z) * vec4<f32>(x_1088.x, x_1088.x, x_1088.z, x_1088.z));
        let x_1091 : vec4<f32> = u_xlat9;
        let x_1095 : vec2<f32> = (vec2<f32>(x_1091.y, x_1091.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1096 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1096.x, x_1095.x, x_1096.z, x_1095.y);
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1101 : vec2<f32> = u_xlat48;
        let x_1103 : vec2<f32> = ((vec2<f32>(x_1098.x, x_1098.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1101));
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1106 : vec2<f32> = u_xlat48;
        let x_1108 : vec2<f32> = (-(x_1106) + vec2<f32>(1.0f, 1.0f));
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1111 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1111, vec2<f32>(0.0f, 0.0f));
        let x_1113 : vec2<f32> = u_xlat51;
        let x_1115 : vec2<f32> = u_xlat51;
        let x_1117 : vec4<f32> = u_xlat9;
        let x_1119 : vec2<f32> = ((-(x_1113) * x_1115) + vec2<f32>(x_1117.x, x_1117.y));
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1122 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1122, vec2<f32>(0.0f, 0.0f));
        let x_1125 : vec2<f32> = u_xlat51;
        let x_1127 : vec2<f32> = u_xlat51;
        let x_1129 : vec4<f32> = u_xlat8;
        let x_1131 : vec2<f32> = ((-(x_1125) * x_1127) + vec2<f32>(x_1129.y, x_1129.w));
        let x_1132 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1131.x, x_1132.y, x_1131.y);
        let x_1134 : vec4<f32> = u_xlat9;
        let x_1136 : vec2<f32> = (vec2<f32>(x_1134.x, x_1134.y) + vec2<f32>(2.0f, 2.0f));
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1139 : vec3<f32> = u_xlat29;
        let x_1141 : vec2<f32> = (vec2<f32>(x_1139.x, x_1139.z) + vec2<f32>(2.0f, 2.0f));
        let x_1142 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1141.x, x_1142.z, x_1141.y);
        let x_1145 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1145 * 0.081632003f);
        let x_1149 : vec4<f32> = u_xlat8;
        let x_1152 : vec3<f32> = (vec3<f32>(x_1149.z, x_1149.x, x_1149.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1153 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat9;
        let x_1158 : vec2<f32> = (vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1159 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
        let x_1162 : f32 = u_xlat12.y;
        u_xlat11.x = x_1162;
        let x_1164 : vec2<f32> = u_xlat48;
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1172 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1172.x, x_1171.x, x_1172.z, x_1171.y);
        let x_1174 : vec2<f32> = u_xlat48;
        let x_1178 : vec2<f32> = ((vec2<f32>(x_1174.x, x_1174.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1178.x, x_1179.y, x_1178.y, x_1179.w);
        let x_1182 : f32 = u_xlat8.x;
        u_xlat9.y = x_1182;
        let x_1185 : f32 = u_xlat10.y;
        u_xlat9.w = x_1185;
        let x_1187 : vec4<f32> = u_xlat9;
        let x_1188 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1187 + x_1188);
        let x_1190 : vec2<f32> = u_xlat48;
        let x_1193 : vec2<f32> = ((vec2<f32>(x_1190.y, x_1190.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1194 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1194.x, x_1193.x, x_1194.z, x_1193.y);
        let x_1196 : vec2<f32> = u_xlat48;
        let x_1199 : vec2<f32> = ((vec2<f32>(x_1196.y, x_1196.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1200 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1199.x, x_1200.y, x_1199.y, x_1200.w);
        let x_1203 : f32 = u_xlat8.y;
        u_xlat10.y = x_1203;
        let x_1205 : vec4<f32> = u_xlat10;
        let x_1206 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1205 + x_1206);
        let x_1208 : vec4<f32> = u_xlat9;
        let x_1209 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1208 / x_1209);
        let x_1211 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1211 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1217 : vec4<f32> = u_xlat10;
        let x_1218 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1217 / x_1218);
        let x_1220 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1220 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1222 : vec4<f32> = u_xlat9;
        let x_1225 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1222.w, x_1222.x, x_1222.y, x_1222.z) * vec4<f32>(x_1225.x, x_1225.x, x_1225.x, x_1225.x));
        let x_1228 : vec4<f32> = u_xlat10;
        let x_1231 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1228.x, x_1228.w, x_1228.y, x_1228.z) * vec4<f32>(x_1231.y, x_1231.y, x_1231.y, x_1231.y));
        let x_1234 : vec4<f32> = u_xlat9;
        let x_1235 : vec3<f32> = vec3<f32>(x_1234.y, x_1234.z, x_1234.w);
        let x_1236 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1235.x, x_1236.y, x_1235.y, x_1235.z);
        let x_1239 : f32 = u_xlat10.x;
        u_xlat12.y = x_1239;
        let x_1241 : vec4<f32> = u_xlat6;
        let x_1244 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat6;
        let x_1253 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1250.x, x_1250.y) * vec2<f32>(x_1253.x, x_1253.y)) + vec2<f32>(x_1256.w, x_1256.y));
        let x_1260 : f32 = u_xlat12.y;
        u_xlat9.y = x_1260;
        let x_1263 : f32 = u_xlat10.z;
        u_xlat12.y = x_1263;
        let x_1265 : vec4<f32> = u_xlat6;
        let x_1268 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y) * vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y)) + vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1271.y));
        let x_1274 : vec4<f32> = u_xlat6;
        let x_1277 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat12;
        let x_1282 : vec2<f32> = ((vec2<f32>(x_1274.x, x_1274.y) * vec2<f32>(x_1277.x, x_1277.y)) + vec2<f32>(x_1280.w, x_1280.y));
        let x_1283 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1283.w);
        let x_1286 : f32 = u_xlat12.y;
        u_xlat9.z = x_1286;
        let x_1289 : vec4<f32> = u_xlat6;
        let x_1292 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y) * vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y)) + vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.z));
        let x_1299 : f32 = u_xlat10.w;
        u_xlat12.y = x_1299;
        let x_1302 : vec4<f32> = u_xlat6;
        let x_1305 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y) * vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y)) + vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1308.y));
        let x_1312 : vec4<f32> = u_xlat6;
        let x_1315 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1318 : vec4<f32> = u_xlat12;
        let x_1320 : vec2<f32> = ((vec2<f32>(x_1312.x, x_1312.y) * vec2<f32>(x_1315.x, x_1315.y)) + vec2<f32>(x_1318.w, x_1318.y));
        let x_1321 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1320.x, x_1320.y, x_1321.z);
        let x_1324 : f32 = u_xlat12.y;
        u_xlat9.w = x_1324;
        let x_1327 : vec4<f32> = u_xlat6;
        let x_1330 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1333 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1327.x, x_1327.y) * vec2<f32>(x_1330.x, x_1330.y)) + vec2<f32>(x_1333.x, x_1333.w));
        let x_1336 : vec4<f32> = u_xlat12;
        let x_1337 : vec3<f32> = vec3<f32>(x_1336.x, x_1336.z, x_1336.w);
        let x_1338 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1337.x, x_1338.y, x_1337.y, x_1337.z);
        let x_1340 : vec4<f32> = u_xlat6;
        let x_1343 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y) * vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.y)) + vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1346.y));
        let x_1350 : vec4<f32> = u_xlat6;
        let x_1353 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(x_1353.x, x_1353.y)) + vec2<f32>(x_1356.w, x_1356.y));
        let x_1360 : f32 = u_xlat9.x;
        u_xlat10.x = x_1360;
        let x_1362 : vec4<f32> = u_xlat6;
        let x_1365 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat10;
        let x_1370 : vec2<f32> = ((vec2<f32>(x_1362.x, x_1362.y) * vec2<f32>(x_1365.x, x_1365.y)) + vec2<f32>(x_1368.x, x_1368.y));
        let x_1371 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1370.x, x_1370.y, x_1371.z, x_1371.w);
        let x_1374 : vec4<f32> = u_xlat8;
        let x_1376 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1374.x, x_1374.x, x_1374.x, x_1374.x) * x_1376);
        let x_1379 : vec4<f32> = u_xlat8;
        let x_1381 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1379.y, x_1379.y, x_1379.y, x_1379.y) * x_1381);
        let x_1384 : vec4<f32> = u_xlat8;
        let x_1386 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1384.z, x_1384.z, x_1384.z, x_1384.z) * x_1386);
        let x_1388 : vec4<f32> = u_xlat8;
        let x_1390 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1388.w, x_1388.w, x_1388.w, x_1388.w) * x_1390);
        let x_1393 : vec4<f32> = u_xlat13;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.x, x_1393.y);
        let x_1396 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec13;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1403.xy, x_1403.z);
        u_xlat70 = x_1405;
        let x_1407 : vec4<f32> = u_xlat13;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.z, x_1407.w);
        let x_1410 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec14;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1417.xy, x_1417.z);
        u_xlat9.x = x_1419;
        let x_1422 : f32 = u_xlat9.x;
        let x_1424 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1422 * x_1424);
        let x_1428 : f32 = u_xlat18.x;
        let x_1429 : f32 = u_xlat70;
        let x_1432 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1428 * x_1429) + x_1432);
        let x_1435 : vec2<f32> = u_xlat48;
        let x_1437 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec15;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat48.x = x_1446;
        let x_1449 : f32 = u_xlat18.z;
        let x_1451 : f32 = u_xlat48.x;
        let x_1453 : f32 = u_xlat70;
        u_xlat48.x = ((x_1449 * x_1451) + x_1453);
        let x_1457 : vec4<f32> = u_xlat16;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.x, x_1457.y);
        let x_1460 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1468 : vec3<f32> = txVec16;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1468.xy, x_1468.z);
        u_xlat69 = x_1470;
        let x_1472 : f32 = u_xlat18.w;
        let x_1473 : f32 = u_xlat69;
        let x_1476 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1472 * x_1473) + x_1476);
        let x_1480 : vec4<f32> = u_xlat14;
        let x_1481 : vec2<f32> = vec2<f32>(x_1480.x, x_1480.y);
        let x_1483 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec17;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1490.xy, x_1490.z);
        u_xlat69 = x_1492;
        let x_1494 : f32 = u_xlat19.x;
        let x_1495 : f32 = u_xlat69;
        let x_1498 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1494 * x_1495) + x_1498);
        let x_1502 : vec4<f32> = u_xlat14;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.z, x_1502.w);
        let x_1505 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec18;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1512.xy, x_1512.z);
        u_xlat69 = x_1514;
        let x_1516 : f32 = u_xlat19.y;
        let x_1517 : f32 = u_xlat69;
        let x_1520 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1516 * x_1517) + x_1520);
        let x_1524 : vec4<f32> = u_xlat15;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
        let x_1527 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec19;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1534.xy, x_1534.z);
        u_xlat69 = x_1536;
        let x_1538 : f32 = u_xlat19.z;
        let x_1539 : f32 = u_xlat69;
        let x_1542 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1538 * x_1539) + x_1542);
        let x_1546 : vec4<f32> = u_xlat16;
        let x_1547 : vec2<f32> = vec2<f32>(x_1546.z, x_1546.w);
        let x_1549 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1547.x, x_1547.y, x_1549);
        let x_1556 : vec3<f32> = txVec20;
        let x_1558 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1556.xy, x_1556.z);
        u_xlat69 = x_1558;
        let x_1560 : f32 = u_xlat19.w;
        let x_1561 : f32 = u_xlat69;
        let x_1564 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1560 * x_1561) + x_1564);
        let x_1568 : vec4<f32> = u_xlat17;
        let x_1569 : vec2<f32> = vec2<f32>(x_1568.x, x_1568.y);
        let x_1571 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec21;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1578.xy, x_1578.z);
        u_xlat69 = x_1580;
        let x_1582 : f32 = u_xlat20.x;
        let x_1583 : f32 = u_xlat69;
        let x_1586 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1582 * x_1583) + x_1586);
        let x_1590 : vec4<f32> = u_xlat17;
        let x_1591 : vec2<f32> = vec2<f32>(x_1590.z, x_1590.w);
        let x_1593 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
        let x_1600 : vec3<f32> = txVec22;
        let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1600.xy, x_1600.z);
        u_xlat69 = x_1602;
        let x_1604 : f32 = u_xlat20.y;
        let x_1605 : f32 = u_xlat69;
        let x_1608 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1604 * x_1605) + x_1608);
        let x_1612 : vec3<f32> = u_xlat30;
        let x_1613 : vec2<f32> = vec2<f32>(x_1612.x, x_1612.y);
        let x_1615 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1613.x, x_1613.y, x_1615);
        let x_1622 : vec3<f32> = txVec23;
        let x_1624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1622.xy, x_1622.z);
        u_xlat69 = x_1624;
        let x_1626 : f32 = u_xlat20.z;
        let x_1627 : f32 = u_xlat69;
        let x_1630 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1626 * x_1627) + x_1630);
        let x_1634 : vec2<f32> = u_xlat57;
        let x_1636 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec24;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1643.xy, x_1643.z);
        u_xlat69 = x_1645;
        let x_1647 : f32 = u_xlat20.w;
        let x_1648 : f32 = u_xlat69;
        let x_1651 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1647 * x_1648) + x_1651);
        let x_1655 : vec4<f32> = u_xlat12;
        let x_1656 : vec2<f32> = vec2<f32>(x_1655.x, x_1655.y);
        let x_1658 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1656.x, x_1656.y, x_1658);
        let x_1665 : vec3<f32> = txVec25;
        let x_1667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1665.xy, x_1665.z);
        u_xlat69 = x_1667;
        let x_1669 : f32 = u_xlat8.x;
        let x_1670 : f32 = u_xlat69;
        let x_1673 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1669 * x_1670) + x_1673);
        let x_1677 : vec4<f32> = u_xlat12;
        let x_1678 : vec2<f32> = vec2<f32>(x_1677.z, x_1677.w);
        let x_1680 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1678.x, x_1678.y, x_1680);
        let x_1687 : vec3<f32> = txVec26;
        let x_1689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1687.xy, x_1687.z);
        u_xlat69 = x_1689;
        let x_1691 : f32 = u_xlat8.y;
        let x_1692 : f32 = u_xlat69;
        let x_1695 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1691 * x_1692) + x_1695);
        let x_1699 : vec2<f32> = u_xlat52;
        let x_1701 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1699.x, x_1699.y, x_1701);
        let x_1708 : vec3<f32> = txVec27;
        let x_1710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1708.xy, x_1708.z);
        u_xlat69 = x_1710;
        let x_1712 : f32 = u_xlat8.z;
        let x_1713 : f32 = u_xlat69;
        let x_1716 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1712 * x_1713) + x_1716);
        let x_1720 : vec4<f32> = u_xlat6;
        let x_1721 : vec2<f32> = vec2<f32>(x_1720.x, x_1720.y);
        let x_1723 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1721.x, x_1721.y, x_1723);
        let x_1730 : vec3<f32> = txVec28;
        let x_1732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1730.xy, x_1730.z);
        u_xlat6.x = x_1732;
        let x_1735 : f32 = u_xlat8.w;
        let x_1737 : f32 = u_xlat6.x;
        let x_1740 : f32 = u_xlat48.x;
        u_xlat67 = ((x_1735 * x_1737) + x_1740);
      }
    }
  } else {
    let x_1744 : vec4<f32> = vs_INTERP8;
    let x_1745 : vec2<f32> = vec2<f32>(x_1744.x, x_1744.y);
    let x_1747 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1745.x, x_1745.y, x_1747);
    let x_1754 : vec3<f32> = txVec29;
    let x_1756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1754.xy, x_1754.z);
    u_xlat67 = x_1756;
  }
  let x_1758 : f32 = x_498.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1758) + 1.0f);
  let x_1762 : f32 = u_xlat67;
  let x_1764 : f32 = x_498.x_MainLightShadowParams.x;
  let x_1767 : f32 = u_xlat6.x;
  u_xlat67 = ((x_1762 * x_1764) + x_1767);
  let x_1770 : f32 = vs_INTERP8.z;
  u_xlatb6 = (0.0f >= x_1770);
  let x_1774 : f32 = vs_INTERP8.z;
  u_xlatb27 = (x_1774 >= 1.0f);
  let x_1776 : bool = u_xlatb27;
  let x_1777 : bool = u_xlatb6;
  u_xlatb6 = (x_1776 | x_1777);
  let x_1779 : bool = u_xlatb6;
  let x_1780 : f32 = u_xlat67;
  u_xlat67 = select(x_1780, 1.0f, x_1779);
  let x_1782 : vec3<f32> = vs_INTERP0;
  let x_1784 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1786 : vec3<f32> = (x_1782 + -(x_1784));
  let x_1787 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
  let x_1789 : vec4<f32> = u_xlat6;
  let x_1791 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1789.x, x_1789.y, x_1789.z), vec3<f32>(x_1791.x, x_1791.y, x_1791.z));
  let x_1796 : f32 = u_xlat6.x;
  let x_1798 : f32 = x_498.x_MainLightShadowParams.z;
  let x_1801 : f32 = x_498.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1796 * x_1798) + x_1801);
  let x_1805 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1805, 0.0f, 1.0f);
  let x_1808 : f32 = u_xlat67;
  u_xlat27 = (-(x_1808) + 1.0f);
  let x_1812 : f32 = u_xlat6.x;
  let x_1813 : f32 = u_xlat27;
  let x_1815 : f32 = u_xlat67;
  u_xlat67 = ((x_1812 * x_1813) + x_1815);
  let x_1823 : f32 = x_1821.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1823 == -1.0f));
  let x_1825 : bool = u_xlatb6;
  if (x_1825) {
    let x_1828 : vec3<f32> = vs_INTERP0;
    let x_1831 : vec4<f32> = x_1821.x_MainLightWorldToLight[1i];
    let x_1833 : vec2<f32> = (vec2<f32>(x_1828.y, x_1828.y) * vec2<f32>(x_1831.x, x_1831.y));
    let x_1834 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1833.x, x_1833.y, x_1834.z, x_1834.w);
    let x_1837 : vec4<f32> = x_1821.x_MainLightWorldToLight[0i];
    let x_1839 : vec3<f32> = vs_INTERP0;
    let x_1842 : vec4<f32> = u_xlat6;
    let x_1844 : vec2<f32> = ((vec2<f32>(x_1837.x, x_1837.y) * vec2<f32>(x_1839.x, x_1839.x)) + vec2<f32>(x_1842.x, x_1842.y));
    let x_1845 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1844.x, x_1844.y, x_1845.z, x_1845.w);
    let x_1848 : vec4<f32> = x_1821.x_MainLightWorldToLight[2i];
    let x_1850 : vec3<f32> = vs_INTERP0;
    let x_1853 : vec4<f32> = u_xlat6;
    let x_1855 : vec2<f32> = ((vec2<f32>(x_1848.x, x_1848.y) * vec2<f32>(x_1850.z, x_1850.z)) + vec2<f32>(x_1853.x, x_1853.y));
    let x_1856 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1855.x, x_1855.y, x_1856.z, x_1856.w);
    let x_1858 : vec4<f32> = u_xlat6;
    let x_1861 : vec4<f32> = x_1821.x_MainLightWorldToLight[3i];
    let x_1863 : vec2<f32> = (vec2<f32>(x_1858.x, x_1858.y) + vec2<f32>(x_1861.x, x_1861.y));
    let x_1864 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1863.x, x_1863.y, x_1864.z, x_1864.w);
    let x_1866 : vec4<f32> = u_xlat6;
    let x_1869 : vec2<f32> = ((vec2<f32>(x_1866.x, x_1866.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1870 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1869.x, x_1869.y, x_1870.z, x_1870.w);
    let x_1877 : vec4<f32> = u_xlat6;
    let x_1880 : f32 = x_45.x_GlobalMipBias.x;
    let x_1881 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1877.x, x_1877.y), x_1880);
    u_xlat6 = x_1881;
    let x_1886 : f32 = x_1821.x_MainLightCookieTextureFormat;
    let x_1888 : f32 = x_1821.x_MainLightCookieTextureFormat;
    let x_1890 : f32 = x_1821.x_MainLightCookieTextureFormat;
    let x_1892 : f32 = x_1821.x_MainLightCookieTextureFormat;
    let x_1893 : vec4<f32> = vec4<f32>(x_1886, x_1888, x_1890, x_1892);
    let x_1901 : vec4<bool> = (vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1893.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1901.x, x_1901.y);
    let x_1904 : bool = u_xlatb8.y;
    if (x_1904) {
      let x_1909 : f32 = u_xlat6.w;
      x_1905 = x_1909;
    } else {
      let x_1912 : f32 = u_xlat6.x;
      x_1905 = x_1912;
    }
    let x_1913 : f32 = x_1905;
    u_xlat69 = x_1913;
    let x_1915 : bool = u_xlatb8.x;
    if (x_1915) {
      let x_1919 : vec4<f32> = u_xlat6;
      x_1916 = vec3<f32>(x_1919.x, x_1919.y, x_1919.z);
    } else {
      let x_1922 : f32 = u_xlat69;
      x_1916 = vec3<f32>(x_1922, x_1922, x_1922);
    }
    let x_1924 : vec3<f32> = x_1916;
    let x_1925 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1931 : vec4<f32> = u_xlat6;
  let x_1934 : vec4<f32> = x_45.x_MainLightColor;
  let x_1936 : vec3<f32> = (vec3<f32>(x_1931.x, x_1931.y, x_1931.z) * vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1937 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1936.x, x_1936.y, x_1936.z, x_1937.w);
  let x_1939 : f32 = u_xlat68;
  let x_1941 : vec4<f32> = u_xlat6;
  let x_1943 : vec3<f32> = (vec3<f32>(x_1939, x_1939, x_1939) * vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1944 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1946 : vec3<f32> = u_xlat5;
  let x_1948 : vec4<f32> = u_xlat1;
  u_xlat69 = dot(-(x_1946), vec3<f32>(x_1948.x, x_1948.y, x_1948.w));
  let x_1951 : f32 = u_xlat69;
  let x_1952 : f32 = u_xlat69;
  u_xlat69 = (x_1951 + x_1952);
  let x_1954 : vec4<f32> = u_xlat1;
  let x_1956 : f32 = u_xlat69;
  let x_1960 : vec3<f32> = u_xlat5;
  let x_1962 : vec3<f32> = ((vec3<f32>(x_1954.x, x_1954.y, x_1954.w) * -(vec3<f32>(x_1956, x_1956, x_1956))) + -(x_1960));
  let x_1963 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1963.w);
  let x_1965 : vec4<f32> = u_xlat1;
  let x_1967 : vec3<f32> = u_xlat5;
  u_xlat69 = dot(vec3<f32>(x_1965.x, x_1965.y, x_1965.w), x_1967);
  let x_1969 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1969, 0.0f, 1.0f);
  let x_1971 : f32 = u_xlat69;
  u_xlat69 = (-(x_1971) + 1.0f);
  let x_1974 : f32 = u_xlat69;
  let x_1975 : f32 = u_xlat69;
  u_xlat69 = (x_1974 * x_1975);
  let x_1977 : f32 = u_xlat69;
  let x_1978 : f32 = u_xlat69;
  u_xlat69 = (x_1977 * x_1978);
  let x_1980 : f32 = u_xlat63;
  u_xlat70 = ((-(x_1980) * 0.699999988f) + 1.700000048f);
  let x_1986 : f32 = u_xlat63;
  let x_1987 : f32 = u_xlat70;
  u_xlat63 = (x_1986 * x_1987);
  let x_1989 : f32 = u_xlat63;
  u_xlat63 = (x_1989 * 6.0f);
  let x_2000 : vec4<f32> = u_xlat8;
  let x_2002 : f32 = u_xlat63;
  let x_2003 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2000.x, x_2000.y, x_2000.z), x_2002);
  u_xlat8 = x_2003;
  let x_2005 : f32 = u_xlat8.w;
  u_xlat63 = (x_2005 + -1.0f);
  let x_2008 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_2009 : f32 = u_xlat63;
  u_xlat63 = ((x_2008 * x_2009) + 1.0f);
  let x_2012 : f32 = u_xlat63;
  u_xlat63 = max(x_2012, 0.0f);
  let x_2014 : f32 = u_xlat63;
  u_xlat63 = log2(x_2014);
  let x_2016 : f32 = u_xlat63;
  let x_2018 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2016 * x_2018);
  let x_2020 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2020);
  let x_2022 : f32 = u_xlat63;
  let x_2024 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2022 * x_2024);
  let x_2026 : vec4<f32> = u_xlat8;
  let x_2028 : f32 = u_xlat63;
  let x_2030 : vec3<f32> = (vec3<f32>(x_2026.x, x_2026.y, x_2026.z) * vec3<f32>(x_2028, x_2028, x_2028));
  let x_2031 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2030.x, x_2030.y, x_2030.z, x_2031.w);
  let x_2033 : vec3<f32> = u_xlat3;
  let x_2035 : vec3<f32> = u_xlat3;
  let x_2039 : vec2<f32> = ((vec2<f32>(x_2033.x, x_2033.x) * vec2<f32>(x_2035.x, x_2035.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2040 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2039.x, x_2039.y, x_2040.z, x_2040.w);
  let x_2043 : f32 = u_xlat9.y;
  u_xlat63 = (1.0f / x_2043);
  let x_2045 : vec3<f32> = u_xlat0;
  let x_2047 : f32 = u_xlat65;
  u_xlat30 = (-(x_2045) + vec3<f32>(x_2047, x_2047, x_2047));
  let x_2050 : f32 = u_xlat69;
  let x_2052 : vec3<f32> = u_xlat30;
  let x_2054 : vec3<f32> = u_xlat0;
  u_xlat30 = ((vec3<f32>(x_2050, x_2050, x_2050) * x_2052) + x_2054);
  let x_2056 : f32 = u_xlat63;
  let x_2058 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_2056, x_2056, x_2056) * x_2058);
  let x_2060 : vec4<f32> = u_xlat8;
  let x_2062 : vec3<f32> = u_xlat30;
  let x_2063 : vec3<f32> = (vec3<f32>(x_2060.x, x_2060.y, x_2060.z) * x_2062);
  let x_2064 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2063.x, x_2063.y, x_2063.z, x_2064.w);
  let x_2066 : vec4<f32> = u_xlat4;
  let x_2068 : vec3<f32> = u_xlat7;
  let x_2070 : vec4<f32> = u_xlat8;
  let x_2072 : vec3<f32> = ((vec3<f32>(x_2066.x, x_2066.y, x_2066.z) * x_2068) + vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
  let x_2073 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2073.w);
  let x_2075 : f32 = u_xlat67;
  let x_2078 : f32 = x_122.unity_LightData.z;
  u_xlat63 = (x_2075 * x_2078);
  let x_2080 : vec4<f32> = u_xlat1;
  let x_2083 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2080.x, x_2080.y, x_2080.w), vec3<f32>(x_2083.x, x_2083.y, x_2083.z));
  let x_2086 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2086, 0.0f, 1.0f);
  let x_2088 : f32 = u_xlat63;
  let x_2089 : f32 = u_xlat65;
  u_xlat63 = (x_2088 * x_2089);
  let x_2091 : f32 = u_xlat63;
  let x_2093 : vec4<f32> = u_xlat6;
  let x_2095 : vec3<f32> = (vec3<f32>(x_2091, x_2091, x_2091) * vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
  let x_2096 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);
  let x_2098 : vec3<f32> = u_xlat5;
  let x_2100 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2102 : vec3<f32> = (x_2098 + vec3<f32>(x_2100.x, x_2100.y, x_2100.z));
  let x_2103 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
  let x_2105 : vec4<f32> = u_xlat8;
  let x_2107 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_2105.x, x_2105.y, x_2105.z), vec3<f32>(x_2107.x, x_2107.y, x_2107.z));
  let x_2110 : f32 = u_xlat63;
  u_xlat63 = max(x_2110, 1.17549435e-37f);
  let x_2113 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2113);
  let x_2115 : f32 = u_xlat63;
  let x_2117 : vec4<f32> = u_xlat8;
  let x_2119 : vec3<f32> = (vec3<f32>(x_2115, x_2115, x_2115) * vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
  let x_2120 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2119.x, x_2119.y, x_2119.z, x_2120.w);
  let x_2122 : vec4<f32> = u_xlat1;
  let x_2124 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_2122.x, x_2122.y, x_2122.w), vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
  let x_2127 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2127, 0.0f, 1.0f);
  let x_2130 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2132 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(vec3<f32>(x_2130.x, x_2130.y, x_2130.z), vec3<f32>(x_2132.x, x_2132.y, x_2132.z));
  let x_2135 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2135, 0.0f, 1.0f);
  let x_2137 : f32 = u_xlat63;
  let x_2138 : f32 = u_xlat63;
  u_xlat63 = (x_2137 * x_2138);
  let x_2140 : f32 = u_xlat63;
  let x_2142 : f32 = u_xlat9.x;
  u_xlat63 = ((x_2140 * x_2142) + 1.000010014f);
  let x_2146 : f32 = u_xlat65;
  let x_2147 : f32 = u_xlat65;
  u_xlat65 = (x_2146 * x_2147);
  let x_2149 : f32 = u_xlat63;
  let x_2150 : f32 = u_xlat63;
  u_xlat63 = (x_2149 * x_2150);
  let x_2152 : f32 = u_xlat65;
  u_xlat65 = max(x_2152, 0.100000001f);
  let x_2155 : f32 = u_xlat63;
  let x_2156 : f32 = u_xlat65;
  u_xlat63 = (x_2155 * x_2156);
  let x_2158 : f32 = u_xlat66;
  let x_2159 : f32 = u_xlat63;
  u_xlat63 = (x_2158 * x_2159);
  let x_2161 : f32 = u_xlat24;
  let x_2162 : f32 = u_xlat63;
  u_xlat63 = (x_2161 / x_2162);
  let x_2164 : vec3<f32> = u_xlat0;
  let x_2165 : f32 = u_xlat63;
  let x_2168 : vec3<f32> = u_xlat7;
  let x_2169 : vec3<f32> = ((x_2164 * vec3<f32>(x_2165, x_2165, x_2165)) + x_2168);
  let x_2170 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2170.w);
  let x_2172 : vec4<f32> = u_xlat6;
  let x_2174 : vec4<f32> = u_xlat8;
  let x_2176 : vec3<f32> = (vec3<f32>(x_2172.x, x_2172.y, x_2172.z) * vec3<f32>(x_2174.x, x_2174.y, x_2174.z));
  let x_2177 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
  let x_2180 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2182 : f32 = x_122.unity_LightData.y;
  u_xlat63 = min(x_2180, x_2182);
  let x_2186 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2186));
  let x_2190 : f32 = x_1821.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2192 : f32 = x_1821.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2194 : f32 = x_1821.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2196 : f32 = x_1821.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2197 : vec4<f32> = vec4<f32>(x_2190, x_2192, x_2194, x_2196);
  let x_2203 : vec4<bool> = (vec4<f32>(x_2197.x, x_2197.y, x_2197.z, x_2197.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_2203.x, x_2203.y);
  u_xlat30.x = 0.0f;
  u_xlat30.y = 0.0f;
  u_xlat30.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2214 : u32 = u_xlatu_loop_1;
    let x_2215 : u32 = u_xlatu63;
    if ((x_2214 < x_2215)) {
    } else {
      break;
    }
    let x_2218 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_2218 >> 2u);
    let x_2222 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2222 & 3u));
    let x_2225 : u32 = u_xlatu3;
    let x_2228 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_2225)];
    let x_2238 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2243 : vec4<u32> = indexable[x_2238];
    u_xlat3.x = dot(x_2228, bitcast<vec4<f32>>(x_2243));
    let x_2248 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_2248));
    let x_2251 : vec3<f32> = vs_INTERP0;
    let x_2263 : u32 = u_xlatu3;
    let x_2266 : vec4<f32> = x_2262.x_AdditionalLightsPosition[bitcast<i32>(x_2263)];
    let x_2269 : u32 = u_xlatu3;
    let x_2272 : vec4<f32> = x_2262.x_AdditionalLightsPosition[bitcast<i32>(x_2269)];
    let x_2274 : vec3<f32> = ((-(x_2251) * vec3<f32>(x_2266.w, x_2266.w, x_2266.w)) + vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
    let x_2275 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2274.x, x_2274.y, x_2274.z, x_2275.w);
    let x_2277 : vec4<f32> = u_xlat10;
    let x_2279 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2277.x, x_2277.y, x_2277.z), vec3<f32>(x_2279.x, x_2279.y, x_2279.z));
    let x_2282 : f32 = u_xlat67;
    u_xlat67 = max(x_2282, 6.10351562e-05f);
    let x_2285 : f32 = u_xlat67;
    u_xlat69 = inverseSqrt(x_2285);
    let x_2287 : f32 = u_xlat69;
    let x_2289 : vec4<f32> = u_xlat10;
    let x_2291 : vec3<f32> = (vec3<f32>(x_2287, x_2287, x_2287) * vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
    let x_2292 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
    let x_2294 : f32 = u_xlat67;
    u_xlat70 = (1.0f / x_2294);
    let x_2296 : f32 = u_xlat67;
    let x_2297 : u32 = u_xlatu3;
    let x_2300 : f32 = x_2262.x_AdditionalLightsAttenuation[bitcast<i32>(x_2297)].x;
    u_xlat67 = (x_2296 * x_2300);
    let x_2302 : f32 = u_xlat67;
    let x_2304 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2302) * x_2304) + 1.0f);
    let x_2307 : f32 = u_xlat67;
    u_xlat67 = max(x_2307, 0.0f);
    let x_2309 : f32 = u_xlat67;
    let x_2310 : f32 = u_xlat67;
    u_xlat67 = (x_2309 * x_2310);
    let x_2312 : f32 = u_xlat67;
    let x_2313 : f32 = u_xlat70;
    u_xlat67 = (x_2312 * x_2313);
    let x_2315 : u32 = u_xlatu3;
    let x_2318 : vec4<f32> = x_2262.x_AdditionalLightsSpotDir[bitcast<i32>(x_2315)];
    let x_2320 : vec4<f32> = u_xlat11;
    u_xlat70 = dot(vec3<f32>(x_2318.x, x_2318.y, x_2318.z), vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
    let x_2323 : f32 = u_xlat70;
    let x_2324 : u32 = u_xlatu3;
    let x_2327 : f32 = x_2262.x_AdditionalLightsAttenuation[bitcast<i32>(x_2324)].z;
    let x_2329 : u32 = u_xlatu3;
    let x_2332 : f32 = x_2262.x_AdditionalLightsAttenuation[bitcast<i32>(x_2329)].w;
    u_xlat70 = ((x_2323 * x_2327) + x_2332);
    let x_2334 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2334, 0.0f, 1.0f);
    let x_2336 : f32 = u_xlat70;
    let x_2337 : f32 = u_xlat70;
    u_xlat70 = (x_2336 * x_2337);
    let x_2339 : f32 = u_xlat67;
    let x_2340 : f32 = u_xlat70;
    u_xlat67 = (x_2339 * x_2340);
    let x_2343 : u32 = u_xlatu3;
    u_xlatu70 = (x_2343 >> 5u);
    let x_2346 : u32 = u_xlatu3;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_2346) & 31i)));
    let x_2352 : i32 = u_xlati50;
    let x_2354 : u32 = u_xlatu70;
    let x_2357 : f32 = x_1821.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2354)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2352) & bitcast<u32>(x_2357)));
    let x_2361 : i32 = u_xlati70;
    if ((x_2361 != 0i)) {
      let x_2371 : u32 = u_xlatu3;
      let x_2374 : f32 = x_2370.x_AdditionalLightsLightTypes[bitcast<i32>(x_2371)].el;
      u_xlati70 = i32(x_2374);
      let x_2376 : i32 = u_xlati70;
      u_xlati50 = select(1i, 0i, (x_2376 != 0i));
      let x_2380 : u32 = u_xlatu3;
      u_xlati71 = (bitcast<i32>(x_2380) << bitcast<u32>(2i));
      let x_2383 : i32 = u_xlati50;
      if ((x_2383 != 0i)) {
        let x_2387 : vec3<f32> = vs_INTERP0;
        let x_2389 : i32 = u_xlati71;
        let x_2392 : i32 = u_xlati71;
        let x_2396 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2389 + 1i) / 4i)][((x_2392 + 1i) % 4i)];
        let x_2398 : vec3<f32> = (vec3<f32>(x_2387.y, x_2387.y, x_2387.y) * vec3<f32>(x_2396.x, x_2396.y, x_2396.w));
        let x_2399 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2398.x, x_2398.y, x_2398.z, x_2399.w);
        let x_2401 : i32 = u_xlati71;
        let x_2403 : i32 = u_xlati71;
        let x_2406 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[(x_2401 / 4i)][(x_2403 % 4i)];
        let x_2408 : vec3<f32> = vs_INTERP0;
        let x_2411 : vec4<f32> = u_xlat12;
        let x_2413 : vec3<f32> = ((vec3<f32>(x_2406.x, x_2406.y, x_2406.w) * vec3<f32>(x_2408.x, x_2408.x, x_2408.x)) + vec3<f32>(x_2411.x, x_2411.y, x_2411.z));
        let x_2414 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2413.x, x_2413.y, x_2413.z, x_2414.w);
        let x_2416 : i32 = u_xlati71;
        let x_2419 : i32 = u_xlati71;
        let x_2423 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2416 + 2i) / 4i)][((x_2419 + 2i) % 4i)];
        let x_2425 : vec3<f32> = vs_INTERP0;
        let x_2428 : vec4<f32> = u_xlat12;
        let x_2430 : vec3<f32> = ((vec3<f32>(x_2423.x, x_2423.y, x_2423.w) * vec3<f32>(x_2425.z, x_2425.z, x_2425.z)) + vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
        let x_2431 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
        let x_2433 : vec4<f32> = u_xlat12;
        let x_2435 : i32 = u_xlati71;
        let x_2438 : i32 = u_xlati71;
        let x_2442 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2435 + 3i) / 4i)][((x_2438 + 3i) % 4i)];
        let x_2444 : vec3<f32> = (vec3<f32>(x_2433.x, x_2433.y, x_2433.z) + vec3<f32>(x_2442.x, x_2442.y, x_2442.w));
        let x_2445 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
        let x_2447 : vec4<f32> = u_xlat12;
        let x_2449 : vec4<f32> = u_xlat12;
        let x_2451 : vec2<f32> = (vec2<f32>(x_2447.x, x_2447.y) / vec2<f32>(x_2449.z, x_2449.z));
        let x_2452 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2451.x, x_2451.y, x_2452.z, x_2452.w);
        let x_2454 : vec4<f32> = u_xlat12;
        let x_2457 : vec2<f32> = ((vec2<f32>(x_2454.x, x_2454.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2458 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2457.x, x_2457.y, x_2458.z, x_2458.w);
        let x_2460 : vec4<f32> = u_xlat12;
        let x_2464 : vec2<f32> = clamp(vec2<f32>(x_2460.x, x_2460.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2465 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2464.x, x_2464.y, x_2465.z, x_2465.w);
        let x_2467 : u32 = u_xlatu3;
        let x_2470 : vec4<f32> = x_2370.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2467)];
        let x_2472 : vec4<f32> = u_xlat12;
        let x_2475 : u32 = u_xlatu3;
        let x_2478 : vec4<f32> = x_2370.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2475)];
        let x_2480 : vec2<f32> = ((vec2<f32>(x_2470.x, x_2470.y) * vec2<f32>(x_2472.x, x_2472.y)) + vec2<f32>(x_2478.z, x_2478.w));
        let x_2481 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2480.x, x_2480.y, x_2481.z, x_2481.w);
      } else {
        let x_2485 : i32 = u_xlati70;
        u_xlatb70 = (x_2485 == 1i);
        let x_2487 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2487);
        let x_2489 : i32 = u_xlati70;
        if ((x_2489 != 0i)) {
          let x_2494 : vec3<f32> = vs_INTERP0;
          let x_2496 : i32 = u_xlati71;
          let x_2499 : i32 = u_xlati71;
          let x_2503 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2496 + 1i) / 4i)][((x_2499 + 1i) % 4i)];
          u_xlat54 = (vec2<f32>(x_2494.y, x_2494.y) * vec2<f32>(x_2503.x, x_2503.y));
          let x_2506 : i32 = u_xlati71;
          let x_2508 : i32 = u_xlati71;
          let x_2511 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[(x_2506 / 4i)][(x_2508 % 4i)];
          let x_2513 : vec3<f32> = vs_INTERP0;
          let x_2516 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_2511.x, x_2511.y) * vec2<f32>(x_2513.x, x_2513.x)) + x_2516);
          let x_2518 : i32 = u_xlati71;
          let x_2521 : i32 = u_xlati71;
          let x_2525 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2518 + 2i) / 4i)][((x_2521 + 2i) % 4i)];
          let x_2527 : vec3<f32> = vs_INTERP0;
          let x_2530 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_2525.x, x_2525.y) * vec2<f32>(x_2527.z, x_2527.z)) + x_2530);
          let x_2532 : vec2<f32> = u_xlat54;
          let x_2533 : i32 = u_xlati71;
          let x_2536 : i32 = u_xlati71;
          let x_2540 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2533 + 3i) / 4i)][((x_2536 + 3i) % 4i)];
          u_xlat54 = (x_2532 + vec2<f32>(x_2540.x, x_2540.y));
          let x_2543 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_2543 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2546 : vec2<f32> = u_xlat54;
          u_xlat54 = fract(x_2546);
          let x_2548 : u32 = u_xlatu3;
          let x_2551 : vec4<f32> = x_2370.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2548)];
          let x_2553 : vec2<f32> = u_xlat54;
          let x_2555 : u32 = u_xlatu3;
          let x_2558 : vec4<f32> = x_2370.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2555)];
          let x_2560 : vec2<f32> = ((vec2<f32>(x_2551.x, x_2551.y) * x_2553) + vec2<f32>(x_2558.z, x_2558.w));
          let x_2561 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2560.x, x_2560.y, x_2561.z, x_2561.w);
        } else {
          let x_2564 : vec3<f32> = vs_INTERP0;
          let x_2566 : i32 = u_xlati71;
          let x_2569 : i32 = u_xlati71;
          let x_2573 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2566 + 1i) / 4i)][((x_2569 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_2564.y, x_2564.y, x_2564.y, x_2564.y) * x_2573);
          let x_2575 : i32 = u_xlati71;
          let x_2577 : i32 = u_xlati71;
          let x_2580 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[(x_2575 / 4i)][(x_2577 % 4i)];
          let x_2581 : vec3<f32> = vs_INTERP0;
          let x_2584 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2580 * vec4<f32>(x_2581.x, x_2581.x, x_2581.x, x_2581.x)) + x_2584);
          let x_2586 : i32 = u_xlati71;
          let x_2589 : i32 = u_xlati71;
          let x_2593 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2586 + 2i) / 4i)][((x_2589 + 2i) % 4i)];
          let x_2594 : vec3<f32> = vs_INTERP0;
          let x_2597 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2593 * vec4<f32>(x_2594.z, x_2594.z, x_2594.z, x_2594.z)) + x_2597);
          let x_2599 : vec4<f32> = u_xlat13;
          let x_2600 : i32 = u_xlati71;
          let x_2603 : i32 = u_xlati71;
          let x_2607 : vec4<f32> = x_2370.x_AdditionalLightsWorldToLights[((x_2600 + 3i) / 4i)][((x_2603 + 3i) % 4i)];
          u_xlat13 = (x_2599 + x_2607);
          let x_2609 : vec4<f32> = u_xlat13;
          let x_2611 : vec4<f32> = u_xlat13;
          let x_2613 : vec3<f32> = (vec3<f32>(x_2609.x, x_2609.y, x_2609.z) / vec3<f32>(x_2611.w, x_2611.w, x_2611.w));
          let x_2614 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2613.x, x_2613.y, x_2613.z, x_2614.w);
          let x_2616 : vec4<f32> = u_xlat13;
          let x_2618 : vec4<f32> = u_xlat13;
          u_xlat70 = dot(vec3<f32>(x_2616.x, x_2616.y, x_2616.z), vec3<f32>(x_2618.x, x_2618.y, x_2618.z));
          let x_2621 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2621);
          let x_2623 : f32 = u_xlat70;
          let x_2625 : vec4<f32> = u_xlat13;
          let x_2627 : vec3<f32> = (vec3<f32>(x_2623, x_2623, x_2623) * vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
          let x_2628 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2628.w);
          let x_2630 : vec4<f32> = u_xlat13;
          u_xlat70 = dot(abs(vec3<f32>(x_2630.x, x_2630.y, x_2630.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2635 : f32 = u_xlat70;
          u_xlat70 = max(x_2635, 0.000001f);
          let x_2638 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2638);
          let x_2640 : f32 = u_xlat70;
          let x_2642 : vec4<f32> = u_xlat13;
          let x_2644 : vec3<f32> = (vec3<f32>(x_2640, x_2640, x_2640) * vec3<f32>(x_2642.z, x_2642.x, x_2642.y));
          let x_2645 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2645.w);
          let x_2648 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_2648);
          let x_2652 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_2652, 0.0f, 1.0f);
          let x_2656 : vec4<f32> = u_xlat14;
          let x_2659 : vec4<bool> = (vec4<f32>(x_2656.y, x_2656.z, x_2656.y, x_2656.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb50 = vec2<bool>(x_2659.x, x_2659.y);
          let x_2663 : bool = u_xlatb50.x;
          if (x_2663) {
            let x_2668 : f32 = u_xlat14.x;
            x_2664 = x_2668;
          } else {
            let x_2671 : f32 = u_xlat14.x;
            x_2664 = -(x_2671);
          }
          let x_2673 : f32 = x_2664;
          u_xlat50.x = x_2673;
          let x_2676 : bool = u_xlatb50.y;
          if (x_2676) {
            let x_2681 : f32 = u_xlat14.x;
            x_2677 = x_2681;
          } else {
            let x_2684 : f32 = u_xlat14.x;
            x_2677 = -(x_2684);
          }
          let x_2686 : f32 = x_2677;
          u_xlat50.y = x_2686;
          let x_2688 : vec4<f32> = u_xlat13;
          let x_2690 : f32 = u_xlat70;
          let x_2693 : vec2<f32> = u_xlat50;
          u_xlat50 = ((vec2<f32>(x_2688.x, x_2688.y) * vec2<f32>(x_2690, x_2690)) + x_2693);
          let x_2695 : vec2<f32> = u_xlat50;
          u_xlat50 = ((x_2695 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2698 : vec2<f32> = u_xlat50;
          u_xlat50 = clamp(x_2698, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2702 : u32 = u_xlatu3;
          let x_2705 : vec4<f32> = x_2370.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2702)];
          let x_2707 : vec2<f32> = u_xlat50;
          let x_2709 : u32 = u_xlatu3;
          let x_2712 : vec4<f32> = x_2370.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2709)];
          let x_2714 : vec2<f32> = ((vec2<f32>(x_2705.x, x_2705.y) * x_2707) + vec2<f32>(x_2712.z, x_2712.w));
          let x_2715 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2714.x, x_2714.y, x_2715.z, x_2715.w);
        }
      }
      let x_2722 : vec4<f32> = u_xlat12;
      let x_2725 : f32 = x_45.x_GlobalMipBias.x;
      let x_2726 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2722.x, x_2722.y), x_2725);
      u_xlat12 = x_2726;
      let x_2728 : bool = u_xlatb8.y;
      if (x_2728) {
        let x_2733 : f32 = u_xlat12.w;
        x_2729 = x_2733;
      } else {
        let x_2736 : f32 = u_xlat12.x;
        x_2729 = x_2736;
      }
      let x_2737 : f32 = x_2729;
      u_xlat70 = x_2737;
      let x_2739 : bool = u_xlatb8.x;
      if (x_2739) {
        let x_2743 : vec4<f32> = u_xlat12;
        x_2740 = vec3<f32>(x_2743.x, x_2743.y, x_2743.z);
      } else {
        let x_2746 : f32 = u_xlat70;
        x_2740 = vec3<f32>(x_2746, x_2746, x_2746);
      }
      let x_2748 : vec3<f32> = x_2740;
      let x_2749 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2749.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_2755 : vec4<f32> = u_xlat12;
    let x_2757 : u32 = u_xlatu3;
    let x_2760 : vec4<f32> = x_2262.x_AdditionalLightsColor[bitcast<i32>(x_2757)];
    let x_2762 : vec3<f32> = (vec3<f32>(x_2755.x, x_2755.y, x_2755.z) * vec3<f32>(x_2760.x, x_2760.y, x_2760.z));
    let x_2763 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2763.w);
    let x_2765 : f32 = u_xlat68;
    let x_2767 : vec4<f32> = u_xlat12;
    let x_2769 : vec3<f32> = (vec3<f32>(x_2765, x_2765, x_2765) * vec3<f32>(x_2767.x, x_2767.y, x_2767.z));
    let x_2770 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2769.x, x_2769.y, x_2769.z, x_2770.w);
    let x_2772 : vec4<f32> = u_xlat1;
    let x_2774 : vec4<f32> = u_xlat11;
    u_xlat3.x = dot(vec3<f32>(x_2772.x, x_2772.y, x_2772.w), vec3<f32>(x_2774.x, x_2774.y, x_2774.z));
    let x_2779 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2779, 0.0f, 1.0f);
    let x_2783 : f32 = u_xlat3.x;
    let x_2784 : f32 = u_xlat67;
    u_xlat3.x = (x_2783 * x_2784);
    let x_2787 : vec3<f32> = u_xlat3;
    let x_2789 : vec4<f32> = u_xlat12;
    let x_2791 : vec3<f32> = (vec3<f32>(x_2787.x, x_2787.x, x_2787.x) * vec3<f32>(x_2789.x, x_2789.y, x_2789.z));
    let x_2792 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2791.x, x_2791.y, x_2791.z, x_2792.w);
    let x_2794 : vec4<f32> = u_xlat10;
    let x_2796 : f32 = u_xlat69;
    let x_2799 : vec3<f32> = u_xlat5;
    let x_2800 : vec3<f32> = ((vec3<f32>(x_2794.x, x_2794.y, x_2794.z) * vec3<f32>(x_2796, x_2796, x_2796)) + x_2799);
    let x_2801 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2800.x, x_2800.y, x_2800.z, x_2801.w);
    let x_2803 : vec4<f32> = u_xlat10;
    let x_2805 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2803.x, x_2803.y, x_2803.z), vec3<f32>(x_2805.x, x_2805.y, x_2805.z));
    let x_2810 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_2810, 1.17549435e-37f);
    let x_2814 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_2814);
    let x_2817 : vec3<f32> = u_xlat3;
    let x_2819 : vec4<f32> = u_xlat10;
    let x_2821 : vec3<f32> = (vec3<f32>(x_2817.x, x_2817.x, x_2817.x) * vec3<f32>(x_2819.x, x_2819.y, x_2819.z));
    let x_2822 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2821.x, x_2821.y, x_2821.z, x_2822.w);
    let x_2824 : vec4<f32> = u_xlat1;
    let x_2826 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2824.x, x_2824.y, x_2824.w), vec3<f32>(x_2826.x, x_2826.y, x_2826.z));
    let x_2831 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2831, 0.0f, 1.0f);
    let x_2834 : vec4<f32> = u_xlat11;
    let x_2836 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2834.x, x_2834.y, x_2834.z), vec3<f32>(x_2836.x, x_2836.y, x_2836.z));
    let x_2839 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2839, 0.0f, 1.0f);
    let x_2842 : f32 = u_xlat3.x;
    let x_2844 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2842 * x_2844);
    let x_2848 : f32 = u_xlat3.x;
    let x_2850 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_2848 * x_2850) + 1.000010014f);
    let x_2854 : f32 = u_xlat67;
    let x_2855 : f32 = u_xlat67;
    u_xlat67 = (x_2854 * x_2855);
    let x_2858 : f32 = u_xlat3.x;
    let x_2860 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2858 * x_2860);
    let x_2863 : f32 = u_xlat67;
    u_xlat67 = max(x_2863, 0.100000001f);
    let x_2866 : f32 = u_xlat3.x;
    let x_2867 : f32 = u_xlat67;
    u_xlat3.x = (x_2866 * x_2867);
    let x_2870 : f32 = u_xlat66;
    let x_2872 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2870 * x_2872);
    let x_2875 : f32 = u_xlat24;
    let x_2877 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2875 / x_2877);
    let x_2880 : vec3<f32> = u_xlat0;
    let x_2881 : vec3<f32> = u_xlat3;
    let x_2884 : vec3<f32> = u_xlat7;
    let x_2885 : vec3<f32> = ((x_2880 * vec3<f32>(x_2881.x, x_2881.x, x_2881.x)) + x_2884);
    let x_2886 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2885.x, x_2885.y, x_2885.z, x_2886.w);
    let x_2888 : vec4<f32> = u_xlat10;
    let x_2890 : vec4<f32> = u_xlat12;
    let x_2893 : vec3<f32> = u_xlat30;
    u_xlat30 = ((vec3<f32>(x_2888.x, x_2888.y, x_2888.z) * vec3<f32>(x_2890.x, x_2890.y, x_2890.z)) + x_2893);

    continuing {
      let x_2895 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2895 + bitcast<u32>(1i));
    }
  }
  let x_2897 : vec4<f32> = u_xlat4;
  let x_2899 : f32 = u_xlat45;
  let x_2902 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2897.x, x_2897.y, x_2897.z) * vec3<f32>(x_2899, x_2899, x_2899)) + vec3<f32>(x_2902.x, x_2902.y, x_2902.z));
  let x_2905 : vec3<f32> = u_xlat30;
  let x_2906 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_2905 + x_2906);
  let x_2910 : vec3<f32> = u_xlat2;
  let x_2911 : f32 = u_xlat43;
  let x_2914 : vec3<f32> = u_xlat0;
  let x_2915 : vec3<f32> = ((x_2910 * vec3<f32>(x_2911, x_2911, x_2911)) + x_2914);
  let x_2916 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2916.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>, @location(5) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

