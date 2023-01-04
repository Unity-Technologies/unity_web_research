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

@group(1) @binding(1) var<uniform> x_1196 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1310 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_1631 : f32;
  var x_1644 : f32;
  var u_xlat53 : f32;
  var x_1706 : f32;
  var x_1717 : vec3<f32>;
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
    let x_1161 : u32 = u_xlatu49;
    let x_1164 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_1161)];
    let x_1174 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1179 : vec4<u32> = indexable[x_1174];
    u_xlat49 = dot(x_1164, bitcast<vec4<f32>>(x_1179));
    let x_1182 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_1182));
    let x_1185 : vec3<f32> = vs_INTERP0;
    let x_1197 : u32 = u_xlatu49;
    let x_1200 : vec4<f32> = x_1196.x_AdditionalLightsPosition[bitcast<i32>(x_1197)];
    let x_1203 : u32 = u_xlatu49;
    let x_1206 : vec4<f32> = x_1196.x_AdditionalLightsPosition[bitcast<i32>(x_1203)];
    u_xlat23 = ((-(x_1185) * vec3<f32>(x_1200.w, x_1200.w, x_1200.w)) + vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
    let x_1209 : vec3<f32> = u_xlat23;
    let x_1210 : vec3<f32> = u_xlat23;
    u_xlat50 = dot(x_1209, x_1210);
    let x_1212 : f32 = u_xlat50;
    u_xlat50 = max(x_1212, 6.10351562e-05f);
    let x_1216 : f32 = u_xlat50;
    u_xlat10 = inverseSqrt(x_1216);
    let x_1219 : vec3<f32> = u_xlat23;
    let x_1220 : f32 = u_xlat10;
    u_xlat24 = (x_1219 * vec3<f32>(x_1220, x_1220, x_1220));
    let x_1224 : f32 = u_xlat50;
    u_xlat11.x = (1.0f / x_1224);
    let x_1227 : f32 = u_xlat50;
    let x_1228 : u32 = u_xlatu49;
    let x_1231 : f32 = x_1196.x_AdditionalLightsAttenuation[bitcast<i32>(x_1228)].x;
    u_xlat50 = (x_1227 * x_1231);
    let x_1233 : f32 = u_xlat50;
    let x_1235 : f32 = u_xlat50;
    u_xlat50 = ((-(x_1233) * x_1235) + 1.0f);
    let x_1238 : f32 = u_xlat50;
    u_xlat50 = max(x_1238, 0.0f);
    let x_1240 : f32 = u_xlat50;
    let x_1241 : f32 = u_xlat50;
    u_xlat50 = (x_1240 * x_1241);
    let x_1243 : f32 = u_xlat50;
    let x_1245 : f32 = u_xlat11.x;
    u_xlat50 = (x_1243 * x_1245);
    let x_1247 : u32 = u_xlatu49;
    let x_1250 : vec4<f32> = x_1196.x_AdditionalLightsSpotDir[bitcast<i32>(x_1247)];
    let x_1252 : vec3<f32> = u_xlat24;
    u_xlat11.x = dot(vec3<f32>(x_1250.x, x_1250.y, x_1250.z), x_1252);
    let x_1256 : f32 = u_xlat11.x;
    let x_1257 : u32 = u_xlatu49;
    let x_1260 : f32 = x_1196.x_AdditionalLightsAttenuation[bitcast<i32>(x_1257)].z;
    let x_1262 : u32 = u_xlatu49;
    let x_1265 : f32 = x_1196.x_AdditionalLightsAttenuation[bitcast<i32>(x_1262)].w;
    u_xlat11.x = ((x_1256 * x_1260) + x_1265);
    let x_1269 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_1269, 0.0f, 1.0f);
    let x_1273 : f32 = u_xlat11.x;
    let x_1275 : f32 = u_xlat11.x;
    u_xlat11.x = (x_1273 * x_1275);
    let x_1278 : f32 = u_xlat50;
    let x_1280 : f32 = u_xlat11.x;
    u_xlat50 = (x_1278 * x_1280);
    let x_1283 : u32 = u_xlatu49;
    u_xlatu11 = (x_1283 >> 5u);
    let x_1286 : u32 = u_xlatu49;
    u_xlati25 = (1i << bitcast<u32>((bitcast<i32>(x_1286) & 31i)));
    let x_1292 : i32 = u_xlati25;
    let x_1294 : u32 = u_xlatu11;
    let x_1297 : f32 = x_738.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1294)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_1292) & bitcast<u32>(x_1297)));
    let x_1301 : i32 = u_xlati11;
    if ((x_1301 != 0i)) {
      let x_1311 : u32 = u_xlatu49;
      let x_1314 : f32 = x_1310.x_AdditionalLightsLightTypes[bitcast<i32>(x_1311)].el;
      u_xlati11 = i32(x_1314);
      let x_1316 : i32 = u_xlati11;
      u_xlati25 = select(1i, 0i, (x_1316 != 0i));
      let x_1320 : u32 = u_xlatu49;
      u_xlati39 = (bitcast<i32>(x_1320) << bitcast<u32>(2i));
      let x_1323 : i32 = u_xlati25;
      if ((x_1323 != 0i)) {
        let x_1328 : vec3<f32> = vs_INTERP0;
        let x_1330 : i32 = u_xlati39;
        let x_1333 : i32 = u_xlati39;
        let x_1337 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1330 + 1i) / 4i)][((x_1333 + 1i) % 4i)];
        let x_1339 : vec3<f32> = (vec3<f32>(x_1328.y, x_1328.y, x_1328.y) * vec3<f32>(x_1337.x, x_1337.y, x_1337.w));
        let x_1340 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
        let x_1342 : i32 = u_xlati39;
        let x_1344 : i32 = u_xlati39;
        let x_1347 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[(x_1342 / 4i)][(x_1344 % 4i)];
        let x_1349 : vec3<f32> = vs_INTERP0;
        let x_1352 : vec4<f32> = u_xlat12;
        let x_1354 : vec3<f32> = ((vec3<f32>(x_1347.x, x_1347.y, x_1347.w) * vec3<f32>(x_1349.x, x_1349.x, x_1349.x)) + vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
        let x_1355 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
        let x_1357 : i32 = u_xlati39;
        let x_1360 : i32 = u_xlati39;
        let x_1364 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1357 + 2i) / 4i)][((x_1360 + 2i) % 4i)];
        let x_1366 : vec3<f32> = vs_INTERP0;
        let x_1369 : vec4<f32> = u_xlat12;
        let x_1371 : vec3<f32> = ((vec3<f32>(x_1364.x, x_1364.y, x_1364.w) * vec3<f32>(x_1366.z, x_1366.z, x_1366.z)) + vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
        let x_1372 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
        let x_1374 : vec4<f32> = u_xlat12;
        let x_1376 : i32 = u_xlati39;
        let x_1379 : i32 = u_xlati39;
        let x_1383 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1376 + 3i) / 4i)][((x_1379 + 3i) % 4i)];
        let x_1385 : vec3<f32> = (vec3<f32>(x_1374.x, x_1374.y, x_1374.z) + vec3<f32>(x_1383.x, x_1383.y, x_1383.w));
        let x_1386 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
        let x_1389 : vec4<f32> = u_xlat12;
        let x_1391 : vec4<f32> = u_xlat12;
        let x_1393 : vec2<f32> = (vec2<f32>(x_1389.x, x_1389.y) / vec2<f32>(x_1391.z, x_1391.z));
        let x_1394 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1393.x, x_1394.y, x_1393.y);
        let x_1396 : vec3<f32> = u_xlat25;
        let x_1399 : vec2<f32> = ((vec2<f32>(x_1396.x, x_1396.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1400 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1399.x, x_1400.y, x_1399.y);
        let x_1402 : vec3<f32> = u_xlat25;
        let x_1406 : vec2<f32> = clamp(vec2<f32>(x_1402.x, x_1402.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1407 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1406.x, x_1407.y, x_1406.y);
        let x_1409 : u32 = u_xlatu49;
        let x_1412 : vec4<f32> = x_1310.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1409)];
        let x_1414 : vec3<f32> = u_xlat25;
        let x_1417 : u32 = u_xlatu49;
        let x_1420 : vec4<f32> = x_1310.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1417)];
        let x_1422 : vec2<f32> = ((vec2<f32>(x_1412.x, x_1412.y) * vec2<f32>(x_1414.x, x_1414.z)) + vec2<f32>(x_1420.z, x_1420.w));
        let x_1423 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1422.x, x_1423.y, x_1422.y);
      } else {
        let x_1427 : i32 = u_xlati11;
        u_xlatb11 = (x_1427 == 1i);
        let x_1429 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_1429);
        let x_1431 : i32 = u_xlati11;
        if ((x_1431 != 0i)) {
          let x_1435 : vec3<f32> = vs_INTERP0;
          let x_1437 : i32 = u_xlati39;
          let x_1440 : i32 = u_xlati39;
          let x_1444 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1437 + 1i) / 4i)][((x_1440 + 1i) % 4i)];
          let x_1446 : vec2<f32> = (vec2<f32>(x_1435.y, x_1435.y) * vec2<f32>(x_1444.x, x_1444.y));
          let x_1447 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1446.x, x_1446.y, x_1447.z, x_1447.w);
          let x_1449 : i32 = u_xlati39;
          let x_1451 : i32 = u_xlati39;
          let x_1454 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[(x_1449 / 4i)][(x_1451 % 4i)];
          let x_1456 : vec3<f32> = vs_INTERP0;
          let x_1459 : vec4<f32> = u_xlat12;
          let x_1461 : vec2<f32> = ((vec2<f32>(x_1454.x, x_1454.y) * vec2<f32>(x_1456.x, x_1456.x)) + vec2<f32>(x_1459.x, x_1459.y));
          let x_1462 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1461.x, x_1461.y, x_1462.z, x_1462.w);
          let x_1464 : i32 = u_xlati39;
          let x_1467 : i32 = u_xlati39;
          let x_1471 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1464 + 2i) / 4i)][((x_1467 + 2i) % 4i)];
          let x_1473 : vec3<f32> = vs_INTERP0;
          let x_1476 : vec4<f32> = u_xlat12;
          let x_1478 : vec2<f32> = ((vec2<f32>(x_1471.x, x_1471.y) * vec2<f32>(x_1473.z, x_1473.z)) + vec2<f32>(x_1476.x, x_1476.y));
          let x_1479 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
          let x_1481 : vec4<f32> = u_xlat12;
          let x_1483 : i32 = u_xlati39;
          let x_1486 : i32 = u_xlati39;
          let x_1490 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1483 + 3i) / 4i)][((x_1486 + 3i) % 4i)];
          let x_1492 : vec2<f32> = (vec2<f32>(x_1481.x, x_1481.y) + vec2<f32>(x_1490.x, x_1490.y));
          let x_1493 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1492.x, x_1492.y, x_1493.z, x_1493.w);
          let x_1495 : vec4<f32> = u_xlat12;
          let x_1498 : vec2<f32> = ((vec2<f32>(x_1495.x, x_1495.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1499 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1498.x, x_1498.y, x_1499.z, x_1499.w);
          let x_1501 : vec4<f32> = u_xlat12;
          let x_1503 : vec2<f32> = fract(vec2<f32>(x_1501.x, x_1501.y));
          let x_1504 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1503.x, x_1503.y, x_1504.z, x_1504.w);
          let x_1506 : u32 = u_xlatu49;
          let x_1509 : vec4<f32> = x_1310.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1506)];
          let x_1511 : vec4<f32> = u_xlat12;
          let x_1514 : u32 = u_xlatu49;
          let x_1517 : vec4<f32> = x_1310.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1514)];
          let x_1519 : vec2<f32> = ((vec2<f32>(x_1509.x, x_1509.y) * vec2<f32>(x_1511.x, x_1511.y)) + vec2<f32>(x_1517.z, x_1517.w));
          let x_1520 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1519.x, x_1520.y, x_1519.y);
        } else {
          let x_1523 : vec3<f32> = vs_INTERP0;
          let x_1525 : i32 = u_xlati39;
          let x_1528 : i32 = u_xlati39;
          let x_1532 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1525 + 1i) / 4i)][((x_1528 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1523.y, x_1523.y, x_1523.y, x_1523.y) * x_1532);
          let x_1534 : i32 = u_xlati39;
          let x_1536 : i32 = u_xlati39;
          let x_1539 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[(x_1534 / 4i)][(x_1536 % 4i)];
          let x_1540 : vec3<f32> = vs_INTERP0;
          let x_1543 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1539 * vec4<f32>(x_1540.x, x_1540.x, x_1540.x, x_1540.x)) + x_1543);
          let x_1545 : i32 = u_xlati39;
          let x_1548 : i32 = u_xlati39;
          let x_1552 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1545 + 2i) / 4i)][((x_1548 + 2i) % 4i)];
          let x_1553 : vec3<f32> = vs_INTERP0;
          let x_1556 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1552 * vec4<f32>(x_1553.z, x_1553.z, x_1553.z, x_1553.z)) + x_1556);
          let x_1558 : vec4<f32> = u_xlat12;
          let x_1559 : i32 = u_xlati39;
          let x_1562 : i32 = u_xlati39;
          let x_1566 : vec4<f32> = x_1310.x_AdditionalLightsWorldToLights[((x_1559 + 3i) / 4i)][((x_1562 + 3i) % 4i)];
          u_xlat12 = (x_1558 + x_1566);
          let x_1568 : vec4<f32> = u_xlat12;
          let x_1570 : vec4<f32> = u_xlat12;
          let x_1572 : vec3<f32> = (vec3<f32>(x_1568.x, x_1568.y, x_1568.z) / vec3<f32>(x_1570.w, x_1570.w, x_1570.w));
          let x_1573 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1572.x, x_1572.y, x_1572.z, x_1573.w);
          let x_1575 : vec4<f32> = u_xlat12;
          let x_1577 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_1575.x, x_1575.y, x_1575.z), vec3<f32>(x_1577.x, x_1577.y, x_1577.z));
          let x_1582 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_1582);
          let x_1585 : vec4<f32> = u_xlat11;
          let x_1587 : vec4<f32> = u_xlat12;
          let x_1589 : vec3<f32> = (vec3<f32>(x_1585.x, x_1585.x, x_1585.x) * vec3<f32>(x_1587.x, x_1587.y, x_1587.z));
          let x_1590 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
          let x_1592 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_1592.x, x_1592.y, x_1592.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1599 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_1599, 0.000001f);
          let x_1604 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_1604);
          let x_1608 : vec4<f32> = u_xlat11;
          let x_1610 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1608.x, x_1608.x, x_1608.x) * vec3<f32>(x_1610.z, x_1610.x, x_1610.y));
          let x_1614 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1614);
          let x_1618 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1618, 0.0f, 1.0f);
          let x_1622 : vec3<f32> = u_xlat13;
          let x_1625 : vec4<bool> = (vec4<f32>(x_1622.y, x_1622.z, x_1622.y, x_1622.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb40 = vec2<bool>(x_1625.x, x_1625.y);
          let x_1630 : bool = u_xlatb40.x;
          if (x_1630) {
            let x_1635 : f32 = u_xlat13.x;
            x_1631 = x_1635;
          } else {
            let x_1638 : f32 = u_xlat13.x;
            x_1631 = -(x_1638);
          }
          let x_1640 : f32 = x_1631;
          u_xlat40.x = x_1640;
          let x_1643 : bool = u_xlatb40.y;
          if (x_1643) {
            let x_1648 : f32 = u_xlat13.x;
            x_1644 = x_1648;
          } else {
            let x_1651 : f32 = u_xlat13.x;
            x_1644 = -(x_1651);
          }
          let x_1653 : f32 = x_1644;
          u_xlat40.y = x_1653;
          let x_1655 : vec4<f32> = u_xlat12;
          let x_1657 : vec4<f32> = u_xlat11;
          let x_1660 : vec2<f32> = u_xlat40;
          let x_1661 : vec2<f32> = ((vec2<f32>(x_1655.x, x_1655.y) * vec2<f32>(x_1657.x, x_1657.x)) + x_1660);
          let x_1662 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1661.x, x_1662.y, x_1661.y, x_1662.w);
          let x_1664 : vec4<f32> = u_xlat11;
          let x_1667 : vec2<f32> = ((vec2<f32>(x_1664.x, x_1664.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1668 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1667.x, x_1668.y, x_1667.y, x_1668.w);
          let x_1670 : vec4<f32> = u_xlat11;
          let x_1674 : vec2<f32> = clamp(vec2<f32>(x_1670.x, x_1670.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1675 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1674.x, x_1675.y, x_1674.y, x_1675.w);
          let x_1677 : u32 = u_xlatu49;
          let x_1680 : vec4<f32> = x_1310.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1677)];
          let x_1682 : vec4<f32> = u_xlat11;
          let x_1685 : u32 = u_xlatu49;
          let x_1688 : vec4<f32> = x_1310.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1685)];
          let x_1690 : vec2<f32> = ((vec2<f32>(x_1680.x, x_1680.y) * vec2<f32>(x_1682.x, x_1682.z)) + vec2<f32>(x_1688.z, x_1688.w));
          let x_1691 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1690.x, x_1691.y, x_1690.y);
        }
      }
      let x_1698 : vec3<f32> = u_xlat25;
      let x_1701 : f32 = x_45.x_GlobalMipBias.x;
      let x_1702 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1698.x, x_1698.z), x_1701);
      u_xlat11 = x_1702;
      let x_1705 : bool = u_xlatb3.w;
      if (x_1705) {
        let x_1710 : f32 = u_xlat11.w;
        x_1706 = x_1710;
      } else {
        let x_1713 : f32 = u_xlat11.x;
        x_1706 = x_1713;
      }
      let x_1714 : f32 = x_1706;
      u_xlat53 = x_1714;
      let x_1716 : bool = u_xlatb3.x;
      if (x_1716) {
        let x_1720 : vec4<f32> = u_xlat11;
        x_1717 = vec3<f32>(x_1720.x, x_1720.y, x_1720.z);
      } else {
        let x_1723 : f32 = u_xlat53;
        x_1717 = vec3<f32>(x_1723, x_1723, x_1723);
      }
      let x_1725 : vec3<f32> = x_1717;
      let x_1726 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1726.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1732 : vec4<f32> = u_xlat11;
    let x_1734 : u32 = u_xlatu49;
    let x_1737 : vec4<f32> = x_1196.x_AdditionalLightsColor[bitcast<i32>(x_1734)];
    let x_1739 : vec3<f32> = (vec3<f32>(x_1732.x, x_1732.y, x_1732.z) * vec3<f32>(x_1737.x, x_1737.y, x_1737.z));
    let x_1740 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
    let x_1742 : f32 = u_xlat48;
    let x_1744 : vec4<f32> = u_xlat11;
    let x_1746 : vec3<f32> = (vec3<f32>(x_1742, x_1742, x_1742) * vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
    let x_1747 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1747.w);
    let x_1749 : vec4<f32> = u_xlat1;
    let x_1751 : vec3<f32> = u_xlat24;
    u_xlat49 = dot(vec3<f32>(x_1749.x, x_1749.y, x_1749.w), x_1751);
    let x_1753 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1753, 0.0f, 1.0f);
    let x_1755 : f32 = u_xlat49;
    let x_1756 : f32 = u_xlat50;
    u_xlat49 = (x_1755 * x_1756);
    let x_1758 : f32 = u_xlat49;
    let x_1760 : vec4<f32> = u_xlat11;
    let x_1762 : vec3<f32> = (vec3<f32>(x_1758, x_1758, x_1758) * vec3<f32>(x_1760.x, x_1760.y, x_1760.z));
    let x_1763 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1762.x, x_1762.y, x_1762.z, x_1763.w);
    let x_1765 : vec3<f32> = u_xlat23;
    let x_1766 : f32 = u_xlat10;
    let x_1769 : vec3<f32> = u_xlat4;
    u_xlat23 = ((x_1765 * vec3<f32>(x_1766, x_1766, x_1766)) + x_1769);
    let x_1771 : vec3<f32> = u_xlat23;
    let x_1772 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(x_1771, x_1772);
    let x_1774 : f32 = u_xlat49;
    u_xlat49 = max(x_1774, 1.17549435e-37f);
    let x_1776 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1776);
    let x_1778 : f32 = u_xlat49;
    let x_1780 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1778, x_1778, x_1778) * x_1780);
    let x_1782 : vec4<f32> = u_xlat1;
    let x_1784 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(vec3<f32>(x_1782.x, x_1782.y, x_1782.w), x_1784);
    let x_1786 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1786, 0.0f, 1.0f);
    let x_1788 : vec3<f32> = u_xlat24;
    let x_1789 : vec3<f32> = u_xlat23;
    u_xlat50 = dot(x_1788, x_1789);
    let x_1791 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1791, 0.0f, 1.0f);
    let x_1793 : f32 = u_xlat49;
    let x_1794 : f32 = u_xlat49;
    u_xlat49 = (x_1793 * x_1794);
    let x_1796 : f32 = u_xlat49;
    let x_1798 : f32 = u_xlat9.x;
    u_xlat49 = ((x_1796 * x_1798) + 1.000010014f);
    let x_1801 : f32 = u_xlat50;
    let x_1802 : f32 = u_xlat50;
    u_xlat50 = (x_1801 * x_1802);
    let x_1804 : f32 = u_xlat49;
    let x_1805 : f32 = u_xlat49;
    u_xlat49 = (x_1804 * x_1805);
    let x_1807 : f32 = u_xlat50;
    u_xlat50 = max(x_1807, 0.100000001f);
    let x_1809 : f32 = u_xlat49;
    let x_1810 : f32 = u_xlat50;
    u_xlat49 = (x_1809 * x_1810);
    let x_1812 : f32 = u_xlat46;
    let x_1813 : f32 = u_xlat49;
    u_xlat49 = (x_1812 * x_1813);
    let x_1815 : f32 = u_xlat17;
    let x_1816 : f32 = u_xlat49;
    u_xlat49 = (x_1815 / x_1816);
    let x_1818 : vec3<f32> = u_xlat0;
    let x_1819 : f32 = u_xlat49;
    let x_1822 : vec3<f32> = u_xlat8;
    u_xlat23 = ((x_1818 * vec3<f32>(x_1819, x_1819, x_1819)) + x_1822);
    let x_1824 : vec3<f32> = u_xlat23;
    let x_1825 : vec4<f32> = u_xlat11;
    let x_1828 : vec4<f32> = u_xlat7;
    let x_1830 : vec3<f32> = ((x_1824 * vec3<f32>(x_1825.x, x_1825.y, x_1825.z)) + vec3<f32>(x_1828.x, x_1828.y, x_1828.z));
    let x_1831 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1830.x, x_1830.y, x_1830.z, x_1831.w);

    continuing {
      let x_1833 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1833 + bitcast<u32>(1i));
    }
  }
  let x_1835 : vec4<f32> = u_xlat6;
  let x_1837 : f32 = u_xlat31;
  let x_1840 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1835.x, x_1835.y, x_1835.z) * vec3<f32>(x_1837, x_1837, x_1837)) + vec3<f32>(x_1840.x, x_1840.y, x_1840.z));
  let x_1843 : vec4<f32> = u_xlat7;
  let x_1845 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1843.x, x_1843.y, x_1843.z) + x_1845);
  let x_1847 : vec4<f32> = u_xlat2;
  let x_1849 : f32 = u_xlat29;
  let x_1852 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1847.x, x_1847.y, x_1847.z) * vec3<f32>(x_1849, x_1849, x_1849)) + x_1852);
  let x_1854 : f32 = u_xlat42;
  let x_1855 : f32 = u_xlat42;
  u_xlat42 = (x_1854 * -(x_1855));
  let x_1858 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1858);
  let x_1860 : vec3<f32> = u_xlat0;
  let x_1863 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1860 + -(vec3<f32>(x_1863.x, x_1863.y, x_1863.z)));
  let x_1869 : f32 = u_xlat42;
  let x_1871 : vec3<f32> = u_xlat0;
  let x_1874 : vec4<f32> = x_45.unity_FogColor;
  let x_1876 : vec3<f32> = ((vec3<f32>(x_1869, x_1869, x_1869) * x_1871) + vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
  let x_1877 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1877.w);
  let x_1882 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_1884 : f32 = x_120.unity_RenderingLayer.x;
  u_xlatu0 = (x_1882 & bitcast<u32>(x_1884));
  let x_1887 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1887);
  let x_1892 : f32 = u_xlat0.x;
  let x_1895 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1892 * x_1895);
  let x_1900 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1900, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1904 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1904.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

