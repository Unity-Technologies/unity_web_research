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

@group(1) @binding(3) var<uniform> x_319 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_793 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1255 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1369 : AdditionalLightsCookies;

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
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu45 : u32;
  var u_xlati45 : i32;
  var u_xlat48 : f32;
  var u_xlat18 : f32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : vec3<bool>;
  var x_743 : f32;
  var x_880 : f32;
  var x_891 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat51 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat37 : vec2<f32>;
  var u_xlatu37 : u32;
  var u_xlati52 : i32;
  var u_xlati37 : i32;
  var u_xlati53 : i32;
  var u_xlat12 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb42 : vec2<bool>;
  var u_xlat42 : vec2<f32>;
  var x_1671 : f32;
  var x_1684 : f32;
  var x_1736 : f32;
  var x_1748 : vec3<f32>;
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
  u_xlat45 = dot(x_422, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_427 : f32 = u_xlat45;
  u_xlat45 = (-(x_427) + 4.0f);
  let x_432 : f32 = u_xlat45;
  u_xlatu45 = u32(x_432);
  let x_436 : u32 = u_xlatu45;
  u_xlati45 = (bitcast<i32>(x_436) << bitcast<u32>(2i));
  let x_439 : vec3<f32> = vs_INTERP0;
  let x_441 : i32 = u_xlati45;
  let x_444 : i32 = u_xlati45;
  let x_448 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_441 + 1i) / 4i)][((x_444 + 1i) % 4i)];
  let x_450 : vec3<f32> = (vec3<f32>(x_439.y, x_439.y, x_439.y) * vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_450.z);
  let x_453 : i32 = u_xlati45;
  let x_455 : i32 = u_xlati45;
  let x_458 : vec4<f32> = x_319.x_MainLightWorldToShadow[(x_453 / 4i)][(x_455 % 4i)];
  let x_460 : vec3<f32> = vs_INTERP0;
  let x_463 : vec4<f32> = u_xlat1;
  let x_465 : vec3<f32> = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_460.x, x_460.x, x_460.x)) + vec3<f32>(x_463.x, x_463.y, x_463.w));
  let x_466 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_465.z);
  let x_468 : i32 = u_xlati45;
  let x_471 : i32 = u_xlati45;
  let x_475 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_468 + 2i) / 4i)][((x_471 + 2i) % 4i)];
  let x_477 : vec3<f32> = vs_INTERP0;
  let x_480 : vec4<f32> = u_xlat1;
  let x_482 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_477.z, x_477.z, x_477.z)) + vec3<f32>(x_480.x, x_480.y, x_480.w));
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_482.z);
  let x_485 : vec4<f32> = u_xlat1;
  let x_487 : i32 = u_xlati45;
  let x_490 : i32 = u_xlati45;
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
  u_xlat45 = (x_542 * x_544);
  let x_547 : f32 = u_xlat4.x;
  let x_549 : f32 = u_xlat4.x;
  let x_551 : f32 = u_xlat45;
  u_xlat45 = ((x_547 * x_549) + -(x_551));
  let x_556 : vec4<f32> = x_122.unity_SHC;
  let x_558 : f32 = u_xlat45;
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
  u_xlat45 = ((x_589 * x_592) + x_595);
  let x_597 : f32 = u_xlat45;
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
  u_xlat45 = ((-(x_613) * 0.959999979f) + 0.959999979f);
  let x_618 : f32 = u_xlat45;
  u_xlat47 = (-(x_618) + 1.0f);
  let x_621 : f32 = u_xlat45;
  let x_623 : vec3<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_621, x_621, x_621) * x_623);
  let x_625 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_625 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_629 : vec3<f32> = u_xlat3;
  let x_631 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_629.x, x_629.x, x_629.x) * x_631) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_637 : f32 = u_xlat3.y;
  u_xlat45 = (-(x_637) + 1.0f);
  let x_640 : f32 = u_xlat45;
  let x_641 : f32 = u_xlat45;
  u_xlat3.x = (x_640 * x_641);
  let x_645 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_645, 0.0078125f);
  let x_651 : f32 = u_xlat3.x;
  let x_653 : f32 = u_xlat3.x;
  u_xlat48 = (x_651 * x_653);
  let x_655 : f32 = u_xlat47;
  let x_657 : f32 = u_xlat3.y;
  u_xlat47 = (x_655 + x_657);
  let x_659 : f32 = u_xlat47;
  u_xlat47 = min(x_659, 1.0f);
  let x_663 : f32 = u_xlat3.x;
  u_xlat18 = ((x_663 * 4.0f) + 2.0f);
  let x_672 : vec4<f32> = u_xlat7;
  let x_675 : f32 = x_45.x_GlobalMipBias.x;
  let x_676 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_672.x, x_672.z), x_675);
  u_xlat49 = x_676.x;
  let x_679 : f32 = u_xlat49;
  u_xlat50 = (x_679 + -1.0f);
  let x_682 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_683 : f32 = u_xlat50;
  u_xlat50 = ((x_682 * x_683) + 1.0f);
  let x_688 : f32 = u_xlat3.z;
  let x_689 : f32 = u_xlat49;
  u_xlat33 = min(x_688, x_689);
  let x_692 : vec4<f32> = u_xlat1;
  let x_693 : vec2<f32> = vec2<f32>(x_692.x, x_692.y);
  let x_695 : f32 = u_xlat1.w;
  txVec0 = vec3<f32>(x_693.x, x_693.y, x_695);
  let x_707 : vec3<f32> = txVec0;
  let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_707.xy, x_707.z);
  u_xlat1.x = x_709;
  let x_713 : f32 = x_319.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_713) + 1.0f);
  let x_718 : f32 = u_xlat1.x;
  let x_720 : f32 = x_319.x_MainLightShadowParams.x;
  let x_723 : f32 = u_xlat16.x;
  u_xlat1.x = ((x_718 * x_720) + x_723);
  let x_730 : f32 = u_xlat1.w;
  u_xlatb16.x = (0.0f >= x_730);
  let x_734 : f32 = u_xlat1.w;
  u_xlatb46 = (x_734 >= 1.0f);
  let x_736 : bool = u_xlatb46;
  let x_738 : bool = u_xlatb16.x;
  u_xlatb16.x = (x_736 | x_738);
  let x_742 : bool = u_xlatb16.x;
  if (x_742) {
    x_743 = 1.0f;
  } else {
    let x_748 : f32 = u_xlat1.x;
    x_743 = x_748;
  }
  let x_749 : f32 = x_743;
  u_xlat1.x = x_749;
  let x_751 : vec3<f32> = vs_INTERP0;
  let x_753 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_755 : vec3<f32> = (x_751 + -(x_753));
  let x_756 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat7;
  let x_760 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_758.x, x_758.y, x_758.z), vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_765 : f32 = u_xlat16.x;
  let x_767 : f32 = x_319.x_MainLightShadowParams.z;
  let x_770 : f32 = x_319.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_765 * x_767) + x_770);
  let x_774 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_774, 0.0f, 1.0f);
  let x_778 : f32 = u_xlat1.x;
  u_xlat46 = (-(x_778) + 1.0f);
  let x_782 : f32 = u_xlat16.x;
  let x_783 : f32 = u_xlat46;
  let x_786 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_782 * x_783) + x_786);
  let x_795 : f32 = x_793.x_MainLightCookieTextureFormat;
  u_xlatb16.x = !((x_795 == -1.0f));
  let x_799 : bool = u_xlatb16.x;
  if (x_799) {
    let x_802 : vec3<f32> = vs_INTERP0;
    let x_805 : vec4<f32> = x_793.x_MainLightWorldToLight[1i];
    let x_807 : vec2<f32> = (vec2<f32>(x_802.y, x_802.y) * vec2<f32>(x_805.x, x_805.y));
    let x_808 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_807.x, x_808.y, x_807.y);
    let x_811 : vec4<f32> = x_793.x_MainLightWorldToLight[0i];
    let x_813 : vec3<f32> = vs_INTERP0;
    let x_816 : vec3<f32> = u_xlat16;
    let x_818 : vec2<f32> = ((vec2<f32>(x_811.x, x_811.y) * vec2<f32>(x_813.x, x_813.x)) + vec2<f32>(x_816.x, x_816.z));
    let x_819 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_818.x, x_819.y, x_818.y);
    let x_822 : vec4<f32> = x_793.x_MainLightWorldToLight[2i];
    let x_824 : vec3<f32> = vs_INTERP0;
    let x_827 : vec3<f32> = u_xlat16;
    let x_829 : vec2<f32> = ((vec2<f32>(x_822.x, x_822.y) * vec2<f32>(x_824.z, x_824.z)) + vec2<f32>(x_827.x, x_827.z));
    let x_830 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_829.x, x_830.y, x_829.y);
    let x_832 : vec3<f32> = u_xlat16;
    let x_835 : vec4<f32> = x_793.x_MainLightWorldToLight[3i];
    let x_837 : vec2<f32> = (vec2<f32>(x_832.x, x_832.z) + vec2<f32>(x_835.x, x_835.y));
    let x_838 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_837.x, x_838.y, x_837.y);
    let x_840 : vec3<f32> = u_xlat16;
    let x_845 : vec2<f32> = ((vec2<f32>(x_840.x, x_840.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_846 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_845.x, x_846.y, x_845.y);
    let x_853 : vec3<f32> = u_xlat16;
    let x_856 : f32 = x_45.x_GlobalMipBias.x;
    let x_857 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_853.x, x_853.z), x_856);
    u_xlat7 = x_857;
    let x_859 : f32 = x_793.x_MainLightCookieTextureFormat;
    let x_861 : f32 = x_793.x_MainLightCookieTextureFormat;
    let x_863 : f32 = x_793.x_MainLightCookieTextureFormat;
    let x_865 : f32 = x_793.x_MainLightCookieTextureFormat;
    let x_866 : vec4<f32> = vec4<f32>(x_859, x_861, x_863, x_865);
    let x_873 : vec4<bool> = (vec4<f32>(x_866.x, x_866.y, x_866.z, x_866.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 1.0f));
    let x_875 : vec2<bool> = vec2<bool>(x_873.x, x_873.z);
    let x_876 : vec3<bool> = u_xlatb16;
    u_xlatb16 = vec3<bool>(x_875.x, x_876.y, x_875.y);
    let x_879 : bool = u_xlatb16.z;
    if (x_879) {
      let x_884 : f32 = u_xlat7.w;
      x_880 = x_884;
    } else {
      let x_887 : f32 = u_xlat7.x;
      x_880 = x_887;
    }
    let x_888 : f32 = x_880;
    u_xlat46 = x_888;
    let x_890 : bool = u_xlatb16.x;
    if (x_890) {
      let x_894 : vec4<f32> = u_xlat7;
      x_891 = vec3<f32>(x_894.x, x_894.y, x_894.z);
    } else {
      let x_897 : f32 = u_xlat46;
      x_891 = vec3<f32>(x_897, x_897, x_897);
    }
    let x_899 : vec3<f32> = x_891;
    let x_900 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_906 : vec4<f32> = u_xlat7;
  let x_909 : vec4<f32> = x_45.x_MainLightColor;
  let x_911 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) * vec3<f32>(x_909.x, x_909.y, x_909.z));
  let x_912 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : f32 = u_xlat50;
  let x_916 : vec4<f32> = u_xlat7;
  let x_918 : vec3<f32> = (vec3<f32>(x_914, x_914, x_914) * vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec3<f32> = u_xlat5;
  let x_923 : vec4<f32> = u_xlat4;
  u_xlat16.x = dot(-(x_921), vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_928 : f32 = u_xlat16.x;
  let x_930 : f32 = u_xlat16.x;
  u_xlat16.x = (x_928 + x_930);
  let x_933 : vec4<f32> = u_xlat4;
  let x_935 : vec3<f32> = u_xlat16;
  let x_939 : vec3<f32> = u_xlat5;
  let x_941 : vec3<f32> = ((vec3<f32>(x_933.x, x_933.y, x_933.z) * -(vec3<f32>(x_935.x, x_935.x, x_935.x))) + -(x_939));
  let x_942 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_944 : vec4<f32> = u_xlat4;
  let x_946 : vec3<f32> = u_xlat5;
  u_xlat16.x = dot(vec3<f32>(x_944.x, x_944.y, x_944.z), x_946);
  let x_950 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_950, 0.0f, 1.0f);
  let x_954 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_954) + 1.0f);
  let x_959 : f32 = u_xlat16.x;
  let x_961 : f32 = u_xlat16.x;
  u_xlat16.x = (x_959 * x_961);
  let x_965 : f32 = u_xlat16.x;
  let x_967 : f32 = u_xlat16.x;
  u_xlat16.x = (x_965 * x_967);
  let x_970 : f32 = u_xlat45;
  u_xlat46 = ((-(x_970) * 0.699999988f) + 1.700000048f);
  let x_976 : f32 = u_xlat45;
  let x_977 : f32 = u_xlat46;
  u_xlat45 = (x_976 * x_977);
  let x_979 : f32 = u_xlat45;
  u_xlat45 = (x_979 * 6.0f);
  let x_990 : vec4<f32> = u_xlat9;
  let x_992 : f32 = u_xlat45;
  let x_993 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_990.x, x_990.y, x_990.z), x_992);
  u_xlat9 = x_993;
  let x_995 : f32 = u_xlat9.w;
  u_xlat45 = (x_995 + -1.0f);
  let x_998 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_999 : f32 = u_xlat45;
  u_xlat45 = ((x_998 * x_999) + 1.0f);
  let x_1002 : f32 = u_xlat45;
  u_xlat45 = max(x_1002, 0.0f);
  let x_1004 : f32 = u_xlat45;
  u_xlat45 = log2(x_1004);
  let x_1006 : f32 = u_xlat45;
  let x_1008 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_1006 * x_1008);
  let x_1010 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1010);
  let x_1012 : f32 = u_xlat45;
  let x_1014 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_1012 * x_1014);
  let x_1016 : vec4<f32> = u_xlat9;
  let x_1018 : f32 = u_xlat45;
  let x_1020 : vec3<f32> = (vec3<f32>(x_1016.x, x_1016.y, x_1016.z) * vec3<f32>(x_1018, x_1018, x_1018));
  let x_1021 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1025 : vec3<f32> = u_xlat3;
  let x_1027 : vec3<f32> = u_xlat3;
  u_xlat10 = ((vec2<f32>(x_1025.x, x_1025.x) * vec2<f32>(x_1027.x, x_1027.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1033 : f32 = u_xlat10.y;
  u_xlat45 = (1.0f / x_1033);
  let x_1036 : vec3<f32> = u_xlat0;
  let x_1038 : f32 = u_xlat47;
  u_xlat25 = (-(x_1036) + vec3<f32>(x_1038, x_1038, x_1038));
  let x_1041 : vec3<f32> = u_xlat16;
  let x_1043 : vec3<f32> = u_xlat25;
  let x_1045 : vec3<f32> = u_xlat0;
  u_xlat25 = ((vec3<f32>(x_1041.x, x_1041.x, x_1041.x) * x_1043) + x_1045);
  let x_1047 : f32 = u_xlat45;
  let x_1049 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1047, x_1047, x_1047) * x_1049);
  let x_1051 : vec4<f32> = u_xlat9;
  let x_1053 : vec3<f32> = u_xlat25;
  let x_1054 : vec3<f32> = (vec3<f32>(x_1051.x, x_1051.y, x_1051.z) * x_1053);
  let x_1055 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1057 : vec3<f32> = u_xlat6;
  let x_1058 : vec3<f32> = u_xlat8;
  let x_1060 : vec4<f32> = u_xlat9;
  u_xlat6 = ((x_1057 * x_1058) + vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1064 : f32 = u_xlat1.x;
  let x_1066 : f32 = x_122.unity_LightData.z;
  u_xlat45 = (x_1064 * x_1066);
  let x_1068 : vec4<f32> = u_xlat4;
  let x_1071 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1068.x, x_1068.y, x_1068.z), vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
  let x_1076 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1076, 0.0f, 1.0f);
  let x_1079 : f32 = u_xlat45;
  let x_1081 : f32 = u_xlat1.x;
  u_xlat45 = (x_1079 * x_1081);
  let x_1083 : f32 = u_xlat45;
  let x_1085 : vec4<f32> = u_xlat7;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1083, x_1083, x_1083) * vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1087.x, x_1087.y, x_1088.z, x_1087.z);
  let x_1090 : vec3<f32> = u_xlat5;
  let x_1092 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1094 : vec3<f32> = (x_1090 + vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1097 : vec4<f32> = u_xlat7;
  let x_1099 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1097.x, x_1097.y, x_1097.z), vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
  let x_1102 : f32 = u_xlat45;
  u_xlat45 = max(x_1102, 1.17549435e-37f);
  let x_1105 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_1105);
  let x_1107 : f32 = u_xlat45;
  let x_1109 : vec4<f32> = u_xlat7;
  let x_1111 : vec3<f32> = (vec3<f32>(x_1107, x_1107, x_1107) * vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1112 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1114 : vec4<f32> = u_xlat4;
  let x_1116 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1114.x, x_1114.y, x_1114.z), vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
  let x_1119 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1119, 0.0f, 1.0f);
  let x_1122 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1124 : vec4<f32> = u_xlat7;
  u_xlat47 = dot(vec3<f32>(x_1122.x, x_1122.y, x_1122.z), vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
  let x_1127 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1127, 0.0f, 1.0f);
  let x_1129 : f32 = u_xlat45;
  let x_1130 : f32 = u_xlat45;
  u_xlat45 = (x_1129 * x_1130);
  let x_1132 : f32 = u_xlat45;
  let x_1134 : f32 = u_xlat10.x;
  u_xlat45 = ((x_1132 * x_1134) + 1.000010014f);
  let x_1138 : f32 = u_xlat47;
  let x_1139 : f32 = u_xlat47;
  u_xlat47 = (x_1138 * x_1139);
  let x_1141 : f32 = u_xlat45;
  let x_1142 : f32 = u_xlat45;
  u_xlat45 = (x_1141 * x_1142);
  let x_1144 : f32 = u_xlat47;
  u_xlat47 = max(x_1144, 0.100000001f);
  let x_1147 : f32 = u_xlat45;
  let x_1148 : f32 = u_xlat47;
  u_xlat45 = (x_1147 * x_1148);
  let x_1150 : f32 = u_xlat18;
  let x_1151 : f32 = u_xlat45;
  u_xlat45 = (x_1150 * x_1151);
  let x_1153 : f32 = u_xlat48;
  let x_1154 : f32 = u_xlat45;
  u_xlat45 = (x_1153 / x_1154);
  let x_1156 : vec3<f32> = u_xlat0;
  let x_1157 : f32 = u_xlat45;
  let x_1160 : vec3<f32> = u_xlat8;
  let x_1161 : vec3<f32> = ((x_1156 * vec3<f32>(x_1157, x_1157, x_1157)) + x_1160);
  let x_1162 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : vec4<f32> = u_xlat1;
  let x_1166 : vec4<f32> = u_xlat7;
  let x_1168 : vec3<f32> = (vec3<f32>(x_1164.x, x_1164.y, x_1164.w) * vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1168.x, x_1168.y, x_1169.z, x_1168.z);
  let x_1172 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1174 : f32 = x_122.unity_LightData.y;
  u_xlat45 = min(x_1172, x_1174);
  let x_1176 : f32 = u_xlat45;
  u_xlatu45 = bitcast<u32>(i32(x_1176));
  let x_1182 : f32 = x_793.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1184 : f32 = x_793.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1186 : f32 = x_793.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1188 : f32 = x_793.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1189 : vec4<f32> = vec4<f32>(x_1182, x_1184, x_1186, x_1188);
  let x_1196 : vec4<bool> = (vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1189.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1196.x, x_1196.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1207 : u32 = u_xlatu_loop_1;
    let x_1208 : u32 = u_xlatu45;
    if ((x_1207 < x_1208)) {
    } else {
      break;
    }
    let x_1211 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1211 >> 2u);
    let x_1214 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1214 & 3u));
    let x_1218 : u32 = u_xlatu3;
    let x_1221 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_1218)];
    let x_1231 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1236 : vec4<u32> = indexable[x_1231];
    u_xlat3.x = dot(x_1221, bitcast<vec4<f32>>(x_1236));
    let x_1241 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_1241));
    let x_1244 : vec3<f32> = vs_INTERP0;
    let x_1256 : u32 = u_xlatu3;
    let x_1259 : vec4<f32> = x_1255.x_AdditionalLightsPosition[bitcast<i32>(x_1256)];
    let x_1262 : u32 = u_xlatu3;
    let x_1265 : vec4<f32> = x_1255.x_AdditionalLightsPosition[bitcast<i32>(x_1262)];
    u_xlat25 = ((-(x_1244) * vec3<f32>(x_1259.w, x_1259.w, x_1259.w)) + vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
    let x_1268 : vec3<f32> = u_xlat25;
    let x_1269 : vec3<f32> = u_xlat25;
    u_xlat49 = dot(x_1268, x_1269);
    let x_1271 : f32 = u_xlat49;
    u_xlat49 = max(x_1271, 6.10351562e-05f);
    let x_1275 : f32 = u_xlat49;
    u_xlat51 = inverseSqrt(x_1275);
    let x_1278 : f32 = u_xlat51;
    let x_1280 : vec3<f32> = u_xlat25;
    u_xlat11 = (vec3<f32>(x_1278, x_1278, x_1278) * x_1280);
    let x_1283 : f32 = u_xlat49;
    u_xlat37.x = (1.0f / x_1283);
    let x_1286 : f32 = u_xlat49;
    let x_1287 : u32 = u_xlatu3;
    let x_1290 : f32 = x_1255.x_AdditionalLightsAttenuation[bitcast<i32>(x_1287)].x;
    u_xlat49 = (x_1286 * x_1290);
    let x_1292 : f32 = u_xlat49;
    let x_1294 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1292) * x_1294) + 1.0f);
    let x_1297 : f32 = u_xlat49;
    u_xlat49 = max(x_1297, 0.0f);
    let x_1299 : f32 = u_xlat49;
    let x_1300 : f32 = u_xlat49;
    u_xlat49 = (x_1299 * x_1300);
    let x_1302 : f32 = u_xlat49;
    let x_1304 : f32 = u_xlat37.x;
    u_xlat49 = (x_1302 * x_1304);
    let x_1306 : u32 = u_xlatu3;
    let x_1309 : vec4<f32> = x_1255.x_AdditionalLightsSpotDir[bitcast<i32>(x_1306)];
    let x_1311 : vec3<f32> = u_xlat11;
    u_xlat37.x = dot(vec3<f32>(x_1309.x, x_1309.y, x_1309.z), x_1311);
    let x_1315 : f32 = u_xlat37.x;
    let x_1316 : u32 = u_xlatu3;
    let x_1319 : f32 = x_1255.x_AdditionalLightsAttenuation[bitcast<i32>(x_1316)].z;
    let x_1321 : u32 = u_xlatu3;
    let x_1324 : f32 = x_1255.x_AdditionalLightsAttenuation[bitcast<i32>(x_1321)].w;
    u_xlat37.x = ((x_1315 * x_1319) + x_1324);
    let x_1328 : f32 = u_xlat37.x;
    u_xlat37.x = clamp(x_1328, 0.0f, 1.0f);
    let x_1332 : f32 = u_xlat37.x;
    let x_1334 : f32 = u_xlat37.x;
    u_xlat37.x = (x_1332 * x_1334);
    let x_1337 : f32 = u_xlat49;
    let x_1339 : f32 = u_xlat37.x;
    u_xlat49 = (x_1337 * x_1339);
    let x_1342 : u32 = u_xlatu3;
    u_xlatu37 = (x_1342 >> 5u);
    let x_1345 : u32 = u_xlatu3;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1345) & 31i)));
    let x_1351 : i32 = u_xlati52;
    let x_1353 : u32 = u_xlatu37;
    let x_1356 : f32 = x_793.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1353)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_1351) & bitcast<u32>(x_1356)));
    let x_1360 : i32 = u_xlati37;
    if ((x_1360 != 0i)) {
      let x_1370 : u32 = u_xlatu3;
      let x_1373 : f32 = x_1369.x_AdditionalLightsLightTypes[bitcast<i32>(x_1370)].el;
      u_xlati37 = i32(x_1373);
      let x_1375 : i32 = u_xlati37;
      u_xlati52 = select(1i, 0i, (x_1375 != 0i));
      let x_1379 : u32 = u_xlatu3;
      u_xlati53 = (bitcast<i32>(x_1379) << bitcast<u32>(2i));
      let x_1382 : i32 = u_xlati52;
      if ((x_1382 != 0i)) {
        let x_1387 : vec3<f32> = vs_INTERP0;
        let x_1389 : i32 = u_xlati53;
        let x_1392 : i32 = u_xlati53;
        let x_1396 : vec4<f32> = x_1369.x_AdditionalLightsWorldToLights[((x_1389 + 1i) / 4i)][((x_1392 + 1i) % 4i)];
        let x_1398 : vec3<f32> = (vec3<f32>(x_1387.y, x_1387.y, x_1387.y) * vec3<f32>(x_1396.x, x_1396.y, x_1396.w));
        let x_1399 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
        let x_1401 : i32 = u_xlati53;
        let x_1403 : i32 = u_xlati53;
        let x_1406 : vec4<f32> = x_1369.x_AdditionalLightsWorldToLights[(x_1401 / 4i)][(x_1403 % 4i)];
        let x_1408 : vec3<f32> = vs_INTERP0;
        let x_1411 : vec4<f32> = u_xlat12;
        let x_1413 : vec3<f32> = ((vec3<f32>(x_1406.x, x_1406.y, x_1406.w) * vec3<f32>(x_1408.x, x_1408.x, x_1408.x)) + vec3<f32>(x_1411.x, x_1411.y, x_1411.z));
        let x_1414 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
        let x_1416 : i32 = u_xlati53;
        let x_1419 : i32 = u_xlati53;
        let x_1423 : vec4<f32> = x_1369.x_AdditionalLightsWorldToLights[((x_1416 + 2i) / 4i)][((x_1419 + 2i) % 4i)];
        let x_1425 : vec3<f32> = vs_INTERP0;
        let x_1428 : vec4<f32> = u_xlat12;
        let x_1430 : vec3<f32> = ((vec3<f32>(x_1423.x, x_1423.y, x_1423.w) * vec3<f32>(x_1425.z, x_1425.z, x_1425.z)) + vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
        let x_1431 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
        let x_1433 : vec4<f32> = u_xlat12;
        let x_1435 : i32 = u_xlati53;
        let x_1438 : i32 = u_xlati53;
        let x_1442 : vec4<f32> = x_1369.x_AdditionalLightsWorldToLights[((x_1435 + 3i) / 4i)][((x_1438 + 3i) % 4i)];
        let x_1444 : vec3<f32> = (vec3<f32>(x_1433.x, x_1433.y, x_1433.z) + vec3<f32>(x_1442.x, x_1442.y, x_1442.w));
        let x_1445 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
        let x_1447 : vec4<f32> = u_xlat12;
        let x_1449 : vec4<f32> = u_xlat12;
        let x_1451 : vec2<f32> = (vec2<f32>(x_1447.x, x_1447.y) / vec2<f32>(x_1449.z, x_1449.z));
        let x_1452 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1451.x, x_1451.y, x_1452.z, x_1452.w);
        let x_1454 : vec4<f32> = u_xlat12;
        let x_1457 : vec2<f32> = ((vec2<f32>(x_1454.x, x_1454.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1458 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1457.x, x_1457.y, x_1458.z, x_1458.w);
        let x_1460 : vec4<f32> = u_xlat12;
        let x_1464 : vec2<f32> = clamp(vec2<f32>(x_1460.x, x_1460.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1465 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1464.x, x_1464.y, x_1465.z, x_1465.w);
        let x_1467 : u32 = u_xlatu3;
        let x_1470 : vec4<f32> = x_1369.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1467)];
        let x_1472 : vec4<f32> = u_xlat12;
        let x_1475 : u32 = u_xlatu3;
        let x_1478 : vec4<f32> = x_1369.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1475)];
        let x_1480 : vec2<f32> = ((vec2<f32>(x_1470.x, x_1470.y) * vec2<f32>(x_1472.x, x_1472.y)) + vec2<f32>(x_1478.z, x_1478.w));
        let x_1481 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1480.x, x_1480.y, x_1481.z, x_1481.w);
      } else {
        let x_1485 : i32 = u_xlati37;
        u_xlatb37 = (x_1485 == 1i);
        let x_1487 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_1487);
        let x_1489 : i32 = u_xlati37;
        if ((x_1489 != 0i)) {
          let x_1493 : vec3<f32> = vs_INTERP0;
          let x_1495 : i32 = u_xlati53;
          let x_1498 : i32 = u_xlati53;
          let x_1502 : vec4<f32> = x_1369.x_AdditionalLightsWorldToLights[((x_1495 + 1i) / 4i)][((x_1498 + 1i) % 4i)];
          u_xlat37 = (vec2<f32>(x_1493.y, x_1493.y) * vec2<f32>(x_1502.x, x_1502.y));
          let x_1505 : i32 = u_xlati53;
          let x_1507 : i32 = u_xlati53;
          let x_1510 : vec4<f32> = x_1369.x_AdditionalLightsWorldToLights[(x_1505 / 4i)][(x_1507 % 4i)];
          let x_1512 : vec3<f32> = vs_INTERP0;
          let x_1515 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_1510.x, x_1510.y) * vec2<f32>(x_1512.x, x_1512.x)) + x_1515);
          let x_1517 : i32 = u_xlati53;
          let x_1520 : i32 = u_xlati53;
          let x_1524 : vec4<f32> = x_1369.x_AdditionalLightsWorldToLights[((x_1517 + 2i) / 4i)][((x_1520 + 2i) % 4i)];
          let x_1526 : vec3<f32> = vs_INTERP0;
          let x_1529 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_1524.x, x_1524.y) * vec2<f32>(x_1526.z, x_1526.z)) + x_1529);
          let x_1531 : vec2<f32> = u_xlat37;
          let x_1532 : i32 = u_xlati53;
          let x_1535 : i32 = u_xlati53;
          let x_1539 : vec4<f32> = x_1369.x_AdditionalLightsWorldToLights[((x_1532 + 3i) / 4i)][((x_1535 + 3i) % 4i)];
          u_xlat37 = (x_1531 + vec2<f32>(x_1539.x, x_1539.y));
          let x_1542 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_1542 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1545 : vec2<f32> = u_xlat37;
          u_xlat37 = fract(x_1545);
          let x_1547 : u32 = u_xlatu3;
          let x_1550 : vec4<f32> = x_1369.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1547)];
          let x_1552 : vec2<f32> = u_xlat37;
          let x_1554 : u32 = u_xlatu3;
          let x_1557 : vec4<f32> = x_1369.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1554)];
          let x_1559 : vec2<f32> = ((vec2<f32>(x_1550.x, x_1550.y) * x_1552) + vec2<f32>(x_1557.z, x_1557.w));
          let x_1560 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1559.x, x_1559.y, x_1560.z, x_1560.w);
        } else {
          let x_1564 : vec3<f32> = vs_INTERP0;
          let x_1566 : i32 = u_xlati53;
          let x_1569 : i32 = u_xlati53;
          let x_1573 : vec4<f32> = x_1369.x_AdditionalLightsWorldToLights[((x_1566 + 1i) / 4i)][((x_1569 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1564.y, x_1564.y, x_1564.y, x_1564.y) * x_1573);
          let x_1575 : i32 = u_xlati53;
          let x_1577 : i32 = u_xlati53;
          let x_1580 : vec4<f32> = x_1369.x_AdditionalLightsWorldToLights[(x_1575 / 4i)][(x_1577 % 4i)];
          let x_1581 : vec3<f32> = vs_INTERP0;
          let x_1584 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1580 * vec4<f32>(x_1581.x, x_1581.x, x_1581.x, x_1581.x)) + x_1584);
          let x_1586 : i32 = u_xlati53;
          let x_1589 : i32 = u_xlati53;
          let x_1593 : vec4<f32> = x_1369.x_AdditionalLightsWorldToLights[((x_1586 + 2i) / 4i)][((x_1589 + 2i) % 4i)];
          let x_1594 : vec3<f32> = vs_INTERP0;
          let x_1597 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1593 * vec4<f32>(x_1594.z, x_1594.z, x_1594.z, x_1594.z)) + x_1597);
          let x_1599 : vec4<f32> = u_xlat13;
          let x_1600 : i32 = u_xlati53;
          let x_1603 : i32 = u_xlati53;
          let x_1607 : vec4<f32> = x_1369.x_AdditionalLightsWorldToLights[((x_1600 + 3i) / 4i)][((x_1603 + 3i) % 4i)];
          u_xlat13 = (x_1599 + x_1607);
          let x_1609 : vec4<f32> = u_xlat13;
          let x_1611 : vec4<f32> = u_xlat13;
          let x_1613 : vec3<f32> = (vec3<f32>(x_1609.x, x_1609.y, x_1609.z) / vec3<f32>(x_1611.w, x_1611.w, x_1611.w));
          let x_1614 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1613.x, x_1613.y, x_1613.z, x_1614.w);
          let x_1616 : vec4<f32> = u_xlat13;
          let x_1618 : vec4<f32> = u_xlat13;
          u_xlat37.x = dot(vec3<f32>(x_1616.x, x_1616.y, x_1616.z), vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
          let x_1623 : f32 = u_xlat37.x;
          u_xlat37.x = inverseSqrt(x_1623);
          let x_1626 : vec2<f32> = u_xlat37;
          let x_1628 : vec4<f32> = u_xlat13;
          let x_1630 : vec3<f32> = (vec3<f32>(x_1626.x, x_1626.x, x_1626.x) * vec3<f32>(x_1628.x, x_1628.y, x_1628.z));
          let x_1631 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);
          let x_1633 : vec4<f32> = u_xlat13;
          u_xlat37.x = dot(abs(vec3<f32>(x_1633.x, x_1633.y, x_1633.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1640 : f32 = u_xlat37.x;
          u_xlat37.x = max(x_1640, 0.000001f);
          let x_1645 : f32 = u_xlat37.x;
          u_xlat37.x = (1.0f / x_1645);
          let x_1649 : vec2<f32> = u_xlat37;
          let x_1651 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1649.x, x_1649.x, x_1649.x) * vec3<f32>(x_1651.z, x_1651.x, x_1651.y));
          let x_1655 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1655);
          let x_1659 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1659, 0.0f, 1.0f);
          let x_1663 : vec3<f32> = u_xlat14;
          let x_1666 : vec4<bool> = (vec4<f32>(x_1663.y, x_1663.z, x_1663.y, x_1663.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1666.x, x_1666.y);
          let x_1670 : bool = u_xlatb42.x;
          if (x_1670) {
            let x_1675 : f32 = u_xlat14.x;
            x_1671 = x_1675;
          } else {
            let x_1678 : f32 = u_xlat14.x;
            x_1671 = -(x_1678);
          }
          let x_1680 : f32 = x_1671;
          u_xlat42.x = x_1680;
          let x_1683 : bool = u_xlatb42.y;
          if (x_1683) {
            let x_1688 : f32 = u_xlat14.x;
            x_1684 = x_1688;
          } else {
            let x_1691 : f32 = u_xlat14.x;
            x_1684 = -(x_1691);
          }
          let x_1693 : f32 = x_1684;
          u_xlat42.y = x_1693;
          let x_1695 : vec4<f32> = u_xlat13;
          let x_1697 : vec2<f32> = u_xlat37;
          let x_1700 : vec2<f32> = u_xlat42;
          u_xlat37 = ((vec2<f32>(x_1695.x, x_1695.y) * vec2<f32>(x_1697.x, x_1697.x)) + x_1700);
          let x_1702 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_1702 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1705 : vec2<f32> = u_xlat37;
          u_xlat37 = clamp(x_1705, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1709 : u32 = u_xlatu3;
          let x_1712 : vec4<f32> = x_1369.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1709)];
          let x_1714 : vec2<f32> = u_xlat37;
          let x_1716 : u32 = u_xlatu3;
          let x_1719 : vec4<f32> = x_1369.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1716)];
          let x_1721 : vec2<f32> = ((vec2<f32>(x_1712.x, x_1712.y) * x_1714) + vec2<f32>(x_1719.z, x_1719.w));
          let x_1722 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1721.x, x_1721.y, x_1722.z, x_1722.w);
        }
      }
      let x_1729 : vec4<f32> = u_xlat12;
      let x_1732 : f32 = x_45.x_GlobalMipBias.x;
      let x_1733 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1729.x, x_1729.y), x_1732);
      u_xlat12 = x_1733;
      let x_1735 : bool = u_xlatb7.y;
      if (x_1735) {
        let x_1740 : f32 = u_xlat12.w;
        x_1736 = x_1740;
      } else {
        let x_1743 : f32 = u_xlat12.x;
        x_1736 = x_1743;
      }
      let x_1744 : f32 = x_1736;
      u_xlat37.x = x_1744;
      let x_1747 : bool = u_xlatb7.x;
      if (x_1747) {
        let x_1751 : vec4<f32> = u_xlat12;
        x_1748 = vec3<f32>(x_1751.x, x_1751.y, x_1751.z);
      } else {
        let x_1754 : vec2<f32> = u_xlat37;
        x_1748 = vec3<f32>(x_1754.x, x_1754.x, x_1754.x);
      }
      let x_1756 : vec3<f32> = x_1748;
      let x_1757 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1756.x, x_1756.y, x_1756.z, x_1757.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1763 : vec4<f32> = u_xlat12;
    let x_1765 : u32 = u_xlatu3;
    let x_1768 : vec4<f32> = x_1255.x_AdditionalLightsColor[bitcast<i32>(x_1765)];
    let x_1770 : vec3<f32> = (vec3<f32>(x_1763.x, x_1763.y, x_1763.z) * vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
    let x_1771 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1771.w);
    let x_1773 : f32 = u_xlat50;
    let x_1775 : vec4<f32> = u_xlat12;
    let x_1777 : vec3<f32> = (vec3<f32>(x_1773, x_1773, x_1773) * vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
    let x_1778 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
    let x_1780 : vec4<f32> = u_xlat4;
    let x_1782 : vec3<f32> = u_xlat11;
    u_xlat3.x = dot(vec3<f32>(x_1780.x, x_1780.y, x_1780.z), x_1782);
    let x_1786 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1786, 0.0f, 1.0f);
    let x_1790 : f32 = u_xlat3.x;
    let x_1791 : f32 = u_xlat49;
    u_xlat3.x = (x_1790 * x_1791);
    let x_1794 : vec3<f32> = u_xlat3;
    let x_1796 : vec4<f32> = u_xlat12;
    let x_1798 : vec3<f32> = (vec3<f32>(x_1794.x, x_1794.x, x_1794.x) * vec3<f32>(x_1796.x, x_1796.y, x_1796.z));
    let x_1799 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1798.x, x_1798.y, x_1798.z, x_1799.w);
    let x_1801 : vec3<f32> = u_xlat25;
    let x_1802 : f32 = u_xlat51;
    let x_1805 : vec3<f32> = u_xlat5;
    u_xlat25 = ((x_1801 * vec3<f32>(x_1802, x_1802, x_1802)) + x_1805);
    let x_1807 : vec3<f32> = u_xlat25;
    let x_1808 : vec3<f32> = u_xlat25;
    u_xlat3.x = dot(x_1807, x_1808);
    let x_1812 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1812, 1.17549435e-37f);
    let x_1816 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1816);
    let x_1819 : vec3<f32> = u_xlat3;
    let x_1821 : vec3<f32> = u_xlat25;
    u_xlat25 = (vec3<f32>(x_1819.x, x_1819.x, x_1819.x) * x_1821);
    let x_1823 : vec4<f32> = u_xlat4;
    let x_1825 : vec3<f32> = u_xlat25;
    u_xlat3.x = dot(vec3<f32>(x_1823.x, x_1823.y, x_1823.z), x_1825);
    let x_1829 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1829, 0.0f, 1.0f);
    let x_1832 : vec3<f32> = u_xlat11;
    let x_1833 : vec3<f32> = u_xlat25;
    u_xlat49 = dot(x_1832, x_1833);
    let x_1835 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1835, 0.0f, 1.0f);
    let x_1838 : f32 = u_xlat3.x;
    let x_1840 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1838 * x_1840);
    let x_1844 : f32 = u_xlat3.x;
    let x_1846 : f32 = u_xlat10.x;
    u_xlat3.x = ((x_1844 * x_1846) + 1.000010014f);
    let x_1850 : f32 = u_xlat49;
    let x_1851 : f32 = u_xlat49;
    u_xlat49 = (x_1850 * x_1851);
    let x_1854 : f32 = u_xlat3.x;
    let x_1856 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1854 * x_1856);
    let x_1859 : f32 = u_xlat49;
    u_xlat49 = max(x_1859, 0.100000001f);
    let x_1862 : f32 = u_xlat3.x;
    let x_1863 : f32 = u_xlat49;
    u_xlat3.x = (x_1862 * x_1863);
    let x_1866 : f32 = u_xlat18;
    let x_1868 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1866 * x_1868);
    let x_1871 : f32 = u_xlat48;
    let x_1873 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1871 / x_1873);
    let x_1876 : vec3<f32> = u_xlat0;
    let x_1877 : vec3<f32> = u_xlat3;
    let x_1880 : vec3<f32> = u_xlat8;
    u_xlat25 = ((x_1876 * vec3<f32>(x_1877.x, x_1877.x, x_1877.x)) + x_1880);
    let x_1882 : vec3<f32> = u_xlat25;
    let x_1883 : vec4<f32> = u_xlat12;
    let x_1886 : vec4<f32> = u_xlat9;
    let x_1888 : vec3<f32> = ((x_1882 * vec3<f32>(x_1883.x, x_1883.y, x_1883.z)) + vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
    let x_1889 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);

    continuing {
      let x_1891 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1891 + bitcast<u32>(1i));
    }
  }
  let x_1893 : vec3<f32> = u_xlat6;
  let x_1894 : f32 = u_xlat33;
  let x_1897 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_1893 * vec3<f32>(x_1894, x_1894, x_1894)) + vec3<f32>(x_1897.x, x_1897.y, x_1897.w));
  let x_1900 : vec4<f32> = u_xlat9;
  let x_1902 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1900.x, x_1900.y, x_1900.z) + x_1902);
  let x_1906 : vec3<f32> = u_xlat2;
  let x_1907 : f32 = u_xlat31;
  let x_1910 : vec3<f32> = u_xlat0;
  let x_1911 : vec3<f32> = ((x_1906 * vec3<f32>(x_1907, x_1907, x_1907)) + x_1910);
  let x_1912 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);
  let x_1917 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_1919 : f32 = x_122.unity_RenderingLayer.x;
  u_xlatu0 = (x_1917 & bitcast<u32>(x_1919));
  let x_1922 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1922);
  let x_1927 : f32 = u_xlat0.x;
  let x_1930 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1927 * x_1930);
  let x_1935 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1935, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1939 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1939.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

