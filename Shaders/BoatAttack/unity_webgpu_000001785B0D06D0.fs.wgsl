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

@group(1) @binding(4) var<uniform> x_736 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1171 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1284 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat8 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu45 : u32;
  var u_xlati45 : i32;
  var u_xlat18 : f32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : vec2<bool>;
  var u_xlatb34 : bool;
  var x_689 : f32;
  var u_xlat34 : f32;
  var x_820 : f32;
  var x_831 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlat52 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat24 : vec3<f32>;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat10 : vec3<f32>;
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
  var x_1586 : f32;
  var x_1599 : f32;
  var x_1651 : f32;
  var x_1663 : vec3<f32>;
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
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_246.z, x_245.z);
  let x_251 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb45 = (x_251 == 0.0f);
  let x_254 : vec3<f32> = vs_INTERP0;
  let x_259 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_260 : vec3<f32> = (-(x_254) + x_259);
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat4;
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat47 = dot(vec3<f32>(x_263.x, x_263.y, x_263.z), vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_268);
  let x_270 : f32 = u_xlat47;
  let x_272 : vec4<f32> = u_xlat4;
  let x_274 : vec3<f32> = (vec3<f32>(x_270, x_270, x_270) * vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : bool = u_xlatb45;
  if (x_278) {
    let x_283 : f32 = u_xlat4.x;
    x_279 = x_283;
  } else {
    let x_287 : f32 = x_45.unity_MatrixV[0i].z;
    x_279 = x_287;
  }
  let x_288 : f32 = x_279;
  u_xlat5.x = x_288;
  let x_290 : bool = u_xlatb45;
  if (x_290) {
    let x_296 : f32 = u_xlat4.y;
    x_291 = x_296;
  } else {
    let x_299 : f32 = x_45.unity_MatrixV[1i].z;
    x_291 = x_299;
  }
  let x_300 : f32 = x_291;
  u_xlat5.y = x_300;
  let x_302 : bool = u_xlatb45;
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
  u_xlat45 = dot(x_425, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_430 : f32 = u_xlat45;
  u_xlat45 = (-(x_430) + 4.0f);
  let x_435 : f32 = u_xlat45;
  u_xlatu45 = u32(x_435);
  let x_439 : u32 = u_xlatu45;
  u_xlati45 = (bitcast<i32>(x_439) << bitcast<u32>(2i));
  let x_442 : vec3<f32> = vs_INTERP0;
  let x_444 : i32 = u_xlati45;
  let x_447 : i32 = u_xlati45;
  let x_451 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_444 + 1i) / 4i)][((x_447 + 1i) % 4i)];
  let x_453 : vec3<f32> = (vec3<f32>(x_442.y, x_442.y, x_442.y) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : i32 = u_xlati45;
  let x_458 : i32 = u_xlati45;
  let x_461 : vec4<f32> = x_319.x_MainLightWorldToShadow[(x_456 / 4i)][(x_458 % 4i)];
  let x_463 : vec3<f32> = vs_INTERP0;
  let x_466 : vec4<f32> = u_xlat4;
  let x_468 : vec3<f32> = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463.x, x_463.x, x_463.x)) + vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : i32 = u_xlati45;
  let x_474 : i32 = u_xlati45;
  let x_478 : vec4<f32> = x_319.x_MainLightWorldToShadow[((x_471 + 2i) / 4i)][((x_474 + 2i) % 4i)];
  let x_480 : vec3<f32> = vs_INTERP0;
  let x_483 : vec4<f32> = u_xlat4;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480.z, x_480.z, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat4;
  let x_490 : i32 = u_xlati45;
  let x_493 : i32 = u_xlati45;
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
  u_xlat45 = ((x_534 * x_537) + x_540);
  let x_542 : f32 = u_xlat45;
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
  u_xlat45 = ((-(x_558) * 0.959999979f) + 0.959999979f);
  let x_563 : f32 = u_xlat45;
  let x_566 : f32 = u_xlat3.y;
  u_xlat47 = (-(x_563) + x_566);
  let x_568 : f32 = u_xlat45;
  let x_570 : vec3<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_568, x_568, x_568) * x_570);
  let x_572 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_572 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_576 : vec3<f32> = u_xlat3;
  let x_578 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_576.x, x_576.x, x_576.x) * x_578) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_584 : f32 = u_xlat3.y;
  u_xlat45 = (-(x_584) + 1.0f);
  let x_587 : f32 = u_xlat45;
  let x_588 : f32 = u_xlat45;
  u_xlat3.x = (x_587 * x_588);
  let x_592 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_592, 0.0078125f);
  let x_598 : f32 = u_xlat3.x;
  let x_600 : f32 = u_xlat3.x;
  u_xlat18 = (x_598 * x_600);
  let x_602 : f32 = u_xlat47;
  u_xlat47 = (x_602 + 1.0f);
  let x_604 : f32 = u_xlat47;
  u_xlat47 = min(x_604, 1.0f);
  let x_608 : f32 = u_xlat3.x;
  u_xlat48 = ((x_608 * 4.0f) + 2.0f);
  let x_617 : vec4<f32> = u_xlat7;
  let x_620 : f32 = x_45.x_GlobalMipBias.x;
  let x_621 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_617.x, x_617.z), x_620);
  u_xlat49 = x_621.x;
  let x_624 : f32 = u_xlat49;
  u_xlat50 = (x_624 + -1.0f);
  let x_627 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_628 : f32 = u_xlat50;
  u_xlat50 = ((x_627 * x_628) + 1.0f);
  let x_633 : f32 = u_xlat3.z;
  let x_634 : f32 = u_xlat49;
  u_xlat33 = min(x_633, x_634);
  let x_637 : vec4<f32> = u_xlat4;
  let x_638 : vec2<f32> = vec2<f32>(x_637.x, x_637.y);
  let x_640 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_638.x, x_638.y, x_640);
  let x_652 : vec3<f32> = txVec0;
  let x_654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_652.xy, x_652.z);
  u_xlat4.x = x_654;
  let x_658 : f32 = x_319.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_658) + 1.0f);
  let x_663 : f32 = u_xlat4.x;
  let x_665 : f32 = x_319.x_MainLightShadowParams.x;
  let x_668 : f32 = u_xlat19.x;
  u_xlat4.x = ((x_663 * x_665) + x_668);
  let x_675 : f32 = u_xlat4.z;
  u_xlatb19.x = (0.0f >= x_675);
  let x_680 : f32 = u_xlat4.z;
  u_xlatb34 = (x_680 >= 1.0f);
  let x_682 : bool = u_xlatb34;
  let x_684 : bool = u_xlatb19.x;
  u_xlatb19.x = (x_682 | x_684);
  let x_688 : bool = u_xlatb19.x;
  if (x_688) {
    x_689 = 1.0f;
  } else {
    let x_694 : f32 = u_xlat4.x;
    x_689 = x_694;
  }
  let x_695 : f32 = x_689;
  u_xlat4.x = x_695;
  let x_697 : vec3<f32> = vs_INTERP0;
  let x_699 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat19 = (x_697 + -(x_699));
  let x_702 : vec3<f32> = u_xlat19;
  let x_703 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_702, x_703);
  let x_707 : f32 = u_xlat19.x;
  let x_709 : f32 = x_319.x_MainLightShadowParams.z;
  let x_712 : f32 = x_319.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_707 * x_709) + x_712);
  let x_716 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_716, 0.0f, 1.0f);
  let x_721 : f32 = u_xlat4.x;
  u_xlat34 = (-(x_721) + 1.0f);
  let x_725 : f32 = u_xlat19.x;
  let x_726 : f32 = u_xlat34;
  let x_729 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_725 * x_726) + x_729);
  let x_738 : f32 = x_736.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_738 == -1.0f));
  let x_742 : bool = u_xlatb19.x;
  if (x_742) {
    let x_745 : vec3<f32> = vs_INTERP0;
    let x_748 : vec4<f32> = x_736.x_MainLightWorldToLight[1i];
    let x_750 : vec2<f32> = (vec2<f32>(x_745.y, x_745.y) * vec2<f32>(x_748.x, x_748.y));
    let x_751 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_750.x, x_750.y, x_751.z);
    let x_754 : vec4<f32> = x_736.x_MainLightWorldToLight[0i];
    let x_756 : vec3<f32> = vs_INTERP0;
    let x_759 : vec3<f32> = u_xlat19;
    let x_761 : vec2<f32> = ((vec2<f32>(x_754.x, x_754.y) * vec2<f32>(x_756.x, x_756.x)) + vec2<f32>(x_759.x, x_759.y));
    let x_762 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_761.x, x_761.y, x_762.z);
    let x_765 : vec4<f32> = x_736.x_MainLightWorldToLight[2i];
    let x_767 : vec3<f32> = vs_INTERP0;
    let x_770 : vec3<f32> = u_xlat19;
    let x_772 : vec2<f32> = ((vec2<f32>(x_765.x, x_765.y) * vec2<f32>(x_767.z, x_767.z)) + vec2<f32>(x_770.x, x_770.y));
    let x_773 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_772.x, x_772.y, x_773.z);
    let x_775 : vec3<f32> = u_xlat19;
    let x_778 : vec4<f32> = x_736.x_MainLightWorldToLight[3i];
    let x_780 : vec2<f32> = (vec2<f32>(x_775.x, x_775.y) + vec2<f32>(x_778.x, x_778.y));
    let x_781 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_780.x, x_780.y, x_781.z);
    let x_783 : vec3<f32> = u_xlat19;
    let x_788 : vec2<f32> = ((vec2<f32>(x_783.x, x_783.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_789 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_788.x, x_788.y, x_789.z);
    let x_796 : vec3<f32> = u_xlat19;
    let x_799 : f32 = x_45.x_GlobalMipBias.x;
    let x_800 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_796.x, x_796.y), x_799);
    u_xlat7 = x_800;
    let x_802 : f32 = x_736.x_MainLightCookieTextureFormat;
    let x_804 : f32 = x_736.x_MainLightCookieTextureFormat;
    let x_806 : f32 = x_736.x_MainLightCookieTextureFormat;
    let x_808 : f32 = x_736.x_MainLightCookieTextureFormat;
    let x_809 : vec4<f32> = vec4<f32>(x_802, x_804, x_806, x_808);
    let x_816 : vec4<bool> = (vec4<f32>(x_809.x, x_809.y, x_809.z, x_809.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_816.x, x_816.y);
    let x_819 : bool = u_xlatb19.y;
    if (x_819) {
      let x_824 : f32 = u_xlat7.w;
      x_820 = x_824;
    } else {
      let x_827 : f32 = u_xlat7.x;
      x_820 = x_827;
    }
    let x_828 : f32 = x_820;
    u_xlat34 = x_828;
    let x_830 : bool = u_xlatb19.x;
    if (x_830) {
      let x_834 : vec4<f32> = u_xlat7;
      x_831 = vec3<f32>(x_834.x, x_834.y, x_834.z);
    } else {
      let x_837 : f32 = u_xlat34;
      x_831 = vec3<f32>(x_837, x_837, x_837);
    }
    let x_839 : vec3<f32> = x_831;
    u_xlat19 = x_839;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_844 : vec3<f32> = u_xlat19;
  let x_846 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat19 = (x_844 * vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : f32 = u_xlat50;
  let x_851 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_849, x_849, x_849) * x_851);
  let x_854 : vec3<f32> = u_xlat5;
  let x_856 : vec4<f32> = u_xlat1;
  u_xlat51 = dot(-(x_854), vec3<f32>(x_856.x, x_856.y, x_856.w));
  let x_859 : f32 = u_xlat51;
  let x_860 : f32 = u_xlat51;
  u_xlat51 = (x_859 + x_860);
  let x_862 : vec4<f32> = u_xlat1;
  let x_864 : f32 = u_xlat51;
  let x_868 : vec3<f32> = u_xlat5;
  let x_870 : vec3<f32> = ((vec3<f32>(x_862.x, x_862.y, x_862.w) * -(vec3<f32>(x_864, x_864, x_864))) + -(x_868));
  let x_871 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec4<f32> = u_xlat1;
  let x_875 : vec3<f32> = u_xlat5;
  u_xlat51 = dot(vec3<f32>(x_873.x, x_873.y, x_873.w), x_875);
  let x_877 : f32 = u_xlat51;
  u_xlat51 = clamp(x_877, 0.0f, 1.0f);
  let x_879 : f32 = u_xlat51;
  u_xlat51 = (-(x_879) + 1.0f);
  let x_882 : f32 = u_xlat51;
  let x_883 : f32 = u_xlat51;
  u_xlat51 = (x_882 * x_883);
  let x_885 : f32 = u_xlat51;
  let x_886 : f32 = u_xlat51;
  u_xlat51 = (x_885 * x_886);
  let x_889 : f32 = u_xlat45;
  u_xlat52 = ((-(x_889) * 0.699999988f) + 1.700000048f);
  let x_895 : f32 = u_xlat45;
  let x_896 : f32 = u_xlat52;
  u_xlat45 = (x_895 * x_896);
  let x_898 : f32 = u_xlat45;
  u_xlat45 = (x_898 * 6.0f);
  let x_909 : vec4<f32> = u_xlat7;
  let x_911 : f32 = u_xlat45;
  let x_912 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_909.x, x_909.y, x_909.z), x_911);
  u_xlat7 = x_912;
  let x_914 : f32 = u_xlat7.w;
  u_xlat45 = (x_914 + -1.0f);
  let x_917 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_918 : f32 = u_xlat45;
  u_xlat45 = ((x_917 * x_918) + 1.0f);
  let x_921 : f32 = u_xlat45;
  u_xlat45 = max(x_921, 0.0f);
  let x_923 : f32 = u_xlat45;
  u_xlat45 = log2(x_923);
  let x_925 : f32 = u_xlat45;
  let x_927 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_925 * x_927);
  let x_929 : f32 = u_xlat45;
  u_xlat45 = exp2(x_929);
  let x_931 : f32 = u_xlat45;
  let x_933 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_931 * x_933);
  let x_935 : vec4<f32> = u_xlat7;
  let x_937 : f32 = u_xlat45;
  let x_939 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) * vec3<f32>(x_937, x_937, x_937));
  let x_940 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_944 : vec3<f32> = u_xlat3;
  let x_946 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_944.x, x_944.x) * vec2<f32>(x_946.x, x_946.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_952 : f32 = u_xlat9.y;
  u_xlat45 = (1.0f / x_952);
  let x_955 : vec3<f32> = u_xlat0;
  let x_957 : f32 = u_xlat47;
  u_xlat24 = (-(x_955) + vec3<f32>(x_957, x_957, x_957));
  let x_960 : f32 = u_xlat51;
  let x_962 : vec3<f32> = u_xlat24;
  let x_964 : vec3<f32> = u_xlat0;
  u_xlat24 = ((vec3<f32>(x_960, x_960, x_960) * x_962) + x_964);
  let x_966 : f32 = u_xlat45;
  let x_968 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_966, x_966, x_966) * x_968);
  let x_970 : vec4<f32> = u_xlat7;
  let x_972 : vec3<f32> = u_xlat24;
  let x_973 : vec3<f32> = (vec3<f32>(x_970.x, x_970.y, x_970.z) * x_972);
  let x_974 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec4<f32> = u_xlat6;
  let x_978 : vec3<f32> = u_xlat8;
  let x_980 : vec4<f32> = u_xlat7;
  let x_982 : vec3<f32> = ((vec3<f32>(x_976.x, x_976.y, x_976.z) * x_978) + vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_983 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_986 : f32 = u_xlat4.x;
  let x_988 : f32 = x_122.unity_LightData.z;
  u_xlat45 = (x_986 * x_988);
  let x_990 : vec4<f32> = u_xlat1;
  let x_993 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat47 = dot(vec3<f32>(x_990.x, x_990.y, x_990.w), vec3<f32>(x_993.x, x_993.y, x_993.z));
  let x_996 : f32 = u_xlat47;
  u_xlat47 = clamp(x_996, 0.0f, 1.0f);
  let x_998 : f32 = u_xlat45;
  let x_999 : f32 = u_xlat47;
  u_xlat45 = (x_998 * x_999);
  let x_1001 : f32 = u_xlat45;
  let x_1003 : vec3<f32> = u_xlat19;
  let x_1004 : vec3<f32> = (vec3<f32>(x_1001, x_1001, x_1001) * x_1003);
  let x_1005 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : vec3<f32> = u_xlat5;
  let x_1009 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1011 : vec3<f32> = (x_1007 + vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
  let x_1014 : vec4<f32> = u_xlat7;
  let x_1016 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1014.x, x_1014.y, x_1014.z), vec3<f32>(x_1016.x, x_1016.y, x_1016.z));
  let x_1019 : f32 = u_xlat45;
  u_xlat45 = max(x_1019, 1.17549435e-37f);
  let x_1022 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_1022);
  let x_1024 : f32 = u_xlat45;
  let x_1026 : vec4<f32> = u_xlat7;
  let x_1028 : vec3<f32> = (vec3<f32>(x_1024, x_1024, x_1024) * vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
  let x_1029 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
  let x_1031 : vec4<f32> = u_xlat1;
  let x_1033 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1031.x, x_1031.y, x_1031.w), vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1036, 0.0f, 1.0f);
  let x_1039 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1041 : vec4<f32> = u_xlat7;
  u_xlat47 = dot(vec3<f32>(x_1039.x, x_1039.y, x_1039.z), vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1044 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1044, 0.0f, 1.0f);
  let x_1046 : f32 = u_xlat45;
  let x_1047 : f32 = u_xlat45;
  u_xlat45 = (x_1046 * x_1047);
  let x_1049 : f32 = u_xlat45;
  let x_1051 : f32 = u_xlat9.x;
  u_xlat45 = ((x_1049 * x_1051) + 1.000010014f);
  let x_1055 : f32 = u_xlat47;
  let x_1056 : f32 = u_xlat47;
  u_xlat47 = (x_1055 * x_1056);
  let x_1058 : f32 = u_xlat45;
  let x_1059 : f32 = u_xlat45;
  u_xlat45 = (x_1058 * x_1059);
  let x_1061 : f32 = u_xlat47;
  u_xlat47 = max(x_1061, 0.100000001f);
  let x_1064 : f32 = u_xlat45;
  let x_1065 : f32 = u_xlat47;
  u_xlat45 = (x_1064 * x_1065);
  let x_1067 : f32 = u_xlat48;
  let x_1068 : f32 = u_xlat45;
  u_xlat45 = (x_1067 * x_1068);
  let x_1070 : f32 = u_xlat18;
  let x_1071 : f32 = u_xlat45;
  u_xlat45 = (x_1070 / x_1071);
  let x_1073 : vec3<f32> = u_xlat0;
  let x_1074 : f32 = u_xlat45;
  let x_1077 : vec3<f32> = u_xlat8;
  let x_1078 : vec3<f32> = ((x_1073 * vec3<f32>(x_1074, x_1074, x_1074)) + x_1077);
  let x_1079 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat4;
  let x_1083 : vec4<f32> = u_xlat7;
  let x_1085 : vec3<f32> = (vec3<f32>(x_1081.x, x_1081.y, x_1081.z) * vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1086 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  let x_1089 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1091 : f32 = x_122.unity_LightData.y;
  u_xlat45 = min(x_1089, x_1091);
  let x_1093 : f32 = u_xlat45;
  u_xlatu45 = bitcast<u32>(i32(x_1093));
  let x_1098 : f32 = x_736.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1100 : f32 = x_736.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1102 : f32 = x_736.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1104 : f32 = x_736.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1105 : vec4<f32> = vec4<f32>(x_1098, x_1100, x_1102, x_1104);
  let x_1111 : vec4<bool> = (vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1105.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1111.x, x_1111.y);
  u_xlat24.x = 0.0f;
  u_xlat24.y = 0.0f;
  u_xlat24.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1122 : u32 = u_xlatu_loop_1;
    let x_1123 : u32 = u_xlatu45;
    if ((x_1122 < x_1123)) {
    } else {
      break;
    }
    let x_1126 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1126 >> 2u);
    let x_1129 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1129 & 3u));
    let x_1133 : u32 = u_xlatu3;
    let x_1136 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_1133)];
    let x_1146 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1151 : vec4<u32> = indexable[x_1146];
    u_xlat3.x = dot(x_1136, bitcast<vec4<f32>>(x_1151));
    let x_1156 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_1156));
    let x_1160 : vec3<f32> = vs_INTERP0;
    let x_1172 : u32 = u_xlatu3;
    let x_1175 : vec4<f32> = x_1171.x_AdditionalLightsPosition[bitcast<i32>(x_1172)];
    let x_1178 : u32 = u_xlatu3;
    let x_1181 : vec4<f32> = x_1171.x_AdditionalLightsPosition[bitcast<i32>(x_1178)];
    u_xlat10 = ((-(x_1160) * vec3<f32>(x_1175.w, x_1175.w, x_1175.w)) + vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
    let x_1184 : vec3<f32> = u_xlat10;
    let x_1185 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1184, x_1185);
    let x_1187 : f32 = u_xlat49;
    u_xlat49 = max(x_1187, 6.10351562e-05f);
    let x_1190 : f32 = u_xlat49;
    u_xlat51 = inverseSqrt(x_1190);
    let x_1193 : f32 = u_xlat51;
    let x_1195 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_1193, x_1193, x_1193) * x_1195);
    let x_1198 : f32 = u_xlat49;
    u_xlat37.x = (1.0f / x_1198);
    let x_1201 : f32 = u_xlat49;
    let x_1202 : u32 = u_xlatu3;
    let x_1205 : f32 = x_1171.x_AdditionalLightsAttenuation[bitcast<i32>(x_1202)].x;
    u_xlat49 = (x_1201 * x_1205);
    let x_1207 : f32 = u_xlat49;
    let x_1209 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1207) * x_1209) + 1.0f);
    let x_1212 : f32 = u_xlat49;
    u_xlat49 = max(x_1212, 0.0f);
    let x_1214 : f32 = u_xlat49;
    let x_1215 : f32 = u_xlat49;
    u_xlat49 = (x_1214 * x_1215);
    let x_1217 : f32 = u_xlat49;
    let x_1219 : f32 = u_xlat37.x;
    u_xlat49 = (x_1217 * x_1219);
    let x_1221 : u32 = u_xlatu3;
    let x_1224 : vec4<f32> = x_1171.x_AdditionalLightsSpotDir[bitcast<i32>(x_1221)];
    let x_1226 : vec3<f32> = u_xlat11;
    u_xlat37.x = dot(vec3<f32>(x_1224.x, x_1224.y, x_1224.z), x_1226);
    let x_1230 : f32 = u_xlat37.x;
    let x_1231 : u32 = u_xlatu3;
    let x_1234 : f32 = x_1171.x_AdditionalLightsAttenuation[bitcast<i32>(x_1231)].z;
    let x_1236 : u32 = u_xlatu3;
    let x_1239 : f32 = x_1171.x_AdditionalLightsAttenuation[bitcast<i32>(x_1236)].w;
    u_xlat37.x = ((x_1230 * x_1234) + x_1239);
    let x_1243 : f32 = u_xlat37.x;
    u_xlat37.x = clamp(x_1243, 0.0f, 1.0f);
    let x_1247 : f32 = u_xlat37.x;
    let x_1249 : f32 = u_xlat37.x;
    u_xlat37.x = (x_1247 * x_1249);
    let x_1252 : f32 = u_xlat49;
    let x_1254 : f32 = u_xlat37.x;
    u_xlat49 = (x_1252 * x_1254);
    let x_1257 : u32 = u_xlatu3;
    u_xlatu37 = (x_1257 >> 5u);
    let x_1260 : u32 = u_xlatu3;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1260) & 31i)));
    let x_1266 : i32 = u_xlati52;
    let x_1268 : u32 = u_xlatu37;
    let x_1271 : f32 = x_736.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1268)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_1266) & bitcast<u32>(x_1271)));
    let x_1275 : i32 = u_xlati37;
    if ((x_1275 != 0i)) {
      let x_1285 : u32 = u_xlatu3;
      let x_1288 : f32 = x_1284.x_AdditionalLightsLightTypes[bitcast<i32>(x_1285)].el;
      u_xlati37 = i32(x_1288);
      let x_1290 : i32 = u_xlati37;
      u_xlati52 = select(1i, 0i, (x_1290 != 0i));
      let x_1294 : u32 = u_xlatu3;
      u_xlati53 = (bitcast<i32>(x_1294) << bitcast<u32>(2i));
      let x_1297 : i32 = u_xlati52;
      if ((x_1297 != 0i)) {
        let x_1302 : vec3<f32> = vs_INTERP0;
        let x_1304 : i32 = u_xlati53;
        let x_1307 : i32 = u_xlati53;
        let x_1311 : vec4<f32> = x_1284.x_AdditionalLightsWorldToLights[((x_1304 + 1i) / 4i)][((x_1307 + 1i) % 4i)];
        let x_1313 : vec3<f32> = (vec3<f32>(x_1302.y, x_1302.y, x_1302.y) * vec3<f32>(x_1311.x, x_1311.y, x_1311.w));
        let x_1314 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
        let x_1316 : i32 = u_xlati53;
        let x_1318 : i32 = u_xlati53;
        let x_1321 : vec4<f32> = x_1284.x_AdditionalLightsWorldToLights[(x_1316 / 4i)][(x_1318 % 4i)];
        let x_1323 : vec3<f32> = vs_INTERP0;
        let x_1326 : vec4<f32> = u_xlat12;
        let x_1328 : vec3<f32> = ((vec3<f32>(x_1321.x, x_1321.y, x_1321.w) * vec3<f32>(x_1323.x, x_1323.x, x_1323.x)) + vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
        let x_1329 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
        let x_1331 : i32 = u_xlati53;
        let x_1334 : i32 = u_xlati53;
        let x_1338 : vec4<f32> = x_1284.x_AdditionalLightsWorldToLights[((x_1331 + 2i) / 4i)][((x_1334 + 2i) % 4i)];
        let x_1340 : vec3<f32> = vs_INTERP0;
        let x_1343 : vec4<f32> = u_xlat12;
        let x_1345 : vec3<f32> = ((vec3<f32>(x_1338.x, x_1338.y, x_1338.w) * vec3<f32>(x_1340.z, x_1340.z, x_1340.z)) + vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
        let x_1346 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
        let x_1348 : vec4<f32> = u_xlat12;
        let x_1350 : i32 = u_xlati53;
        let x_1353 : i32 = u_xlati53;
        let x_1357 : vec4<f32> = x_1284.x_AdditionalLightsWorldToLights[((x_1350 + 3i) / 4i)][((x_1353 + 3i) % 4i)];
        let x_1359 : vec3<f32> = (vec3<f32>(x_1348.x, x_1348.y, x_1348.z) + vec3<f32>(x_1357.x, x_1357.y, x_1357.w));
        let x_1360 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1360.w);
        let x_1362 : vec4<f32> = u_xlat12;
        let x_1364 : vec4<f32> = u_xlat12;
        let x_1366 : vec2<f32> = (vec2<f32>(x_1362.x, x_1362.y) / vec2<f32>(x_1364.z, x_1364.z));
        let x_1367 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
        let x_1369 : vec4<f32> = u_xlat12;
        let x_1372 : vec2<f32> = ((vec2<f32>(x_1369.x, x_1369.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1373 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1375 : vec4<f32> = u_xlat12;
        let x_1379 : vec2<f32> = clamp(vec2<f32>(x_1375.x, x_1375.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1380 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1382 : u32 = u_xlatu3;
        let x_1385 : vec4<f32> = x_1284.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1382)];
        let x_1387 : vec4<f32> = u_xlat12;
        let x_1390 : u32 = u_xlatu3;
        let x_1393 : vec4<f32> = x_1284.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1390)];
        let x_1395 : vec2<f32> = ((vec2<f32>(x_1385.x, x_1385.y) * vec2<f32>(x_1387.x, x_1387.y)) + vec2<f32>(x_1393.z, x_1393.w));
        let x_1396 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1395.x, x_1395.y, x_1396.z, x_1396.w);
      } else {
        let x_1400 : i32 = u_xlati37;
        u_xlatb37 = (x_1400 == 1i);
        let x_1402 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_1402);
        let x_1404 : i32 = u_xlati37;
        if ((x_1404 != 0i)) {
          let x_1408 : vec3<f32> = vs_INTERP0;
          let x_1410 : i32 = u_xlati53;
          let x_1413 : i32 = u_xlati53;
          let x_1417 : vec4<f32> = x_1284.x_AdditionalLightsWorldToLights[((x_1410 + 1i) / 4i)][((x_1413 + 1i) % 4i)];
          u_xlat37 = (vec2<f32>(x_1408.y, x_1408.y) * vec2<f32>(x_1417.x, x_1417.y));
          let x_1420 : i32 = u_xlati53;
          let x_1422 : i32 = u_xlati53;
          let x_1425 : vec4<f32> = x_1284.x_AdditionalLightsWorldToLights[(x_1420 / 4i)][(x_1422 % 4i)];
          let x_1427 : vec3<f32> = vs_INTERP0;
          let x_1430 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_1425.x, x_1425.y) * vec2<f32>(x_1427.x, x_1427.x)) + x_1430);
          let x_1432 : i32 = u_xlati53;
          let x_1435 : i32 = u_xlati53;
          let x_1439 : vec4<f32> = x_1284.x_AdditionalLightsWorldToLights[((x_1432 + 2i) / 4i)][((x_1435 + 2i) % 4i)];
          let x_1441 : vec3<f32> = vs_INTERP0;
          let x_1444 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_1439.x, x_1439.y) * vec2<f32>(x_1441.z, x_1441.z)) + x_1444);
          let x_1446 : vec2<f32> = u_xlat37;
          let x_1447 : i32 = u_xlati53;
          let x_1450 : i32 = u_xlati53;
          let x_1454 : vec4<f32> = x_1284.x_AdditionalLightsWorldToLights[((x_1447 + 3i) / 4i)][((x_1450 + 3i) % 4i)];
          u_xlat37 = (x_1446 + vec2<f32>(x_1454.x, x_1454.y));
          let x_1457 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_1457 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1460 : vec2<f32> = u_xlat37;
          u_xlat37 = fract(x_1460);
          let x_1462 : u32 = u_xlatu3;
          let x_1465 : vec4<f32> = x_1284.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1462)];
          let x_1467 : vec2<f32> = u_xlat37;
          let x_1469 : u32 = u_xlatu3;
          let x_1472 : vec4<f32> = x_1284.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1469)];
          let x_1474 : vec2<f32> = ((vec2<f32>(x_1465.x, x_1465.y) * x_1467) + vec2<f32>(x_1472.z, x_1472.w));
          let x_1475 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1474.x, x_1474.y, x_1475.z, x_1475.w);
        } else {
          let x_1479 : vec3<f32> = vs_INTERP0;
          let x_1481 : i32 = u_xlati53;
          let x_1484 : i32 = u_xlati53;
          let x_1488 : vec4<f32> = x_1284.x_AdditionalLightsWorldToLights[((x_1481 + 1i) / 4i)][((x_1484 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1479.y, x_1479.y, x_1479.y, x_1479.y) * x_1488);
          let x_1490 : i32 = u_xlati53;
          let x_1492 : i32 = u_xlati53;
          let x_1495 : vec4<f32> = x_1284.x_AdditionalLightsWorldToLights[(x_1490 / 4i)][(x_1492 % 4i)];
          let x_1496 : vec3<f32> = vs_INTERP0;
          let x_1499 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1495 * vec4<f32>(x_1496.x, x_1496.x, x_1496.x, x_1496.x)) + x_1499);
          let x_1501 : i32 = u_xlati53;
          let x_1504 : i32 = u_xlati53;
          let x_1508 : vec4<f32> = x_1284.x_AdditionalLightsWorldToLights[((x_1501 + 2i) / 4i)][((x_1504 + 2i) % 4i)];
          let x_1509 : vec3<f32> = vs_INTERP0;
          let x_1512 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1508 * vec4<f32>(x_1509.z, x_1509.z, x_1509.z, x_1509.z)) + x_1512);
          let x_1514 : vec4<f32> = u_xlat13;
          let x_1515 : i32 = u_xlati53;
          let x_1518 : i32 = u_xlati53;
          let x_1522 : vec4<f32> = x_1284.x_AdditionalLightsWorldToLights[((x_1515 + 3i) / 4i)][((x_1518 + 3i) % 4i)];
          u_xlat13 = (x_1514 + x_1522);
          let x_1524 : vec4<f32> = u_xlat13;
          let x_1526 : vec4<f32> = u_xlat13;
          let x_1528 : vec3<f32> = (vec3<f32>(x_1524.x, x_1524.y, x_1524.z) / vec3<f32>(x_1526.w, x_1526.w, x_1526.w));
          let x_1529 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1528.x, x_1528.y, x_1528.z, x_1529.w);
          let x_1531 : vec4<f32> = u_xlat13;
          let x_1533 : vec4<f32> = u_xlat13;
          u_xlat37.x = dot(vec3<f32>(x_1531.x, x_1531.y, x_1531.z), vec3<f32>(x_1533.x, x_1533.y, x_1533.z));
          let x_1538 : f32 = u_xlat37.x;
          u_xlat37.x = inverseSqrt(x_1538);
          let x_1541 : vec2<f32> = u_xlat37;
          let x_1543 : vec4<f32> = u_xlat13;
          let x_1545 : vec3<f32> = (vec3<f32>(x_1541.x, x_1541.x, x_1541.x) * vec3<f32>(x_1543.x, x_1543.y, x_1543.z));
          let x_1546 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1546.w);
          let x_1548 : vec4<f32> = u_xlat13;
          u_xlat37.x = dot(abs(vec3<f32>(x_1548.x, x_1548.y, x_1548.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1555 : f32 = u_xlat37.x;
          u_xlat37.x = max(x_1555, 0.000001f);
          let x_1560 : f32 = u_xlat37.x;
          u_xlat37.x = (1.0f / x_1560);
          let x_1564 : vec2<f32> = u_xlat37;
          let x_1566 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1564.x, x_1564.x, x_1564.x) * vec3<f32>(x_1566.z, x_1566.x, x_1566.y));
          let x_1570 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1570);
          let x_1574 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1574, 0.0f, 1.0f);
          let x_1578 : vec3<f32> = u_xlat14;
          let x_1581 : vec4<bool> = (vec4<f32>(x_1578.y, x_1578.z, x_1578.y, x_1578.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1581.x, x_1581.y);
          let x_1585 : bool = u_xlatb42.x;
          if (x_1585) {
            let x_1590 : f32 = u_xlat14.x;
            x_1586 = x_1590;
          } else {
            let x_1593 : f32 = u_xlat14.x;
            x_1586 = -(x_1593);
          }
          let x_1595 : f32 = x_1586;
          u_xlat42.x = x_1595;
          let x_1598 : bool = u_xlatb42.y;
          if (x_1598) {
            let x_1603 : f32 = u_xlat14.x;
            x_1599 = x_1603;
          } else {
            let x_1606 : f32 = u_xlat14.x;
            x_1599 = -(x_1606);
          }
          let x_1608 : f32 = x_1599;
          u_xlat42.y = x_1608;
          let x_1610 : vec4<f32> = u_xlat13;
          let x_1612 : vec2<f32> = u_xlat37;
          let x_1615 : vec2<f32> = u_xlat42;
          u_xlat37 = ((vec2<f32>(x_1610.x, x_1610.y) * vec2<f32>(x_1612.x, x_1612.x)) + x_1615);
          let x_1617 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_1617 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1620 : vec2<f32> = u_xlat37;
          u_xlat37 = clamp(x_1620, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1624 : u32 = u_xlatu3;
          let x_1627 : vec4<f32> = x_1284.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1624)];
          let x_1629 : vec2<f32> = u_xlat37;
          let x_1631 : u32 = u_xlatu3;
          let x_1634 : vec4<f32> = x_1284.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1631)];
          let x_1636 : vec2<f32> = ((vec2<f32>(x_1627.x, x_1627.y) * x_1629) + vec2<f32>(x_1634.z, x_1634.w));
          let x_1637 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1636.x, x_1636.y, x_1637.z, x_1637.w);
        }
      }
      let x_1644 : vec4<f32> = u_xlat12;
      let x_1647 : f32 = x_45.x_GlobalMipBias.x;
      let x_1648 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1644.x, x_1644.y), x_1647);
      u_xlat12 = x_1648;
      let x_1650 : bool = u_xlatb7.y;
      if (x_1650) {
        let x_1655 : f32 = u_xlat12.w;
        x_1651 = x_1655;
      } else {
        let x_1658 : f32 = u_xlat12.x;
        x_1651 = x_1658;
      }
      let x_1659 : f32 = x_1651;
      u_xlat37.x = x_1659;
      let x_1662 : bool = u_xlatb7.x;
      if (x_1662) {
        let x_1666 : vec4<f32> = u_xlat12;
        x_1663 = vec3<f32>(x_1666.x, x_1666.y, x_1666.z);
      } else {
        let x_1669 : vec2<f32> = u_xlat37;
        x_1663 = vec3<f32>(x_1669.x, x_1669.x, x_1669.x);
      }
      let x_1671 : vec3<f32> = x_1663;
      let x_1672 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1678 : vec4<f32> = u_xlat12;
    let x_1680 : u32 = u_xlatu3;
    let x_1683 : vec4<f32> = x_1171.x_AdditionalLightsColor[bitcast<i32>(x_1680)];
    let x_1685 : vec3<f32> = (vec3<f32>(x_1678.x, x_1678.y, x_1678.z) * vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
    let x_1686 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
    let x_1688 : f32 = u_xlat50;
    let x_1690 : vec4<f32> = u_xlat12;
    let x_1692 : vec3<f32> = (vec3<f32>(x_1688, x_1688, x_1688) * vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
    let x_1693 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
    let x_1695 : vec4<f32> = u_xlat1;
    let x_1697 : vec3<f32> = u_xlat11;
    u_xlat3.x = dot(vec3<f32>(x_1695.x, x_1695.y, x_1695.w), x_1697);
    let x_1701 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1701, 0.0f, 1.0f);
    let x_1705 : f32 = u_xlat3.x;
    let x_1706 : f32 = u_xlat49;
    u_xlat3.x = (x_1705 * x_1706);
    let x_1709 : vec3<f32> = u_xlat3;
    let x_1711 : vec4<f32> = u_xlat12;
    let x_1713 : vec3<f32> = (vec3<f32>(x_1709.x, x_1709.x, x_1709.x) * vec3<f32>(x_1711.x, x_1711.y, x_1711.z));
    let x_1714 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1714.w);
    let x_1716 : vec3<f32> = u_xlat10;
    let x_1717 : f32 = u_xlat51;
    let x_1720 : vec3<f32> = u_xlat5;
    u_xlat10 = ((x_1716 * vec3<f32>(x_1717, x_1717, x_1717)) + x_1720);
    let x_1722 : vec3<f32> = u_xlat10;
    let x_1723 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(x_1722, x_1723);
    let x_1727 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1727, 1.17549435e-37f);
    let x_1731 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1731);
    let x_1734 : vec3<f32> = u_xlat3;
    let x_1736 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1734.x, x_1734.x, x_1734.x) * x_1736);
    let x_1738 : vec4<f32> = u_xlat1;
    let x_1740 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_1738.x, x_1738.y, x_1738.w), x_1740);
    let x_1744 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1744, 0.0f, 1.0f);
    let x_1747 : vec3<f32> = u_xlat11;
    let x_1748 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1747, x_1748);
    let x_1750 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1750, 0.0f, 1.0f);
    let x_1753 : f32 = u_xlat3.x;
    let x_1755 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1753 * x_1755);
    let x_1759 : f32 = u_xlat3.x;
    let x_1761 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_1759 * x_1761) + 1.000010014f);
    let x_1765 : f32 = u_xlat49;
    let x_1766 : f32 = u_xlat49;
    u_xlat49 = (x_1765 * x_1766);
    let x_1769 : f32 = u_xlat3.x;
    let x_1771 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1769 * x_1771);
    let x_1774 : f32 = u_xlat49;
    u_xlat49 = max(x_1774, 0.100000001f);
    let x_1777 : f32 = u_xlat3.x;
    let x_1778 : f32 = u_xlat49;
    u_xlat3.x = (x_1777 * x_1778);
    let x_1781 : f32 = u_xlat48;
    let x_1783 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1781 * x_1783);
    let x_1786 : f32 = u_xlat18;
    let x_1788 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1786 / x_1788);
    let x_1791 : vec3<f32> = u_xlat0;
    let x_1792 : vec3<f32> = u_xlat3;
    let x_1795 : vec3<f32> = u_xlat8;
    u_xlat10 = ((x_1791 * vec3<f32>(x_1792.x, x_1792.x, x_1792.x)) + x_1795);
    let x_1797 : vec3<f32> = u_xlat10;
    let x_1798 : vec4<f32> = u_xlat12;
    let x_1801 : vec3<f32> = u_xlat24;
    u_xlat24 = ((x_1797 * vec3<f32>(x_1798.x, x_1798.y, x_1798.z)) + x_1801);

    continuing {
      let x_1803 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1803 + bitcast<u32>(1i));
    }
  }
  let x_1805 : vec4<f32> = u_xlat6;
  let x_1807 : f32 = u_xlat33;
  let x_1810 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_1805.x, x_1805.y, x_1805.z) * vec3<f32>(x_1807, x_1807, x_1807)) + vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
  let x_1813 : vec3<f32> = u_xlat24;
  let x_1814 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1813 + x_1814);
  let x_1818 : vec3<f32> = u_xlat2;
  let x_1819 : f32 = u_xlat31;
  let x_1822 : vec3<f32> = u_xlat0;
  let x_1823 : vec3<f32> = ((x_1818 * vec3<f32>(x_1819, x_1819, x_1819)) + x_1822);
  let x_1824 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1823.x, x_1823.y, x_1823.z, x_1824.w);
  let x_1829 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_1831 : f32 = x_122.unity_RenderingLayer.x;
  u_xlatu0 = (x_1829 & bitcast<u32>(x_1831));
  let x_1834 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1834);
  let x_1839 : f32 = u_xlat0.x;
  let x_1842 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1839 * x_1842);
  let x_1847 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1847, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1851 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1851.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

