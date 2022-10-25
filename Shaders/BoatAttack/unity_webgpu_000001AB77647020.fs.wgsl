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

@group(0) @binding(7) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(9) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(19) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(10) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(20) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

@group(0) @binding(8) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(18) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_283 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_779 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1235 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1349 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_732 : f32;
  var u_xlat33 : f32;
  var x_862 : f32;
  var x_873 : vec3<f32>;
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
  var x_1670 : f32;
  var x_1683 : f32;
  var u_xlat53 : f32;
  var x_1745 : f32;
  var x_1756 : vec3<f32>;
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
  let x_513 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_510, x_512);
  u_xlat6 = x_513;
  let x_518 : vec2<f32> = vs_INTERP4;
  let x_520 : f32 = x_45.x_GlobalMipBias.x;
  let x_521 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_518, x_520);
  let x_522 : vec3<f32> = vec3<f32>(x_521.x, x_521.y, x_521.z);
  let x_523 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat6;
  let x_529 : vec3<f32> = (vec3<f32>(x_525.x, x_525.y, x_525.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_530 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat1;
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_532.x, x_532.y, x_532.w), vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : f32 = u_xlat44;
  u_xlat44 = (x_537 + 0.5f);
  let x_540 : f32 = u_xlat44;
  let x_542 : vec4<f32> = u_xlat7;
  let x_544 : vec3<f32> = (vec3<f32>(x_540, x_540, x_540) * vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_548 : f32 = u_xlat6.w;
  u_xlat44 = max(x_548, 0.0001f);
  let x_551 : vec4<f32> = u_xlat6;
  let x_553 : f32 = u_xlat44;
  let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) / vec3<f32>(x_553, x_553, x_553));
  let x_556 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_560 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_561 : vec2<f32> = vec2<f32>(x_560.x, x_560.y);
  let x_565 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_561.x, x_561.y));
  let x_566 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
  let x_568 : vec4<f32> = u_xlat7;
  let x_570 : vec4<f32> = hlslcc_FragCoord;
  let x_572 : vec2<f32> = (vec2<f32>(x_568.x, x_568.y) * vec2<f32>(x_570.x, x_570.y));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_576 : f32 = u_xlat7.y;
  let x_579 : f32 = x_45.x_ScaleBiasRt.x;
  let x_582 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat44 = ((x_576 * x_579) + x_582);
  let x_584 : f32 = u_xlat44;
  u_xlat7.z = (-(x_584) + 1.0f);
  let x_588 : vec3<f32> = u_xlat3;
  let x_589 : vec2<f32> = vec2<f32>(x_588.x, x_588.y);
  let x_590 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_589.x, x_589.y, x_590.z);
  let x_592 : vec3<f32> = u_xlat3;
  let x_596 : vec2<f32> = clamp(vec2<f32>(x_592.x, x_592.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_597 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_596.x, x_596.y, x_597.z);
  let x_600 : f32 = u_xlat3.x;
  u_xlat44 = ((-(x_600) * 0.959999979f) + 0.959999979f);
  let x_606 : f32 = u_xlat44;
  let x_609 : f32 = u_xlat3.y;
  u_xlat45 = (-(x_606) + x_609);
  let x_611 : vec3<f32> = u_xlat0;
  let x_612 : f32 = u_xlat44;
  u_xlat8 = (x_611 * vec3<f32>(x_612, x_612, x_612));
  let x_615 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_615 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_619 : vec3<f32> = u_xlat3;
  let x_621 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_619.x, x_619.x, x_619.x) * x_621) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_627 : f32 = u_xlat3.y;
  u_xlat44 = (-(x_627) + 1.0f);
  let x_630 : f32 = u_xlat44;
  let x_631 : f32 = u_xlat44;
  u_xlat3.x = (x_630 * x_631);
  let x_635 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_635, 0.0078125f);
  let x_641 : f32 = u_xlat3.x;
  let x_643 : f32 = u_xlat3.x;
  u_xlat17 = (x_641 * x_643);
  let x_645 : f32 = u_xlat45;
  u_xlat45 = (x_645 + 1.0f);
  let x_647 : f32 = u_xlat45;
  u_xlat45 = min(x_647, 1.0f);
  let x_651 : f32 = u_xlat3.x;
  u_xlat46 = ((x_651 * 4.0f) + 2.0f);
  let x_660 : vec4<f32> = u_xlat7;
  let x_663 : f32 = x_45.x_GlobalMipBias.x;
  let x_664 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_660.x, x_660.z), x_663);
  u_xlat47 = x_664.x;
  let x_667 : f32 = u_xlat47;
  u_xlat48 = (x_667 + -1.0f);
  let x_670 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_671 : f32 = u_xlat48;
  u_xlat48 = ((x_670 * x_671) + 1.0f);
  let x_676 : f32 = u_xlat3.z;
  let x_677 : f32 = u_xlat47;
  u_xlat31 = min(x_676, x_677);
  let x_680 : vec4<f32> = u_xlat5;
  let x_681 : vec2<f32> = vec2<f32>(x_680.x, x_680.y);
  let x_683 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_681.x, x_681.y, x_683);
  let x_695 : vec3<f32> = txVec0;
  let x_697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_695.xy, x_695.z);
  u_xlat5.x = x_697;
  let x_701 : f32 = x_283.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_701) + 1.0f);
  let x_706 : f32 = u_xlat5.x;
  let x_708 : f32 = x_283.x_MainLightShadowParams.x;
  let x_711 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_706 * x_708) + x_711);
  let x_718 : f32 = u_xlat5.z;
  u_xlatb19.x = (0.0f >= x_718);
  let x_723 : f32 = u_xlat5.z;
  u_xlatb33 = (x_723 >= 1.0f);
  let x_725 : bool = u_xlatb33;
  let x_727 : bool = u_xlatb19.x;
  u_xlatb19.x = (x_725 | x_727);
  let x_731 : bool = u_xlatb19.x;
  if (x_731) {
    x_732 = 1.0f;
  } else {
    let x_737 : f32 = u_xlat5.x;
    x_732 = x_737;
  }
  let x_738 : f32 = x_732;
  u_xlat5.x = x_738;
  let x_740 : vec3<f32> = vs_INTERP0;
  let x_742 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat19 = (x_740 + -(x_742));
  let x_745 : vec3<f32> = u_xlat19;
  let x_746 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_745, x_746);
  let x_750 : f32 = u_xlat19.x;
  let x_752 : f32 = x_283.x_MainLightShadowParams.z;
  let x_755 : f32 = x_283.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_750 * x_752) + x_755);
  let x_759 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_759, 0.0f, 1.0f);
  let x_764 : f32 = u_xlat5.x;
  u_xlat33 = (-(x_764) + 1.0f);
  let x_768 : f32 = u_xlat19.x;
  let x_769 : f32 = u_xlat33;
  let x_772 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_768 * x_769) + x_772);
  let x_781 : f32 = x_779.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_781 == -1.0f));
  let x_785 : bool = u_xlatb19.x;
  if (x_785) {
    let x_788 : vec3<f32> = vs_INTERP0;
    let x_791 : vec4<f32> = x_779.x_MainLightWorldToLight[1i];
    let x_793 : vec2<f32> = (vec2<f32>(x_788.y, x_788.y) * vec2<f32>(x_791.x, x_791.y));
    let x_794 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_793.x, x_793.y, x_794.z);
    let x_797 : vec4<f32> = x_779.x_MainLightWorldToLight[0i];
    let x_799 : vec3<f32> = vs_INTERP0;
    let x_802 : vec3<f32> = u_xlat19;
    let x_804 : vec2<f32> = ((vec2<f32>(x_797.x, x_797.y) * vec2<f32>(x_799.x, x_799.x)) + vec2<f32>(x_802.x, x_802.y));
    let x_805 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_804.x, x_804.y, x_805.z);
    let x_808 : vec4<f32> = x_779.x_MainLightWorldToLight[2i];
    let x_810 : vec3<f32> = vs_INTERP0;
    let x_813 : vec3<f32> = u_xlat19;
    let x_815 : vec2<f32> = ((vec2<f32>(x_808.x, x_808.y) * vec2<f32>(x_810.z, x_810.z)) + vec2<f32>(x_813.x, x_813.y));
    let x_816 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_815.x, x_815.y, x_816.z);
    let x_818 : vec3<f32> = u_xlat19;
    let x_821 : vec4<f32> = x_779.x_MainLightWorldToLight[3i];
    let x_823 : vec2<f32> = (vec2<f32>(x_818.x, x_818.y) + vec2<f32>(x_821.x, x_821.y));
    let x_824 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_823.x, x_823.y, x_824.z);
    let x_826 : vec3<f32> = u_xlat19;
    let x_830 : vec2<f32> = ((vec2<f32>(x_826.x, x_826.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_831 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_830.x, x_830.y, x_831.z);
    let x_838 : vec3<f32> = u_xlat19;
    let x_841 : f32 = x_45.x_GlobalMipBias.x;
    let x_842 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_838.x, x_838.y), x_841);
    u_xlat7 = x_842;
    let x_844 : f32 = x_779.x_MainLightCookieTextureFormat;
    let x_846 : f32 = x_779.x_MainLightCookieTextureFormat;
    let x_848 : f32 = x_779.x_MainLightCookieTextureFormat;
    let x_850 : f32 = x_779.x_MainLightCookieTextureFormat;
    let x_851 : vec4<f32> = vec4<f32>(x_844, x_846, x_848, x_850);
    let x_858 : vec4<bool> = (vec4<f32>(x_851.x, x_851.y, x_851.z, x_851.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_858.x, x_858.y);
    let x_861 : bool = u_xlatb19.y;
    if (x_861) {
      let x_866 : f32 = u_xlat7.w;
      x_862 = x_866;
    } else {
      let x_869 : f32 = u_xlat7.x;
      x_862 = x_869;
    }
    let x_870 : f32 = x_862;
    u_xlat33 = x_870;
    let x_872 : bool = u_xlatb19.x;
    if (x_872) {
      let x_876 : vec4<f32> = u_xlat7;
      x_873 = vec3<f32>(x_876.x, x_876.y, x_876.z);
    } else {
      let x_879 : f32 = u_xlat33;
      x_873 = vec3<f32>(x_879, x_879, x_879);
    }
    let x_881 : vec3<f32> = x_873;
    u_xlat19 = x_881;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_886 : vec3<f32> = u_xlat19;
  let x_888 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat19 = (x_886 * vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : f32 = u_xlat48;
  let x_893 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_891, x_891, x_891) * x_893);
  let x_895 : vec3<f32> = u_xlat4;
  let x_897 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_895), vec3<f32>(x_897.x, x_897.y, x_897.w));
  let x_902 : f32 = u_xlat7.x;
  let x_904 : f32 = u_xlat7.x;
  u_xlat7.x = (x_902 + x_904);
  let x_907 : vec4<f32> = u_xlat1;
  let x_909 : vec4<f32> = u_xlat7;
  let x_913 : vec3<f32> = u_xlat4;
  let x_915 : vec3<f32> = ((vec3<f32>(x_907.x, x_907.y, x_907.w) * -(vec3<f32>(x_909.x, x_909.x, x_909.x))) + -(x_913));
  let x_916 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_919 : vec4<f32> = u_xlat1;
  let x_921 : vec3<f32> = u_xlat4;
  u_xlat49 = dot(vec3<f32>(x_919.x, x_919.y, x_919.w), x_921);
  let x_923 : f32 = u_xlat49;
  u_xlat49 = clamp(x_923, 0.0f, 1.0f);
  let x_925 : f32 = u_xlat49;
  u_xlat49 = (-(x_925) + 1.0f);
  let x_928 : f32 = u_xlat49;
  let x_929 : f32 = u_xlat49;
  u_xlat49 = (x_928 * x_929);
  let x_931 : f32 = u_xlat49;
  let x_932 : f32 = u_xlat49;
  u_xlat49 = (x_931 * x_932);
  let x_935 : f32 = u_xlat44;
  u_xlat50 = ((-(x_935) * 0.699999988f) + 1.700000048f);
  let x_941 : f32 = u_xlat44;
  let x_942 : f32 = u_xlat50;
  u_xlat2.w = (x_941 * x_942);
  let x_945 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_945 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_959 : vec4<f32> = u_xlat7;
  let x_962 : f32 = u_xlat2.w;
  let x_963 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_959.x, x_959.y, x_959.z), x_962);
  u_xlat9 = x_963;
  let x_965 : f32 = u_xlat9.w;
  u_xlat44 = (x_965 + -1.0f);
  let x_968 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_969 : f32 = u_xlat44;
  u_xlat44 = ((x_968 * x_969) + 1.0f);
  let x_972 : f32 = u_xlat44;
  u_xlat44 = max(x_972, 0.0f);
  let x_974 : f32 = u_xlat44;
  u_xlat44 = log2(x_974);
  let x_976 : f32 = u_xlat44;
  let x_978 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_976 * x_978);
  let x_980 : f32 = u_xlat44;
  u_xlat44 = exp2(x_980);
  let x_982 : f32 = u_xlat44;
  let x_984 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_982 * x_984);
  let x_986 : vec4<f32> = u_xlat9;
  let x_988 : f32 = u_xlat44;
  let x_990 : vec3<f32> = (vec3<f32>(x_986.x, x_986.y, x_986.z) * vec3<f32>(x_988, x_988, x_988));
  let x_991 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_993 : vec3<f32> = u_xlat3;
  let x_995 : vec3<f32> = u_xlat3;
  let x_999 : vec2<f32> = ((vec2<f32>(x_993.x, x_993.x) * vec2<f32>(x_995.x, x_995.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1000 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_999.x, x_999.y, x_1000.z, x_1000.w);
  let x_1003 : f32 = u_xlat9.y;
  u_xlat44 = (1.0f / x_1003);
  let x_1006 : vec3<f32> = u_xlat0;
  let x_1008 : f32 = u_xlat45;
  u_xlat23 = (-(x_1006) + vec3<f32>(x_1008, x_1008, x_1008));
  let x_1011 : f32 = u_xlat49;
  let x_1013 : vec3<f32> = u_xlat23;
  let x_1015 : vec3<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_1011, x_1011, x_1011) * x_1013) + x_1015);
  let x_1017 : f32 = u_xlat44;
  let x_1019 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1017, x_1017, x_1017) * x_1019);
  let x_1021 : vec4<f32> = u_xlat7;
  let x_1023 : vec3<f32> = u_xlat23;
  let x_1024 : vec3<f32> = (vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * x_1023);
  let x_1025 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  let x_1027 : vec4<f32> = u_xlat6;
  let x_1029 : vec3<f32> = u_xlat8;
  let x_1031 : vec4<f32> = u_xlat7;
  let x_1033 : vec3<f32> = ((vec3<f32>(x_1027.x, x_1027.y, x_1027.z) * x_1029) + vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1034 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1037 : f32 = u_xlat5.x;
  let x_1039 : f32 = x_120.unity_LightData.z;
  u_xlat44 = (x_1037 * x_1039);
  let x_1041 : vec4<f32> = u_xlat1;
  let x_1044 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1041.x, x_1041.y, x_1041.w), vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1049 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1049, 0.0f, 1.0f);
  let x_1052 : f32 = u_xlat44;
  let x_1054 : f32 = u_xlat3.x;
  u_xlat44 = (x_1052 * x_1054);
  let x_1056 : f32 = u_xlat44;
  let x_1058 : vec3<f32> = u_xlat19;
  let x_1059 : vec3<f32> = (vec3<f32>(x_1056, x_1056, x_1056) * x_1058);
  let x_1060 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : vec3<f32> = u_xlat4;
  let x_1064 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1066 : vec3<f32> = (x_1062 + vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
  let x_1067 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1069 : vec4<f32> = u_xlat7;
  let x_1071 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1069.x, x_1069.y, x_1069.z), vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
  let x_1074 : f32 = u_xlat44;
  u_xlat44 = max(x_1074, 1.17549435e-37f);
  let x_1077 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1077);
  let x_1079 : f32 = u_xlat44;
  let x_1081 : vec4<f32> = u_xlat7;
  let x_1083 : vec3<f32> = (vec3<f32>(x_1079, x_1079, x_1079) * vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1086 : vec4<f32> = u_xlat1;
  let x_1088 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1086.x, x_1086.y, x_1086.w), vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1091, 0.0f, 1.0f);
  let x_1094 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1096 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_1094.x, x_1094.y, x_1094.z), vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
  let x_1101 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1101, 0.0f, 1.0f);
  let x_1104 : f32 = u_xlat44;
  let x_1105 : f32 = u_xlat44;
  u_xlat44 = (x_1104 * x_1105);
  let x_1107 : f32 = u_xlat44;
  let x_1109 : f32 = u_xlat9.x;
  u_xlat44 = ((x_1107 * x_1109) + 1.000010014f);
  let x_1114 : f32 = u_xlat3.x;
  let x_1116 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1114 * x_1116);
  let x_1119 : f32 = u_xlat44;
  let x_1120 : f32 = u_xlat44;
  u_xlat44 = (x_1119 * x_1120);
  let x_1123 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1123, 0.100000001f);
  let x_1127 : f32 = u_xlat44;
  let x_1129 : f32 = u_xlat3.x;
  u_xlat44 = (x_1127 * x_1129);
  let x_1131 : f32 = u_xlat46;
  let x_1132 : f32 = u_xlat44;
  u_xlat44 = (x_1131 * x_1132);
  let x_1134 : f32 = u_xlat17;
  let x_1135 : f32 = u_xlat44;
  u_xlat44 = (x_1134 / x_1135);
  let x_1137 : vec3<f32> = u_xlat0;
  let x_1138 : f32 = u_xlat44;
  let x_1141 : vec3<f32> = u_xlat8;
  let x_1142 : vec3<f32> = ((x_1137 * vec3<f32>(x_1138, x_1138, x_1138)) + x_1141);
  let x_1143 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1145 : vec4<f32> = u_xlat5;
  let x_1147 : vec4<f32> = u_xlat7;
  let x_1149 : vec3<f32> = (vec3<f32>(x_1145.x, x_1145.y, x_1145.z) * vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1150 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
  let x_1153 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1155 : f32 = x_120.unity_LightData.y;
  u_xlat44 = min(x_1153, x_1155);
  let x_1158 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1158));
  let x_1163 : f32 = x_779.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1165 : f32 = x_779.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1167 : f32 = x_779.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1169 : f32 = x_779.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1170 : vec4<f32> = vec4<f32>(x_1163, x_1165, x_1167, x_1169);
  let x_1177 : vec4<bool> = (vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1170.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1178 : vec2<bool> = vec2<bool>(x_1177.x, x_1177.w);
  let x_1179 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1178.x, x_1179.y, x_1179.z, x_1178.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1190 : u32 = u_xlatu_loop_1;
    let x_1191 : u32 = u_xlatu44;
    if ((x_1190 < x_1191)) {
    } else {
      break;
    }
    let x_1194 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1194 >> 2u);
    let x_1197 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_1197 & 3u));
    let x_1200 : u32 = u_xlatu49;
    let x_1203 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_1200)];
    let x_1213 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1218 : vec4<u32> = indexable[x_1213];
    u_xlat49 = dot(x_1203, bitcast<vec4<f32>>(x_1218));
    let x_1221 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_1221));
    let x_1224 : vec3<f32> = vs_INTERP0;
    let x_1236 : u32 = u_xlatu49;
    let x_1239 : vec4<f32> = x_1235.x_AdditionalLightsPosition[bitcast<i32>(x_1236)];
    let x_1242 : u32 = u_xlatu49;
    let x_1245 : vec4<f32> = x_1235.x_AdditionalLightsPosition[bitcast<i32>(x_1242)];
    u_xlat23 = ((-(x_1224) * vec3<f32>(x_1239.w, x_1239.w, x_1239.w)) + vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
    let x_1248 : vec3<f32> = u_xlat23;
    let x_1249 : vec3<f32> = u_xlat23;
    u_xlat50 = dot(x_1248, x_1249);
    let x_1251 : f32 = u_xlat50;
    u_xlat50 = max(x_1251, 6.10351562e-05f);
    let x_1255 : f32 = u_xlat50;
    u_xlat10 = inverseSqrt(x_1255);
    let x_1258 : vec3<f32> = u_xlat23;
    let x_1259 : f32 = u_xlat10;
    u_xlat24 = (x_1258 * vec3<f32>(x_1259, x_1259, x_1259));
    let x_1263 : f32 = u_xlat50;
    u_xlat11.x = (1.0f / x_1263);
    let x_1266 : f32 = u_xlat50;
    let x_1267 : u32 = u_xlatu49;
    let x_1270 : f32 = x_1235.x_AdditionalLightsAttenuation[bitcast<i32>(x_1267)].x;
    u_xlat50 = (x_1266 * x_1270);
    let x_1272 : f32 = u_xlat50;
    let x_1274 : f32 = u_xlat50;
    u_xlat50 = ((-(x_1272) * x_1274) + 1.0f);
    let x_1277 : f32 = u_xlat50;
    u_xlat50 = max(x_1277, 0.0f);
    let x_1279 : f32 = u_xlat50;
    let x_1280 : f32 = u_xlat50;
    u_xlat50 = (x_1279 * x_1280);
    let x_1282 : f32 = u_xlat50;
    let x_1284 : f32 = u_xlat11.x;
    u_xlat50 = (x_1282 * x_1284);
    let x_1286 : u32 = u_xlatu49;
    let x_1289 : vec4<f32> = x_1235.x_AdditionalLightsSpotDir[bitcast<i32>(x_1286)];
    let x_1291 : vec3<f32> = u_xlat24;
    u_xlat11.x = dot(vec3<f32>(x_1289.x, x_1289.y, x_1289.z), x_1291);
    let x_1295 : f32 = u_xlat11.x;
    let x_1296 : u32 = u_xlatu49;
    let x_1299 : f32 = x_1235.x_AdditionalLightsAttenuation[bitcast<i32>(x_1296)].z;
    let x_1301 : u32 = u_xlatu49;
    let x_1304 : f32 = x_1235.x_AdditionalLightsAttenuation[bitcast<i32>(x_1301)].w;
    u_xlat11.x = ((x_1295 * x_1299) + x_1304);
    let x_1308 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_1308, 0.0f, 1.0f);
    let x_1312 : f32 = u_xlat11.x;
    let x_1314 : f32 = u_xlat11.x;
    u_xlat11.x = (x_1312 * x_1314);
    let x_1317 : f32 = u_xlat50;
    let x_1319 : f32 = u_xlat11.x;
    u_xlat50 = (x_1317 * x_1319);
    let x_1322 : u32 = u_xlatu49;
    u_xlatu11 = (x_1322 >> 5u);
    let x_1325 : u32 = u_xlatu49;
    u_xlati25 = (1i << bitcast<u32>((bitcast<i32>(x_1325) & 31i)));
    let x_1331 : i32 = u_xlati25;
    let x_1333 : u32 = u_xlatu11;
    let x_1336 : f32 = x_779.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1333)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_1331) & bitcast<u32>(x_1336)));
    let x_1340 : i32 = u_xlati11;
    if ((x_1340 != 0i)) {
      let x_1350 : u32 = u_xlatu49;
      let x_1353 : f32 = x_1349.x_AdditionalLightsLightTypes[bitcast<i32>(x_1350)].el;
      u_xlati11 = i32(x_1353);
      let x_1355 : i32 = u_xlati11;
      u_xlati25 = select(1i, 0i, (x_1355 != 0i));
      let x_1359 : u32 = u_xlatu49;
      u_xlati39 = (bitcast<i32>(x_1359) << bitcast<u32>(2i));
      let x_1362 : i32 = u_xlati25;
      if ((x_1362 != 0i)) {
        let x_1367 : vec3<f32> = vs_INTERP0;
        let x_1369 : i32 = u_xlati39;
        let x_1372 : i32 = u_xlati39;
        let x_1376 : vec4<f32> = x_1349.x_AdditionalLightsWorldToLights[((x_1369 + 1i) / 4i)][((x_1372 + 1i) % 4i)];
        let x_1378 : vec3<f32> = (vec3<f32>(x_1367.y, x_1367.y, x_1367.y) * vec3<f32>(x_1376.x, x_1376.y, x_1376.w));
        let x_1379 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
        let x_1381 : i32 = u_xlati39;
        let x_1383 : i32 = u_xlati39;
        let x_1386 : vec4<f32> = x_1349.x_AdditionalLightsWorldToLights[(x_1381 / 4i)][(x_1383 % 4i)];
        let x_1388 : vec3<f32> = vs_INTERP0;
        let x_1391 : vec4<f32> = u_xlat12;
        let x_1393 : vec3<f32> = ((vec3<f32>(x_1386.x, x_1386.y, x_1386.w) * vec3<f32>(x_1388.x, x_1388.x, x_1388.x)) + vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
        let x_1394 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
        let x_1396 : i32 = u_xlati39;
        let x_1399 : i32 = u_xlati39;
        let x_1403 : vec4<f32> = x_1349.x_AdditionalLightsWorldToLights[((x_1396 + 2i) / 4i)][((x_1399 + 2i) % 4i)];
        let x_1405 : vec3<f32> = vs_INTERP0;
        let x_1408 : vec4<f32> = u_xlat12;
        let x_1410 : vec3<f32> = ((vec3<f32>(x_1403.x, x_1403.y, x_1403.w) * vec3<f32>(x_1405.z, x_1405.z, x_1405.z)) + vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
        let x_1411 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1410.x, x_1410.y, x_1410.z, x_1411.w);
        let x_1413 : vec4<f32> = u_xlat12;
        let x_1415 : i32 = u_xlati39;
        let x_1418 : i32 = u_xlati39;
        let x_1422 : vec4<f32> = x_1349.x_AdditionalLightsWorldToLights[((x_1415 + 3i) / 4i)][((x_1418 + 3i) % 4i)];
        let x_1424 : vec3<f32> = (vec3<f32>(x_1413.x, x_1413.y, x_1413.z) + vec3<f32>(x_1422.x, x_1422.y, x_1422.w));
        let x_1425 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
        let x_1428 : vec4<f32> = u_xlat12;
        let x_1430 : vec4<f32> = u_xlat12;
        let x_1432 : vec2<f32> = (vec2<f32>(x_1428.x, x_1428.y) / vec2<f32>(x_1430.z, x_1430.z));
        let x_1433 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1432.x, x_1433.y, x_1432.y);
        let x_1435 : vec3<f32> = u_xlat25;
        let x_1438 : vec2<f32> = ((vec2<f32>(x_1435.x, x_1435.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1439 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1438.x, x_1439.y, x_1438.y);
        let x_1441 : vec3<f32> = u_xlat25;
        let x_1445 : vec2<f32> = clamp(vec2<f32>(x_1441.x, x_1441.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1446 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1445.x, x_1446.y, x_1445.y);
        let x_1448 : u32 = u_xlatu49;
        let x_1451 : vec4<f32> = x_1349.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1448)];
        let x_1453 : vec3<f32> = u_xlat25;
        let x_1456 : u32 = u_xlatu49;
        let x_1459 : vec4<f32> = x_1349.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1456)];
        let x_1461 : vec2<f32> = ((vec2<f32>(x_1451.x, x_1451.y) * vec2<f32>(x_1453.x, x_1453.z)) + vec2<f32>(x_1459.z, x_1459.w));
        let x_1462 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1461.x, x_1462.y, x_1461.y);
      } else {
        let x_1466 : i32 = u_xlati11;
        u_xlatb11 = (x_1466 == 1i);
        let x_1468 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_1468);
        let x_1470 : i32 = u_xlati11;
        if ((x_1470 != 0i)) {
          let x_1474 : vec3<f32> = vs_INTERP0;
          let x_1476 : i32 = u_xlati39;
          let x_1479 : i32 = u_xlati39;
          let x_1483 : vec4<f32> = x_1349.x_AdditionalLightsWorldToLights[((x_1476 + 1i) / 4i)][((x_1479 + 1i) % 4i)];
          let x_1485 : vec2<f32> = (vec2<f32>(x_1474.y, x_1474.y) * vec2<f32>(x_1483.x, x_1483.y));
          let x_1486 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1485.x, x_1485.y, x_1486.z, x_1486.w);
          let x_1488 : i32 = u_xlati39;
          let x_1490 : i32 = u_xlati39;
          let x_1493 : vec4<f32> = x_1349.x_AdditionalLightsWorldToLights[(x_1488 / 4i)][(x_1490 % 4i)];
          let x_1495 : vec3<f32> = vs_INTERP0;
          let x_1498 : vec4<f32> = u_xlat12;
          let x_1500 : vec2<f32> = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1495.x, x_1495.x)) + vec2<f32>(x_1498.x, x_1498.y));
          let x_1501 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1500.x, x_1500.y, x_1501.z, x_1501.w);
          let x_1503 : i32 = u_xlati39;
          let x_1506 : i32 = u_xlati39;
          let x_1510 : vec4<f32> = x_1349.x_AdditionalLightsWorldToLights[((x_1503 + 2i) / 4i)][((x_1506 + 2i) % 4i)];
          let x_1512 : vec3<f32> = vs_INTERP0;
          let x_1515 : vec4<f32> = u_xlat12;
          let x_1517 : vec2<f32> = ((vec2<f32>(x_1510.x, x_1510.y) * vec2<f32>(x_1512.z, x_1512.z)) + vec2<f32>(x_1515.x, x_1515.y));
          let x_1518 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1517.x, x_1517.y, x_1518.z, x_1518.w);
          let x_1520 : vec4<f32> = u_xlat12;
          let x_1522 : i32 = u_xlati39;
          let x_1525 : i32 = u_xlati39;
          let x_1529 : vec4<f32> = x_1349.x_AdditionalLightsWorldToLights[((x_1522 + 3i) / 4i)][((x_1525 + 3i) % 4i)];
          let x_1531 : vec2<f32> = (vec2<f32>(x_1520.x, x_1520.y) + vec2<f32>(x_1529.x, x_1529.y));
          let x_1532 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1531.x, x_1531.y, x_1532.z, x_1532.w);
          let x_1534 : vec4<f32> = u_xlat12;
          let x_1537 : vec2<f32> = ((vec2<f32>(x_1534.x, x_1534.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1538 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1537.x, x_1537.y, x_1538.z, x_1538.w);
          let x_1540 : vec4<f32> = u_xlat12;
          let x_1542 : vec2<f32> = fract(vec2<f32>(x_1540.x, x_1540.y));
          let x_1543 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1542.x, x_1542.y, x_1543.z, x_1543.w);
          let x_1545 : u32 = u_xlatu49;
          let x_1548 : vec4<f32> = x_1349.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1545)];
          let x_1550 : vec4<f32> = u_xlat12;
          let x_1553 : u32 = u_xlatu49;
          let x_1556 : vec4<f32> = x_1349.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1553)];
          let x_1558 : vec2<f32> = ((vec2<f32>(x_1548.x, x_1548.y) * vec2<f32>(x_1550.x, x_1550.y)) + vec2<f32>(x_1556.z, x_1556.w));
          let x_1559 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1558.x, x_1559.y, x_1558.y);
        } else {
          let x_1562 : vec3<f32> = vs_INTERP0;
          let x_1564 : i32 = u_xlati39;
          let x_1567 : i32 = u_xlati39;
          let x_1571 : vec4<f32> = x_1349.x_AdditionalLightsWorldToLights[((x_1564 + 1i) / 4i)][((x_1567 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1562.y, x_1562.y, x_1562.y, x_1562.y) * x_1571);
          let x_1573 : i32 = u_xlati39;
          let x_1575 : i32 = u_xlati39;
          let x_1578 : vec4<f32> = x_1349.x_AdditionalLightsWorldToLights[(x_1573 / 4i)][(x_1575 % 4i)];
          let x_1579 : vec3<f32> = vs_INTERP0;
          let x_1582 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1578 * vec4<f32>(x_1579.x, x_1579.x, x_1579.x, x_1579.x)) + x_1582);
          let x_1584 : i32 = u_xlati39;
          let x_1587 : i32 = u_xlati39;
          let x_1591 : vec4<f32> = x_1349.x_AdditionalLightsWorldToLights[((x_1584 + 2i) / 4i)][((x_1587 + 2i) % 4i)];
          let x_1592 : vec3<f32> = vs_INTERP0;
          let x_1595 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1591 * vec4<f32>(x_1592.z, x_1592.z, x_1592.z, x_1592.z)) + x_1595);
          let x_1597 : vec4<f32> = u_xlat12;
          let x_1598 : i32 = u_xlati39;
          let x_1601 : i32 = u_xlati39;
          let x_1605 : vec4<f32> = x_1349.x_AdditionalLightsWorldToLights[((x_1598 + 3i) / 4i)][((x_1601 + 3i) % 4i)];
          u_xlat12 = (x_1597 + x_1605);
          let x_1607 : vec4<f32> = u_xlat12;
          let x_1609 : vec4<f32> = u_xlat12;
          let x_1611 : vec3<f32> = (vec3<f32>(x_1607.x, x_1607.y, x_1607.z) / vec3<f32>(x_1609.w, x_1609.w, x_1609.w));
          let x_1612 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
          let x_1614 : vec4<f32> = u_xlat12;
          let x_1616 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_1614.x, x_1614.y, x_1614.z), vec3<f32>(x_1616.x, x_1616.y, x_1616.z));
          let x_1621 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_1621);
          let x_1624 : vec4<f32> = u_xlat11;
          let x_1626 : vec4<f32> = u_xlat12;
          let x_1628 : vec3<f32> = (vec3<f32>(x_1624.x, x_1624.x, x_1624.x) * vec3<f32>(x_1626.x, x_1626.y, x_1626.z));
          let x_1629 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
          let x_1631 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_1631.x, x_1631.y, x_1631.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1638 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_1638, 0.000001f);
          let x_1643 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_1643);
          let x_1647 : vec4<f32> = u_xlat11;
          let x_1649 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1647.x, x_1647.x, x_1647.x) * vec3<f32>(x_1649.z, x_1649.x, x_1649.y));
          let x_1653 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1653);
          let x_1657 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1657, 0.0f, 1.0f);
          let x_1661 : vec3<f32> = u_xlat13;
          let x_1664 : vec4<bool> = (vec4<f32>(x_1661.y, x_1661.z, x_1661.y, x_1661.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb40 = vec2<bool>(x_1664.x, x_1664.y);
          let x_1669 : bool = u_xlatb40.x;
          if (x_1669) {
            let x_1674 : f32 = u_xlat13.x;
            x_1670 = x_1674;
          } else {
            let x_1677 : f32 = u_xlat13.x;
            x_1670 = -(x_1677);
          }
          let x_1679 : f32 = x_1670;
          u_xlat40.x = x_1679;
          let x_1682 : bool = u_xlatb40.y;
          if (x_1682) {
            let x_1687 : f32 = u_xlat13.x;
            x_1683 = x_1687;
          } else {
            let x_1690 : f32 = u_xlat13.x;
            x_1683 = -(x_1690);
          }
          let x_1692 : f32 = x_1683;
          u_xlat40.y = x_1692;
          let x_1694 : vec4<f32> = u_xlat12;
          let x_1696 : vec4<f32> = u_xlat11;
          let x_1699 : vec2<f32> = u_xlat40;
          let x_1700 : vec2<f32> = ((vec2<f32>(x_1694.x, x_1694.y) * vec2<f32>(x_1696.x, x_1696.x)) + x_1699);
          let x_1701 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1700.x, x_1701.y, x_1700.y, x_1701.w);
          let x_1703 : vec4<f32> = u_xlat11;
          let x_1706 : vec2<f32> = ((vec2<f32>(x_1703.x, x_1703.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1707 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1706.x, x_1707.y, x_1706.y, x_1707.w);
          let x_1709 : vec4<f32> = u_xlat11;
          let x_1713 : vec2<f32> = clamp(vec2<f32>(x_1709.x, x_1709.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1714 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1713.x, x_1714.y, x_1713.y, x_1714.w);
          let x_1716 : u32 = u_xlatu49;
          let x_1719 : vec4<f32> = x_1349.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1716)];
          let x_1721 : vec4<f32> = u_xlat11;
          let x_1724 : u32 = u_xlatu49;
          let x_1727 : vec4<f32> = x_1349.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1724)];
          let x_1729 : vec2<f32> = ((vec2<f32>(x_1719.x, x_1719.y) * vec2<f32>(x_1721.x, x_1721.z)) + vec2<f32>(x_1727.z, x_1727.w));
          let x_1730 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1729.x, x_1730.y, x_1729.y);
        }
      }
      let x_1737 : vec3<f32> = u_xlat25;
      let x_1740 : f32 = x_45.x_GlobalMipBias.x;
      let x_1741 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1737.x, x_1737.z), x_1740);
      u_xlat11 = x_1741;
      let x_1744 : bool = u_xlatb3.w;
      if (x_1744) {
        let x_1749 : f32 = u_xlat11.w;
        x_1745 = x_1749;
      } else {
        let x_1752 : f32 = u_xlat11.x;
        x_1745 = x_1752;
      }
      let x_1753 : f32 = x_1745;
      u_xlat53 = x_1753;
      let x_1755 : bool = u_xlatb3.x;
      if (x_1755) {
        let x_1759 : vec4<f32> = u_xlat11;
        x_1756 = vec3<f32>(x_1759.x, x_1759.y, x_1759.z);
      } else {
        let x_1762 : f32 = u_xlat53;
        x_1756 = vec3<f32>(x_1762, x_1762, x_1762);
      }
      let x_1764 : vec3<f32> = x_1756;
      let x_1765 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1771 : vec4<f32> = u_xlat11;
    let x_1773 : u32 = u_xlatu49;
    let x_1776 : vec4<f32> = x_1235.x_AdditionalLightsColor[bitcast<i32>(x_1773)];
    let x_1778 : vec3<f32> = (vec3<f32>(x_1771.x, x_1771.y, x_1771.z) * vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
    let x_1779 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1779.w);
    let x_1781 : f32 = u_xlat48;
    let x_1783 : vec4<f32> = u_xlat11;
    let x_1785 : vec3<f32> = (vec3<f32>(x_1781, x_1781, x_1781) * vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
    let x_1786 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
    let x_1788 : vec4<f32> = u_xlat1;
    let x_1790 : vec3<f32> = u_xlat24;
    u_xlat49 = dot(vec3<f32>(x_1788.x, x_1788.y, x_1788.w), x_1790);
    let x_1792 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1792, 0.0f, 1.0f);
    let x_1794 : f32 = u_xlat49;
    let x_1795 : f32 = u_xlat50;
    u_xlat49 = (x_1794 * x_1795);
    let x_1797 : f32 = u_xlat49;
    let x_1799 : vec4<f32> = u_xlat11;
    let x_1801 : vec3<f32> = (vec3<f32>(x_1797, x_1797, x_1797) * vec3<f32>(x_1799.x, x_1799.y, x_1799.z));
    let x_1802 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1802.w);
    let x_1804 : vec3<f32> = u_xlat23;
    let x_1805 : f32 = u_xlat10;
    let x_1808 : vec3<f32> = u_xlat4;
    u_xlat23 = ((x_1804 * vec3<f32>(x_1805, x_1805, x_1805)) + x_1808);
    let x_1810 : vec3<f32> = u_xlat23;
    let x_1811 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(x_1810, x_1811);
    let x_1813 : f32 = u_xlat49;
    u_xlat49 = max(x_1813, 1.17549435e-37f);
    let x_1815 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1815);
    let x_1817 : f32 = u_xlat49;
    let x_1819 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1817, x_1817, x_1817) * x_1819);
    let x_1821 : vec4<f32> = u_xlat1;
    let x_1823 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(vec3<f32>(x_1821.x, x_1821.y, x_1821.w), x_1823);
    let x_1825 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1825, 0.0f, 1.0f);
    let x_1827 : vec3<f32> = u_xlat24;
    let x_1828 : vec3<f32> = u_xlat23;
    u_xlat50 = dot(x_1827, x_1828);
    let x_1830 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1830, 0.0f, 1.0f);
    let x_1832 : f32 = u_xlat49;
    let x_1833 : f32 = u_xlat49;
    u_xlat49 = (x_1832 * x_1833);
    let x_1835 : f32 = u_xlat49;
    let x_1837 : f32 = u_xlat9.x;
    u_xlat49 = ((x_1835 * x_1837) + 1.000010014f);
    let x_1840 : f32 = u_xlat50;
    let x_1841 : f32 = u_xlat50;
    u_xlat50 = (x_1840 * x_1841);
    let x_1843 : f32 = u_xlat49;
    let x_1844 : f32 = u_xlat49;
    u_xlat49 = (x_1843 * x_1844);
    let x_1846 : f32 = u_xlat50;
    u_xlat50 = max(x_1846, 0.100000001f);
    let x_1848 : f32 = u_xlat49;
    let x_1849 : f32 = u_xlat50;
    u_xlat49 = (x_1848 * x_1849);
    let x_1851 : f32 = u_xlat46;
    let x_1852 : f32 = u_xlat49;
    u_xlat49 = (x_1851 * x_1852);
    let x_1854 : f32 = u_xlat17;
    let x_1855 : f32 = u_xlat49;
    u_xlat49 = (x_1854 / x_1855);
    let x_1857 : vec3<f32> = u_xlat0;
    let x_1858 : f32 = u_xlat49;
    let x_1861 : vec3<f32> = u_xlat8;
    u_xlat23 = ((x_1857 * vec3<f32>(x_1858, x_1858, x_1858)) + x_1861);
    let x_1863 : vec3<f32> = u_xlat23;
    let x_1864 : vec4<f32> = u_xlat11;
    let x_1867 : vec4<f32> = u_xlat7;
    let x_1869 : vec3<f32> = ((x_1863 * vec3<f32>(x_1864.x, x_1864.y, x_1864.z)) + vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
    let x_1870 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);

    continuing {
      let x_1872 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1872 + bitcast<u32>(1i));
    }
  }
  let x_1874 : vec4<f32> = u_xlat6;
  let x_1876 : f32 = u_xlat31;
  let x_1879 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1874.x, x_1874.y, x_1874.z) * vec3<f32>(x_1876, x_1876, x_1876)) + vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
  let x_1882 : vec4<f32> = u_xlat7;
  let x_1884 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1882.x, x_1882.y, x_1882.z) + x_1884);
  let x_1886 : vec4<f32> = u_xlat2;
  let x_1888 : f32 = u_xlat29;
  let x_1891 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1886.x, x_1886.y, x_1886.z) * vec3<f32>(x_1888, x_1888, x_1888)) + x_1891);
  let x_1893 : f32 = u_xlat42;
  let x_1894 : f32 = u_xlat42;
  u_xlat42 = (x_1893 * -(x_1894));
  let x_1897 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1897);
  let x_1899 : vec3<f32> = u_xlat0;
  let x_1902 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1899 + -(vec3<f32>(x_1902.x, x_1902.y, x_1902.z)));
  let x_1908 : f32 = u_xlat42;
  let x_1910 : vec3<f32> = u_xlat0;
  let x_1913 : vec4<f32> = x_45.unity_FogColor;
  let x_1915 : vec3<f32> = ((vec3<f32>(x_1908, x_1908, x_1908) * x_1910) + vec3<f32>(x_1913.x, x_1913.y, x_1913.z));
  let x_1916 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
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

