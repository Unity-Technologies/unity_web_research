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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

@group(0) @binding(7) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_283 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_738 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1195 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1309 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat29 : f32;
  var u_xlatb29 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlatb43 : bool;
  var u_xlat43 : f32;
  var u_xlatb44 : bool;
  var u_xlat44 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb42 : bool;
  var u_xlat5 : vec4<f32>;
  var x_270 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu42 : u32;
  var u_xlati42 : i32;
  var u_xlat45 : f32;
  var u_xlat17 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : vec2<bool>;
  var u_xlatb33 : bool;
  var x_691 : f32;
  var u_xlat33 : f32;
  var x_822 : f32;
  var x_833 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatu44 : u32;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat10 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlatu11 : u32;
  var u_xlati25 : i32;
  var u_xlati11 : i32;
  var u_xlati39 : i32;
  var u_xlat12 : vec4<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat13 : vec3<f32>;
  var u_xlatb40 : vec2<bool>;
  var u_xlat40 : vec2<f32>;
  var x_1630 : f32;
  var x_1643 : f32;
  var u_xlat53 : f32;
  var x_1705 : f32;
  var x_1716 : vec3<f32>;
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
  u_xlat42 = dot(vec2<f32>(x_87.x, x_87.y), vec2<f32>(x_89.x, x_89.y));
  let x_92 : f32 = u_xlat42;
  u_xlat42 = min(x_92, 1.0f);
  let x_94 : f32 = u_xlat42;
  u_xlat42 = (-(x_94) + 1.0f);
  let x_97 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_97);
  let x_99 : f32 = u_xlat42;
  u_xlat42 = max(x_99, 1.00000002e-16f);
  let x_108 : vec4<f32> = vs_INTERP3;
  let x_111 : f32 = x_45.x_GlobalMipBias.x;
  let x_112 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_108.x, x_108.y), x_111);
  let x_113 : vec3<f32> = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_125 : vec4<f32> = x_120.unity_ObjectToWorld[3i];
  let x_128 : vec4<f32> = x_120.unity_ObjectToWorld[3i];
  u_xlat29 = dot(vec3<f32>(x_125.x, x_125.y, x_125.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : f32 = u_xlat29;
  u_xlat29 = sqrt(x_131);
  let x_133 : f32 = u_xlat29;
  u_xlat29 = fract(x_133);
  let x_135 : f32 = u_xlat29;
  let x_138 : f32 = x_45.x_NightFade;
  u_xlat29 = (x_135 + x_138);
  let x_143 : f32 = u_xlat29;
  u_xlatb29 = (x_143 >= 1.0f);
  let x_145 : bool = u_xlatb29;
  u_xlat29 = select(0.0f, 1.0f, x_145);
  let x_154 : vec4<f32> = vs_INTERP3;
  let x_157 : f32 = x_45.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat3 = vec3<f32>(x_158.x, x_158.w, x_158.y);
  let x_163 : f32 = vs_INTERP2.w;
  u_xlatb43 = (0.0f < x_163);
  let x_166 : bool = u_xlatb43;
  u_xlat43 = select(-1.0f, 1.0f, x_166);
  let x_170 : f32 = x_120.unity_WorldTransformParams.w;
  u_xlatb44 = (x_170 >= 0.0f);
  let x_173 : bool = u_xlatb44;
  u_xlat44 = select(-1.0f, 1.0f, x_173);
  let x_175 : f32 = u_xlat43;
  let x_176 : f32 = u_xlat44;
  u_xlat43 = (x_175 * x_176);
  let x_181 : vec3<f32> = vs_INTERP1;
  let x_183 : vec4<f32> = vs_INTERP2;
  u_xlat4 = (vec3<f32>(x_181.z, x_181.x, x_181.y) * vec3<f32>(x_183.y, x_183.z, x_183.x));
  let x_186 : vec3<f32> = vs_INTERP1;
  let x_188 : vec4<f32> = vs_INTERP2;
  let x_191 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_186.y, x_186.z, x_186.x) * vec3<f32>(x_188.z, x_188.x, x_188.y)) + -(x_191));
  let x_194 : f32 = u_xlat43;
  let x_196 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_194, x_194, x_194) * x_196);
  let x_198 : vec4<f32> = u_xlat1;
  let x_200 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_198.y, x_198.y, x_198.y) * x_200);
  let x_202 : vec4<f32> = u_xlat1;
  let x_204 : vec4<f32> = vs_INTERP2;
  let x_207 : vec3<f32> = u_xlat4;
  let x_208 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.x, x_202.x) * vec3<f32>(x_204.x, x_204.y, x_204.z)) + x_207);
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_209.z, x_208.z);
  let x_211 : f32 = u_xlat42;
  let x_213 : vec3<f32> = vs_INTERP1;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211, x_211, x_211) * x_213) + vec3<f32>(x_215.x, x_215.y, x_215.w));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_217.z);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec3<f32>(x_220.x, x_220.y, x_220.w), vec3<f32>(x_222.x, x_222.y, x_222.w));
  let x_225 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat42;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_231.z);
  let x_237 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb42 = (x_237 == 0.0f);
  let x_240 : vec3<f32> = vs_INTERP0;
  let x_245 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_240) + x_245);
  let x_247 : vec3<f32> = u_xlat4;
  let x_248 : vec3<f32> = u_xlat4;
  u_xlat44 = dot(x_247, x_248);
  let x_250 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_250);
  let x_252 : f32 = u_xlat44;
  let x_254 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_252, x_252, x_252) * x_254);
  let x_259 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_259;
  let x_262 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_262;
  let x_267 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_267;
  let x_269 : bool = u_xlatb42;
  if (x_269) {
    let x_273 : vec3<f32> = u_xlat4;
    x_270 = x_273;
  } else {
    let x_275 : vec4<f32> = u_xlat5;
    x_270 = vec3<f32>(x_275.x, x_275.y, x_275.z);
  }
  let x_277 : vec3<f32> = x_270;
  u_xlat4 = x_277;
  let x_278 : vec3<f32> = vs_INTERP0;
  let x_285 : vec4<f32> = x_283.x_CascadeShadowSplitSpheres0;
  let x_288 : vec3<f32> = (x_278 + -(vec3<f32>(x_285.x, x_285.y, x_285.z)));
  let x_289 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_292 : vec3<f32> = vs_INTERP0;
  let x_294 : vec4<f32> = x_283.x_CascadeShadowSplitSpheres1;
  let x_297 : vec3<f32> = (x_292 + -(vec3<f32>(x_294.x, x_294.y, x_294.z)));
  let x_298 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_301 : vec3<f32> = vs_INTERP0;
  let x_303 : vec4<f32> = x_283.x_CascadeShadowSplitSpheres2;
  let x_306 : vec3<f32> = (x_301 + -(vec3<f32>(x_303.x, x_303.y, x_303.z)));
  let x_307 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_310 : vec3<f32> = vs_INTERP0;
  let x_313 : vec4<f32> = x_283.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_310 + -(vec3<f32>(x_313.x, x_313.y, x_313.z)));
  let x_317 : vec4<f32> = u_xlat5;
  let x_319 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_317.x, x_317.y, x_317.z), vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_323 : vec4<f32> = u_xlat6;
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_323.x, x_323.y, x_323.z), vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_329 : vec4<f32> = u_xlat7;
  let x_331 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_329.x, x_329.y, x_329.z), vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_335 : vec3<f32> = u_xlat8;
  let x_336 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_335, x_336);
  let x_342 : vec4<f32> = u_xlat5;
  let x_345 : vec4<f32> = x_283.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_342 < x_345);
  let x_348 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_348);
  let x_352 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_352);
  let x_356 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_356);
  let x_360 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_360);
  let x_364 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_364);
  let x_369 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_369);
  let x_373 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_373);
  let x_376 : vec4<f32> = u_xlat5;
  let x_378 : vec4<f32> = u_xlat6;
  let x_380 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.z) + vec3<f32>(x_378.y, x_378.z, x_378.w));
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec4<f32> = u_xlat5;
  let x_386 : vec3<f32> = max(vec3<f32>(x_383.x, x_383.y, x_383.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_387 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_387.x, x_386.x, x_386.y, x_386.z);
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_389, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_394 : f32 = u_xlat42;
  u_xlat42 = (-(x_394) + 4.0f);
  let x_399 : f32 = u_xlat42;
  u_xlatu42 = u32(x_399);
  let x_403 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_403) << bitcast<u32>(2i));
  let x_406 : vec3<f32> = vs_INTERP0;
  let x_408 : i32 = u_xlati42;
  let x_411 : i32 = u_xlati42;
  let x_415 : vec4<f32> = x_283.x_MainLightWorldToShadow[((x_408 + 1i) / 4i)][((x_411 + 1i) % 4i)];
  let x_417 : vec3<f32> = (vec3<f32>(x_406.y, x_406.y, x_406.y) * vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : i32 = u_xlati42;
  let x_422 : i32 = u_xlati42;
  let x_425 : vec4<f32> = x_283.x_MainLightWorldToShadow[(x_420 / 4i)][(x_422 % 4i)];
  let x_427 : vec3<f32> = vs_INTERP0;
  let x_430 : vec4<f32> = u_xlat5;
  let x_432 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427.x, x_427.x, x_427.x)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_435 : i32 = u_xlati42;
  let x_438 : i32 = u_xlati42;
  let x_442 : vec4<f32> = x_283.x_MainLightWorldToShadow[((x_435 + 2i) / 4i)][((x_438 + 2i) % 4i)];
  let x_444 : vec3<f32> = vs_INTERP0;
  let x_447 : vec4<f32> = u_xlat5;
  let x_449 : vec3<f32> = ((vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_444.z, x_444.z, x_444.z)) + vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat5;
  let x_454 : i32 = u_xlati42;
  let x_457 : i32 = u_xlati42;
  let x_461 : vec4<f32> = x_283.x_MainLightWorldToShadow[((x_454 + 3i) / 4i)][((x_457 + 3i) % 4i)];
  let x_463 : vec3<f32> = (vec3<f32>(x_452.x, x_452.y, x_452.z) + vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_467 : f32 = vs_INTERP0.y;
  let x_469 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat42 = (x_467 * x_469);
  let x_472 : f32 = x_45.unity_MatrixV[0i].z;
  let x_474 : f32 = vs_INTERP0.x;
  let x_476 : f32 = u_xlat42;
  u_xlat42 = ((x_472 * x_474) + x_476);
  let x_479 : f32 = x_45.unity_MatrixV[2i].z;
  let x_481 : f32 = vs_INTERP0.z;
  let x_483 : f32 = u_xlat42;
  u_xlat42 = ((x_479 * x_481) + x_483);
  let x_485 : f32 = u_xlat42;
  let x_487 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat42 = (x_485 + x_487);
  let x_489 : f32 = u_xlat42;
  let x_493 : f32 = x_45.x_ProjectionParams.y;
  u_xlat42 = (-(x_489) + -(x_493));
  let x_496 : f32 = u_xlat42;
  u_xlat42 = max(x_496, 0.0f);
  let x_498 : f32 = u_xlat42;
  let x_501 : f32 = x_45.unity_FogParams.x;
  u_xlat42 = (x_498 * x_501);
  let x_510 : vec2<f32> = vs_INTERP4;
  let x_512 : f32 = x_45.x_GlobalMipBias.x;
  let x_513 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_510, x_512);
  let x_514 : vec3<f32> = vec3<f32>(x_513.x, x_513.y, x_513.z);
  let x_515 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_519 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_520 : vec2<f32> = vec2<f32>(x_519.x, x_519.y);
  let x_524 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_520.x, x_520.y));
  let x_525 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat7;
  let x_529 : vec4<f32> = hlslcc_FragCoord;
  let x_531 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_529.x, x_529.y));
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
  let x_535 : f32 = u_xlat7.y;
  let x_538 : f32 = x_45.x_ScaleBiasRt.x;
  let x_541 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat44 = ((x_535 * x_538) + x_541);
  let x_543 : f32 = u_xlat44;
  u_xlat7.z = (-(x_543) + 1.0f);
  let x_547 : vec3<f32> = u_xlat3;
  let x_548 : vec2<f32> = vec2<f32>(x_547.x, x_547.y);
  let x_549 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_548.x, x_548.y, x_549.z);
  let x_551 : vec3<f32> = u_xlat3;
  let x_555 : vec2<f32> = clamp(vec2<f32>(x_551.x, x_551.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_556 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_555.x, x_555.y, x_556.z);
  let x_559 : f32 = u_xlat3.x;
  u_xlat44 = ((-(x_559) * 0.959999979f) + 0.959999979f);
  let x_565 : f32 = u_xlat44;
  let x_568 : f32 = u_xlat3.y;
  u_xlat45 = (-(x_565) + x_568);
  let x_570 : vec3<f32> = u_xlat0;
  let x_571 : f32 = u_xlat44;
  u_xlat8 = (x_570 * vec3<f32>(x_571, x_571, x_571));
  let x_574 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_574 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_578 : vec3<f32> = u_xlat3;
  let x_580 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_578.x, x_578.x, x_578.x) * x_580) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_586 : f32 = u_xlat3.y;
  u_xlat44 = (-(x_586) + 1.0f);
  let x_589 : f32 = u_xlat44;
  let x_590 : f32 = u_xlat44;
  u_xlat3.x = (x_589 * x_590);
  let x_594 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_594, 0.0078125f);
  let x_600 : f32 = u_xlat3.x;
  let x_602 : f32 = u_xlat3.x;
  u_xlat17 = (x_600 * x_602);
  let x_604 : f32 = u_xlat45;
  u_xlat45 = (x_604 + 1.0f);
  let x_606 : f32 = u_xlat45;
  u_xlat45 = min(x_606, 1.0f);
  let x_610 : f32 = u_xlat3.x;
  u_xlat46 = ((x_610 * 4.0f) + 2.0f);
  let x_619 : vec4<f32> = u_xlat7;
  let x_622 : f32 = x_45.x_GlobalMipBias.x;
  let x_623 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_619.x, x_619.z), x_622);
  u_xlat47 = x_623.x;
  let x_626 : f32 = u_xlat47;
  u_xlat48 = (x_626 + -1.0f);
  let x_629 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_630 : f32 = u_xlat48;
  u_xlat48 = ((x_629 * x_630) + 1.0f);
  let x_635 : f32 = u_xlat3.z;
  let x_636 : f32 = u_xlat47;
  u_xlat31 = min(x_635, x_636);
  let x_639 : vec4<f32> = u_xlat5;
  let x_640 : vec2<f32> = vec2<f32>(x_639.x, x_639.y);
  let x_642 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_640.x, x_640.y, x_642);
  let x_654 : vec3<f32> = txVec0;
  let x_656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_654.xy, x_654.z);
  u_xlat5.x = x_656;
  let x_660 : f32 = x_283.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_660) + 1.0f);
  let x_665 : f32 = u_xlat5.x;
  let x_667 : f32 = x_283.x_MainLightShadowParams.x;
  let x_670 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_665 * x_667) + x_670);
  let x_677 : f32 = u_xlat5.z;
  u_xlatb19.x = (0.0f >= x_677);
  let x_682 : f32 = u_xlat5.z;
  u_xlatb33 = (x_682 >= 1.0f);
  let x_684 : bool = u_xlatb33;
  let x_686 : bool = u_xlatb19.x;
  u_xlatb19.x = (x_684 | x_686);
  let x_690 : bool = u_xlatb19.x;
  if (x_690) {
    x_691 = 1.0f;
  } else {
    let x_696 : f32 = u_xlat5.x;
    x_691 = x_696;
  }
  let x_697 : f32 = x_691;
  u_xlat5.x = x_697;
  let x_699 : vec3<f32> = vs_INTERP0;
  let x_701 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat19 = (x_699 + -(x_701));
  let x_704 : vec3<f32> = u_xlat19;
  let x_705 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_704, x_705);
  let x_709 : f32 = u_xlat19.x;
  let x_711 : f32 = x_283.x_MainLightShadowParams.z;
  let x_714 : f32 = x_283.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_709 * x_711) + x_714);
  let x_718 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_718, 0.0f, 1.0f);
  let x_723 : f32 = u_xlat5.x;
  u_xlat33 = (-(x_723) + 1.0f);
  let x_727 : f32 = u_xlat19.x;
  let x_728 : f32 = u_xlat33;
  let x_731 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_727 * x_728) + x_731);
  let x_740 : f32 = x_738.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_740 == -1.0f));
  let x_744 : bool = u_xlatb19.x;
  if (x_744) {
    let x_747 : vec3<f32> = vs_INTERP0;
    let x_750 : vec4<f32> = x_738.x_MainLightWorldToLight[1i];
    let x_752 : vec2<f32> = (vec2<f32>(x_747.y, x_747.y) * vec2<f32>(x_750.x, x_750.y));
    let x_753 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_752.x, x_752.y, x_753.z);
    let x_756 : vec4<f32> = x_738.x_MainLightWorldToLight[0i];
    let x_758 : vec3<f32> = vs_INTERP0;
    let x_761 : vec3<f32> = u_xlat19;
    let x_763 : vec2<f32> = ((vec2<f32>(x_756.x, x_756.y) * vec2<f32>(x_758.x, x_758.x)) + vec2<f32>(x_761.x, x_761.y));
    let x_764 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_763.x, x_763.y, x_764.z);
    let x_767 : vec4<f32> = x_738.x_MainLightWorldToLight[2i];
    let x_769 : vec3<f32> = vs_INTERP0;
    let x_772 : vec3<f32> = u_xlat19;
    let x_774 : vec2<f32> = ((vec2<f32>(x_767.x, x_767.y) * vec2<f32>(x_769.z, x_769.z)) + vec2<f32>(x_772.x, x_772.y));
    let x_775 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_774.x, x_774.y, x_775.z);
    let x_777 : vec3<f32> = u_xlat19;
    let x_780 : vec4<f32> = x_738.x_MainLightWorldToLight[3i];
    let x_782 : vec2<f32> = (vec2<f32>(x_777.x, x_777.y) + vec2<f32>(x_780.x, x_780.y));
    let x_783 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_782.x, x_782.y, x_783.z);
    let x_785 : vec3<f32> = u_xlat19;
    let x_790 : vec2<f32> = ((vec2<f32>(x_785.x, x_785.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_791 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_790.x, x_790.y, x_791.z);
    let x_798 : vec3<f32> = u_xlat19;
    let x_801 : f32 = x_45.x_GlobalMipBias.x;
    let x_802 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_798.x, x_798.y), x_801);
    u_xlat7 = x_802;
    let x_804 : f32 = x_738.x_MainLightCookieTextureFormat;
    let x_806 : f32 = x_738.x_MainLightCookieTextureFormat;
    let x_808 : f32 = x_738.x_MainLightCookieTextureFormat;
    let x_810 : f32 = x_738.x_MainLightCookieTextureFormat;
    let x_811 : vec4<f32> = vec4<f32>(x_804, x_806, x_808, x_810);
    let x_818 : vec4<bool> = (vec4<f32>(x_811.x, x_811.y, x_811.z, x_811.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_818.x, x_818.y);
    let x_821 : bool = u_xlatb19.y;
    if (x_821) {
      let x_826 : f32 = u_xlat7.w;
      x_822 = x_826;
    } else {
      let x_829 : f32 = u_xlat7.x;
      x_822 = x_829;
    }
    let x_830 : f32 = x_822;
    u_xlat33 = x_830;
    let x_832 : bool = u_xlatb19.x;
    if (x_832) {
      let x_836 : vec4<f32> = u_xlat7;
      x_833 = vec3<f32>(x_836.x, x_836.y, x_836.z);
    } else {
      let x_839 : f32 = u_xlat33;
      x_833 = vec3<f32>(x_839, x_839, x_839);
    }
    let x_841 : vec3<f32> = x_833;
    u_xlat19 = x_841;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_846 : vec3<f32> = u_xlat19;
  let x_848 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat19 = (x_846 * vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_851 : f32 = u_xlat48;
  let x_853 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_851, x_851, x_851) * x_853);
  let x_855 : vec3<f32> = u_xlat4;
  let x_857 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_855), vec3<f32>(x_857.x, x_857.y, x_857.w));
  let x_862 : f32 = u_xlat7.x;
  let x_864 : f32 = u_xlat7.x;
  u_xlat7.x = (x_862 + x_864);
  let x_867 : vec4<f32> = u_xlat1;
  let x_869 : vec4<f32> = u_xlat7;
  let x_873 : vec3<f32> = u_xlat4;
  let x_875 : vec3<f32> = ((vec3<f32>(x_867.x, x_867.y, x_867.w) * -(vec3<f32>(x_869.x, x_869.x, x_869.x))) + -(x_873));
  let x_876 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_879 : vec4<f32> = u_xlat1;
  let x_881 : vec3<f32> = u_xlat4;
  u_xlat49 = dot(vec3<f32>(x_879.x, x_879.y, x_879.w), x_881);
  let x_883 : f32 = u_xlat49;
  u_xlat49 = clamp(x_883, 0.0f, 1.0f);
  let x_885 : f32 = u_xlat49;
  u_xlat49 = (-(x_885) + 1.0f);
  let x_888 : f32 = u_xlat49;
  let x_889 : f32 = u_xlat49;
  u_xlat49 = (x_888 * x_889);
  let x_891 : f32 = u_xlat49;
  let x_892 : f32 = u_xlat49;
  u_xlat49 = (x_891 * x_892);
  let x_895 : f32 = u_xlat44;
  u_xlat50 = ((-(x_895) * 0.699999988f) + 1.700000048f);
  let x_901 : f32 = u_xlat44;
  let x_902 : f32 = u_xlat50;
  u_xlat2.w = (x_901 * x_902);
  let x_905 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_905 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_919 : vec4<f32> = u_xlat7;
  let x_922 : f32 = u_xlat2.w;
  let x_923 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_919.x, x_919.y, x_919.z), x_922);
  u_xlat9 = x_923;
  let x_925 : f32 = u_xlat9.w;
  u_xlat44 = (x_925 + -1.0f);
  let x_928 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_929 : f32 = u_xlat44;
  u_xlat44 = ((x_928 * x_929) + 1.0f);
  let x_932 : f32 = u_xlat44;
  u_xlat44 = max(x_932, 0.0f);
  let x_934 : f32 = u_xlat44;
  u_xlat44 = log2(x_934);
  let x_936 : f32 = u_xlat44;
  let x_938 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_936 * x_938);
  let x_940 : f32 = u_xlat44;
  u_xlat44 = exp2(x_940);
  let x_942 : f32 = u_xlat44;
  let x_944 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_942 * x_944);
  let x_946 : vec4<f32> = u_xlat9;
  let x_948 : f32 = u_xlat44;
  let x_950 : vec3<f32> = (vec3<f32>(x_946.x, x_946.y, x_946.z) * vec3<f32>(x_948, x_948, x_948));
  let x_951 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : vec3<f32> = u_xlat3;
  let x_955 : vec3<f32> = u_xlat3;
  let x_959 : vec2<f32> = ((vec2<f32>(x_953.x, x_953.x) * vec2<f32>(x_955.x, x_955.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_960 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
  let x_963 : f32 = u_xlat9.y;
  u_xlat44 = (1.0f / x_963);
  let x_966 : vec3<f32> = u_xlat0;
  let x_968 : f32 = u_xlat45;
  u_xlat23 = (-(x_966) + vec3<f32>(x_968, x_968, x_968));
  let x_971 : f32 = u_xlat49;
  let x_973 : vec3<f32> = u_xlat23;
  let x_975 : vec3<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_971, x_971, x_971) * x_973) + x_975);
  let x_977 : f32 = u_xlat44;
  let x_979 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_977, x_977, x_977) * x_979);
  let x_981 : vec4<f32> = u_xlat7;
  let x_983 : vec3<f32> = u_xlat23;
  let x_984 : vec3<f32> = (vec3<f32>(x_981.x, x_981.y, x_981.z) * x_983);
  let x_985 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_987 : vec4<f32> = u_xlat6;
  let x_989 : vec3<f32> = u_xlat8;
  let x_991 : vec4<f32> = u_xlat7;
  let x_993 : vec3<f32> = ((vec3<f32>(x_987.x, x_987.y, x_987.z) * x_989) + vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_997 : f32 = u_xlat5.x;
  let x_999 : f32 = x_120.unity_LightData.z;
  u_xlat44 = (x_997 * x_999);
  let x_1001 : vec4<f32> = u_xlat1;
  let x_1004 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1001.x, x_1001.y, x_1001.w), vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1009 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1009, 0.0f, 1.0f);
  let x_1012 : f32 = u_xlat44;
  let x_1014 : f32 = u_xlat3.x;
  u_xlat44 = (x_1012 * x_1014);
  let x_1016 : f32 = u_xlat44;
  let x_1018 : vec3<f32> = u_xlat19;
  let x_1019 : vec3<f32> = (vec3<f32>(x_1016, x_1016, x_1016) * x_1018);
  let x_1020 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1022 : vec3<f32> = u_xlat4;
  let x_1024 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1026 : vec3<f32> = (x_1022 + vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1027 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1029 : vec4<f32> = u_xlat7;
  let x_1031 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1034 : f32 = u_xlat44;
  u_xlat44 = max(x_1034, 1.17549435e-37f);
  let x_1037 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1037);
  let x_1039 : f32 = u_xlat44;
  let x_1041 : vec4<f32> = u_xlat7;
  let x_1043 : vec3<f32> = (vec3<f32>(x_1039, x_1039, x_1039) * vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1044 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1046 : vec4<f32> = u_xlat1;
  let x_1048 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1046.x, x_1046.y, x_1046.w), vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
  let x_1051 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1051, 0.0f, 1.0f);
  let x_1054 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1056 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1061 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1061, 0.0f, 1.0f);
  let x_1064 : f32 = u_xlat44;
  let x_1065 : f32 = u_xlat44;
  u_xlat44 = (x_1064 * x_1065);
  let x_1067 : f32 = u_xlat44;
  let x_1069 : f32 = u_xlat9.x;
  u_xlat44 = ((x_1067 * x_1069) + 1.000010014f);
  let x_1074 : f32 = u_xlat3.x;
  let x_1076 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1074 * x_1076);
  let x_1079 : f32 = u_xlat44;
  let x_1080 : f32 = u_xlat44;
  u_xlat44 = (x_1079 * x_1080);
  let x_1083 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1083, 0.100000001f);
  let x_1087 : f32 = u_xlat44;
  let x_1089 : f32 = u_xlat3.x;
  u_xlat44 = (x_1087 * x_1089);
  let x_1091 : f32 = u_xlat46;
  let x_1092 : f32 = u_xlat44;
  u_xlat44 = (x_1091 * x_1092);
  let x_1094 : f32 = u_xlat17;
  let x_1095 : f32 = u_xlat44;
  u_xlat44 = (x_1094 / x_1095);
  let x_1097 : vec3<f32> = u_xlat0;
  let x_1098 : f32 = u_xlat44;
  let x_1101 : vec3<f32> = u_xlat8;
  let x_1102 : vec3<f32> = ((x_1097 * vec3<f32>(x_1098, x_1098, x_1098)) + x_1101);
  let x_1103 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : vec4<f32> = u_xlat5;
  let x_1107 : vec4<f32> = u_xlat7;
  let x_1109 : vec3<f32> = (vec3<f32>(x_1105.x, x_1105.y, x_1105.z) * vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1113 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1115 : f32 = x_120.unity_LightData.y;
  u_xlat44 = min(x_1113, x_1115);
  let x_1118 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1118));
  let x_1123 : f32 = x_738.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1125 : f32 = x_738.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1127 : f32 = x_738.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1129 : f32 = x_738.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1130 : vec4<f32> = vec4<f32>(x_1123, x_1125, x_1127, x_1129);
  let x_1137 : vec4<bool> = (vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1130.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1138 : vec2<bool> = vec2<bool>(x_1137.x, x_1137.w);
  let x_1139 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1138.x, x_1139.y, x_1139.z, x_1138.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1150 : u32 = u_xlatu_loop_1;
    let x_1151 : u32 = u_xlatu44;
    if ((x_1150 < x_1151)) {
    } else {
      break;
    }
    let x_1154 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1154 >> 2u);
    let x_1157 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_1157 & 3u));
    let x_1160 : u32 = u_xlatu49;
    let x_1163 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_1160)];
    let x_1173 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1178 : vec4<u32> = indexable[x_1173];
    u_xlat49 = dot(x_1163, bitcast<vec4<f32>>(x_1178));
    let x_1181 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_1181));
    let x_1184 : vec3<f32> = vs_INTERP0;
    let x_1196 : u32 = u_xlatu49;
    let x_1199 : vec4<f32> = x_1195.x_AdditionalLightsPosition[bitcast<i32>(x_1196)];
    let x_1202 : u32 = u_xlatu49;
    let x_1205 : vec4<f32> = x_1195.x_AdditionalLightsPosition[bitcast<i32>(x_1202)];
    u_xlat23 = ((-(x_1184) * vec3<f32>(x_1199.w, x_1199.w, x_1199.w)) + vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
    let x_1208 : vec3<f32> = u_xlat23;
    let x_1209 : vec3<f32> = u_xlat23;
    u_xlat50 = dot(x_1208, x_1209);
    let x_1211 : f32 = u_xlat50;
    u_xlat50 = max(x_1211, 6.10351562e-05f);
    let x_1215 : f32 = u_xlat50;
    u_xlat10 = inverseSqrt(x_1215);
    let x_1218 : vec3<f32> = u_xlat23;
    let x_1219 : f32 = u_xlat10;
    u_xlat24 = (x_1218 * vec3<f32>(x_1219, x_1219, x_1219));
    let x_1223 : f32 = u_xlat50;
    u_xlat11.x = (1.0f / x_1223);
    let x_1226 : f32 = u_xlat50;
    let x_1227 : u32 = u_xlatu49;
    let x_1230 : f32 = x_1195.x_AdditionalLightsAttenuation[bitcast<i32>(x_1227)].x;
    u_xlat50 = (x_1226 * x_1230);
    let x_1232 : f32 = u_xlat50;
    let x_1234 : f32 = u_xlat50;
    u_xlat50 = ((-(x_1232) * x_1234) + 1.0f);
    let x_1237 : f32 = u_xlat50;
    u_xlat50 = max(x_1237, 0.0f);
    let x_1239 : f32 = u_xlat50;
    let x_1240 : f32 = u_xlat50;
    u_xlat50 = (x_1239 * x_1240);
    let x_1242 : f32 = u_xlat50;
    let x_1244 : f32 = u_xlat11.x;
    u_xlat50 = (x_1242 * x_1244);
    let x_1246 : u32 = u_xlatu49;
    let x_1249 : vec4<f32> = x_1195.x_AdditionalLightsSpotDir[bitcast<i32>(x_1246)];
    let x_1251 : vec3<f32> = u_xlat24;
    u_xlat11.x = dot(vec3<f32>(x_1249.x, x_1249.y, x_1249.z), x_1251);
    let x_1255 : f32 = u_xlat11.x;
    let x_1256 : u32 = u_xlatu49;
    let x_1259 : f32 = x_1195.x_AdditionalLightsAttenuation[bitcast<i32>(x_1256)].z;
    let x_1261 : u32 = u_xlatu49;
    let x_1264 : f32 = x_1195.x_AdditionalLightsAttenuation[bitcast<i32>(x_1261)].w;
    u_xlat11.x = ((x_1255 * x_1259) + x_1264);
    let x_1268 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_1268, 0.0f, 1.0f);
    let x_1272 : f32 = u_xlat11.x;
    let x_1274 : f32 = u_xlat11.x;
    u_xlat11.x = (x_1272 * x_1274);
    let x_1277 : f32 = u_xlat50;
    let x_1279 : f32 = u_xlat11.x;
    u_xlat50 = (x_1277 * x_1279);
    let x_1282 : u32 = u_xlatu49;
    u_xlatu11 = (x_1282 >> 5u);
    let x_1285 : u32 = u_xlatu49;
    u_xlati25 = (1i << bitcast<u32>((bitcast<i32>(x_1285) & 31i)));
    let x_1291 : i32 = u_xlati25;
    let x_1293 : u32 = u_xlatu11;
    let x_1296 : f32 = x_738.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1293)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_1291) & bitcast<u32>(x_1296)));
    let x_1300 : i32 = u_xlati11;
    if ((x_1300 != 0i)) {
      let x_1310 : u32 = u_xlatu49;
      let x_1313 : f32 = x_1309.x_AdditionalLightsLightTypes[bitcast<i32>(x_1310)].el;
      u_xlati11 = i32(x_1313);
      let x_1315 : i32 = u_xlati11;
      u_xlati25 = select(1i, 0i, (x_1315 != 0i));
      let x_1319 : u32 = u_xlatu49;
      u_xlati39 = (bitcast<i32>(x_1319) << bitcast<u32>(2i));
      let x_1322 : i32 = u_xlati25;
      if ((x_1322 != 0i)) {
        let x_1327 : vec3<f32> = vs_INTERP0;
        let x_1329 : i32 = u_xlati39;
        let x_1332 : i32 = u_xlati39;
        let x_1336 : vec4<f32> = x_1309.x_AdditionalLightsWorldToLights[((x_1329 + 1i) / 4i)][((x_1332 + 1i) % 4i)];
        let x_1338 : vec3<f32> = (vec3<f32>(x_1327.y, x_1327.y, x_1327.y) * vec3<f32>(x_1336.x, x_1336.y, x_1336.w));
        let x_1339 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
        let x_1341 : i32 = u_xlati39;
        let x_1343 : i32 = u_xlati39;
        let x_1346 : vec4<f32> = x_1309.x_AdditionalLightsWorldToLights[(x_1341 / 4i)][(x_1343 % 4i)];
        let x_1348 : vec3<f32> = vs_INTERP0;
        let x_1351 : vec4<f32> = u_xlat12;
        let x_1353 : vec3<f32> = ((vec3<f32>(x_1346.x, x_1346.y, x_1346.w) * vec3<f32>(x_1348.x, x_1348.x, x_1348.x)) + vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
        let x_1354 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
        let x_1356 : i32 = u_xlati39;
        let x_1359 : i32 = u_xlati39;
        let x_1363 : vec4<f32> = x_1309.x_AdditionalLightsWorldToLights[((x_1356 + 2i) / 4i)][((x_1359 + 2i) % 4i)];
        let x_1365 : vec3<f32> = vs_INTERP0;
        let x_1368 : vec4<f32> = u_xlat12;
        let x_1370 : vec3<f32> = ((vec3<f32>(x_1363.x, x_1363.y, x_1363.w) * vec3<f32>(x_1365.z, x_1365.z, x_1365.z)) + vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
        let x_1371 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
        let x_1373 : vec4<f32> = u_xlat12;
        let x_1375 : i32 = u_xlati39;
        let x_1378 : i32 = u_xlati39;
        let x_1382 : vec4<f32> = x_1309.x_AdditionalLightsWorldToLights[((x_1375 + 3i) / 4i)][((x_1378 + 3i) % 4i)];
        let x_1384 : vec3<f32> = (vec3<f32>(x_1373.x, x_1373.y, x_1373.z) + vec3<f32>(x_1382.x, x_1382.y, x_1382.w));
        let x_1385 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
        let x_1388 : vec4<f32> = u_xlat12;
        let x_1390 : vec4<f32> = u_xlat12;
        let x_1392 : vec2<f32> = (vec2<f32>(x_1388.x, x_1388.y) / vec2<f32>(x_1390.z, x_1390.z));
        let x_1393 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1392.x, x_1393.y, x_1392.y);
        let x_1395 : vec3<f32> = u_xlat25;
        let x_1398 : vec2<f32> = ((vec2<f32>(x_1395.x, x_1395.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1399 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1398.x, x_1399.y, x_1398.y);
        let x_1401 : vec3<f32> = u_xlat25;
        let x_1405 : vec2<f32> = clamp(vec2<f32>(x_1401.x, x_1401.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1406 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1405.x, x_1406.y, x_1405.y);
        let x_1408 : u32 = u_xlatu49;
        let x_1411 : vec4<f32> = x_1309.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1408)];
        let x_1413 : vec3<f32> = u_xlat25;
        let x_1416 : u32 = u_xlatu49;
        let x_1419 : vec4<f32> = x_1309.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1416)];
        let x_1421 : vec2<f32> = ((vec2<f32>(x_1411.x, x_1411.y) * vec2<f32>(x_1413.x, x_1413.z)) + vec2<f32>(x_1419.z, x_1419.w));
        let x_1422 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1421.x, x_1422.y, x_1421.y);
      } else {
        let x_1426 : i32 = u_xlati11;
        u_xlatb11 = (x_1426 == 1i);
        let x_1428 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_1428);
        let x_1430 : i32 = u_xlati11;
        if ((x_1430 != 0i)) {
          let x_1434 : vec3<f32> = vs_INTERP0;
          let x_1436 : i32 = u_xlati39;
          let x_1439 : i32 = u_xlati39;
          let x_1443 : vec4<f32> = x_1309.x_AdditionalLightsWorldToLights[((x_1436 + 1i) / 4i)][((x_1439 + 1i) % 4i)];
          let x_1445 : vec2<f32> = (vec2<f32>(x_1434.y, x_1434.y) * vec2<f32>(x_1443.x, x_1443.y));
          let x_1446 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1445.x, x_1445.y, x_1446.z, x_1446.w);
          let x_1448 : i32 = u_xlati39;
          let x_1450 : i32 = u_xlati39;
          let x_1453 : vec4<f32> = x_1309.x_AdditionalLightsWorldToLights[(x_1448 / 4i)][(x_1450 % 4i)];
          let x_1455 : vec3<f32> = vs_INTERP0;
          let x_1458 : vec4<f32> = u_xlat12;
          let x_1460 : vec2<f32> = ((vec2<f32>(x_1453.x, x_1453.y) * vec2<f32>(x_1455.x, x_1455.x)) + vec2<f32>(x_1458.x, x_1458.y));
          let x_1461 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1460.x, x_1460.y, x_1461.z, x_1461.w);
          let x_1463 : i32 = u_xlati39;
          let x_1466 : i32 = u_xlati39;
          let x_1470 : vec4<f32> = x_1309.x_AdditionalLightsWorldToLights[((x_1463 + 2i) / 4i)][((x_1466 + 2i) % 4i)];
          let x_1472 : vec3<f32> = vs_INTERP0;
          let x_1475 : vec4<f32> = u_xlat12;
          let x_1477 : vec2<f32> = ((vec2<f32>(x_1470.x, x_1470.y) * vec2<f32>(x_1472.z, x_1472.z)) + vec2<f32>(x_1475.x, x_1475.y));
          let x_1478 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1477.x, x_1477.y, x_1478.z, x_1478.w);
          let x_1480 : vec4<f32> = u_xlat12;
          let x_1482 : i32 = u_xlati39;
          let x_1485 : i32 = u_xlati39;
          let x_1489 : vec4<f32> = x_1309.x_AdditionalLightsWorldToLights[((x_1482 + 3i) / 4i)][((x_1485 + 3i) % 4i)];
          let x_1491 : vec2<f32> = (vec2<f32>(x_1480.x, x_1480.y) + vec2<f32>(x_1489.x, x_1489.y));
          let x_1492 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1491.x, x_1491.y, x_1492.z, x_1492.w);
          let x_1494 : vec4<f32> = u_xlat12;
          let x_1497 : vec2<f32> = ((vec2<f32>(x_1494.x, x_1494.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1498 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1497.x, x_1497.y, x_1498.z, x_1498.w);
          let x_1500 : vec4<f32> = u_xlat12;
          let x_1502 : vec2<f32> = fract(vec2<f32>(x_1500.x, x_1500.y));
          let x_1503 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1502.x, x_1502.y, x_1503.z, x_1503.w);
          let x_1505 : u32 = u_xlatu49;
          let x_1508 : vec4<f32> = x_1309.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1505)];
          let x_1510 : vec4<f32> = u_xlat12;
          let x_1513 : u32 = u_xlatu49;
          let x_1516 : vec4<f32> = x_1309.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1513)];
          let x_1518 : vec2<f32> = ((vec2<f32>(x_1508.x, x_1508.y) * vec2<f32>(x_1510.x, x_1510.y)) + vec2<f32>(x_1516.z, x_1516.w));
          let x_1519 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1518.x, x_1519.y, x_1518.y);
        } else {
          let x_1522 : vec3<f32> = vs_INTERP0;
          let x_1524 : i32 = u_xlati39;
          let x_1527 : i32 = u_xlati39;
          let x_1531 : vec4<f32> = x_1309.x_AdditionalLightsWorldToLights[((x_1524 + 1i) / 4i)][((x_1527 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1522.y, x_1522.y, x_1522.y, x_1522.y) * x_1531);
          let x_1533 : i32 = u_xlati39;
          let x_1535 : i32 = u_xlati39;
          let x_1538 : vec4<f32> = x_1309.x_AdditionalLightsWorldToLights[(x_1533 / 4i)][(x_1535 % 4i)];
          let x_1539 : vec3<f32> = vs_INTERP0;
          let x_1542 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1538 * vec4<f32>(x_1539.x, x_1539.x, x_1539.x, x_1539.x)) + x_1542);
          let x_1544 : i32 = u_xlati39;
          let x_1547 : i32 = u_xlati39;
          let x_1551 : vec4<f32> = x_1309.x_AdditionalLightsWorldToLights[((x_1544 + 2i) / 4i)][((x_1547 + 2i) % 4i)];
          let x_1552 : vec3<f32> = vs_INTERP0;
          let x_1555 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1551 * vec4<f32>(x_1552.z, x_1552.z, x_1552.z, x_1552.z)) + x_1555);
          let x_1557 : vec4<f32> = u_xlat12;
          let x_1558 : i32 = u_xlati39;
          let x_1561 : i32 = u_xlati39;
          let x_1565 : vec4<f32> = x_1309.x_AdditionalLightsWorldToLights[((x_1558 + 3i) / 4i)][((x_1561 + 3i) % 4i)];
          u_xlat12 = (x_1557 + x_1565);
          let x_1567 : vec4<f32> = u_xlat12;
          let x_1569 : vec4<f32> = u_xlat12;
          let x_1571 : vec3<f32> = (vec3<f32>(x_1567.x, x_1567.y, x_1567.z) / vec3<f32>(x_1569.w, x_1569.w, x_1569.w));
          let x_1572 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
          let x_1574 : vec4<f32> = u_xlat12;
          let x_1576 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_1574.x, x_1574.y, x_1574.z), vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
          let x_1581 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_1581);
          let x_1584 : vec4<f32> = u_xlat11;
          let x_1586 : vec4<f32> = u_xlat12;
          let x_1588 : vec3<f32> = (vec3<f32>(x_1584.x, x_1584.x, x_1584.x) * vec3<f32>(x_1586.x, x_1586.y, x_1586.z));
          let x_1589 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1588.x, x_1588.y, x_1588.z, x_1589.w);
          let x_1591 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_1591.x, x_1591.y, x_1591.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1598 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_1598, 0.000001f);
          let x_1603 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_1603);
          let x_1607 : vec4<f32> = u_xlat11;
          let x_1609 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1607.x, x_1607.x, x_1607.x) * vec3<f32>(x_1609.z, x_1609.x, x_1609.y));
          let x_1613 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1613);
          let x_1617 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1617, 0.0f, 1.0f);
          let x_1621 : vec3<f32> = u_xlat13;
          let x_1624 : vec4<bool> = (vec4<f32>(x_1621.y, x_1621.z, x_1621.y, x_1621.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb40 = vec2<bool>(x_1624.x, x_1624.y);
          let x_1629 : bool = u_xlatb40.x;
          if (x_1629) {
            let x_1634 : f32 = u_xlat13.x;
            x_1630 = x_1634;
          } else {
            let x_1637 : f32 = u_xlat13.x;
            x_1630 = -(x_1637);
          }
          let x_1639 : f32 = x_1630;
          u_xlat40.x = x_1639;
          let x_1642 : bool = u_xlatb40.y;
          if (x_1642) {
            let x_1647 : f32 = u_xlat13.x;
            x_1643 = x_1647;
          } else {
            let x_1650 : f32 = u_xlat13.x;
            x_1643 = -(x_1650);
          }
          let x_1652 : f32 = x_1643;
          u_xlat40.y = x_1652;
          let x_1654 : vec4<f32> = u_xlat12;
          let x_1656 : vec4<f32> = u_xlat11;
          let x_1659 : vec2<f32> = u_xlat40;
          let x_1660 : vec2<f32> = ((vec2<f32>(x_1654.x, x_1654.y) * vec2<f32>(x_1656.x, x_1656.x)) + x_1659);
          let x_1661 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1660.x, x_1661.y, x_1660.y, x_1661.w);
          let x_1663 : vec4<f32> = u_xlat11;
          let x_1666 : vec2<f32> = ((vec2<f32>(x_1663.x, x_1663.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1667 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1666.x, x_1667.y, x_1666.y, x_1667.w);
          let x_1669 : vec4<f32> = u_xlat11;
          let x_1673 : vec2<f32> = clamp(vec2<f32>(x_1669.x, x_1669.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1674 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1673.x, x_1674.y, x_1673.y, x_1674.w);
          let x_1676 : u32 = u_xlatu49;
          let x_1679 : vec4<f32> = x_1309.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1676)];
          let x_1681 : vec4<f32> = u_xlat11;
          let x_1684 : u32 = u_xlatu49;
          let x_1687 : vec4<f32> = x_1309.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1684)];
          let x_1689 : vec2<f32> = ((vec2<f32>(x_1679.x, x_1679.y) * vec2<f32>(x_1681.x, x_1681.z)) + vec2<f32>(x_1687.z, x_1687.w));
          let x_1690 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1689.x, x_1690.y, x_1689.y);
        }
      }
      let x_1697 : vec3<f32> = u_xlat25;
      let x_1700 : f32 = x_45.x_GlobalMipBias.x;
      let x_1701 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1697.x, x_1697.z), x_1700);
      u_xlat11 = x_1701;
      let x_1704 : bool = u_xlatb3.w;
      if (x_1704) {
        let x_1709 : f32 = u_xlat11.w;
        x_1705 = x_1709;
      } else {
        let x_1712 : f32 = u_xlat11.x;
        x_1705 = x_1712;
      }
      let x_1713 : f32 = x_1705;
      u_xlat53 = x_1713;
      let x_1715 : bool = u_xlatb3.x;
      if (x_1715) {
        let x_1719 : vec4<f32> = u_xlat11;
        x_1716 = vec3<f32>(x_1719.x, x_1719.y, x_1719.z);
      } else {
        let x_1722 : f32 = u_xlat53;
        x_1716 = vec3<f32>(x_1722, x_1722, x_1722);
      }
      let x_1724 : vec3<f32> = x_1716;
      let x_1725 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1724.x, x_1724.y, x_1724.z, x_1725.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1731 : vec4<f32> = u_xlat11;
    let x_1733 : u32 = u_xlatu49;
    let x_1736 : vec4<f32> = x_1195.x_AdditionalLightsColor[bitcast<i32>(x_1733)];
    let x_1738 : vec3<f32> = (vec3<f32>(x_1731.x, x_1731.y, x_1731.z) * vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
    let x_1739 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1738.x, x_1738.y, x_1738.z, x_1739.w);
    let x_1741 : f32 = u_xlat48;
    let x_1743 : vec4<f32> = u_xlat11;
    let x_1745 : vec3<f32> = (vec3<f32>(x_1741, x_1741, x_1741) * vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
    let x_1746 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
    let x_1748 : vec4<f32> = u_xlat1;
    let x_1750 : vec3<f32> = u_xlat24;
    u_xlat49 = dot(vec3<f32>(x_1748.x, x_1748.y, x_1748.w), x_1750);
    let x_1752 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1752, 0.0f, 1.0f);
    let x_1754 : f32 = u_xlat49;
    let x_1755 : f32 = u_xlat50;
    u_xlat49 = (x_1754 * x_1755);
    let x_1757 : f32 = u_xlat49;
    let x_1759 : vec4<f32> = u_xlat11;
    let x_1761 : vec3<f32> = (vec3<f32>(x_1757, x_1757, x_1757) * vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
    let x_1762 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1762.w);
    let x_1764 : vec3<f32> = u_xlat23;
    let x_1765 : f32 = u_xlat10;
    let x_1768 : vec3<f32> = u_xlat4;
    u_xlat23 = ((x_1764 * vec3<f32>(x_1765, x_1765, x_1765)) + x_1768);
    let x_1770 : vec3<f32> = u_xlat23;
    let x_1771 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(x_1770, x_1771);
    let x_1773 : f32 = u_xlat49;
    u_xlat49 = max(x_1773, 1.17549435e-37f);
    let x_1775 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1775);
    let x_1777 : f32 = u_xlat49;
    let x_1779 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1777, x_1777, x_1777) * x_1779);
    let x_1781 : vec4<f32> = u_xlat1;
    let x_1783 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(vec3<f32>(x_1781.x, x_1781.y, x_1781.w), x_1783);
    let x_1785 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1785, 0.0f, 1.0f);
    let x_1787 : vec3<f32> = u_xlat24;
    let x_1788 : vec3<f32> = u_xlat23;
    u_xlat50 = dot(x_1787, x_1788);
    let x_1790 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1790, 0.0f, 1.0f);
    let x_1792 : f32 = u_xlat49;
    let x_1793 : f32 = u_xlat49;
    u_xlat49 = (x_1792 * x_1793);
    let x_1795 : f32 = u_xlat49;
    let x_1797 : f32 = u_xlat9.x;
    u_xlat49 = ((x_1795 * x_1797) + 1.000010014f);
    let x_1800 : f32 = u_xlat50;
    let x_1801 : f32 = u_xlat50;
    u_xlat50 = (x_1800 * x_1801);
    let x_1803 : f32 = u_xlat49;
    let x_1804 : f32 = u_xlat49;
    u_xlat49 = (x_1803 * x_1804);
    let x_1806 : f32 = u_xlat50;
    u_xlat50 = max(x_1806, 0.100000001f);
    let x_1808 : f32 = u_xlat49;
    let x_1809 : f32 = u_xlat50;
    u_xlat49 = (x_1808 * x_1809);
    let x_1811 : f32 = u_xlat46;
    let x_1812 : f32 = u_xlat49;
    u_xlat49 = (x_1811 * x_1812);
    let x_1814 : f32 = u_xlat17;
    let x_1815 : f32 = u_xlat49;
    u_xlat49 = (x_1814 / x_1815);
    let x_1817 : vec3<f32> = u_xlat0;
    let x_1818 : f32 = u_xlat49;
    let x_1821 : vec3<f32> = u_xlat8;
    u_xlat23 = ((x_1817 * vec3<f32>(x_1818, x_1818, x_1818)) + x_1821);
    let x_1823 : vec3<f32> = u_xlat23;
    let x_1824 : vec4<f32> = u_xlat11;
    let x_1827 : vec4<f32> = u_xlat7;
    let x_1829 : vec3<f32> = ((x_1823 * vec3<f32>(x_1824.x, x_1824.y, x_1824.z)) + vec3<f32>(x_1827.x, x_1827.y, x_1827.z));
    let x_1830 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);

    continuing {
      let x_1832 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1832 + bitcast<u32>(1i));
    }
  }
  let x_1834 : vec4<f32> = u_xlat6;
  let x_1836 : f32 = u_xlat31;
  let x_1839 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1834.x, x_1834.y, x_1834.z) * vec3<f32>(x_1836, x_1836, x_1836)) + vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
  let x_1842 : vec4<f32> = u_xlat7;
  let x_1844 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1842.x, x_1842.y, x_1842.z) + x_1844);
  let x_1846 : vec4<f32> = u_xlat2;
  let x_1848 : f32 = u_xlat29;
  let x_1851 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1846.x, x_1846.y, x_1846.z) * vec3<f32>(x_1848, x_1848, x_1848)) + x_1851);
  let x_1853 : f32 = u_xlat42;
  let x_1854 : f32 = u_xlat42;
  u_xlat42 = (x_1853 * -(x_1854));
  let x_1857 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1857);
  let x_1859 : vec3<f32> = u_xlat0;
  let x_1862 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1859 + -(vec3<f32>(x_1862.x, x_1862.y, x_1862.z)));
  let x_1868 : f32 = u_xlat42;
  let x_1870 : vec3<f32> = u_xlat0;
  let x_1873 : vec4<f32> = x_45.unity_FogColor;
  let x_1875 : vec3<f32> = ((vec3<f32>(x_1868, x_1868, x_1868) * x_1870) + vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
  let x_1876 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
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

