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

@group(1) @binding(4) var<uniform> x_736 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1170 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1283 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var x_1585 : f32;
  var x_1598 : f32;
  var x_1650 : f32;
  var x_1662 : vec3<f32>;
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
    let x_1132 : u32 = u_xlatu3;
    let x_1135 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_1132)];
    let x_1145 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1150 : vec4<u32> = indexable[x_1145];
    u_xlat3.x = dot(x_1135, bitcast<vec4<f32>>(x_1150));
    let x_1155 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_1155));
    let x_1159 : vec3<f32> = vs_INTERP0;
    let x_1171 : u32 = u_xlatu3;
    let x_1174 : vec4<f32> = x_1170.x_AdditionalLightsPosition[bitcast<i32>(x_1171)];
    let x_1177 : u32 = u_xlatu3;
    let x_1180 : vec4<f32> = x_1170.x_AdditionalLightsPosition[bitcast<i32>(x_1177)];
    u_xlat10 = ((-(x_1159) * vec3<f32>(x_1174.w, x_1174.w, x_1174.w)) + vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
    let x_1183 : vec3<f32> = u_xlat10;
    let x_1184 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1183, x_1184);
    let x_1186 : f32 = u_xlat49;
    u_xlat49 = max(x_1186, 6.10351562e-05f);
    let x_1189 : f32 = u_xlat49;
    u_xlat51 = inverseSqrt(x_1189);
    let x_1192 : f32 = u_xlat51;
    let x_1194 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_1192, x_1192, x_1192) * x_1194);
    let x_1197 : f32 = u_xlat49;
    u_xlat37.x = (1.0f / x_1197);
    let x_1200 : f32 = u_xlat49;
    let x_1201 : u32 = u_xlatu3;
    let x_1204 : f32 = x_1170.x_AdditionalLightsAttenuation[bitcast<i32>(x_1201)].x;
    u_xlat49 = (x_1200 * x_1204);
    let x_1206 : f32 = u_xlat49;
    let x_1208 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1206) * x_1208) + 1.0f);
    let x_1211 : f32 = u_xlat49;
    u_xlat49 = max(x_1211, 0.0f);
    let x_1213 : f32 = u_xlat49;
    let x_1214 : f32 = u_xlat49;
    u_xlat49 = (x_1213 * x_1214);
    let x_1216 : f32 = u_xlat49;
    let x_1218 : f32 = u_xlat37.x;
    u_xlat49 = (x_1216 * x_1218);
    let x_1220 : u32 = u_xlatu3;
    let x_1223 : vec4<f32> = x_1170.x_AdditionalLightsSpotDir[bitcast<i32>(x_1220)];
    let x_1225 : vec3<f32> = u_xlat11;
    u_xlat37.x = dot(vec3<f32>(x_1223.x, x_1223.y, x_1223.z), x_1225);
    let x_1229 : f32 = u_xlat37.x;
    let x_1230 : u32 = u_xlatu3;
    let x_1233 : f32 = x_1170.x_AdditionalLightsAttenuation[bitcast<i32>(x_1230)].z;
    let x_1235 : u32 = u_xlatu3;
    let x_1238 : f32 = x_1170.x_AdditionalLightsAttenuation[bitcast<i32>(x_1235)].w;
    u_xlat37.x = ((x_1229 * x_1233) + x_1238);
    let x_1242 : f32 = u_xlat37.x;
    u_xlat37.x = clamp(x_1242, 0.0f, 1.0f);
    let x_1246 : f32 = u_xlat37.x;
    let x_1248 : f32 = u_xlat37.x;
    u_xlat37.x = (x_1246 * x_1248);
    let x_1251 : f32 = u_xlat49;
    let x_1253 : f32 = u_xlat37.x;
    u_xlat49 = (x_1251 * x_1253);
    let x_1256 : u32 = u_xlatu3;
    u_xlatu37 = (x_1256 >> 5u);
    let x_1259 : u32 = u_xlatu3;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1259) & 31i)));
    let x_1265 : i32 = u_xlati52;
    let x_1267 : u32 = u_xlatu37;
    let x_1270 : f32 = x_736.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1267)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_1265) & bitcast<u32>(x_1270)));
    let x_1274 : i32 = u_xlati37;
    if ((x_1274 != 0i)) {
      let x_1284 : u32 = u_xlatu3;
      let x_1287 : f32 = x_1283.x_AdditionalLightsLightTypes[bitcast<i32>(x_1284)].el;
      u_xlati37 = i32(x_1287);
      let x_1289 : i32 = u_xlati37;
      u_xlati52 = select(1i, 0i, (x_1289 != 0i));
      let x_1293 : u32 = u_xlatu3;
      u_xlati53 = (bitcast<i32>(x_1293) << bitcast<u32>(2i));
      let x_1296 : i32 = u_xlati52;
      if ((x_1296 != 0i)) {
        let x_1301 : vec3<f32> = vs_INTERP0;
        let x_1303 : i32 = u_xlati53;
        let x_1306 : i32 = u_xlati53;
        let x_1310 : vec4<f32> = x_1283.x_AdditionalLightsWorldToLights[((x_1303 + 1i) / 4i)][((x_1306 + 1i) % 4i)];
        let x_1312 : vec3<f32> = (vec3<f32>(x_1301.y, x_1301.y, x_1301.y) * vec3<f32>(x_1310.x, x_1310.y, x_1310.w));
        let x_1313 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
        let x_1315 : i32 = u_xlati53;
        let x_1317 : i32 = u_xlati53;
        let x_1320 : vec4<f32> = x_1283.x_AdditionalLightsWorldToLights[(x_1315 / 4i)][(x_1317 % 4i)];
        let x_1322 : vec3<f32> = vs_INTERP0;
        let x_1325 : vec4<f32> = u_xlat12;
        let x_1327 : vec3<f32> = ((vec3<f32>(x_1320.x, x_1320.y, x_1320.w) * vec3<f32>(x_1322.x, x_1322.x, x_1322.x)) + vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
        let x_1328 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
        let x_1330 : i32 = u_xlati53;
        let x_1333 : i32 = u_xlati53;
        let x_1337 : vec4<f32> = x_1283.x_AdditionalLightsWorldToLights[((x_1330 + 2i) / 4i)][((x_1333 + 2i) % 4i)];
        let x_1339 : vec3<f32> = vs_INTERP0;
        let x_1342 : vec4<f32> = u_xlat12;
        let x_1344 : vec3<f32> = ((vec3<f32>(x_1337.x, x_1337.y, x_1337.w) * vec3<f32>(x_1339.z, x_1339.z, x_1339.z)) + vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
        let x_1345 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
        let x_1347 : vec4<f32> = u_xlat12;
        let x_1349 : i32 = u_xlati53;
        let x_1352 : i32 = u_xlati53;
        let x_1356 : vec4<f32> = x_1283.x_AdditionalLightsWorldToLights[((x_1349 + 3i) / 4i)][((x_1352 + 3i) % 4i)];
        let x_1358 : vec3<f32> = (vec3<f32>(x_1347.x, x_1347.y, x_1347.z) + vec3<f32>(x_1356.x, x_1356.y, x_1356.w));
        let x_1359 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
        let x_1361 : vec4<f32> = u_xlat12;
        let x_1363 : vec4<f32> = u_xlat12;
        let x_1365 : vec2<f32> = (vec2<f32>(x_1361.x, x_1361.y) / vec2<f32>(x_1363.z, x_1363.z));
        let x_1366 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1365.x, x_1365.y, x_1366.z, x_1366.w);
        let x_1368 : vec4<f32> = u_xlat12;
        let x_1371 : vec2<f32> = ((vec2<f32>(x_1368.x, x_1368.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1372 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1371.x, x_1371.y, x_1372.z, x_1372.w);
        let x_1374 : vec4<f32> = u_xlat12;
        let x_1378 : vec2<f32> = clamp(vec2<f32>(x_1374.x, x_1374.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1379 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1378.x, x_1378.y, x_1379.z, x_1379.w);
        let x_1381 : u32 = u_xlatu3;
        let x_1384 : vec4<f32> = x_1283.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1381)];
        let x_1386 : vec4<f32> = u_xlat12;
        let x_1389 : u32 = u_xlatu3;
        let x_1392 : vec4<f32> = x_1283.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1389)];
        let x_1394 : vec2<f32> = ((vec2<f32>(x_1384.x, x_1384.y) * vec2<f32>(x_1386.x, x_1386.y)) + vec2<f32>(x_1392.z, x_1392.w));
        let x_1395 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1394.x, x_1394.y, x_1395.z, x_1395.w);
      } else {
        let x_1399 : i32 = u_xlati37;
        u_xlatb37 = (x_1399 == 1i);
        let x_1401 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_1401);
        let x_1403 : i32 = u_xlati37;
        if ((x_1403 != 0i)) {
          let x_1407 : vec3<f32> = vs_INTERP0;
          let x_1409 : i32 = u_xlati53;
          let x_1412 : i32 = u_xlati53;
          let x_1416 : vec4<f32> = x_1283.x_AdditionalLightsWorldToLights[((x_1409 + 1i) / 4i)][((x_1412 + 1i) % 4i)];
          u_xlat37 = (vec2<f32>(x_1407.y, x_1407.y) * vec2<f32>(x_1416.x, x_1416.y));
          let x_1419 : i32 = u_xlati53;
          let x_1421 : i32 = u_xlati53;
          let x_1424 : vec4<f32> = x_1283.x_AdditionalLightsWorldToLights[(x_1419 / 4i)][(x_1421 % 4i)];
          let x_1426 : vec3<f32> = vs_INTERP0;
          let x_1429 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_1424.x, x_1424.y) * vec2<f32>(x_1426.x, x_1426.x)) + x_1429);
          let x_1431 : i32 = u_xlati53;
          let x_1434 : i32 = u_xlati53;
          let x_1438 : vec4<f32> = x_1283.x_AdditionalLightsWorldToLights[((x_1431 + 2i) / 4i)][((x_1434 + 2i) % 4i)];
          let x_1440 : vec3<f32> = vs_INTERP0;
          let x_1443 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_1438.x, x_1438.y) * vec2<f32>(x_1440.z, x_1440.z)) + x_1443);
          let x_1445 : vec2<f32> = u_xlat37;
          let x_1446 : i32 = u_xlati53;
          let x_1449 : i32 = u_xlati53;
          let x_1453 : vec4<f32> = x_1283.x_AdditionalLightsWorldToLights[((x_1446 + 3i) / 4i)][((x_1449 + 3i) % 4i)];
          u_xlat37 = (x_1445 + vec2<f32>(x_1453.x, x_1453.y));
          let x_1456 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_1456 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1459 : vec2<f32> = u_xlat37;
          u_xlat37 = fract(x_1459);
          let x_1461 : u32 = u_xlatu3;
          let x_1464 : vec4<f32> = x_1283.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1461)];
          let x_1466 : vec2<f32> = u_xlat37;
          let x_1468 : u32 = u_xlatu3;
          let x_1471 : vec4<f32> = x_1283.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1468)];
          let x_1473 : vec2<f32> = ((vec2<f32>(x_1464.x, x_1464.y) * x_1466) + vec2<f32>(x_1471.z, x_1471.w));
          let x_1474 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1473.x, x_1473.y, x_1474.z, x_1474.w);
        } else {
          let x_1478 : vec3<f32> = vs_INTERP0;
          let x_1480 : i32 = u_xlati53;
          let x_1483 : i32 = u_xlati53;
          let x_1487 : vec4<f32> = x_1283.x_AdditionalLightsWorldToLights[((x_1480 + 1i) / 4i)][((x_1483 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1478.y, x_1478.y, x_1478.y, x_1478.y) * x_1487);
          let x_1489 : i32 = u_xlati53;
          let x_1491 : i32 = u_xlati53;
          let x_1494 : vec4<f32> = x_1283.x_AdditionalLightsWorldToLights[(x_1489 / 4i)][(x_1491 % 4i)];
          let x_1495 : vec3<f32> = vs_INTERP0;
          let x_1498 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1494 * vec4<f32>(x_1495.x, x_1495.x, x_1495.x, x_1495.x)) + x_1498);
          let x_1500 : i32 = u_xlati53;
          let x_1503 : i32 = u_xlati53;
          let x_1507 : vec4<f32> = x_1283.x_AdditionalLightsWorldToLights[((x_1500 + 2i) / 4i)][((x_1503 + 2i) % 4i)];
          let x_1508 : vec3<f32> = vs_INTERP0;
          let x_1511 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1507 * vec4<f32>(x_1508.z, x_1508.z, x_1508.z, x_1508.z)) + x_1511);
          let x_1513 : vec4<f32> = u_xlat13;
          let x_1514 : i32 = u_xlati53;
          let x_1517 : i32 = u_xlati53;
          let x_1521 : vec4<f32> = x_1283.x_AdditionalLightsWorldToLights[((x_1514 + 3i) / 4i)][((x_1517 + 3i) % 4i)];
          u_xlat13 = (x_1513 + x_1521);
          let x_1523 : vec4<f32> = u_xlat13;
          let x_1525 : vec4<f32> = u_xlat13;
          let x_1527 : vec3<f32> = (vec3<f32>(x_1523.x, x_1523.y, x_1523.z) / vec3<f32>(x_1525.w, x_1525.w, x_1525.w));
          let x_1528 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
          let x_1530 : vec4<f32> = u_xlat13;
          let x_1532 : vec4<f32> = u_xlat13;
          u_xlat37.x = dot(vec3<f32>(x_1530.x, x_1530.y, x_1530.z), vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
          let x_1537 : f32 = u_xlat37.x;
          u_xlat37.x = inverseSqrt(x_1537);
          let x_1540 : vec2<f32> = u_xlat37;
          let x_1542 : vec4<f32> = u_xlat13;
          let x_1544 : vec3<f32> = (vec3<f32>(x_1540.x, x_1540.x, x_1540.x) * vec3<f32>(x_1542.x, x_1542.y, x_1542.z));
          let x_1545 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
          let x_1547 : vec4<f32> = u_xlat13;
          u_xlat37.x = dot(abs(vec3<f32>(x_1547.x, x_1547.y, x_1547.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1554 : f32 = u_xlat37.x;
          u_xlat37.x = max(x_1554, 0.000001f);
          let x_1559 : f32 = u_xlat37.x;
          u_xlat37.x = (1.0f / x_1559);
          let x_1563 : vec2<f32> = u_xlat37;
          let x_1565 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1563.x, x_1563.x, x_1563.x) * vec3<f32>(x_1565.z, x_1565.x, x_1565.y));
          let x_1569 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1569);
          let x_1573 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1573, 0.0f, 1.0f);
          let x_1577 : vec3<f32> = u_xlat14;
          let x_1580 : vec4<bool> = (vec4<f32>(x_1577.y, x_1577.z, x_1577.y, x_1577.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1580.x, x_1580.y);
          let x_1584 : bool = u_xlatb42.x;
          if (x_1584) {
            let x_1589 : f32 = u_xlat14.x;
            x_1585 = x_1589;
          } else {
            let x_1592 : f32 = u_xlat14.x;
            x_1585 = -(x_1592);
          }
          let x_1594 : f32 = x_1585;
          u_xlat42.x = x_1594;
          let x_1597 : bool = u_xlatb42.y;
          if (x_1597) {
            let x_1602 : f32 = u_xlat14.x;
            x_1598 = x_1602;
          } else {
            let x_1605 : f32 = u_xlat14.x;
            x_1598 = -(x_1605);
          }
          let x_1607 : f32 = x_1598;
          u_xlat42.y = x_1607;
          let x_1609 : vec4<f32> = u_xlat13;
          let x_1611 : vec2<f32> = u_xlat37;
          let x_1614 : vec2<f32> = u_xlat42;
          u_xlat37 = ((vec2<f32>(x_1609.x, x_1609.y) * vec2<f32>(x_1611.x, x_1611.x)) + x_1614);
          let x_1616 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_1616 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1619 : vec2<f32> = u_xlat37;
          u_xlat37 = clamp(x_1619, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1623 : u32 = u_xlatu3;
          let x_1626 : vec4<f32> = x_1283.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1623)];
          let x_1628 : vec2<f32> = u_xlat37;
          let x_1630 : u32 = u_xlatu3;
          let x_1633 : vec4<f32> = x_1283.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1630)];
          let x_1635 : vec2<f32> = ((vec2<f32>(x_1626.x, x_1626.y) * x_1628) + vec2<f32>(x_1633.z, x_1633.w));
          let x_1636 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1635.x, x_1635.y, x_1636.z, x_1636.w);
        }
      }
      let x_1643 : vec4<f32> = u_xlat12;
      let x_1646 : f32 = x_45.x_GlobalMipBias.x;
      let x_1647 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1643.x, x_1643.y), x_1646);
      u_xlat12 = x_1647;
      let x_1649 : bool = u_xlatb7.y;
      if (x_1649) {
        let x_1654 : f32 = u_xlat12.w;
        x_1650 = x_1654;
      } else {
        let x_1657 : f32 = u_xlat12.x;
        x_1650 = x_1657;
      }
      let x_1658 : f32 = x_1650;
      u_xlat37.x = x_1658;
      let x_1661 : bool = u_xlatb7.x;
      if (x_1661) {
        let x_1665 : vec4<f32> = u_xlat12;
        x_1662 = vec3<f32>(x_1665.x, x_1665.y, x_1665.z);
      } else {
        let x_1668 : vec2<f32> = u_xlat37;
        x_1662 = vec3<f32>(x_1668.x, x_1668.x, x_1668.x);
      }
      let x_1670 : vec3<f32> = x_1662;
      let x_1671 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1671.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1677 : vec4<f32> = u_xlat12;
    let x_1679 : u32 = u_xlatu3;
    let x_1682 : vec4<f32> = x_1170.x_AdditionalLightsColor[bitcast<i32>(x_1679)];
    let x_1684 : vec3<f32> = (vec3<f32>(x_1677.x, x_1677.y, x_1677.z) * vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
    let x_1685 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1684.x, x_1684.y, x_1684.z, x_1685.w);
    let x_1687 : f32 = u_xlat50;
    let x_1689 : vec4<f32> = u_xlat12;
    let x_1691 : vec3<f32> = (vec3<f32>(x_1687, x_1687, x_1687) * vec3<f32>(x_1689.x, x_1689.y, x_1689.z));
    let x_1692 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
    let x_1694 : vec4<f32> = u_xlat1;
    let x_1696 : vec3<f32> = u_xlat11;
    u_xlat3.x = dot(vec3<f32>(x_1694.x, x_1694.y, x_1694.w), x_1696);
    let x_1700 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1700, 0.0f, 1.0f);
    let x_1704 : f32 = u_xlat3.x;
    let x_1705 : f32 = u_xlat49;
    u_xlat3.x = (x_1704 * x_1705);
    let x_1708 : vec3<f32> = u_xlat3;
    let x_1710 : vec4<f32> = u_xlat12;
    let x_1712 : vec3<f32> = (vec3<f32>(x_1708.x, x_1708.x, x_1708.x) * vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
    let x_1713 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);
    let x_1715 : vec3<f32> = u_xlat10;
    let x_1716 : f32 = u_xlat51;
    let x_1719 : vec3<f32> = u_xlat5;
    u_xlat10 = ((x_1715 * vec3<f32>(x_1716, x_1716, x_1716)) + x_1719);
    let x_1721 : vec3<f32> = u_xlat10;
    let x_1722 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(x_1721, x_1722);
    let x_1726 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1726, 1.17549435e-37f);
    let x_1730 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1730);
    let x_1733 : vec3<f32> = u_xlat3;
    let x_1735 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1733.x, x_1733.x, x_1733.x) * x_1735);
    let x_1737 : vec4<f32> = u_xlat1;
    let x_1739 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_1737.x, x_1737.y, x_1737.w), x_1739);
    let x_1743 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1743, 0.0f, 1.0f);
    let x_1746 : vec3<f32> = u_xlat11;
    let x_1747 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1746, x_1747);
    let x_1749 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1749, 0.0f, 1.0f);
    let x_1752 : f32 = u_xlat3.x;
    let x_1754 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1752 * x_1754);
    let x_1758 : f32 = u_xlat3.x;
    let x_1760 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_1758 * x_1760) + 1.000010014f);
    let x_1764 : f32 = u_xlat49;
    let x_1765 : f32 = u_xlat49;
    u_xlat49 = (x_1764 * x_1765);
    let x_1768 : f32 = u_xlat3.x;
    let x_1770 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1768 * x_1770);
    let x_1773 : f32 = u_xlat49;
    u_xlat49 = max(x_1773, 0.100000001f);
    let x_1776 : f32 = u_xlat3.x;
    let x_1777 : f32 = u_xlat49;
    u_xlat3.x = (x_1776 * x_1777);
    let x_1780 : f32 = u_xlat48;
    let x_1782 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1780 * x_1782);
    let x_1785 : f32 = u_xlat18;
    let x_1787 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1785 / x_1787);
    let x_1790 : vec3<f32> = u_xlat0;
    let x_1791 : vec3<f32> = u_xlat3;
    let x_1794 : vec3<f32> = u_xlat8;
    u_xlat10 = ((x_1790 * vec3<f32>(x_1791.x, x_1791.x, x_1791.x)) + x_1794);
    let x_1796 : vec3<f32> = u_xlat10;
    let x_1797 : vec4<f32> = u_xlat12;
    let x_1800 : vec3<f32> = u_xlat24;
    u_xlat24 = ((x_1796 * vec3<f32>(x_1797.x, x_1797.y, x_1797.z)) + x_1800);

    continuing {
      let x_1802 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1802 + bitcast<u32>(1i));
    }
  }
  let x_1804 : vec4<f32> = u_xlat6;
  let x_1806 : f32 = u_xlat33;
  let x_1809 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_1804.x, x_1804.y, x_1804.z) * vec3<f32>(x_1806, x_1806, x_1806)) + vec3<f32>(x_1809.x, x_1809.y, x_1809.z));
  let x_1812 : vec3<f32> = u_xlat24;
  let x_1813 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1812 + x_1813);
  let x_1817 : vec3<f32> = u_xlat2;
  let x_1818 : f32 = u_xlat31;
  let x_1821 : vec3<f32> = u_xlat0;
  let x_1822 : vec3<f32> = ((x_1817 * vec3<f32>(x_1818, x_1818, x_1818)) + x_1821);
  let x_1823 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1823.w);
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

