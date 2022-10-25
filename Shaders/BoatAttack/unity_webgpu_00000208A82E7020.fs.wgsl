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

@group(1) @binding(4) var<uniform> x_1823 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2264 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2372 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_1907 : f32;
  var x_1918 : vec3<f32>;
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
  var x_2666 : f32;
  var x_2679 : f32;
  var x_2731 : f32;
  var x_2742 : vec3<f32>;
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
      let x_516 : vec4<f32> = x_498.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_512.x, x_512.y, x_512.x, x_512.y) + x_516);
      let x_519 : vec4<f32> = u_xlat6;
      let x_520 : vec2<f32> = vec2<f32>(x_519.x, x_519.y);
      let x_522 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_520.x, x_520.y, x_522);
      let x_535 : vec3<f32> = txVec0;
      let x_537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_535.xy, x_535.z);
      u_xlat8.x = x_537;
      let x_540 : vec4<f32> = u_xlat6;
      let x_541 : vec2<f32> = vec2<f32>(x_540.z, x_540.w);
      let x_543 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_541.x, x_541.y, x_543);
      let x_550 : vec3<f32> = txVec1;
      let x_552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_550.xy, x_550.z);
      u_xlat8.y = x_552;
      let x_554 : vec4<f32> = vs_INTERP8;
      let x_558 : vec4<f32> = x_498.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_554.x, x_554.y, x_554.x, x_554.y) + x_558);
      let x_561 : vec4<f32> = u_xlat6;
      let x_562 : vec2<f32> = vec2<f32>(x_561.x, x_561.y);
      let x_564 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_562.x, x_562.y, x_564);
      let x_571 : vec3<f32> = txVec2;
      let x_573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_571.xy, x_571.z);
      u_xlat8.z = x_573;
      let x_576 : vec4<f32> = u_xlat6;
      let x_577 : vec2<f32> = vec2<f32>(x_576.z, x_576.w);
      let x_579 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_577.x, x_577.y, x_579);
      let x_586 : vec3<f32> = txVec3;
      let x_588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_586.xy, x_586.z);
      u_xlat8.w = x_588;
      let x_590 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_590, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_597 : f32 = x_498.x_MainLightShadowParams.y;
      u_xlatb6 = (x_597 == 2.0f);
      let x_599 : bool = u_xlatb6;
      if (x_599) {
        let x_602 : vec4<f32> = vs_INTERP8;
        let x_605 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_609 : vec2<f32> = ((vec2<f32>(x_602.x, x_602.y) * vec2<f32>(x_605.z, x_605.w)) + vec2<f32>(0.5f, 0.5f));
        let x_610 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
        let x_612 : vec4<f32> = u_xlat6;
        let x_614 : vec2<f32> = floor(vec2<f32>(x_612.x, x_612.y));
        let x_615 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_619 : vec4<f32> = vs_INTERP8;
        let x_622 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_625 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_619.x, x_619.y) * vec2<f32>(x_622.z, x_622.w)) + -(vec2<f32>(x_625.x, x_625.y)));
        let x_629 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_629.x, x_629.x, x_629.y, x_629.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_634 : vec4<f32> = u_xlat8;
        let x_636 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_634.x, x_634.x, x_634.z, x_634.z) * vec4<f32>(x_636.x, x_636.x, x_636.z, x_636.z));
        let x_639 : vec4<f32> = u_xlat9;
        let x_643 : vec2<f32> = (vec2<f32>(x_639.y, x_639.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_644 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_643.x, x_644.y, x_643.y, x_644.w);
        let x_646 : vec4<f32> = u_xlat9;
        let x_649 : vec2<f32> = u_xlat48;
        let x_651 : vec2<f32> = ((vec2<f32>(x_646.x, x_646.z) * vec2<f32>(0.5f, 0.5f)) + -(x_649));
        let x_652 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
        let x_655 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_655) + vec2<f32>(1.0f, 1.0f));
        let x_659 : vec2<f32> = u_xlat48;
        let x_661 : vec2<f32> = min(x_659, vec2<f32>(0.0f, 0.0f));
        let x_662 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_661.x, x_661.y, x_662.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat10;
        let x_667 : vec4<f32> = u_xlat10;
        let x_670 : vec2<f32> = u_xlat51;
        let x_671 : vec2<f32> = ((-(vec2<f32>(x_664.x, x_664.y)) * vec2<f32>(x_667.x, x_667.y)) + x_670);
        let x_672 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
        let x_674 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_674, vec2<f32>(0.0f, 0.0f));
        let x_676 : vec2<f32> = u_xlat48;
        let x_678 : vec2<f32> = u_xlat48;
        let x_680 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_676) * x_678) + vec2<f32>(x_680.y, x_680.w));
        let x_683 : vec4<f32> = u_xlat10;
        let x_685 : vec2<f32> = (vec2<f32>(x_683.x, x_683.y) + vec2<f32>(1.0f, 1.0f));
        let x_686 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
        let x_688 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_688 + vec2<f32>(1.0f, 1.0f));
        let x_691 : vec4<f32> = u_xlat9;
        let x_695 : vec2<f32> = (vec2<f32>(x_691.x, x_691.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_696 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_695.x, x_695.y, x_696.z, x_696.w);
        let x_698 : vec2<f32> = u_xlat51;
        let x_699 : vec2<f32> = (x_698 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_700 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
        let x_702 : vec4<f32> = u_xlat10;
        let x_704 : vec2<f32> = (vec2<f32>(x_702.x, x_702.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_705 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_708 : vec2<f32> = u_xlat48;
        let x_709 : vec2<f32> = (x_708 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_710 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_709.x, x_709.y, x_710.z, x_710.w);
        let x_712 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_712.y, x_712.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_716 : f32 = u_xlat10.x;
        u_xlat11.z = x_716;
        let x_719 : f32 = u_xlat48.x;
        u_xlat11.w = x_719;
        let x_722 : f32 = u_xlat12.x;
        u_xlat9.z = x_722;
        let x_725 : f32 = u_xlat8.x;
        u_xlat9.w = x_725;
        let x_728 : vec4<f32> = u_xlat9;
        let x_730 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_728.z, x_728.w, x_728.x, x_728.z) + vec4<f32>(x_730.z, x_730.w, x_730.x, x_730.z));
        let x_734 : f32 = u_xlat11.y;
        u_xlat10.z = x_734;
        let x_737 : f32 = u_xlat48.y;
        u_xlat10.w = x_737;
        let x_740 : f32 = u_xlat9.y;
        u_xlat12.z = x_740;
        let x_743 : f32 = u_xlat8.z;
        u_xlat12.w = x_743;
        let x_745 : vec4<f32> = u_xlat10;
        let x_747 : vec4<f32> = u_xlat12;
        let x_749 : vec3<f32> = (vec3<f32>(x_745.z, x_745.y, x_745.w) + vec3<f32>(x_747.z, x_747.y, x_747.w));
        let x_750 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
        let x_752 : vec4<f32> = u_xlat9;
        let x_754 : vec4<f32> = u_xlat13;
        let x_756 : vec3<f32> = (vec3<f32>(x_752.x, x_752.z, x_752.w) / vec3<f32>(x_754.z, x_754.w, x_754.y));
        let x_757 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
        let x_759 : vec4<f32> = u_xlat9;
        let x_764 : vec3<f32> = (vec3<f32>(x_759.x, x_759.y, x_759.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_765 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
        let x_767 : vec4<f32> = u_xlat12;
        let x_769 : vec4<f32> = u_xlat8;
        let x_771 : vec3<f32> = (vec3<f32>(x_767.z, x_767.y, x_767.w) / vec3<f32>(x_769.x, x_769.y, x_769.z));
        let x_772 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat10;
        let x_776 : vec3<f32> = (vec3<f32>(x_774.x, x_774.y, x_774.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_777 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
        let x_779 : vec4<f32> = u_xlat9;
        let x_782 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_784 : vec3<f32> = (vec3<f32>(x_779.y, x_779.x, x_779.z) * vec3<f32>(x_782.x, x_782.x, x_782.x));
        let x_785 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
        let x_787 : vec4<f32> = u_xlat10;
        let x_790 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_792 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_790.y, x_790.y, x_790.y));
        let x_793 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
        let x_796 : f32 = u_xlat10.x;
        u_xlat9.w = x_796;
        let x_798 : vec4<f32> = u_xlat6;
        let x_801 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_804 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_798.x, x_798.y, x_798.x, x_798.y) * vec4<f32>(x_801.x, x_801.y, x_801.x, x_801.y)) + vec4<f32>(x_804.y, x_804.w, x_804.x, x_804.w));
        let x_807 : vec4<f32> = u_xlat6;
        let x_810 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_813 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_807.x, x_807.y) * vec2<f32>(x_810.x, x_810.y)) + vec2<f32>(x_813.z, x_813.w));
        let x_817 : f32 = u_xlat9.y;
        u_xlat10.w = x_817;
        let x_819 : vec4<f32> = u_xlat10;
        let x_820 : vec2<f32> = vec2<f32>(x_819.y, x_819.z);
        let x_821 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_821.x, x_820.x, x_821.z, x_820.y);
        let x_823 : vec4<f32> = u_xlat6;
        let x_826 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_829 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_823.x, x_823.y, x_823.x, x_823.y) * vec4<f32>(x_826.x, x_826.y, x_826.x, x_826.y)) + vec4<f32>(x_829.x, x_829.y, x_829.z, x_829.y));
        let x_832 : vec4<f32> = u_xlat6;
        let x_835 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_838 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_832.x, x_832.y, x_832.x, x_832.y) * vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y)) + vec4<f32>(x_838.w, x_838.y, x_838.w, x_838.z));
        let x_841 : vec4<f32> = u_xlat6;
        let x_844 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_847 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_841.x, x_841.y, x_841.x, x_841.y) * vec4<f32>(x_844.x, x_844.y, x_844.x, x_844.y)) + vec4<f32>(x_847.x, x_847.w, x_847.z, x_847.w));
        let x_851 : vec4<f32> = u_xlat8;
        let x_853 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_851.x, x_851.x, x_851.x, x_851.y) * vec4<f32>(x_853.z, x_853.w, x_853.y, x_853.z));
        let x_857 : vec4<f32> = u_xlat8;
        let x_859 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_857.y, x_857.y, x_857.z, x_857.z) * x_859);
        let x_862 : f32 = u_xlat8.z;
        let x_864 : f32 = u_xlat13.y;
        u_xlat6.x = (x_862 * x_864);
        let x_868 : vec4<f32> = u_xlat11;
        let x_869 : vec2<f32> = vec2<f32>(x_868.x, x_868.y);
        let x_871 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_879 : vec3<f32> = txVec4;
        let x_881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_879.xy, x_879.z);
        u_xlat27 = x_881;
        let x_883 : vec4<f32> = u_xlat11;
        let x_884 : vec2<f32> = vec2<f32>(x_883.z, x_883.w);
        let x_886 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_884.x, x_884.y, x_886);
        let x_894 : vec3<f32> = txVec5;
        let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_894.xy, x_894.z);
        u_xlat70 = x_896;
        let x_897 : f32 = u_xlat70;
        let x_899 : f32 = u_xlat14.y;
        u_xlat70 = (x_897 * x_899);
        let x_902 : f32 = u_xlat14.x;
        let x_903 : f32 = u_xlat27;
        let x_905 : f32 = u_xlat70;
        u_xlat27 = ((x_902 * x_903) + x_905);
        let x_908 : vec2<f32> = u_xlat48;
        let x_910 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_908.x, x_908.y, x_910);
        let x_917 : vec3<f32> = txVec6;
        let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_917.xy, x_917.z);
        u_xlat48.x = x_919;
        let x_922 : f32 = u_xlat14.z;
        let x_924 : f32 = u_xlat48.x;
        let x_926 : f32 = u_xlat27;
        u_xlat27 = ((x_922 * x_924) + x_926);
        let x_929 : vec4<f32> = u_xlat10;
        let x_930 : vec2<f32> = vec2<f32>(x_929.x, x_929.y);
        let x_932 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_930.x, x_930.y, x_932);
        let x_939 : vec3<f32> = txVec7;
        let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_939.xy, x_939.z);
        u_xlat48.x = x_941;
        let x_944 : f32 = u_xlat14.w;
        let x_946 : f32 = u_xlat48.x;
        let x_948 : f32 = u_xlat27;
        u_xlat27 = ((x_944 * x_946) + x_948);
        let x_951 : vec4<f32> = u_xlat12;
        let x_952 : vec2<f32> = vec2<f32>(x_951.x, x_951.y);
        let x_954 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_952.x, x_952.y, x_954);
        let x_961 : vec3<f32> = txVec8;
        let x_963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_961.xy, x_961.z);
        u_xlat48.x = x_963;
        let x_966 : f32 = u_xlat15.x;
        let x_968 : f32 = u_xlat48.x;
        let x_970 : f32 = u_xlat27;
        u_xlat27 = ((x_966 * x_968) + x_970);
        let x_973 : vec4<f32> = u_xlat12;
        let x_974 : vec2<f32> = vec2<f32>(x_973.z, x_973.w);
        let x_976 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_974.x, x_974.y, x_976);
        let x_983 : vec3<f32> = txVec9;
        let x_985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_983.xy, x_983.z);
        u_xlat48.x = x_985;
        let x_988 : f32 = u_xlat15.y;
        let x_990 : f32 = u_xlat48.x;
        let x_992 : f32 = u_xlat27;
        u_xlat27 = ((x_988 * x_990) + x_992);
        let x_995 : vec4<f32> = u_xlat10;
        let x_996 : vec2<f32> = vec2<f32>(x_995.z, x_995.w);
        let x_998 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1005 : vec3<f32> = txVec10;
        let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1005.xy, x_1005.z);
        u_xlat48.x = x_1007;
        let x_1010 : f32 = u_xlat15.z;
        let x_1012 : f32 = u_xlat48.x;
        let x_1014 : f32 = u_xlat27;
        u_xlat27 = ((x_1010 * x_1012) + x_1014);
        let x_1017 : vec4<f32> = u_xlat9;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.x, x_1017.y);
        let x_1020 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec11;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1027.xy, x_1027.z);
        u_xlat48.x = x_1029;
        let x_1032 : f32 = u_xlat15.w;
        let x_1034 : f32 = u_xlat48.x;
        let x_1036 : f32 = u_xlat27;
        u_xlat27 = ((x_1032 * x_1034) + x_1036);
        let x_1039 : vec4<f32> = u_xlat9;
        let x_1040 : vec2<f32> = vec2<f32>(x_1039.z, x_1039.w);
        let x_1042 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
        let x_1049 : vec3<f32> = txVec12;
        let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1049.xy, x_1049.z);
        u_xlat48.x = x_1051;
        let x_1054 : f32 = u_xlat6.x;
        let x_1056 : f32 = u_xlat48.x;
        let x_1058 : f32 = u_xlat27;
        u_xlat67 = ((x_1054 * x_1056) + x_1058);
      } else {
        let x_1061 : vec4<f32> = vs_INTERP8;
        let x_1064 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1067 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1064.z, x_1064.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1068 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
        let x_1070 : vec4<f32> = u_xlat6;
        let x_1072 : vec2<f32> = floor(vec2<f32>(x_1070.x, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1075 : vec4<f32> = vs_INTERP8;
        let x_1078 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1081 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(x_1078.z, x_1078.w)) + -(vec2<f32>(x_1081.x, x_1081.y)));
        let x_1085 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1085.x, x_1085.x, x_1085.y, x_1085.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1088 : vec4<f32> = u_xlat8;
        let x_1090 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1088.x, x_1088.x, x_1088.z, x_1088.z) * vec4<f32>(x_1090.x, x_1090.x, x_1090.z, x_1090.z));
        let x_1093 : vec4<f32> = u_xlat9;
        let x_1097 : vec2<f32> = (vec2<f32>(x_1093.y, x_1093.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1098 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1098.x, x_1097.x, x_1098.z, x_1097.y);
        let x_1100 : vec4<f32> = u_xlat9;
        let x_1103 : vec2<f32> = u_xlat48;
        let x_1105 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1103));
        let x_1106 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1105.x, x_1106.y, x_1105.y, x_1106.w);
        let x_1108 : vec2<f32> = u_xlat48;
        let x_1110 : vec2<f32> = (-(x_1108) + vec2<f32>(1.0f, 1.0f));
        let x_1111 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1113 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1113, vec2<f32>(0.0f, 0.0f));
        let x_1115 : vec2<f32> = u_xlat51;
        let x_1117 : vec2<f32> = u_xlat51;
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1121 : vec2<f32> = ((-(x_1115) * x_1117) + vec2<f32>(x_1119.x, x_1119.y));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1124 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1124, vec2<f32>(0.0f, 0.0f));
        let x_1127 : vec2<f32> = u_xlat51;
        let x_1129 : vec2<f32> = u_xlat51;
        let x_1131 : vec4<f32> = u_xlat8;
        let x_1133 : vec2<f32> = ((-(x_1127) * x_1129) + vec2<f32>(x_1131.y, x_1131.w));
        let x_1134 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1133.x, x_1134.y, x_1133.y);
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1138 : vec2<f32> = (vec2<f32>(x_1136.x, x_1136.y) + vec2<f32>(2.0f, 2.0f));
        let x_1139 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
        let x_1141 : vec3<f32> = u_xlat29;
        let x_1143 : vec2<f32> = (vec2<f32>(x_1141.x, x_1141.z) + vec2<f32>(2.0f, 2.0f));
        let x_1144 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1144.x, x_1143.x, x_1144.z, x_1143.y);
        let x_1147 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1147 * 0.081632003f);
        let x_1151 : vec4<f32> = u_xlat8;
        let x_1154 : vec3<f32> = (vec3<f32>(x_1151.z, x_1151.x, x_1151.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1155 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
        let x_1157 : vec4<f32> = u_xlat9;
        let x_1160 : vec2<f32> = (vec2<f32>(x_1157.x, x_1157.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1164 : f32 = u_xlat12.y;
        u_xlat11.x = x_1164;
        let x_1166 : vec2<f32> = u_xlat48;
        let x_1173 : vec2<f32> = ((vec2<f32>(x_1166.x, x_1166.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1174 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1174.x, x_1173.x, x_1174.z, x_1173.y);
        let x_1176 : vec2<f32> = u_xlat48;
        let x_1180 : vec2<f32> = ((vec2<f32>(x_1176.x, x_1176.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1181 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1180.x, x_1181.y, x_1180.y, x_1181.w);
        let x_1184 : f32 = u_xlat8.x;
        u_xlat9.y = x_1184;
        let x_1187 : f32 = u_xlat10.y;
        u_xlat9.w = x_1187;
        let x_1189 : vec4<f32> = u_xlat9;
        let x_1190 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1189 + x_1190);
        let x_1192 : vec2<f32> = u_xlat48;
        let x_1195 : vec2<f32> = ((vec2<f32>(x_1192.y, x_1192.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1196 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1196.x, x_1195.x, x_1196.z, x_1195.y);
        let x_1198 : vec2<f32> = u_xlat48;
        let x_1201 : vec2<f32> = ((vec2<f32>(x_1198.y, x_1198.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1202 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1201.x, x_1202.y, x_1201.y, x_1202.w);
        let x_1205 : f32 = u_xlat8.y;
        u_xlat10.y = x_1205;
        let x_1207 : vec4<f32> = u_xlat10;
        let x_1208 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1207 + x_1208);
        let x_1210 : vec4<f32> = u_xlat9;
        let x_1211 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1210 / x_1211);
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1213 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1219 : vec4<f32> = u_xlat10;
        let x_1220 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1219 / x_1220);
        let x_1222 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1222 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1224 : vec4<f32> = u_xlat9;
        let x_1227 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1224.w, x_1224.x, x_1224.y, x_1224.z) * vec4<f32>(x_1227.x, x_1227.x, x_1227.x, x_1227.x));
        let x_1230 : vec4<f32> = u_xlat10;
        let x_1233 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1230.x, x_1230.w, x_1230.y, x_1230.z) * vec4<f32>(x_1233.y, x_1233.y, x_1233.y, x_1233.y));
        let x_1236 : vec4<f32> = u_xlat9;
        let x_1237 : vec3<f32> = vec3<f32>(x_1236.y, x_1236.z, x_1236.w);
        let x_1238 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1237.x, x_1238.y, x_1237.y, x_1237.z);
        let x_1241 : f32 = u_xlat10.x;
        u_xlat12.y = x_1241;
        let x_1243 : vec4<f32> = u_xlat6;
        let x_1246 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1249.y));
        let x_1252 : vec4<f32> = u_xlat6;
        let x_1255 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(x_1255.x, x_1255.y)) + vec2<f32>(x_1258.w, x_1258.y));
        let x_1262 : f32 = u_xlat12.y;
        u_xlat9.y = x_1262;
        let x_1265 : f32 = u_xlat10.z;
        u_xlat12.y = x_1265;
        let x_1267 : vec4<f32> = u_xlat6;
        let x_1270 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.y) * vec4<f32>(x_1270.x, x_1270.y, x_1270.x, x_1270.y)) + vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1273.y));
        let x_1276 : vec4<f32> = u_xlat6;
        let x_1279 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat12;
        let x_1284 : vec2<f32> = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(x_1279.x, x_1279.y)) + vec2<f32>(x_1282.w, x_1282.y));
        let x_1285 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1285.w);
        let x_1288 : f32 = u_xlat12.y;
        u_xlat9.z = x_1288;
        let x_1291 : vec4<f32> = u_xlat6;
        let x_1294 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y) * vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y)) + vec4<f32>(x_1297.x, x_1297.y, x_1297.x, x_1297.z));
        let x_1301 : f32 = u_xlat10.w;
        u_xlat12.y = x_1301;
        let x_1304 : vec4<f32> = u_xlat6;
        let x_1307 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1304.x, x_1304.y, x_1304.x, x_1304.y) * vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y)) + vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1310.y));
        let x_1314 : vec4<f32> = u_xlat6;
        let x_1317 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat12;
        let x_1322 : vec2<f32> = ((vec2<f32>(x_1314.x, x_1314.y) * vec2<f32>(x_1317.x, x_1317.y)) + vec2<f32>(x_1320.w, x_1320.y));
        let x_1323 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1322.x, x_1322.y, x_1323.z);
        let x_1326 : f32 = u_xlat12.y;
        u_xlat9.w = x_1326;
        let x_1329 : vec4<f32> = u_xlat6;
        let x_1332 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1329.x, x_1329.y) * vec2<f32>(x_1332.x, x_1332.y)) + vec2<f32>(x_1335.x, x_1335.w));
        let x_1338 : vec4<f32> = u_xlat12;
        let x_1339 : vec3<f32> = vec3<f32>(x_1338.x, x_1338.z, x_1338.w);
        let x_1340 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1339.x, x_1340.y, x_1339.y, x_1339.z);
        let x_1342 : vec4<f32> = u_xlat6;
        let x_1345 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1348 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.y) * vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y)) + vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1348.y));
        let x_1352 : vec4<f32> = u_xlat6;
        let x_1355 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1358 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1352.x, x_1352.y) * vec2<f32>(x_1355.x, x_1355.y)) + vec2<f32>(x_1358.w, x_1358.y));
        let x_1362 : f32 = u_xlat9.x;
        u_xlat10.x = x_1362;
        let x_1364 : vec4<f32> = u_xlat6;
        let x_1367 : vec4<f32> = x_498.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat10;
        let x_1372 : vec2<f32> = ((vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(x_1367.x, x_1367.y)) + vec2<f32>(x_1370.x, x_1370.y));
        let x_1373 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1376 : vec4<f32> = u_xlat8;
        let x_1378 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1376.x, x_1376.x, x_1376.x, x_1376.x) * x_1378);
        let x_1381 : vec4<f32> = u_xlat8;
        let x_1383 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1381.y, x_1381.y, x_1381.y, x_1381.y) * x_1383);
        let x_1386 : vec4<f32> = u_xlat8;
        let x_1388 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1386.z, x_1386.z, x_1386.z, x_1386.z) * x_1388);
        let x_1390 : vec4<f32> = u_xlat8;
        let x_1392 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1390.w, x_1390.w, x_1390.w, x_1390.w) * x_1392);
        let x_1395 : vec4<f32> = u_xlat13;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.x, x_1395.y);
        let x_1398 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec13;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1405.xy, x_1405.z);
        u_xlat70 = x_1407;
        let x_1409 : vec4<f32> = u_xlat13;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.z, x_1409.w);
        let x_1412 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec14;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1419.xy, x_1419.z);
        u_xlat9.x = x_1421;
        let x_1424 : f32 = u_xlat9.x;
        let x_1426 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1424 * x_1426);
        let x_1430 : f32 = u_xlat18.x;
        let x_1431 : f32 = u_xlat70;
        let x_1434 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1430 * x_1431) + x_1434);
        let x_1437 : vec2<f32> = u_xlat48;
        let x_1439 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec15;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1446.xy, x_1446.z);
        u_xlat48.x = x_1448;
        let x_1451 : f32 = u_xlat18.z;
        let x_1453 : f32 = u_xlat48.x;
        let x_1455 : f32 = u_xlat70;
        u_xlat48.x = ((x_1451 * x_1453) + x_1455);
        let x_1459 : vec4<f32> = u_xlat16;
        let x_1460 : vec2<f32> = vec2<f32>(x_1459.x, x_1459.y);
        let x_1462 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1470 : vec3<f32> = txVec16;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1470.xy, x_1470.z);
        u_xlat69 = x_1472;
        let x_1474 : f32 = u_xlat18.w;
        let x_1475 : f32 = u_xlat69;
        let x_1478 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1474 * x_1475) + x_1478);
        let x_1482 : vec4<f32> = u_xlat14;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.x, x_1482.y);
        let x_1485 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec17;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1492.xy, x_1492.z);
        u_xlat69 = x_1494;
        let x_1496 : f32 = u_xlat19.x;
        let x_1497 : f32 = u_xlat69;
        let x_1500 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1496 * x_1497) + x_1500);
        let x_1504 : vec4<f32> = u_xlat14;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.z, x_1504.w);
        let x_1507 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec18;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1514.xy, x_1514.z);
        u_xlat69 = x_1516;
        let x_1518 : f32 = u_xlat19.y;
        let x_1519 : f32 = u_xlat69;
        let x_1522 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1518 * x_1519) + x_1522);
        let x_1526 : vec4<f32> = u_xlat15;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.x, x_1526.y);
        let x_1529 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec19;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1536.xy, x_1536.z);
        u_xlat69 = x_1538;
        let x_1540 : f32 = u_xlat19.z;
        let x_1541 : f32 = u_xlat69;
        let x_1544 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1540 * x_1541) + x_1544);
        let x_1548 : vec4<f32> = u_xlat16;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.z, x_1548.w);
        let x_1551 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec20;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1558.xy, x_1558.z);
        u_xlat69 = x_1560;
        let x_1562 : f32 = u_xlat19.w;
        let x_1563 : f32 = u_xlat69;
        let x_1566 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1562 * x_1563) + x_1566);
        let x_1570 : vec4<f32> = u_xlat17;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.x, x_1570.y);
        let x_1573 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec21;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1580.xy, x_1580.z);
        u_xlat69 = x_1582;
        let x_1584 : f32 = u_xlat20.x;
        let x_1585 : f32 = u_xlat69;
        let x_1588 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1584 * x_1585) + x_1588);
        let x_1592 : vec4<f32> = u_xlat17;
        let x_1593 : vec2<f32> = vec2<f32>(x_1592.z, x_1592.w);
        let x_1595 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec22;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1602.xy, x_1602.z);
        u_xlat69 = x_1604;
        let x_1606 : f32 = u_xlat20.y;
        let x_1607 : f32 = u_xlat69;
        let x_1610 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1606 * x_1607) + x_1610);
        let x_1614 : vec3<f32> = u_xlat30;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.x, x_1614.y);
        let x_1617 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec23;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1624.xy, x_1624.z);
        u_xlat69 = x_1626;
        let x_1628 : f32 = u_xlat20.z;
        let x_1629 : f32 = u_xlat69;
        let x_1632 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1628 * x_1629) + x_1632);
        let x_1636 : vec2<f32> = u_xlat57;
        let x_1638 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec24;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1645.xy, x_1645.z);
        u_xlat69 = x_1647;
        let x_1649 : f32 = u_xlat20.w;
        let x_1650 : f32 = u_xlat69;
        let x_1653 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1649 * x_1650) + x_1653);
        let x_1657 : vec4<f32> = u_xlat12;
        let x_1658 : vec2<f32> = vec2<f32>(x_1657.x, x_1657.y);
        let x_1660 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1658.x, x_1658.y, x_1660);
        let x_1667 : vec3<f32> = txVec25;
        let x_1669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1667.xy, x_1667.z);
        u_xlat69 = x_1669;
        let x_1671 : f32 = u_xlat8.x;
        let x_1672 : f32 = u_xlat69;
        let x_1675 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1671 * x_1672) + x_1675);
        let x_1679 : vec4<f32> = u_xlat12;
        let x_1680 : vec2<f32> = vec2<f32>(x_1679.z, x_1679.w);
        let x_1682 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
        let x_1689 : vec3<f32> = txVec26;
        let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1689.xy, x_1689.z);
        u_xlat69 = x_1691;
        let x_1693 : f32 = u_xlat8.y;
        let x_1694 : f32 = u_xlat69;
        let x_1697 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1693 * x_1694) + x_1697);
        let x_1701 : vec2<f32> = u_xlat52;
        let x_1703 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec27;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1710.xy, x_1710.z);
        u_xlat69 = x_1712;
        let x_1714 : f32 = u_xlat8.z;
        let x_1715 : f32 = u_xlat69;
        let x_1718 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1714 * x_1715) + x_1718);
        let x_1722 : vec4<f32> = u_xlat6;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.x, x_1722.y);
        let x_1725 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec28;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1732.xy, x_1732.z);
        u_xlat6.x = x_1734;
        let x_1737 : f32 = u_xlat8.w;
        let x_1739 : f32 = u_xlat6.x;
        let x_1742 : f32 = u_xlat48.x;
        u_xlat67 = ((x_1737 * x_1739) + x_1742);
      }
    }
  } else {
    let x_1746 : vec4<f32> = vs_INTERP8;
    let x_1747 : vec2<f32> = vec2<f32>(x_1746.x, x_1746.y);
    let x_1749 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1747.x, x_1747.y, x_1749);
    let x_1756 : vec3<f32> = txVec29;
    let x_1758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1756.xy, x_1756.z);
    u_xlat67 = x_1758;
  }
  let x_1760 : f32 = x_498.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1760) + 1.0f);
  let x_1764 : f32 = u_xlat67;
  let x_1766 : f32 = x_498.x_MainLightShadowParams.x;
  let x_1769 : f32 = u_xlat6.x;
  u_xlat67 = ((x_1764 * x_1766) + x_1769);
  let x_1772 : f32 = vs_INTERP8.z;
  u_xlatb6 = (0.0f >= x_1772);
  let x_1776 : f32 = vs_INTERP8.z;
  u_xlatb27 = (x_1776 >= 1.0f);
  let x_1778 : bool = u_xlatb27;
  let x_1779 : bool = u_xlatb6;
  u_xlatb6 = (x_1778 | x_1779);
  let x_1781 : bool = u_xlatb6;
  let x_1782 : f32 = u_xlat67;
  u_xlat67 = select(x_1782, 1.0f, x_1781);
  let x_1784 : vec3<f32> = vs_INTERP0;
  let x_1786 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1788 : vec3<f32> = (x_1784 + -(x_1786));
  let x_1789 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
  let x_1791 : vec4<f32> = u_xlat6;
  let x_1793 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1791.x, x_1791.y, x_1791.z), vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
  let x_1798 : f32 = u_xlat6.x;
  let x_1800 : f32 = x_498.x_MainLightShadowParams.z;
  let x_1803 : f32 = x_498.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1798 * x_1800) + x_1803);
  let x_1807 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1807, 0.0f, 1.0f);
  let x_1810 : f32 = u_xlat67;
  u_xlat27 = (-(x_1810) + 1.0f);
  let x_1814 : f32 = u_xlat6.x;
  let x_1815 : f32 = u_xlat27;
  let x_1817 : f32 = u_xlat67;
  u_xlat67 = ((x_1814 * x_1815) + x_1817);
  let x_1825 : f32 = x_1823.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1825 == -1.0f));
  let x_1827 : bool = u_xlatb6;
  if (x_1827) {
    let x_1830 : vec3<f32> = vs_INTERP0;
    let x_1833 : vec4<f32> = x_1823.x_MainLightWorldToLight[1i];
    let x_1835 : vec2<f32> = (vec2<f32>(x_1830.y, x_1830.y) * vec2<f32>(x_1833.x, x_1833.y));
    let x_1836 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1835.x, x_1835.y, x_1836.z, x_1836.w);
    let x_1839 : vec4<f32> = x_1823.x_MainLightWorldToLight[0i];
    let x_1841 : vec3<f32> = vs_INTERP0;
    let x_1844 : vec4<f32> = u_xlat6;
    let x_1846 : vec2<f32> = ((vec2<f32>(x_1839.x, x_1839.y) * vec2<f32>(x_1841.x, x_1841.x)) + vec2<f32>(x_1844.x, x_1844.y));
    let x_1847 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1846.x, x_1846.y, x_1847.z, x_1847.w);
    let x_1850 : vec4<f32> = x_1823.x_MainLightWorldToLight[2i];
    let x_1852 : vec3<f32> = vs_INTERP0;
    let x_1855 : vec4<f32> = u_xlat6;
    let x_1857 : vec2<f32> = ((vec2<f32>(x_1850.x, x_1850.y) * vec2<f32>(x_1852.z, x_1852.z)) + vec2<f32>(x_1855.x, x_1855.y));
    let x_1858 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1857.x, x_1857.y, x_1858.z, x_1858.w);
    let x_1860 : vec4<f32> = u_xlat6;
    let x_1863 : vec4<f32> = x_1823.x_MainLightWorldToLight[3i];
    let x_1865 : vec2<f32> = (vec2<f32>(x_1860.x, x_1860.y) + vec2<f32>(x_1863.x, x_1863.y));
    let x_1866 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1865.x, x_1865.y, x_1866.z, x_1866.w);
    let x_1868 : vec4<f32> = u_xlat6;
    let x_1871 : vec2<f32> = ((vec2<f32>(x_1868.x, x_1868.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1872 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1871.x, x_1871.y, x_1872.z, x_1872.w);
    let x_1879 : vec4<f32> = u_xlat6;
    let x_1882 : f32 = x_45.x_GlobalMipBias.x;
    let x_1883 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1879.x, x_1879.y), x_1882);
    u_xlat6 = x_1883;
    let x_1888 : f32 = x_1823.x_MainLightCookieTextureFormat;
    let x_1890 : f32 = x_1823.x_MainLightCookieTextureFormat;
    let x_1892 : f32 = x_1823.x_MainLightCookieTextureFormat;
    let x_1894 : f32 = x_1823.x_MainLightCookieTextureFormat;
    let x_1895 : vec4<f32> = vec4<f32>(x_1888, x_1890, x_1892, x_1894);
    let x_1903 : vec4<bool> = (vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1895.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1903.x, x_1903.y);
    let x_1906 : bool = u_xlatb8.y;
    if (x_1906) {
      let x_1911 : f32 = u_xlat6.w;
      x_1907 = x_1911;
    } else {
      let x_1914 : f32 = u_xlat6.x;
      x_1907 = x_1914;
    }
    let x_1915 : f32 = x_1907;
    u_xlat69 = x_1915;
    let x_1917 : bool = u_xlatb8.x;
    if (x_1917) {
      let x_1921 : vec4<f32> = u_xlat6;
      x_1918 = vec3<f32>(x_1921.x, x_1921.y, x_1921.z);
    } else {
      let x_1924 : f32 = u_xlat69;
      x_1918 = vec3<f32>(x_1924, x_1924, x_1924);
    }
    let x_1926 : vec3<f32> = x_1918;
    let x_1927 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1927.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1933 : vec4<f32> = u_xlat6;
  let x_1936 : vec4<f32> = x_45.x_MainLightColor;
  let x_1938 : vec3<f32> = (vec3<f32>(x_1933.x, x_1933.y, x_1933.z) * vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
  let x_1939 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
  let x_1941 : f32 = u_xlat68;
  let x_1943 : vec4<f32> = u_xlat6;
  let x_1945 : vec3<f32> = (vec3<f32>(x_1941, x_1941, x_1941) * vec3<f32>(x_1943.x, x_1943.y, x_1943.z));
  let x_1946 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1946.w);
  let x_1948 : vec3<f32> = u_xlat5;
  let x_1950 : vec4<f32> = u_xlat1;
  u_xlat69 = dot(-(x_1948), vec3<f32>(x_1950.x, x_1950.y, x_1950.w));
  let x_1953 : f32 = u_xlat69;
  let x_1954 : f32 = u_xlat69;
  u_xlat69 = (x_1953 + x_1954);
  let x_1956 : vec4<f32> = u_xlat1;
  let x_1958 : f32 = u_xlat69;
  let x_1962 : vec3<f32> = u_xlat5;
  let x_1964 : vec3<f32> = ((vec3<f32>(x_1956.x, x_1956.y, x_1956.w) * -(vec3<f32>(x_1958, x_1958, x_1958))) + -(x_1962));
  let x_1965 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
  let x_1967 : vec4<f32> = u_xlat1;
  let x_1969 : vec3<f32> = u_xlat5;
  u_xlat69 = dot(vec3<f32>(x_1967.x, x_1967.y, x_1967.w), x_1969);
  let x_1971 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1971, 0.0f, 1.0f);
  let x_1973 : f32 = u_xlat69;
  u_xlat69 = (-(x_1973) + 1.0f);
  let x_1976 : f32 = u_xlat69;
  let x_1977 : f32 = u_xlat69;
  u_xlat69 = (x_1976 * x_1977);
  let x_1979 : f32 = u_xlat69;
  let x_1980 : f32 = u_xlat69;
  u_xlat69 = (x_1979 * x_1980);
  let x_1982 : f32 = u_xlat63;
  u_xlat70 = ((-(x_1982) * 0.699999988f) + 1.700000048f);
  let x_1988 : f32 = u_xlat63;
  let x_1989 : f32 = u_xlat70;
  u_xlat63 = (x_1988 * x_1989);
  let x_1991 : f32 = u_xlat63;
  u_xlat63 = (x_1991 * 6.0f);
  let x_2002 : vec4<f32> = u_xlat8;
  let x_2004 : f32 = u_xlat63;
  let x_2005 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2002.x, x_2002.y, x_2002.z), x_2004);
  u_xlat8 = x_2005;
  let x_2007 : f32 = u_xlat8.w;
  u_xlat63 = (x_2007 + -1.0f);
  let x_2010 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_2011 : f32 = u_xlat63;
  u_xlat63 = ((x_2010 * x_2011) + 1.0f);
  let x_2014 : f32 = u_xlat63;
  u_xlat63 = max(x_2014, 0.0f);
  let x_2016 : f32 = u_xlat63;
  u_xlat63 = log2(x_2016);
  let x_2018 : f32 = u_xlat63;
  let x_2020 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2018 * x_2020);
  let x_2022 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2022);
  let x_2024 : f32 = u_xlat63;
  let x_2026 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2024 * x_2026);
  let x_2028 : vec4<f32> = u_xlat8;
  let x_2030 : f32 = u_xlat63;
  let x_2032 : vec3<f32> = (vec3<f32>(x_2028.x, x_2028.y, x_2028.z) * vec3<f32>(x_2030, x_2030, x_2030));
  let x_2033 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2032.x, x_2032.y, x_2032.z, x_2033.w);
  let x_2035 : vec3<f32> = u_xlat3;
  let x_2037 : vec3<f32> = u_xlat3;
  let x_2041 : vec2<f32> = ((vec2<f32>(x_2035.x, x_2035.x) * vec2<f32>(x_2037.x, x_2037.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2042 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2041.x, x_2041.y, x_2042.z, x_2042.w);
  let x_2045 : f32 = u_xlat9.y;
  u_xlat63 = (1.0f / x_2045);
  let x_2047 : vec3<f32> = u_xlat0;
  let x_2049 : f32 = u_xlat65;
  u_xlat30 = (-(x_2047) + vec3<f32>(x_2049, x_2049, x_2049));
  let x_2052 : f32 = u_xlat69;
  let x_2054 : vec3<f32> = u_xlat30;
  let x_2056 : vec3<f32> = u_xlat0;
  u_xlat30 = ((vec3<f32>(x_2052, x_2052, x_2052) * x_2054) + x_2056);
  let x_2058 : f32 = u_xlat63;
  let x_2060 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_2058, x_2058, x_2058) * x_2060);
  let x_2062 : vec4<f32> = u_xlat8;
  let x_2064 : vec3<f32> = u_xlat30;
  let x_2065 : vec3<f32> = (vec3<f32>(x_2062.x, x_2062.y, x_2062.z) * x_2064);
  let x_2066 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2065.x, x_2065.y, x_2065.z, x_2066.w);
  let x_2068 : vec4<f32> = u_xlat4;
  let x_2070 : vec3<f32> = u_xlat7;
  let x_2072 : vec4<f32> = u_xlat8;
  let x_2074 : vec3<f32> = ((vec3<f32>(x_2068.x, x_2068.y, x_2068.z) * x_2070) + vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
  let x_2075 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
  let x_2077 : f32 = u_xlat67;
  let x_2080 : f32 = x_122.unity_LightData.z;
  u_xlat63 = (x_2077 * x_2080);
  let x_2082 : vec4<f32> = u_xlat1;
  let x_2085 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2082.x, x_2082.y, x_2082.w), vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
  let x_2088 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2088, 0.0f, 1.0f);
  let x_2090 : f32 = u_xlat63;
  let x_2091 : f32 = u_xlat65;
  u_xlat63 = (x_2090 * x_2091);
  let x_2093 : f32 = u_xlat63;
  let x_2095 : vec4<f32> = u_xlat6;
  let x_2097 : vec3<f32> = (vec3<f32>(x_2093, x_2093, x_2093) * vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
  let x_2098 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
  let x_2100 : vec3<f32> = u_xlat5;
  let x_2102 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2104 : vec3<f32> = (x_2100 + vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
  let x_2105 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
  let x_2107 : vec4<f32> = u_xlat8;
  let x_2109 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_2107.x, x_2107.y, x_2107.z), vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
  let x_2112 : f32 = u_xlat63;
  u_xlat63 = max(x_2112, 1.17549435e-37f);
  let x_2115 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2115);
  let x_2117 : f32 = u_xlat63;
  let x_2119 : vec4<f32> = u_xlat8;
  let x_2121 : vec3<f32> = (vec3<f32>(x_2117, x_2117, x_2117) * vec3<f32>(x_2119.x, x_2119.y, x_2119.z));
  let x_2122 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2121.x, x_2121.y, x_2121.z, x_2122.w);
  let x_2124 : vec4<f32> = u_xlat1;
  let x_2126 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_2124.x, x_2124.y, x_2124.w), vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
  let x_2129 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2129, 0.0f, 1.0f);
  let x_2132 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2134 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(vec3<f32>(x_2132.x, x_2132.y, x_2132.z), vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
  let x_2137 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2137, 0.0f, 1.0f);
  let x_2139 : f32 = u_xlat63;
  let x_2140 : f32 = u_xlat63;
  u_xlat63 = (x_2139 * x_2140);
  let x_2142 : f32 = u_xlat63;
  let x_2144 : f32 = u_xlat9.x;
  u_xlat63 = ((x_2142 * x_2144) + 1.000010014f);
  let x_2148 : f32 = u_xlat65;
  let x_2149 : f32 = u_xlat65;
  u_xlat65 = (x_2148 * x_2149);
  let x_2151 : f32 = u_xlat63;
  let x_2152 : f32 = u_xlat63;
  u_xlat63 = (x_2151 * x_2152);
  let x_2154 : f32 = u_xlat65;
  u_xlat65 = max(x_2154, 0.100000001f);
  let x_2157 : f32 = u_xlat63;
  let x_2158 : f32 = u_xlat65;
  u_xlat63 = (x_2157 * x_2158);
  let x_2160 : f32 = u_xlat66;
  let x_2161 : f32 = u_xlat63;
  u_xlat63 = (x_2160 * x_2161);
  let x_2163 : f32 = u_xlat24;
  let x_2164 : f32 = u_xlat63;
  u_xlat63 = (x_2163 / x_2164);
  let x_2166 : vec3<f32> = u_xlat0;
  let x_2167 : f32 = u_xlat63;
  let x_2170 : vec3<f32> = u_xlat7;
  let x_2171 : vec3<f32> = ((x_2166 * vec3<f32>(x_2167, x_2167, x_2167)) + x_2170);
  let x_2172 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
  let x_2174 : vec4<f32> = u_xlat6;
  let x_2176 : vec4<f32> = u_xlat8;
  let x_2178 : vec3<f32> = (vec3<f32>(x_2174.x, x_2174.y, x_2174.z) * vec3<f32>(x_2176.x, x_2176.y, x_2176.z));
  let x_2179 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2178.x, x_2178.y, x_2178.z, x_2179.w);
  let x_2182 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2184 : f32 = x_122.unity_LightData.y;
  u_xlat63 = min(x_2182, x_2184);
  let x_2188 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2188));
  let x_2192 : f32 = x_1823.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2194 : f32 = x_1823.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2196 : f32 = x_1823.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2198 : f32 = x_1823.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2199 : vec4<f32> = vec4<f32>(x_2192, x_2194, x_2196, x_2198);
  let x_2205 : vec4<bool> = (vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2199.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_2205.x, x_2205.y);
  u_xlat30.x = 0.0f;
  u_xlat30.y = 0.0f;
  u_xlat30.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2216 : u32 = u_xlatu_loop_1;
    let x_2217 : u32 = u_xlatu63;
    if ((x_2216 < x_2217)) {
    } else {
      break;
    }
    let x_2220 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_2220 >> 2u);
    let x_2224 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2224 & 3u));
    let x_2227 : u32 = u_xlatu3;
    let x_2230 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_2227)];
    let x_2240 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2245 : vec4<u32> = indexable[x_2240];
    u_xlat3.x = dot(x_2230, bitcast<vec4<f32>>(x_2245));
    let x_2250 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_2250));
    let x_2253 : vec3<f32> = vs_INTERP0;
    let x_2265 : u32 = u_xlatu3;
    let x_2268 : vec4<f32> = x_2264.x_AdditionalLightsPosition[bitcast<i32>(x_2265)];
    let x_2271 : u32 = u_xlatu3;
    let x_2274 : vec4<f32> = x_2264.x_AdditionalLightsPosition[bitcast<i32>(x_2271)];
    let x_2276 : vec3<f32> = ((-(x_2253) * vec3<f32>(x_2268.w, x_2268.w, x_2268.w)) + vec3<f32>(x_2274.x, x_2274.y, x_2274.z));
    let x_2277 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2276.x, x_2276.y, x_2276.z, x_2277.w);
    let x_2279 : vec4<f32> = u_xlat10;
    let x_2281 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2279.x, x_2279.y, x_2279.z), vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
    let x_2284 : f32 = u_xlat67;
    u_xlat67 = max(x_2284, 6.10351562e-05f);
    let x_2287 : f32 = u_xlat67;
    u_xlat69 = inverseSqrt(x_2287);
    let x_2289 : f32 = u_xlat69;
    let x_2291 : vec4<f32> = u_xlat10;
    let x_2293 : vec3<f32> = (vec3<f32>(x_2289, x_2289, x_2289) * vec3<f32>(x_2291.x, x_2291.y, x_2291.z));
    let x_2294 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2294.w);
    let x_2296 : f32 = u_xlat67;
    u_xlat70 = (1.0f / x_2296);
    let x_2298 : f32 = u_xlat67;
    let x_2299 : u32 = u_xlatu3;
    let x_2302 : f32 = x_2264.x_AdditionalLightsAttenuation[bitcast<i32>(x_2299)].x;
    u_xlat67 = (x_2298 * x_2302);
    let x_2304 : f32 = u_xlat67;
    let x_2306 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2304) * x_2306) + 1.0f);
    let x_2309 : f32 = u_xlat67;
    u_xlat67 = max(x_2309, 0.0f);
    let x_2311 : f32 = u_xlat67;
    let x_2312 : f32 = u_xlat67;
    u_xlat67 = (x_2311 * x_2312);
    let x_2314 : f32 = u_xlat67;
    let x_2315 : f32 = u_xlat70;
    u_xlat67 = (x_2314 * x_2315);
    let x_2317 : u32 = u_xlatu3;
    let x_2320 : vec4<f32> = x_2264.x_AdditionalLightsSpotDir[bitcast<i32>(x_2317)];
    let x_2322 : vec4<f32> = u_xlat11;
    u_xlat70 = dot(vec3<f32>(x_2320.x, x_2320.y, x_2320.z), vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
    let x_2325 : f32 = u_xlat70;
    let x_2326 : u32 = u_xlatu3;
    let x_2329 : f32 = x_2264.x_AdditionalLightsAttenuation[bitcast<i32>(x_2326)].z;
    let x_2331 : u32 = u_xlatu3;
    let x_2334 : f32 = x_2264.x_AdditionalLightsAttenuation[bitcast<i32>(x_2331)].w;
    u_xlat70 = ((x_2325 * x_2329) + x_2334);
    let x_2336 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2336, 0.0f, 1.0f);
    let x_2338 : f32 = u_xlat70;
    let x_2339 : f32 = u_xlat70;
    u_xlat70 = (x_2338 * x_2339);
    let x_2341 : f32 = u_xlat67;
    let x_2342 : f32 = u_xlat70;
    u_xlat67 = (x_2341 * x_2342);
    let x_2345 : u32 = u_xlatu3;
    u_xlatu70 = (x_2345 >> 5u);
    let x_2348 : u32 = u_xlatu3;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_2348) & 31i)));
    let x_2354 : i32 = u_xlati50;
    let x_2356 : u32 = u_xlatu70;
    let x_2359 : f32 = x_1823.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2356)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2354) & bitcast<u32>(x_2359)));
    let x_2363 : i32 = u_xlati70;
    if ((x_2363 != 0i)) {
      let x_2373 : u32 = u_xlatu3;
      let x_2376 : f32 = x_2372.x_AdditionalLightsLightTypes[bitcast<i32>(x_2373)].el;
      u_xlati70 = i32(x_2376);
      let x_2378 : i32 = u_xlati70;
      u_xlati50 = select(1i, 0i, (x_2378 != 0i));
      let x_2382 : u32 = u_xlatu3;
      u_xlati71 = (bitcast<i32>(x_2382) << bitcast<u32>(2i));
      let x_2385 : i32 = u_xlati50;
      if ((x_2385 != 0i)) {
        let x_2389 : vec3<f32> = vs_INTERP0;
        let x_2391 : i32 = u_xlati71;
        let x_2394 : i32 = u_xlati71;
        let x_2398 : vec4<f32> = x_2372.x_AdditionalLightsWorldToLights[((x_2391 + 1i) / 4i)][((x_2394 + 1i) % 4i)];
        let x_2400 : vec3<f32> = (vec3<f32>(x_2389.y, x_2389.y, x_2389.y) * vec3<f32>(x_2398.x, x_2398.y, x_2398.w));
        let x_2401 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2400.x, x_2400.y, x_2400.z, x_2401.w);
        let x_2403 : i32 = u_xlati71;
        let x_2405 : i32 = u_xlati71;
        let x_2408 : vec4<f32> = x_2372.x_AdditionalLightsWorldToLights[(x_2403 / 4i)][(x_2405 % 4i)];
        let x_2410 : vec3<f32> = vs_INTERP0;
        let x_2413 : vec4<f32> = u_xlat12;
        let x_2415 : vec3<f32> = ((vec3<f32>(x_2408.x, x_2408.y, x_2408.w) * vec3<f32>(x_2410.x, x_2410.x, x_2410.x)) + vec3<f32>(x_2413.x, x_2413.y, x_2413.z));
        let x_2416 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2415.x, x_2415.y, x_2415.z, x_2416.w);
        let x_2418 : i32 = u_xlati71;
        let x_2421 : i32 = u_xlati71;
        let x_2425 : vec4<f32> = x_2372.x_AdditionalLightsWorldToLights[((x_2418 + 2i) / 4i)][((x_2421 + 2i) % 4i)];
        let x_2427 : vec3<f32> = vs_INTERP0;
        let x_2430 : vec4<f32> = u_xlat12;
        let x_2432 : vec3<f32> = ((vec3<f32>(x_2425.x, x_2425.y, x_2425.w) * vec3<f32>(x_2427.z, x_2427.z, x_2427.z)) + vec3<f32>(x_2430.x, x_2430.y, x_2430.z));
        let x_2433 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
        let x_2435 : vec4<f32> = u_xlat12;
        let x_2437 : i32 = u_xlati71;
        let x_2440 : i32 = u_xlati71;
        let x_2444 : vec4<f32> = x_2372.x_AdditionalLightsWorldToLights[((x_2437 + 3i) / 4i)][((x_2440 + 3i) % 4i)];
        let x_2446 : vec3<f32> = (vec3<f32>(x_2435.x, x_2435.y, x_2435.z) + vec3<f32>(x_2444.x, x_2444.y, x_2444.w));
        let x_2447 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2447.w);
        let x_2449 : vec4<f32> = u_xlat12;
        let x_2451 : vec4<f32> = u_xlat12;
        let x_2453 : vec2<f32> = (vec2<f32>(x_2449.x, x_2449.y) / vec2<f32>(x_2451.z, x_2451.z));
        let x_2454 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2453.x, x_2453.y, x_2454.z, x_2454.w);
        let x_2456 : vec4<f32> = u_xlat12;
        let x_2459 : vec2<f32> = ((vec2<f32>(x_2456.x, x_2456.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2460 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2459.x, x_2459.y, x_2460.z, x_2460.w);
        let x_2462 : vec4<f32> = u_xlat12;
        let x_2466 : vec2<f32> = clamp(vec2<f32>(x_2462.x, x_2462.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2467 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2466.x, x_2466.y, x_2467.z, x_2467.w);
        let x_2469 : u32 = u_xlatu3;
        let x_2472 : vec4<f32> = x_2372.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2469)];
        let x_2474 : vec4<f32> = u_xlat12;
        let x_2477 : u32 = u_xlatu3;
        let x_2480 : vec4<f32> = x_2372.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2477)];
        let x_2482 : vec2<f32> = ((vec2<f32>(x_2472.x, x_2472.y) * vec2<f32>(x_2474.x, x_2474.y)) + vec2<f32>(x_2480.z, x_2480.w));
        let x_2483 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
      } else {
        let x_2487 : i32 = u_xlati70;
        u_xlatb70 = (x_2487 == 1i);
        let x_2489 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2489);
        let x_2491 : i32 = u_xlati70;
        if ((x_2491 != 0i)) {
          let x_2496 : vec3<f32> = vs_INTERP0;
          let x_2498 : i32 = u_xlati71;
          let x_2501 : i32 = u_xlati71;
          let x_2505 : vec4<f32> = x_2372.x_AdditionalLightsWorldToLights[((x_2498 + 1i) / 4i)][((x_2501 + 1i) % 4i)];
          u_xlat54 = (vec2<f32>(x_2496.y, x_2496.y) * vec2<f32>(x_2505.x, x_2505.y));
          let x_2508 : i32 = u_xlati71;
          let x_2510 : i32 = u_xlati71;
          let x_2513 : vec4<f32> = x_2372.x_AdditionalLightsWorldToLights[(x_2508 / 4i)][(x_2510 % 4i)];
          let x_2515 : vec3<f32> = vs_INTERP0;
          let x_2518 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_2513.x, x_2513.y) * vec2<f32>(x_2515.x, x_2515.x)) + x_2518);
          let x_2520 : i32 = u_xlati71;
          let x_2523 : i32 = u_xlati71;
          let x_2527 : vec4<f32> = x_2372.x_AdditionalLightsWorldToLights[((x_2520 + 2i) / 4i)][((x_2523 + 2i) % 4i)];
          let x_2529 : vec3<f32> = vs_INTERP0;
          let x_2532 : vec2<f32> = u_xlat54;
          u_xlat54 = ((vec2<f32>(x_2527.x, x_2527.y) * vec2<f32>(x_2529.z, x_2529.z)) + x_2532);
          let x_2534 : vec2<f32> = u_xlat54;
          let x_2535 : i32 = u_xlati71;
          let x_2538 : i32 = u_xlati71;
          let x_2542 : vec4<f32> = x_2372.x_AdditionalLightsWorldToLights[((x_2535 + 3i) / 4i)][((x_2538 + 3i) % 4i)];
          u_xlat54 = (x_2534 + vec2<f32>(x_2542.x, x_2542.y));
          let x_2545 : vec2<f32> = u_xlat54;
          u_xlat54 = ((x_2545 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2548 : vec2<f32> = u_xlat54;
          u_xlat54 = fract(x_2548);
          let x_2550 : u32 = u_xlatu3;
          let x_2553 : vec4<f32> = x_2372.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2550)];
          let x_2555 : vec2<f32> = u_xlat54;
          let x_2557 : u32 = u_xlatu3;
          let x_2560 : vec4<f32> = x_2372.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2557)];
          let x_2562 : vec2<f32> = ((vec2<f32>(x_2553.x, x_2553.y) * x_2555) + vec2<f32>(x_2560.z, x_2560.w));
          let x_2563 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2562.x, x_2562.y, x_2563.z, x_2563.w);
        } else {
          let x_2566 : vec3<f32> = vs_INTERP0;
          let x_2568 : i32 = u_xlati71;
          let x_2571 : i32 = u_xlati71;
          let x_2575 : vec4<f32> = x_2372.x_AdditionalLightsWorldToLights[((x_2568 + 1i) / 4i)][((x_2571 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_2566.y, x_2566.y, x_2566.y, x_2566.y) * x_2575);
          let x_2577 : i32 = u_xlati71;
          let x_2579 : i32 = u_xlati71;
          let x_2582 : vec4<f32> = x_2372.x_AdditionalLightsWorldToLights[(x_2577 / 4i)][(x_2579 % 4i)];
          let x_2583 : vec3<f32> = vs_INTERP0;
          let x_2586 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2582 * vec4<f32>(x_2583.x, x_2583.x, x_2583.x, x_2583.x)) + x_2586);
          let x_2588 : i32 = u_xlati71;
          let x_2591 : i32 = u_xlati71;
          let x_2595 : vec4<f32> = x_2372.x_AdditionalLightsWorldToLights[((x_2588 + 2i) / 4i)][((x_2591 + 2i) % 4i)];
          let x_2596 : vec3<f32> = vs_INTERP0;
          let x_2599 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2595 * vec4<f32>(x_2596.z, x_2596.z, x_2596.z, x_2596.z)) + x_2599);
          let x_2601 : vec4<f32> = u_xlat13;
          let x_2602 : i32 = u_xlati71;
          let x_2605 : i32 = u_xlati71;
          let x_2609 : vec4<f32> = x_2372.x_AdditionalLightsWorldToLights[((x_2602 + 3i) / 4i)][((x_2605 + 3i) % 4i)];
          u_xlat13 = (x_2601 + x_2609);
          let x_2611 : vec4<f32> = u_xlat13;
          let x_2613 : vec4<f32> = u_xlat13;
          let x_2615 : vec3<f32> = (vec3<f32>(x_2611.x, x_2611.y, x_2611.z) / vec3<f32>(x_2613.w, x_2613.w, x_2613.w));
          let x_2616 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
          let x_2618 : vec4<f32> = u_xlat13;
          let x_2620 : vec4<f32> = u_xlat13;
          u_xlat70 = dot(vec3<f32>(x_2618.x, x_2618.y, x_2618.z), vec3<f32>(x_2620.x, x_2620.y, x_2620.z));
          let x_2623 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2623);
          let x_2625 : f32 = u_xlat70;
          let x_2627 : vec4<f32> = u_xlat13;
          let x_2629 : vec3<f32> = (vec3<f32>(x_2625, x_2625, x_2625) * vec3<f32>(x_2627.x, x_2627.y, x_2627.z));
          let x_2630 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2630.w);
          let x_2632 : vec4<f32> = u_xlat13;
          u_xlat70 = dot(abs(vec3<f32>(x_2632.x, x_2632.y, x_2632.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2637 : f32 = u_xlat70;
          u_xlat70 = max(x_2637, 0.000001f);
          let x_2640 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2640);
          let x_2642 : f32 = u_xlat70;
          let x_2644 : vec4<f32> = u_xlat13;
          let x_2646 : vec3<f32> = (vec3<f32>(x_2642, x_2642, x_2642) * vec3<f32>(x_2644.z, x_2644.x, x_2644.y));
          let x_2647 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_2646.x, x_2646.y, x_2646.z, x_2647.w);
          let x_2650 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_2650);
          let x_2654 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_2654, 0.0f, 1.0f);
          let x_2658 : vec4<f32> = u_xlat14;
          let x_2661 : vec4<bool> = (vec4<f32>(x_2658.y, x_2658.z, x_2658.y, x_2658.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb50 = vec2<bool>(x_2661.x, x_2661.y);
          let x_2665 : bool = u_xlatb50.x;
          if (x_2665) {
            let x_2670 : f32 = u_xlat14.x;
            x_2666 = x_2670;
          } else {
            let x_2673 : f32 = u_xlat14.x;
            x_2666 = -(x_2673);
          }
          let x_2675 : f32 = x_2666;
          u_xlat50.x = x_2675;
          let x_2678 : bool = u_xlatb50.y;
          if (x_2678) {
            let x_2683 : f32 = u_xlat14.x;
            x_2679 = x_2683;
          } else {
            let x_2686 : f32 = u_xlat14.x;
            x_2679 = -(x_2686);
          }
          let x_2688 : f32 = x_2679;
          u_xlat50.y = x_2688;
          let x_2690 : vec4<f32> = u_xlat13;
          let x_2692 : f32 = u_xlat70;
          let x_2695 : vec2<f32> = u_xlat50;
          u_xlat50 = ((vec2<f32>(x_2690.x, x_2690.y) * vec2<f32>(x_2692, x_2692)) + x_2695);
          let x_2697 : vec2<f32> = u_xlat50;
          u_xlat50 = ((x_2697 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2700 : vec2<f32> = u_xlat50;
          u_xlat50 = clamp(x_2700, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2704 : u32 = u_xlatu3;
          let x_2707 : vec4<f32> = x_2372.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2704)];
          let x_2709 : vec2<f32> = u_xlat50;
          let x_2711 : u32 = u_xlatu3;
          let x_2714 : vec4<f32> = x_2372.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2711)];
          let x_2716 : vec2<f32> = ((vec2<f32>(x_2707.x, x_2707.y) * x_2709) + vec2<f32>(x_2714.z, x_2714.w));
          let x_2717 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2716.x, x_2716.y, x_2717.z, x_2717.w);
        }
      }
      let x_2724 : vec4<f32> = u_xlat12;
      let x_2727 : f32 = x_45.x_GlobalMipBias.x;
      let x_2728 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2724.x, x_2724.y), x_2727);
      u_xlat12 = x_2728;
      let x_2730 : bool = u_xlatb8.y;
      if (x_2730) {
        let x_2735 : f32 = u_xlat12.w;
        x_2731 = x_2735;
      } else {
        let x_2738 : f32 = u_xlat12.x;
        x_2731 = x_2738;
      }
      let x_2739 : f32 = x_2731;
      u_xlat70 = x_2739;
      let x_2741 : bool = u_xlatb8.x;
      if (x_2741) {
        let x_2745 : vec4<f32> = u_xlat12;
        x_2742 = vec3<f32>(x_2745.x, x_2745.y, x_2745.z);
      } else {
        let x_2748 : f32 = u_xlat70;
        x_2742 = vec3<f32>(x_2748, x_2748, x_2748);
      }
      let x_2750 : vec3<f32> = x_2742;
      let x_2751 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2751.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_2757 : vec4<f32> = u_xlat12;
    let x_2759 : u32 = u_xlatu3;
    let x_2762 : vec4<f32> = x_2264.x_AdditionalLightsColor[bitcast<i32>(x_2759)];
    let x_2764 : vec3<f32> = (vec3<f32>(x_2757.x, x_2757.y, x_2757.z) * vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
    let x_2765 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2765.w);
    let x_2767 : f32 = u_xlat68;
    let x_2769 : vec4<f32> = u_xlat12;
    let x_2771 : vec3<f32> = (vec3<f32>(x_2767, x_2767, x_2767) * vec3<f32>(x_2769.x, x_2769.y, x_2769.z));
    let x_2772 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2771.x, x_2771.y, x_2771.z, x_2772.w);
    let x_2774 : vec4<f32> = u_xlat1;
    let x_2776 : vec4<f32> = u_xlat11;
    u_xlat3.x = dot(vec3<f32>(x_2774.x, x_2774.y, x_2774.w), vec3<f32>(x_2776.x, x_2776.y, x_2776.z));
    let x_2781 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2781, 0.0f, 1.0f);
    let x_2785 : f32 = u_xlat3.x;
    let x_2786 : f32 = u_xlat67;
    u_xlat3.x = (x_2785 * x_2786);
    let x_2789 : vec3<f32> = u_xlat3;
    let x_2791 : vec4<f32> = u_xlat12;
    let x_2793 : vec3<f32> = (vec3<f32>(x_2789.x, x_2789.x, x_2789.x) * vec3<f32>(x_2791.x, x_2791.y, x_2791.z));
    let x_2794 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2793.x, x_2793.y, x_2793.z, x_2794.w);
    let x_2796 : vec4<f32> = u_xlat10;
    let x_2798 : f32 = u_xlat69;
    let x_2801 : vec3<f32> = u_xlat5;
    let x_2802 : vec3<f32> = ((vec3<f32>(x_2796.x, x_2796.y, x_2796.z) * vec3<f32>(x_2798, x_2798, x_2798)) + x_2801);
    let x_2803 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2802.x, x_2802.y, x_2802.z, x_2803.w);
    let x_2805 : vec4<f32> = u_xlat10;
    let x_2807 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2805.x, x_2805.y, x_2805.z), vec3<f32>(x_2807.x, x_2807.y, x_2807.z));
    let x_2812 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_2812, 1.17549435e-37f);
    let x_2816 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_2816);
    let x_2819 : vec3<f32> = u_xlat3;
    let x_2821 : vec4<f32> = u_xlat10;
    let x_2823 : vec3<f32> = (vec3<f32>(x_2819.x, x_2819.x, x_2819.x) * vec3<f32>(x_2821.x, x_2821.y, x_2821.z));
    let x_2824 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2823.x, x_2823.y, x_2823.z, x_2824.w);
    let x_2826 : vec4<f32> = u_xlat1;
    let x_2828 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2826.x, x_2826.y, x_2826.w), vec3<f32>(x_2828.x, x_2828.y, x_2828.z));
    let x_2833 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2833, 0.0f, 1.0f);
    let x_2836 : vec4<f32> = u_xlat11;
    let x_2838 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2836.x, x_2836.y, x_2836.z), vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
    let x_2841 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2841, 0.0f, 1.0f);
    let x_2844 : f32 = u_xlat3.x;
    let x_2846 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2844 * x_2846);
    let x_2850 : f32 = u_xlat3.x;
    let x_2852 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_2850 * x_2852) + 1.000010014f);
    let x_2856 : f32 = u_xlat67;
    let x_2857 : f32 = u_xlat67;
    u_xlat67 = (x_2856 * x_2857);
    let x_2860 : f32 = u_xlat3.x;
    let x_2862 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2860 * x_2862);
    let x_2865 : f32 = u_xlat67;
    u_xlat67 = max(x_2865, 0.100000001f);
    let x_2868 : f32 = u_xlat3.x;
    let x_2869 : f32 = u_xlat67;
    u_xlat3.x = (x_2868 * x_2869);
    let x_2872 : f32 = u_xlat66;
    let x_2874 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2872 * x_2874);
    let x_2877 : f32 = u_xlat24;
    let x_2879 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2877 / x_2879);
    let x_2882 : vec3<f32> = u_xlat0;
    let x_2883 : vec3<f32> = u_xlat3;
    let x_2886 : vec3<f32> = u_xlat7;
    let x_2887 : vec3<f32> = ((x_2882 * vec3<f32>(x_2883.x, x_2883.x, x_2883.x)) + x_2886);
    let x_2888 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2887.x, x_2887.y, x_2887.z, x_2888.w);
    let x_2890 : vec4<f32> = u_xlat10;
    let x_2892 : vec4<f32> = u_xlat12;
    let x_2895 : vec3<f32> = u_xlat30;
    u_xlat30 = ((vec3<f32>(x_2890.x, x_2890.y, x_2890.z) * vec3<f32>(x_2892.x, x_2892.y, x_2892.z)) + x_2895);

    continuing {
      let x_2897 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2897 + bitcast<u32>(1i));
    }
  }
  let x_2899 : vec4<f32> = u_xlat4;
  let x_2901 : f32 = u_xlat45;
  let x_2904 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2899.x, x_2899.y, x_2899.z) * vec3<f32>(x_2901, x_2901, x_2901)) + vec3<f32>(x_2904.x, x_2904.y, x_2904.z));
  let x_2907 : vec3<f32> = u_xlat30;
  let x_2908 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_2907 + x_2908);
  let x_2912 : vec3<f32> = u_xlat2;
  let x_2913 : f32 = u_xlat43;
  let x_2916 : vec3<f32> = u_xlat0;
  let x_2917 : vec3<f32> = ((x_2912 * vec3<f32>(x_2913, x_2913, x_2913)) + x_2916);
  let x_2918 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2917.x, x_2917.y, x_2917.z, x_2918.w);
  let x_2923 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_2925 : f32 = x_122.unity_RenderingLayer.x;
  u_xlatu0 = (x_2923 & bitcast<u32>(x_2925));
  let x_2928 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2928);
  let x_2933 : f32 = u_xlat0.x;
  let x_2935 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2933 * x_2935);
  let x_2940 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2940, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2945 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2945.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

