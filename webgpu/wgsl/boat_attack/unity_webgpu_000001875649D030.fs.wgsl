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

@group(1) @binding(3) var<uniform> x_319 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_777 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1210 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1323 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_730 : f32;
  var u_xlat34 : f32;
  var x_860 : f32;
  var x_871 : vec3<f32>;
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
  var x_1625 : f32;
  var x_1638 : f32;
  var x_1690 : f32;
  var x_1702 : vec3<f32>;
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
  u_xlat45 = dot(vec3<f32>(x_531.x, x_531.y, x_531.w), vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : f32 = u_xlat45;
  u_xlat45 = (x_536 + 0.5f);
  let x_539 : f32 = u_xlat45;
  let x_541 : vec4<f32> = u_xlat7;
  let x_543 : vec3<f32> = (vec3<f32>(x_539, x_539, x_539) * vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_547 : f32 = u_xlat6.w;
  u_xlat45 = max(x_547, 0.0001f);
  let x_550 : vec4<f32> = u_xlat6;
  let x_552 : f32 = u_xlat45;
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
  u_xlat45 = ((x_575 * x_578) + x_581);
  let x_583 : f32 = u_xlat45;
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
  u_xlat45 = ((-(x_599) * 0.959999979f) + 0.959999979f);
  let x_604 : f32 = u_xlat45;
  let x_607 : f32 = u_xlat3.y;
  u_xlat47 = (-(x_604) + x_607);
  let x_609 : f32 = u_xlat45;
  let x_611 : vec3<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_609, x_609, x_609) * x_611);
  let x_613 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_613 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_617 : vec3<f32> = u_xlat3;
  let x_619 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_617.x, x_617.x, x_617.x) * x_619) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_625 : f32 = u_xlat3.y;
  u_xlat45 = (-(x_625) + 1.0f);
  let x_628 : f32 = u_xlat45;
  let x_629 : f32 = u_xlat45;
  u_xlat3.x = (x_628 * x_629);
  let x_633 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_633, 0.0078125f);
  let x_639 : f32 = u_xlat3.x;
  let x_641 : f32 = u_xlat3.x;
  u_xlat18 = (x_639 * x_641);
  let x_643 : f32 = u_xlat47;
  u_xlat47 = (x_643 + 1.0f);
  let x_645 : f32 = u_xlat47;
  u_xlat47 = min(x_645, 1.0f);
  let x_649 : f32 = u_xlat3.x;
  u_xlat48 = ((x_649 * 4.0f) + 2.0f);
  let x_658 : vec4<f32> = u_xlat7;
  let x_661 : f32 = x_45.x_GlobalMipBias.x;
  let x_662 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_658.x, x_658.z), x_661);
  u_xlat49 = x_662.x;
  let x_665 : f32 = u_xlat49;
  u_xlat50 = (x_665 + -1.0f);
  let x_668 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_669 : f32 = u_xlat50;
  u_xlat50 = ((x_668 * x_669) + 1.0f);
  let x_674 : f32 = u_xlat3.z;
  let x_675 : f32 = u_xlat49;
  u_xlat33 = min(x_674, x_675);
  let x_678 : vec4<f32> = u_xlat4;
  let x_679 : vec2<f32> = vec2<f32>(x_678.x, x_678.y);
  let x_681 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_679.x, x_679.y, x_681);
  let x_693 : vec3<f32> = txVec0;
  let x_695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_693.xy, x_693.z);
  u_xlat4.x = x_695;
  let x_699 : f32 = x_319.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_699) + 1.0f);
  let x_704 : f32 = u_xlat4.x;
  let x_706 : f32 = x_319.x_MainLightShadowParams.x;
  let x_709 : f32 = u_xlat19.x;
  u_xlat4.x = ((x_704 * x_706) + x_709);
  let x_716 : f32 = u_xlat4.z;
  u_xlatb19.x = (0.0f >= x_716);
  let x_721 : f32 = u_xlat4.z;
  u_xlatb34 = (x_721 >= 1.0f);
  let x_723 : bool = u_xlatb34;
  let x_725 : bool = u_xlatb19.x;
  u_xlatb19.x = (x_723 | x_725);
  let x_729 : bool = u_xlatb19.x;
  if (x_729) {
    x_730 = 1.0f;
  } else {
    let x_735 : f32 = u_xlat4.x;
    x_730 = x_735;
  }
  let x_736 : f32 = x_730;
  u_xlat4.x = x_736;
  let x_738 : vec3<f32> = vs_INTERP0;
  let x_740 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat19 = (x_738 + -(x_740));
  let x_743 : vec3<f32> = u_xlat19;
  let x_744 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_743, x_744);
  let x_748 : f32 = u_xlat19.x;
  let x_750 : f32 = x_319.x_MainLightShadowParams.z;
  let x_753 : f32 = x_319.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_748 * x_750) + x_753);
  let x_757 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_757, 0.0f, 1.0f);
  let x_762 : f32 = u_xlat4.x;
  u_xlat34 = (-(x_762) + 1.0f);
  let x_766 : f32 = u_xlat19.x;
  let x_767 : f32 = u_xlat34;
  let x_770 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_766 * x_767) + x_770);
  let x_779 : f32 = x_777.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_779 == -1.0f));
  let x_783 : bool = u_xlatb19.x;
  if (x_783) {
    let x_786 : vec3<f32> = vs_INTERP0;
    let x_789 : vec4<f32> = x_777.x_MainLightWorldToLight[1i];
    let x_791 : vec2<f32> = (vec2<f32>(x_786.y, x_786.y) * vec2<f32>(x_789.x, x_789.y));
    let x_792 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_791.x, x_791.y, x_792.z);
    let x_795 : vec4<f32> = x_777.x_MainLightWorldToLight[0i];
    let x_797 : vec3<f32> = vs_INTERP0;
    let x_800 : vec3<f32> = u_xlat19;
    let x_802 : vec2<f32> = ((vec2<f32>(x_795.x, x_795.y) * vec2<f32>(x_797.x, x_797.x)) + vec2<f32>(x_800.x, x_800.y));
    let x_803 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_802.x, x_802.y, x_803.z);
    let x_806 : vec4<f32> = x_777.x_MainLightWorldToLight[2i];
    let x_808 : vec3<f32> = vs_INTERP0;
    let x_811 : vec3<f32> = u_xlat19;
    let x_813 : vec2<f32> = ((vec2<f32>(x_806.x, x_806.y) * vec2<f32>(x_808.z, x_808.z)) + vec2<f32>(x_811.x, x_811.y));
    let x_814 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_813.x, x_813.y, x_814.z);
    let x_816 : vec3<f32> = u_xlat19;
    let x_819 : vec4<f32> = x_777.x_MainLightWorldToLight[3i];
    let x_821 : vec2<f32> = (vec2<f32>(x_816.x, x_816.y) + vec2<f32>(x_819.x, x_819.y));
    let x_822 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_821.x, x_821.y, x_822.z);
    let x_824 : vec3<f32> = u_xlat19;
    let x_828 : vec2<f32> = ((vec2<f32>(x_824.x, x_824.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_829 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_828.x, x_828.y, x_829.z);
    let x_836 : vec3<f32> = u_xlat19;
    let x_839 : f32 = x_45.x_GlobalMipBias.x;
    let x_840 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_836.x, x_836.y), x_839);
    u_xlat7 = x_840;
    let x_842 : f32 = x_777.x_MainLightCookieTextureFormat;
    let x_844 : f32 = x_777.x_MainLightCookieTextureFormat;
    let x_846 : f32 = x_777.x_MainLightCookieTextureFormat;
    let x_848 : f32 = x_777.x_MainLightCookieTextureFormat;
    let x_849 : vec4<f32> = vec4<f32>(x_842, x_844, x_846, x_848);
    let x_856 : vec4<bool> = (vec4<f32>(x_849.x, x_849.y, x_849.z, x_849.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_856.x, x_856.y);
    let x_859 : bool = u_xlatb19.y;
    if (x_859) {
      let x_864 : f32 = u_xlat7.w;
      x_860 = x_864;
    } else {
      let x_867 : f32 = u_xlat7.x;
      x_860 = x_867;
    }
    let x_868 : f32 = x_860;
    u_xlat34 = x_868;
    let x_870 : bool = u_xlatb19.x;
    if (x_870) {
      let x_874 : vec4<f32> = u_xlat7;
      x_871 = vec3<f32>(x_874.x, x_874.y, x_874.z);
    } else {
      let x_877 : f32 = u_xlat34;
      x_871 = vec3<f32>(x_877, x_877, x_877);
    }
    let x_879 : vec3<f32> = x_871;
    u_xlat19 = x_879;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_884 : vec3<f32> = u_xlat19;
  let x_886 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat19 = (x_884 * vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_889 : f32 = u_xlat50;
  let x_891 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_889, x_889, x_889) * x_891);
  let x_894 : vec3<f32> = u_xlat5;
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat51 = dot(-(x_894), vec3<f32>(x_896.x, x_896.y, x_896.w));
  let x_899 : f32 = u_xlat51;
  let x_900 : f32 = u_xlat51;
  u_xlat51 = (x_899 + x_900);
  let x_902 : vec4<f32> = u_xlat1;
  let x_904 : f32 = u_xlat51;
  let x_908 : vec3<f32> = u_xlat5;
  let x_910 : vec3<f32> = ((vec3<f32>(x_902.x, x_902.y, x_902.w) * -(vec3<f32>(x_904, x_904, x_904))) + -(x_908));
  let x_911 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec4<f32> = u_xlat1;
  let x_915 : vec3<f32> = u_xlat5;
  u_xlat51 = dot(vec3<f32>(x_913.x, x_913.y, x_913.w), x_915);
  let x_917 : f32 = u_xlat51;
  u_xlat51 = clamp(x_917, 0.0f, 1.0f);
  let x_919 : f32 = u_xlat51;
  u_xlat51 = (-(x_919) + 1.0f);
  let x_922 : f32 = u_xlat51;
  let x_923 : f32 = u_xlat51;
  u_xlat51 = (x_922 * x_923);
  let x_925 : f32 = u_xlat51;
  let x_926 : f32 = u_xlat51;
  u_xlat51 = (x_925 * x_926);
  let x_929 : f32 = u_xlat45;
  u_xlat52 = ((-(x_929) * 0.699999988f) + 1.700000048f);
  let x_935 : f32 = u_xlat45;
  let x_936 : f32 = u_xlat52;
  u_xlat45 = (x_935 * x_936);
  let x_938 : f32 = u_xlat45;
  u_xlat45 = (x_938 * 6.0f);
  let x_949 : vec4<f32> = u_xlat7;
  let x_951 : f32 = u_xlat45;
  let x_952 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_949.x, x_949.y, x_949.z), x_951);
  u_xlat7 = x_952;
  let x_954 : f32 = u_xlat7.w;
  u_xlat45 = (x_954 + -1.0f);
  let x_957 : f32 = x_122.unity_SpecCube0_HDR.w;
  let x_958 : f32 = u_xlat45;
  u_xlat45 = ((x_957 * x_958) + 1.0f);
  let x_961 : f32 = u_xlat45;
  u_xlat45 = max(x_961, 0.0f);
  let x_963 : f32 = u_xlat45;
  u_xlat45 = log2(x_963);
  let x_965 : f32 = u_xlat45;
  let x_967 : f32 = x_122.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_965 * x_967);
  let x_969 : f32 = u_xlat45;
  u_xlat45 = exp2(x_969);
  let x_971 : f32 = u_xlat45;
  let x_973 : f32 = x_122.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_971 * x_973);
  let x_975 : vec4<f32> = u_xlat7;
  let x_977 : f32 = u_xlat45;
  let x_979 : vec3<f32> = (vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(x_977, x_977, x_977));
  let x_980 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_984 : vec3<f32> = u_xlat3;
  let x_986 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_984.x, x_984.x) * vec2<f32>(x_986.x, x_986.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_992 : f32 = u_xlat9.y;
  u_xlat45 = (1.0f / x_992);
  let x_995 : vec3<f32> = u_xlat0;
  let x_997 : f32 = u_xlat47;
  u_xlat24 = (-(x_995) + vec3<f32>(x_997, x_997, x_997));
  let x_1000 : f32 = u_xlat51;
  let x_1002 : vec3<f32> = u_xlat24;
  let x_1004 : vec3<f32> = u_xlat0;
  u_xlat24 = ((vec3<f32>(x_1000, x_1000, x_1000) * x_1002) + x_1004);
  let x_1006 : f32 = u_xlat45;
  let x_1008 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_1006, x_1006, x_1006) * x_1008);
  let x_1010 : vec4<f32> = u_xlat7;
  let x_1012 : vec3<f32> = u_xlat24;
  let x_1013 : vec3<f32> = (vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * x_1012);
  let x_1014 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1016 : vec4<f32> = u_xlat6;
  let x_1018 : vec3<f32> = u_xlat8;
  let x_1020 : vec4<f32> = u_xlat7;
  let x_1022 : vec3<f32> = ((vec3<f32>(x_1016.x, x_1016.y, x_1016.z) * x_1018) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1026 : f32 = u_xlat4.x;
  let x_1028 : f32 = x_122.unity_LightData.z;
  u_xlat45 = (x_1026 * x_1028);
  let x_1030 : vec4<f32> = u_xlat1;
  let x_1033 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat47 = dot(vec3<f32>(x_1030.x, x_1030.y, x_1030.w), vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1036, 0.0f, 1.0f);
  let x_1038 : f32 = u_xlat45;
  let x_1039 : f32 = u_xlat47;
  u_xlat45 = (x_1038 * x_1039);
  let x_1041 : f32 = u_xlat45;
  let x_1043 : vec3<f32> = u_xlat19;
  let x_1044 : vec3<f32> = (vec3<f32>(x_1041, x_1041, x_1041) * x_1043);
  let x_1045 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec3<f32> = u_xlat5;
  let x_1049 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1051 : vec3<f32> = (x_1047 + vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat7;
  let x_1056 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : f32 = u_xlat45;
  u_xlat45 = max(x_1059, 1.17549435e-37f);
  let x_1062 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_1062);
  let x_1064 : f32 = u_xlat45;
  let x_1066 : vec4<f32> = u_xlat7;
  let x_1068 : vec3<f32> = (vec3<f32>(x_1064, x_1064, x_1064) * vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat1;
  let x_1073 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1071.x, x_1071.y, x_1071.w), vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1076 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1076, 0.0f, 1.0f);
  let x_1079 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1081 : vec4<f32> = u_xlat7;
  u_xlat47 = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1084, 0.0f, 1.0f);
  let x_1086 : f32 = u_xlat45;
  let x_1087 : f32 = u_xlat45;
  u_xlat45 = (x_1086 * x_1087);
  let x_1089 : f32 = u_xlat45;
  let x_1091 : f32 = u_xlat9.x;
  u_xlat45 = ((x_1089 * x_1091) + 1.000010014f);
  let x_1095 : f32 = u_xlat47;
  let x_1096 : f32 = u_xlat47;
  u_xlat47 = (x_1095 * x_1096);
  let x_1098 : f32 = u_xlat45;
  let x_1099 : f32 = u_xlat45;
  u_xlat45 = (x_1098 * x_1099);
  let x_1101 : f32 = u_xlat47;
  u_xlat47 = max(x_1101, 0.100000001f);
  let x_1104 : f32 = u_xlat45;
  let x_1105 : f32 = u_xlat47;
  u_xlat45 = (x_1104 * x_1105);
  let x_1107 : f32 = u_xlat48;
  let x_1108 : f32 = u_xlat45;
  u_xlat45 = (x_1107 * x_1108);
  let x_1110 : f32 = u_xlat18;
  let x_1111 : f32 = u_xlat45;
  u_xlat45 = (x_1110 / x_1111);
  let x_1113 : vec3<f32> = u_xlat0;
  let x_1114 : f32 = u_xlat45;
  let x_1117 : vec3<f32> = u_xlat8;
  let x_1118 : vec3<f32> = ((x_1113 * vec3<f32>(x_1114, x_1114, x_1114)) + x_1117);
  let x_1119 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1121 : vec4<f32> = u_xlat4;
  let x_1123 : vec4<f32> = u_xlat7;
  let x_1125 : vec3<f32> = (vec3<f32>(x_1121.x, x_1121.y, x_1121.z) * vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
  let x_1126 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
  let x_1129 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1131 : f32 = x_122.unity_LightData.y;
  u_xlat45 = min(x_1129, x_1131);
  let x_1133 : f32 = u_xlat45;
  u_xlatu45 = bitcast<u32>(i32(x_1133));
  let x_1138 : f32 = x_777.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1140 : f32 = x_777.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1142 : f32 = x_777.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1144 : f32 = x_777.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1145 : vec4<f32> = vec4<f32>(x_1138, x_1140, x_1142, x_1144);
  let x_1151 : vec4<bool> = (vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1145.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1151.x, x_1151.y);
  u_xlat24.x = 0.0f;
  u_xlat24.y = 0.0f;
  u_xlat24.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1162 : u32 = u_xlatu_loop_1;
    let x_1163 : u32 = u_xlatu45;
    if ((x_1162 < x_1163)) {
    } else {
      break;
    }
    let x_1166 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1166 >> 2u);
    let x_1169 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1169 & 3u));
    let x_1172 : u32 = u_xlatu3;
    let x_1175 : vec4<f32> = x_122.unity_LightIndices[bitcast<i32>(x_1172)];
    let x_1185 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1190 : vec4<u32> = indexable[x_1185];
    u_xlat3.x = dot(x_1175, bitcast<vec4<f32>>(x_1190));
    let x_1195 : f32 = u_xlat3.x;
    u_xlatu3 = bitcast<u32>(i32(x_1195));
    let x_1199 : vec3<f32> = vs_INTERP0;
    let x_1211 : u32 = u_xlatu3;
    let x_1214 : vec4<f32> = x_1210.x_AdditionalLightsPosition[bitcast<i32>(x_1211)];
    let x_1217 : u32 = u_xlatu3;
    let x_1220 : vec4<f32> = x_1210.x_AdditionalLightsPosition[bitcast<i32>(x_1217)];
    u_xlat10 = ((-(x_1199) * vec3<f32>(x_1214.w, x_1214.w, x_1214.w)) + vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
    let x_1223 : vec3<f32> = u_xlat10;
    let x_1224 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1223, x_1224);
    let x_1226 : f32 = u_xlat49;
    u_xlat49 = max(x_1226, 6.10351562e-05f);
    let x_1229 : f32 = u_xlat49;
    u_xlat51 = inverseSqrt(x_1229);
    let x_1232 : f32 = u_xlat51;
    let x_1234 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_1232, x_1232, x_1232) * x_1234);
    let x_1237 : f32 = u_xlat49;
    u_xlat37.x = (1.0f / x_1237);
    let x_1240 : f32 = u_xlat49;
    let x_1241 : u32 = u_xlatu3;
    let x_1244 : f32 = x_1210.x_AdditionalLightsAttenuation[bitcast<i32>(x_1241)].x;
    u_xlat49 = (x_1240 * x_1244);
    let x_1246 : f32 = u_xlat49;
    let x_1248 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1246) * x_1248) + 1.0f);
    let x_1251 : f32 = u_xlat49;
    u_xlat49 = max(x_1251, 0.0f);
    let x_1253 : f32 = u_xlat49;
    let x_1254 : f32 = u_xlat49;
    u_xlat49 = (x_1253 * x_1254);
    let x_1256 : f32 = u_xlat49;
    let x_1258 : f32 = u_xlat37.x;
    u_xlat49 = (x_1256 * x_1258);
    let x_1260 : u32 = u_xlatu3;
    let x_1263 : vec4<f32> = x_1210.x_AdditionalLightsSpotDir[bitcast<i32>(x_1260)];
    let x_1265 : vec3<f32> = u_xlat11;
    u_xlat37.x = dot(vec3<f32>(x_1263.x, x_1263.y, x_1263.z), x_1265);
    let x_1269 : f32 = u_xlat37.x;
    let x_1270 : u32 = u_xlatu3;
    let x_1273 : f32 = x_1210.x_AdditionalLightsAttenuation[bitcast<i32>(x_1270)].z;
    let x_1275 : u32 = u_xlatu3;
    let x_1278 : f32 = x_1210.x_AdditionalLightsAttenuation[bitcast<i32>(x_1275)].w;
    u_xlat37.x = ((x_1269 * x_1273) + x_1278);
    let x_1282 : f32 = u_xlat37.x;
    u_xlat37.x = clamp(x_1282, 0.0f, 1.0f);
    let x_1286 : f32 = u_xlat37.x;
    let x_1288 : f32 = u_xlat37.x;
    u_xlat37.x = (x_1286 * x_1288);
    let x_1291 : f32 = u_xlat49;
    let x_1293 : f32 = u_xlat37.x;
    u_xlat49 = (x_1291 * x_1293);
    let x_1296 : u32 = u_xlatu3;
    u_xlatu37 = (x_1296 >> 5u);
    let x_1299 : u32 = u_xlatu3;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1299) & 31i)));
    let x_1305 : i32 = u_xlati52;
    let x_1307 : u32 = u_xlatu37;
    let x_1310 : f32 = x_777.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1307)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_1305) & bitcast<u32>(x_1310)));
    let x_1314 : i32 = u_xlati37;
    if ((x_1314 != 0i)) {
      let x_1324 : u32 = u_xlatu3;
      let x_1327 : f32 = x_1323.x_AdditionalLightsLightTypes[bitcast<i32>(x_1324)].el;
      u_xlati37 = i32(x_1327);
      let x_1329 : i32 = u_xlati37;
      u_xlati52 = select(1i, 0i, (x_1329 != 0i));
      let x_1333 : u32 = u_xlatu3;
      u_xlati53 = (bitcast<i32>(x_1333) << bitcast<u32>(2i));
      let x_1336 : i32 = u_xlati52;
      if ((x_1336 != 0i)) {
        let x_1341 : vec3<f32> = vs_INTERP0;
        let x_1343 : i32 = u_xlati53;
        let x_1346 : i32 = u_xlati53;
        let x_1350 : vec4<f32> = x_1323.x_AdditionalLightsWorldToLights[((x_1343 + 1i) / 4i)][((x_1346 + 1i) % 4i)];
        let x_1352 : vec3<f32> = (vec3<f32>(x_1341.y, x_1341.y, x_1341.y) * vec3<f32>(x_1350.x, x_1350.y, x_1350.w));
        let x_1353 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
        let x_1355 : i32 = u_xlati53;
        let x_1357 : i32 = u_xlati53;
        let x_1360 : vec4<f32> = x_1323.x_AdditionalLightsWorldToLights[(x_1355 / 4i)][(x_1357 % 4i)];
        let x_1362 : vec3<f32> = vs_INTERP0;
        let x_1365 : vec4<f32> = u_xlat12;
        let x_1367 : vec3<f32> = ((vec3<f32>(x_1360.x, x_1360.y, x_1360.w) * vec3<f32>(x_1362.x, x_1362.x, x_1362.x)) + vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
        let x_1368 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
        let x_1370 : i32 = u_xlati53;
        let x_1373 : i32 = u_xlati53;
        let x_1377 : vec4<f32> = x_1323.x_AdditionalLightsWorldToLights[((x_1370 + 2i) / 4i)][((x_1373 + 2i) % 4i)];
        let x_1379 : vec3<f32> = vs_INTERP0;
        let x_1382 : vec4<f32> = u_xlat12;
        let x_1384 : vec3<f32> = ((vec3<f32>(x_1377.x, x_1377.y, x_1377.w) * vec3<f32>(x_1379.z, x_1379.z, x_1379.z)) + vec3<f32>(x_1382.x, x_1382.y, x_1382.z));
        let x_1385 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
        let x_1387 : vec4<f32> = u_xlat12;
        let x_1389 : i32 = u_xlati53;
        let x_1392 : i32 = u_xlati53;
        let x_1396 : vec4<f32> = x_1323.x_AdditionalLightsWorldToLights[((x_1389 + 3i) / 4i)][((x_1392 + 3i) % 4i)];
        let x_1398 : vec3<f32> = (vec3<f32>(x_1387.x, x_1387.y, x_1387.z) + vec3<f32>(x_1396.x, x_1396.y, x_1396.w));
        let x_1399 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
        let x_1401 : vec4<f32> = u_xlat12;
        let x_1403 : vec4<f32> = u_xlat12;
        let x_1405 : vec2<f32> = (vec2<f32>(x_1401.x, x_1401.y) / vec2<f32>(x_1403.z, x_1403.z));
        let x_1406 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1405.x, x_1405.y, x_1406.z, x_1406.w);
        let x_1408 : vec4<f32> = u_xlat12;
        let x_1411 : vec2<f32> = ((vec2<f32>(x_1408.x, x_1408.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1412 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1411.x, x_1411.y, x_1412.z, x_1412.w);
        let x_1414 : vec4<f32> = u_xlat12;
        let x_1418 : vec2<f32> = clamp(vec2<f32>(x_1414.x, x_1414.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1419 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1418.x, x_1418.y, x_1419.z, x_1419.w);
        let x_1421 : u32 = u_xlatu3;
        let x_1424 : vec4<f32> = x_1323.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1421)];
        let x_1426 : vec4<f32> = u_xlat12;
        let x_1429 : u32 = u_xlatu3;
        let x_1432 : vec4<f32> = x_1323.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1429)];
        let x_1434 : vec2<f32> = ((vec2<f32>(x_1424.x, x_1424.y) * vec2<f32>(x_1426.x, x_1426.y)) + vec2<f32>(x_1432.z, x_1432.w));
        let x_1435 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1434.x, x_1434.y, x_1435.z, x_1435.w);
      } else {
        let x_1439 : i32 = u_xlati37;
        u_xlatb37 = (x_1439 == 1i);
        let x_1441 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_1441);
        let x_1443 : i32 = u_xlati37;
        if ((x_1443 != 0i)) {
          let x_1447 : vec3<f32> = vs_INTERP0;
          let x_1449 : i32 = u_xlati53;
          let x_1452 : i32 = u_xlati53;
          let x_1456 : vec4<f32> = x_1323.x_AdditionalLightsWorldToLights[((x_1449 + 1i) / 4i)][((x_1452 + 1i) % 4i)];
          u_xlat37 = (vec2<f32>(x_1447.y, x_1447.y) * vec2<f32>(x_1456.x, x_1456.y));
          let x_1459 : i32 = u_xlati53;
          let x_1461 : i32 = u_xlati53;
          let x_1464 : vec4<f32> = x_1323.x_AdditionalLightsWorldToLights[(x_1459 / 4i)][(x_1461 % 4i)];
          let x_1466 : vec3<f32> = vs_INTERP0;
          let x_1469 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_1464.x, x_1464.y) * vec2<f32>(x_1466.x, x_1466.x)) + x_1469);
          let x_1471 : i32 = u_xlati53;
          let x_1474 : i32 = u_xlati53;
          let x_1478 : vec4<f32> = x_1323.x_AdditionalLightsWorldToLights[((x_1471 + 2i) / 4i)][((x_1474 + 2i) % 4i)];
          let x_1480 : vec3<f32> = vs_INTERP0;
          let x_1483 : vec2<f32> = u_xlat37;
          u_xlat37 = ((vec2<f32>(x_1478.x, x_1478.y) * vec2<f32>(x_1480.z, x_1480.z)) + x_1483);
          let x_1485 : vec2<f32> = u_xlat37;
          let x_1486 : i32 = u_xlati53;
          let x_1489 : i32 = u_xlati53;
          let x_1493 : vec4<f32> = x_1323.x_AdditionalLightsWorldToLights[((x_1486 + 3i) / 4i)][((x_1489 + 3i) % 4i)];
          u_xlat37 = (x_1485 + vec2<f32>(x_1493.x, x_1493.y));
          let x_1496 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_1496 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1499 : vec2<f32> = u_xlat37;
          u_xlat37 = fract(x_1499);
          let x_1501 : u32 = u_xlatu3;
          let x_1504 : vec4<f32> = x_1323.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1501)];
          let x_1506 : vec2<f32> = u_xlat37;
          let x_1508 : u32 = u_xlatu3;
          let x_1511 : vec4<f32> = x_1323.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1508)];
          let x_1513 : vec2<f32> = ((vec2<f32>(x_1504.x, x_1504.y) * x_1506) + vec2<f32>(x_1511.z, x_1511.w));
          let x_1514 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1513.x, x_1513.y, x_1514.z, x_1514.w);
        } else {
          let x_1518 : vec3<f32> = vs_INTERP0;
          let x_1520 : i32 = u_xlati53;
          let x_1523 : i32 = u_xlati53;
          let x_1527 : vec4<f32> = x_1323.x_AdditionalLightsWorldToLights[((x_1520 + 1i) / 4i)][((x_1523 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1518.y, x_1518.y, x_1518.y, x_1518.y) * x_1527);
          let x_1529 : i32 = u_xlati53;
          let x_1531 : i32 = u_xlati53;
          let x_1534 : vec4<f32> = x_1323.x_AdditionalLightsWorldToLights[(x_1529 / 4i)][(x_1531 % 4i)];
          let x_1535 : vec3<f32> = vs_INTERP0;
          let x_1538 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1534 * vec4<f32>(x_1535.x, x_1535.x, x_1535.x, x_1535.x)) + x_1538);
          let x_1540 : i32 = u_xlati53;
          let x_1543 : i32 = u_xlati53;
          let x_1547 : vec4<f32> = x_1323.x_AdditionalLightsWorldToLights[((x_1540 + 2i) / 4i)][((x_1543 + 2i) % 4i)];
          let x_1548 : vec3<f32> = vs_INTERP0;
          let x_1551 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1547 * vec4<f32>(x_1548.z, x_1548.z, x_1548.z, x_1548.z)) + x_1551);
          let x_1553 : vec4<f32> = u_xlat13;
          let x_1554 : i32 = u_xlati53;
          let x_1557 : i32 = u_xlati53;
          let x_1561 : vec4<f32> = x_1323.x_AdditionalLightsWorldToLights[((x_1554 + 3i) / 4i)][((x_1557 + 3i) % 4i)];
          u_xlat13 = (x_1553 + x_1561);
          let x_1563 : vec4<f32> = u_xlat13;
          let x_1565 : vec4<f32> = u_xlat13;
          let x_1567 : vec3<f32> = (vec3<f32>(x_1563.x, x_1563.y, x_1563.z) / vec3<f32>(x_1565.w, x_1565.w, x_1565.w));
          let x_1568 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1567.x, x_1567.y, x_1567.z, x_1568.w);
          let x_1570 : vec4<f32> = u_xlat13;
          let x_1572 : vec4<f32> = u_xlat13;
          u_xlat37.x = dot(vec3<f32>(x_1570.x, x_1570.y, x_1570.z), vec3<f32>(x_1572.x, x_1572.y, x_1572.z));
          let x_1577 : f32 = u_xlat37.x;
          u_xlat37.x = inverseSqrt(x_1577);
          let x_1580 : vec2<f32> = u_xlat37;
          let x_1582 : vec4<f32> = u_xlat13;
          let x_1584 : vec3<f32> = (vec3<f32>(x_1580.x, x_1580.x, x_1580.x) * vec3<f32>(x_1582.x, x_1582.y, x_1582.z));
          let x_1585 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
          let x_1587 : vec4<f32> = u_xlat13;
          u_xlat37.x = dot(abs(vec3<f32>(x_1587.x, x_1587.y, x_1587.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1594 : f32 = u_xlat37.x;
          u_xlat37.x = max(x_1594, 0.000001f);
          let x_1599 : f32 = u_xlat37.x;
          u_xlat37.x = (1.0f / x_1599);
          let x_1603 : vec2<f32> = u_xlat37;
          let x_1605 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1603.x, x_1603.x, x_1603.x) * vec3<f32>(x_1605.z, x_1605.x, x_1605.y));
          let x_1609 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1609);
          let x_1613 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1613, 0.0f, 1.0f);
          let x_1617 : vec3<f32> = u_xlat14;
          let x_1620 : vec4<bool> = (vec4<f32>(x_1617.y, x_1617.z, x_1617.y, x_1617.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1620.x, x_1620.y);
          let x_1624 : bool = u_xlatb42.x;
          if (x_1624) {
            let x_1629 : f32 = u_xlat14.x;
            x_1625 = x_1629;
          } else {
            let x_1632 : f32 = u_xlat14.x;
            x_1625 = -(x_1632);
          }
          let x_1634 : f32 = x_1625;
          u_xlat42.x = x_1634;
          let x_1637 : bool = u_xlatb42.y;
          if (x_1637) {
            let x_1642 : f32 = u_xlat14.x;
            x_1638 = x_1642;
          } else {
            let x_1645 : f32 = u_xlat14.x;
            x_1638 = -(x_1645);
          }
          let x_1647 : f32 = x_1638;
          u_xlat42.y = x_1647;
          let x_1649 : vec4<f32> = u_xlat13;
          let x_1651 : vec2<f32> = u_xlat37;
          let x_1654 : vec2<f32> = u_xlat42;
          u_xlat37 = ((vec2<f32>(x_1649.x, x_1649.y) * vec2<f32>(x_1651.x, x_1651.x)) + x_1654);
          let x_1656 : vec2<f32> = u_xlat37;
          u_xlat37 = ((x_1656 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1659 : vec2<f32> = u_xlat37;
          u_xlat37 = clamp(x_1659, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1663 : u32 = u_xlatu3;
          let x_1666 : vec4<f32> = x_1323.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1663)];
          let x_1668 : vec2<f32> = u_xlat37;
          let x_1670 : u32 = u_xlatu3;
          let x_1673 : vec4<f32> = x_1323.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1670)];
          let x_1675 : vec2<f32> = ((vec2<f32>(x_1666.x, x_1666.y) * x_1668) + vec2<f32>(x_1673.z, x_1673.w));
          let x_1676 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1675.x, x_1675.y, x_1676.z, x_1676.w);
        }
      }
      let x_1683 : vec4<f32> = u_xlat12;
      let x_1686 : f32 = x_45.x_GlobalMipBias.x;
      let x_1687 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1683.x, x_1683.y), x_1686);
      u_xlat12 = x_1687;
      let x_1689 : bool = u_xlatb7.y;
      if (x_1689) {
        let x_1694 : f32 = u_xlat12.w;
        x_1690 = x_1694;
      } else {
        let x_1697 : f32 = u_xlat12.x;
        x_1690 = x_1697;
      }
      let x_1698 : f32 = x_1690;
      u_xlat37.x = x_1698;
      let x_1701 : bool = u_xlatb7.x;
      if (x_1701) {
        let x_1705 : vec4<f32> = u_xlat12;
        x_1702 = vec3<f32>(x_1705.x, x_1705.y, x_1705.z);
      } else {
        let x_1708 : vec2<f32> = u_xlat37;
        x_1702 = vec3<f32>(x_1708.x, x_1708.x, x_1708.x);
      }
      let x_1710 : vec3<f32> = x_1702;
      let x_1711 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1711.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1717 : vec4<f32> = u_xlat12;
    let x_1719 : u32 = u_xlatu3;
    let x_1722 : vec4<f32> = x_1210.x_AdditionalLightsColor[bitcast<i32>(x_1719)];
    let x_1724 : vec3<f32> = (vec3<f32>(x_1717.x, x_1717.y, x_1717.z) * vec3<f32>(x_1722.x, x_1722.y, x_1722.z));
    let x_1725 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1724.x, x_1724.y, x_1724.z, x_1725.w);
    let x_1727 : f32 = u_xlat50;
    let x_1729 : vec4<f32> = u_xlat12;
    let x_1731 : vec3<f32> = (vec3<f32>(x_1727, x_1727, x_1727) * vec3<f32>(x_1729.x, x_1729.y, x_1729.z));
    let x_1732 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1732.w);
    let x_1734 : vec4<f32> = u_xlat1;
    let x_1736 : vec3<f32> = u_xlat11;
    u_xlat3.x = dot(vec3<f32>(x_1734.x, x_1734.y, x_1734.w), x_1736);
    let x_1740 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1740, 0.0f, 1.0f);
    let x_1744 : f32 = u_xlat3.x;
    let x_1745 : f32 = u_xlat49;
    u_xlat3.x = (x_1744 * x_1745);
    let x_1748 : vec3<f32> = u_xlat3;
    let x_1750 : vec4<f32> = u_xlat12;
    let x_1752 : vec3<f32> = (vec3<f32>(x_1748.x, x_1748.x, x_1748.x) * vec3<f32>(x_1750.x, x_1750.y, x_1750.z));
    let x_1753 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
    let x_1755 : vec3<f32> = u_xlat10;
    let x_1756 : f32 = u_xlat51;
    let x_1759 : vec3<f32> = u_xlat5;
    u_xlat10 = ((x_1755 * vec3<f32>(x_1756, x_1756, x_1756)) + x_1759);
    let x_1761 : vec3<f32> = u_xlat10;
    let x_1762 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(x_1761, x_1762);
    let x_1766 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1766, 1.17549435e-37f);
    let x_1770 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1770);
    let x_1773 : vec3<f32> = u_xlat3;
    let x_1775 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1773.x, x_1773.x, x_1773.x) * x_1775);
    let x_1777 : vec4<f32> = u_xlat1;
    let x_1779 : vec3<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_1777.x, x_1777.y, x_1777.w), x_1779);
    let x_1783 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1783, 0.0f, 1.0f);
    let x_1786 : vec3<f32> = u_xlat11;
    let x_1787 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1786, x_1787);
    let x_1789 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1789, 0.0f, 1.0f);
    let x_1792 : f32 = u_xlat3.x;
    let x_1794 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1792 * x_1794);
    let x_1798 : f32 = u_xlat3.x;
    let x_1800 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_1798 * x_1800) + 1.000010014f);
    let x_1804 : f32 = u_xlat49;
    let x_1805 : f32 = u_xlat49;
    u_xlat49 = (x_1804 * x_1805);
    let x_1808 : f32 = u_xlat3.x;
    let x_1810 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1808 * x_1810);
    let x_1813 : f32 = u_xlat49;
    u_xlat49 = max(x_1813, 0.100000001f);
    let x_1816 : f32 = u_xlat3.x;
    let x_1817 : f32 = u_xlat49;
    u_xlat3.x = (x_1816 * x_1817);
    let x_1820 : f32 = u_xlat48;
    let x_1822 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1820 * x_1822);
    let x_1825 : f32 = u_xlat18;
    let x_1827 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1825 / x_1827);
    let x_1830 : vec3<f32> = u_xlat0;
    let x_1831 : vec3<f32> = u_xlat3;
    let x_1834 : vec3<f32> = u_xlat8;
    u_xlat10 = ((x_1830 * vec3<f32>(x_1831.x, x_1831.x, x_1831.x)) + x_1834);
    let x_1836 : vec3<f32> = u_xlat10;
    let x_1837 : vec4<f32> = u_xlat12;
    let x_1840 : vec3<f32> = u_xlat24;
    u_xlat24 = ((x_1836 * vec3<f32>(x_1837.x, x_1837.y, x_1837.z)) + x_1840);

    continuing {
      let x_1842 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1842 + bitcast<u32>(1i));
    }
  }
  let x_1844 : vec4<f32> = u_xlat6;
  let x_1846 : f32 = u_xlat33;
  let x_1849 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_1844.x, x_1844.y, x_1844.z) * vec3<f32>(x_1846, x_1846, x_1846)) + vec3<f32>(x_1849.x, x_1849.y, x_1849.z));
  let x_1852 : vec3<f32> = u_xlat24;
  let x_1853 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1852 + x_1853);
  let x_1857 : vec3<f32> = u_xlat2;
  let x_1858 : f32 = u_xlat31;
  let x_1861 : vec3<f32> = u_xlat0;
  let x_1862 : vec3<f32> = ((x_1857 * vec3<f32>(x_1858, x_1858, x_1858)) + x_1861);
  let x_1863 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
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

