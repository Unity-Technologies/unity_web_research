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

@group(0) @binding(5) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(7) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(8) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

@group(0) @binding(6) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_561 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_630 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1083 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1197 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat4 : vec4<f32>;
  var u_xlatb42 : bool;
  var u_xlat5 : vec3<f32>;
  var x_289 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat17 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var u_xlat8 : vec4<f32>;
  var x_716 : f32;
  var x_727 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat9 : vec2<f32>;
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
  var x_1517 : f32;
  var x_1530 : f32;
  var u_xlat53 : f32;
  var x_1592 : f32;
  var x_1603 : vec3<f32>;
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
  let x_185 : vec3<f32> = (vec3<f32>(x_181.z, x_181.x, x_181.y) * vec3<f32>(x_183.y, x_183.z, x_183.x));
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec3<f32> = vs_INTERP1;
  let x_190 : vec4<f32> = vs_INTERP2;
  let x_193 : vec4<f32> = u_xlat4;
  let x_196 : vec3<f32> = ((vec3<f32>(x_188.y, x_188.z, x_188.x) * vec3<f32>(x_190.z, x_190.x, x_190.y)) + -(vec3<f32>(x_193.x, x_193.y, x_193.z)));
  let x_197 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : f32 = u_xlat43;
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec3<f32> = (vec3<f32>(x_199, x_199, x_199) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat1;
  let x_208 : vec4<f32> = u_xlat4;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.y, x_206.y, x_206.y) * vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat1;
  let x_215 : vec4<f32> = vs_INTERP2;
  let x_218 : vec4<f32> = u_xlat4;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.x, x_213.x) * vec3<f32>(x_215.x, x_215.y, x_215.z)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_220.z);
  let x_223 : f32 = u_xlat42;
  let x_225 : vec3<f32> = vs_INTERP1;
  let x_227 : vec4<f32> = u_xlat1;
  let x_229 : vec3<f32> = ((vec3<f32>(x_223, x_223, x_223) * x_225) + vec3<f32>(x_227.x, x_227.y, x_227.w));
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_230.z, x_229.z);
  let x_232 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec3<f32>(x_232.x, x_232.y, x_232.w), vec3<f32>(x_234.x, x_234.y, x_234.w));
  let x_237 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_237);
  let x_239 : f32 = u_xlat42;
  let x_241 : vec4<f32> = u_xlat1;
  let x_243 : vec3<f32> = (vec3<f32>(x_239, x_239, x_239) * vec3<f32>(x_241.x, x_241.y, x_241.w));
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_249 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb42 = (x_249 == 0.0f);
  let x_252 : vec3<f32> = vs_INTERP0;
  let x_257 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_258 : vec3<f32> = (-(x_252) + x_257);
  let x_259 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_258.x, x_258.y, x_259.z, x_258.z);
  let x_261 : vec4<f32> = u_xlat1;
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat44 = dot(vec3<f32>(x_261.x, x_261.y, x_261.w), vec3<f32>(x_263.x, x_263.y, x_263.w));
  let x_266 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_266);
  let x_268 : vec4<f32> = u_xlat1;
  let x_270 : f32 = u_xlat44;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.w) * vec3<f32>(x_270, x_270, x_270));
  let x_273 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_272.x, x_272.y, x_273.z, x_272.z);
  let x_278 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_278;
  let x_281 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_281;
  let x_286 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_286;
  let x_288 : bool = u_xlatb42;
  if (x_288) {
    let x_292 : vec4<f32> = u_xlat1;
    x_289 = vec3<f32>(x_292.x, x_292.y, x_292.w);
  } else {
    let x_295 : vec3<f32> = u_xlat5;
    x_289 = x_295;
  }
  let x_296 : vec3<f32> = x_289;
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_296.x, x_296.y, x_297.z, x_296.z);
  let x_300 : f32 = vs_INTERP0.y;
  let x_302 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat42 = (x_300 * x_302);
  let x_305 : f32 = x_45.unity_MatrixV[0i].z;
  let x_307 : f32 = vs_INTERP0.x;
  let x_309 : f32 = u_xlat42;
  u_xlat42 = ((x_305 * x_307) + x_309);
  let x_312 : f32 = x_45.unity_MatrixV[2i].z;
  let x_314 : f32 = vs_INTERP0.z;
  let x_316 : f32 = u_xlat42;
  u_xlat42 = ((x_312 * x_314) + x_316);
  let x_318 : f32 = u_xlat42;
  let x_320 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat42 = (x_318 + x_320);
  let x_322 : f32 = u_xlat42;
  let x_326 : f32 = x_45.x_ProjectionParams.y;
  u_xlat42 = (-(x_322) + -(x_326));
  let x_329 : f32 = u_xlat42;
  u_xlat42 = max(x_329, 0.0f);
  let x_331 : f32 = u_xlat42;
  let x_334 : f32 = x_45.unity_FogParams.x;
  u_xlat42 = (x_331 * x_334);
  u_xlat4.w = 1.0f;
  let x_339 : vec4<f32> = x_120.unity_SHAr;
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_339, x_340);
  let x_345 : vec4<f32> = x_120.unity_SHAg;
  let x_346 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_345, x_346);
  let x_351 : vec4<f32> = x_120.unity_SHAb;
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_351, x_352);
  let x_356 : vec4<f32> = u_xlat4;
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_356.y, x_356.z, x_356.z, x_356.x) * vec4<f32>(x_358.x, x_358.y, x_358.z, x_358.z));
  let x_364 : vec4<f32> = x_120.unity_SHBr;
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_364, x_365);
  let x_370 : vec4<f32> = x_120.unity_SHBg;
  let x_371 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_370, x_371);
  let x_376 : vec4<f32> = x_120.unity_SHBb;
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_376, x_377);
  let x_381 : f32 = u_xlat4.y;
  let x_383 : f32 = u_xlat4.y;
  u_xlat44 = (x_381 * x_383);
  let x_386 : f32 = u_xlat4.x;
  let x_388 : f32 = u_xlat4.x;
  let x_390 : f32 = u_xlat44;
  u_xlat44 = ((x_386 * x_388) + -(x_390));
  let x_395 : vec4<f32> = x_120.unity_SHC;
  let x_397 : f32 = u_xlat44;
  let x_400 : vec3<f32> = u_xlat7;
  let x_401 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397, x_397, x_397)) + x_400);
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec3<f32> = u_xlat5;
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_404 + vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_408, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_413 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_414 : vec2<f32> = vec2<f32>(x_413.x, x_413.y);
  let x_418 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_414.x, x_414.y));
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat6;
  let x_423 : vec4<f32> = hlslcc_FragCoord;
  let x_425 : vec2<f32> = (vec2<f32>(x_421.x, x_421.y) * vec2<f32>(x_423.x, x_423.y));
  let x_426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
  let x_429 : f32 = u_xlat6.y;
  let x_432 : f32 = x_45.x_ScaleBiasRt.x;
  let x_435 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat44 = ((x_429 * x_432) + x_435);
  let x_437 : f32 = u_xlat44;
  u_xlat6.z = (-(x_437) + 1.0f);
  let x_441 : vec3<f32> = u_xlat3;
  let x_442 : vec2<f32> = vec2<f32>(x_441.x, x_441.y);
  let x_443 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_442.x, x_442.y, x_443.z);
  let x_445 : vec3<f32> = u_xlat3;
  let x_449 : vec2<f32> = clamp(vec2<f32>(x_445.x, x_445.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_450 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_449.x, x_449.y, x_450.z);
  let x_453 : f32 = u_xlat3.x;
  u_xlat44 = ((-(x_453) * 0.959999979f) + 0.959999979f);
  let x_459 : f32 = u_xlat44;
  let x_462 : f32 = u_xlat3.y;
  u_xlat45 = (-(x_459) + x_462);
  let x_464 : vec3<f32> = u_xlat0;
  let x_465 : f32 = u_xlat44;
  u_xlat7 = (x_464 * vec3<f32>(x_465, x_465, x_465));
  let x_468 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_468 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_472 : vec3<f32> = u_xlat3;
  let x_474 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_472.x, x_472.x, x_472.x) * x_474) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_480 : f32 = u_xlat3.y;
  u_xlat44 = (-(x_480) + 1.0f);
  let x_483 : f32 = u_xlat44;
  let x_484 : f32 = u_xlat44;
  u_xlat3.x = (x_483 * x_484);
  let x_488 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_488, 0.0078125f);
  let x_494 : f32 = u_xlat3.x;
  let x_496 : f32 = u_xlat3.x;
  u_xlat17 = (x_494 * x_496);
  let x_498 : f32 = u_xlat45;
  u_xlat45 = (x_498 + 1.0f);
  let x_500 : f32 = u_xlat45;
  u_xlat45 = min(x_500, 1.0f);
  let x_504 : f32 = u_xlat3.x;
  u_xlat46 = ((x_504 * 4.0f) + 2.0f);
  let x_514 : vec4<f32> = u_xlat6;
  let x_517 : f32 = x_45.x_GlobalMipBias.x;
  let x_518 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_514.x, x_514.z), x_517);
  u_xlat47 = x_518.x;
  let x_520 : f32 = u_xlat47;
  u_xlat6.x = (x_520 + -1.0f);
  let x_525 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_527 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_525 * x_527) + 1.0f);
  let x_533 : f32 = u_xlat3.z;
  let x_534 : f32 = u_xlat47;
  u_xlat31 = min(x_533, x_534);
  let x_538 : vec4<f32> = vs_INTERP8;
  let x_539 : vec2<f32> = vec2<f32>(x_538.x, x_538.y);
  let x_541 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_539.x, x_539.y, x_541);
  let x_553 : vec3<f32> = txVec0;
  let x_555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_553.xy, x_553.z);
  u_xlat47 = x_555;
  let x_563 : f32 = x_561.x_MainLightShadowParams.x;
  u_xlat20.x = (-(x_563) + 1.0f);
  let x_567 : f32 = u_xlat47;
  let x_569 : f32 = x_561.x_MainLightShadowParams.x;
  let x_572 : f32 = u_xlat20.x;
  u_xlat47 = ((x_567 * x_569) + x_572);
  let x_578 : f32 = vs_INTERP8.z;
  u_xlatb20.x = (0.0f >= x_578);
  let x_583 : f32 = vs_INTERP8.z;
  u_xlatb34 = (x_583 >= 1.0f);
  let x_585 : bool = u_xlatb34;
  let x_587 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_585 | x_587);
  let x_591 : bool = u_xlatb20.x;
  let x_592 : f32 = u_xlat47;
  u_xlat47 = select(x_592, 1.0f, x_591);
  let x_594 : vec3<f32> = vs_INTERP0;
  let x_596 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat20 = (x_594 + -(x_596));
  let x_599 : vec3<f32> = u_xlat20;
  let x_600 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_599, x_600);
  let x_604 : f32 = u_xlat20.x;
  let x_606 : f32 = x_561.x_MainLightShadowParams.z;
  let x_609 : f32 = x_561.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_604 * x_606) + x_609);
  let x_613 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_613, 0.0f, 1.0f);
  let x_617 : f32 = u_xlat47;
  u_xlat34 = (-(x_617) + 1.0f);
  let x_621 : f32 = u_xlat20.x;
  let x_622 : f32 = u_xlat34;
  let x_624 : f32 = u_xlat47;
  u_xlat47 = ((x_621 * x_622) + x_624);
  let x_632 : f32 = x_630.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_632 == -1.0f));
  let x_636 : bool = u_xlatb20.x;
  if (x_636) {
    let x_639 : vec3<f32> = vs_INTERP0;
    let x_642 : vec4<f32> = x_630.x_MainLightWorldToLight[1i];
    let x_644 : vec2<f32> = (vec2<f32>(x_639.y, x_639.y) * vec2<f32>(x_642.x, x_642.y));
    let x_645 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_644.x, x_644.y, x_645.z);
    let x_648 : vec4<f32> = x_630.x_MainLightWorldToLight[0i];
    let x_650 : vec3<f32> = vs_INTERP0;
    let x_653 : vec3<f32> = u_xlat20;
    let x_655 : vec2<f32> = ((vec2<f32>(x_648.x, x_648.y) * vec2<f32>(x_650.x, x_650.x)) + vec2<f32>(x_653.x, x_653.y));
    let x_656 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_655.x, x_655.y, x_656.z);
    let x_659 : vec4<f32> = x_630.x_MainLightWorldToLight[2i];
    let x_661 : vec3<f32> = vs_INTERP0;
    let x_664 : vec3<f32> = u_xlat20;
    let x_666 : vec2<f32> = ((vec2<f32>(x_659.x, x_659.y) * vec2<f32>(x_661.z, x_661.z)) + vec2<f32>(x_664.x, x_664.y));
    let x_667 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_666.x, x_666.y, x_667.z);
    let x_669 : vec3<f32> = u_xlat20;
    let x_672 : vec4<f32> = x_630.x_MainLightWorldToLight[3i];
    let x_674 : vec2<f32> = (vec2<f32>(x_669.x, x_669.y) + vec2<f32>(x_672.x, x_672.y));
    let x_675 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_674.x, x_674.y, x_675.z);
    let x_677 : vec3<f32> = u_xlat20;
    let x_682 : vec2<f32> = ((vec2<f32>(x_677.x, x_677.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_683 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_682.x, x_682.y, x_683.z);
    let x_691 : vec3<f32> = u_xlat20;
    let x_694 : f32 = x_45.x_GlobalMipBias.x;
    let x_695 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_691.x, x_691.y), x_694);
    u_xlat8 = x_695;
    let x_697 : f32 = x_630.x_MainLightCookieTextureFormat;
    let x_699 : f32 = x_630.x_MainLightCookieTextureFormat;
    let x_701 : f32 = x_630.x_MainLightCookieTextureFormat;
    let x_703 : f32 = x_630.x_MainLightCookieTextureFormat;
    let x_704 : vec4<f32> = vec4<f32>(x_697, x_699, x_701, x_703);
    let x_712 : vec4<bool> = (vec4<f32>(x_704.x, x_704.y, x_704.z, x_704.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_712.x, x_712.y);
    let x_715 : bool = u_xlatb20.y;
    if (x_715) {
      let x_720 : f32 = u_xlat8.w;
      x_716 = x_720;
    } else {
      let x_723 : f32 = u_xlat8.x;
      x_716 = x_723;
    }
    let x_724 : f32 = x_716;
    u_xlat34 = x_724;
    let x_726 : bool = u_xlatb20.x;
    if (x_726) {
      let x_730 : vec4<f32> = u_xlat8;
      x_727 = vec3<f32>(x_730.x, x_730.y, x_730.z);
    } else {
      let x_733 : f32 = u_xlat34;
      x_727 = vec3<f32>(x_733, x_733, x_733);
    }
    let x_735 : vec3<f32> = x_727;
    u_xlat20 = x_735;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_740 : vec3<f32> = u_xlat20;
  let x_742 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat20 = (x_740 * vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : vec4<f32> = u_xlat6;
  let x_747 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_745.x, x_745.x, x_745.x) * x_747);
  let x_750 : vec4<f32> = u_xlat1;
  let x_753 : vec4<f32> = u_xlat4;
  u_xlat49 = dot(-(vec3<f32>(x_750.x, x_750.y, x_750.w)), vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_756 : f32 = u_xlat49;
  let x_757 : f32 = u_xlat49;
  u_xlat49 = (x_756 + x_757);
  let x_759 : vec4<f32> = u_xlat4;
  let x_761 : f32 = u_xlat49;
  let x_765 : vec4<f32> = u_xlat1;
  let x_768 : vec3<f32> = ((vec3<f32>(x_759.x, x_759.y, x_759.z) * -(vec3<f32>(x_761, x_761, x_761))) + -(vec3<f32>(x_765.x, x_765.y, x_765.w)));
  let x_769 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat4;
  let x_773 : vec4<f32> = u_xlat1;
  u_xlat49 = dot(vec3<f32>(x_771.x, x_771.y, x_771.z), vec3<f32>(x_773.x, x_773.y, x_773.w));
  let x_776 : f32 = u_xlat49;
  u_xlat49 = clamp(x_776, 0.0f, 1.0f);
  let x_778 : f32 = u_xlat49;
  u_xlat49 = (-(x_778) + 1.0f);
  let x_781 : f32 = u_xlat49;
  let x_782 : f32 = u_xlat49;
  u_xlat49 = (x_781 * x_782);
  let x_784 : f32 = u_xlat49;
  let x_785 : f32 = u_xlat49;
  u_xlat49 = (x_784 * x_785);
  let x_788 : f32 = u_xlat44;
  u_xlat50 = ((-(x_788) * 0.699999988f) + 1.700000048f);
  let x_794 : f32 = u_xlat44;
  let x_795 : f32 = u_xlat50;
  u_xlat2.w = (x_794 * x_795);
  let x_798 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_798 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_811 : vec4<f32> = u_xlat8;
  let x_814 : f32 = u_xlat2.w;
  let x_815 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_811.x, x_811.y, x_811.z), x_814);
  u_xlat8 = x_815;
  let x_817 : f32 = u_xlat8.w;
  u_xlat44 = (x_817 + -1.0f);
  let x_820 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_821 : f32 = u_xlat44;
  u_xlat44 = ((x_820 * x_821) + 1.0f);
  let x_824 : f32 = u_xlat44;
  u_xlat44 = max(x_824, 0.0f);
  let x_826 : f32 = u_xlat44;
  u_xlat44 = log2(x_826);
  let x_828 : f32 = u_xlat44;
  let x_830 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_828 * x_830);
  let x_832 : f32 = u_xlat44;
  u_xlat44 = exp2(x_832);
  let x_834 : f32 = u_xlat44;
  let x_836 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_834 * x_836);
  let x_838 : vec4<f32> = u_xlat8;
  let x_840 : f32 = u_xlat44;
  let x_842 : vec3<f32> = (vec3<f32>(x_838.x, x_838.y, x_838.z) * vec3<f32>(x_840, x_840, x_840));
  let x_843 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_847 : vec3<f32> = u_xlat3;
  let x_849 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_847.x, x_847.x) * vec2<f32>(x_849.x, x_849.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_855 : f32 = u_xlat9.y;
  u_xlat44 = (1.0f / x_855);
  let x_858 : vec3<f32> = u_xlat0;
  let x_860 : f32 = u_xlat45;
  u_xlat23 = (-(x_858) + vec3<f32>(x_860, x_860, x_860));
  let x_863 : f32 = u_xlat49;
  let x_865 : vec3<f32> = u_xlat23;
  let x_867 : vec3<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_863, x_863, x_863) * x_865) + x_867);
  let x_869 : f32 = u_xlat44;
  let x_871 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_869, x_869, x_869) * x_871);
  let x_873 : vec4<f32> = u_xlat8;
  let x_875 : vec3<f32> = u_xlat23;
  let x_876 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) * x_875);
  let x_877 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec3<f32> = u_xlat5;
  let x_880 : vec3<f32> = u_xlat7;
  let x_882 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_879 * x_880) + vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_885 : f32 = u_xlat47;
  let x_888 : f32 = x_120.unity_LightData.z;
  u_xlat44 = (x_885 * x_888);
  let x_890 : vec4<f32> = u_xlat4;
  let x_893 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_890.x, x_890.y, x_890.z), vec3<f32>(x_893.x, x_893.y, x_893.z));
  let x_898 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_898, 0.0f, 1.0f);
  let x_901 : f32 = u_xlat44;
  let x_903 : f32 = u_xlat3.x;
  u_xlat44 = (x_901 * x_903);
  let x_905 : f32 = u_xlat44;
  let x_907 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_905, x_905, x_905) * x_907);
  let x_909 : vec4<f32> = u_xlat1;
  let x_912 : vec4<f32> = x_45.x_MainLightPosition;
  let x_914 : vec3<f32> = (vec3<f32>(x_909.x, x_909.y, x_909.w) + vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec4<f32> = u_xlat8;
  let x_919 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_917.x, x_917.y, x_917.z), vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_922 : f32 = u_xlat44;
  u_xlat44 = max(x_922, 1.17549435e-37f);
  let x_925 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_925);
  let x_927 : f32 = u_xlat44;
  let x_929 : vec4<f32> = u_xlat8;
  let x_931 : vec3<f32> = (vec3<f32>(x_927, x_927, x_927) * vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec4<f32> = u_xlat4;
  let x_936 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : f32 = u_xlat44;
  u_xlat44 = clamp(x_939, 0.0f, 1.0f);
  let x_942 : vec4<f32> = x_45.x_MainLightPosition;
  let x_944 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_942.x, x_942.y, x_942.z), vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_949 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_949, 0.0f, 1.0f);
  let x_952 : f32 = u_xlat44;
  let x_953 : f32 = u_xlat44;
  u_xlat44 = (x_952 * x_953);
  let x_955 : f32 = u_xlat44;
  let x_957 : f32 = u_xlat9.x;
  u_xlat44 = ((x_955 * x_957) + 1.000010014f);
  let x_962 : f32 = u_xlat3.x;
  let x_964 : f32 = u_xlat3.x;
  u_xlat3.x = (x_962 * x_964);
  let x_967 : f32 = u_xlat44;
  let x_968 : f32 = u_xlat44;
  u_xlat44 = (x_967 * x_968);
  let x_971 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_971, 0.100000001f);
  let x_975 : f32 = u_xlat44;
  let x_977 : f32 = u_xlat3.x;
  u_xlat44 = (x_975 * x_977);
  let x_979 : f32 = u_xlat46;
  let x_980 : f32 = u_xlat44;
  u_xlat44 = (x_979 * x_980);
  let x_982 : f32 = u_xlat17;
  let x_983 : f32 = u_xlat44;
  u_xlat44 = (x_982 / x_983);
  let x_985 : vec3<f32> = u_xlat0;
  let x_986 : f32 = u_xlat44;
  let x_989 : vec3<f32> = u_xlat7;
  let x_990 : vec3<f32> = ((x_985 * vec3<f32>(x_986, x_986, x_986)) + x_989);
  let x_991 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_993 : vec3<f32> = u_xlat20;
  let x_994 : vec4<f32> = u_xlat8;
  u_xlat20 = (x_993 * vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_998 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1000 : f32 = x_120.unity_LightData.y;
  u_xlat44 = min(x_998, x_1000);
  let x_1004 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1004));
  let x_1010 : f32 = x_630.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1012 : f32 = x_630.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1014 : f32 = x_630.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1016 : f32 = x_630.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1017 : vec4<f32> = vec4<f32>(x_1010, x_1012, x_1014, x_1016);
  let x_1024 : vec4<bool> = (vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1017.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1025 : vec2<bool> = vec2<bool>(x_1024.x, x_1024.w);
  let x_1026 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1025.x, x_1026.y, x_1026.z, x_1025.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1037 : u32 = u_xlatu_loop_1;
    let x_1038 : u32 = u_xlatu44;
    if ((x_1037 < x_1038)) {
    } else {
      break;
    }
    let x_1041 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1041 >> 2u);
    let x_1045 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_1045 & 3u));
    let x_1048 : u32 = u_xlatu49;
    let x_1051 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_1048)];
    let x_1061 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1066 : vec4<u32> = indexable[x_1061];
    u_xlat49 = dot(x_1051, bitcast<vec4<f32>>(x_1066));
    let x_1069 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_1069));
    let x_1072 : vec3<f32> = vs_INTERP0;
    let x_1084 : u32 = u_xlatu49;
    let x_1087 : vec4<f32> = x_1083.x_AdditionalLightsPosition[bitcast<i32>(x_1084)];
    let x_1090 : u32 = u_xlatu49;
    let x_1093 : vec4<f32> = x_1083.x_AdditionalLightsPosition[bitcast<i32>(x_1090)];
    u_xlat23 = ((-(x_1072) * vec3<f32>(x_1087.w, x_1087.w, x_1087.w)) + vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
    let x_1096 : vec3<f32> = u_xlat23;
    let x_1097 : vec3<f32> = u_xlat23;
    u_xlat50 = dot(x_1096, x_1097);
    let x_1099 : f32 = u_xlat50;
    u_xlat50 = max(x_1099, 6.10351562e-05f);
    let x_1103 : f32 = u_xlat50;
    u_xlat10 = inverseSqrt(x_1103);
    let x_1106 : vec3<f32> = u_xlat23;
    let x_1107 : f32 = u_xlat10;
    u_xlat24 = (x_1106 * vec3<f32>(x_1107, x_1107, x_1107));
    let x_1111 : f32 = u_xlat50;
    u_xlat11.x = (1.0f / x_1111);
    let x_1114 : f32 = u_xlat50;
    let x_1115 : u32 = u_xlatu49;
    let x_1118 : f32 = x_1083.x_AdditionalLightsAttenuation[bitcast<i32>(x_1115)].x;
    u_xlat50 = (x_1114 * x_1118);
    let x_1120 : f32 = u_xlat50;
    let x_1122 : f32 = u_xlat50;
    u_xlat50 = ((-(x_1120) * x_1122) + 1.0f);
    let x_1125 : f32 = u_xlat50;
    u_xlat50 = max(x_1125, 0.0f);
    let x_1127 : f32 = u_xlat50;
    let x_1128 : f32 = u_xlat50;
    u_xlat50 = (x_1127 * x_1128);
    let x_1130 : f32 = u_xlat50;
    let x_1132 : f32 = u_xlat11.x;
    u_xlat50 = (x_1130 * x_1132);
    let x_1134 : u32 = u_xlatu49;
    let x_1137 : vec4<f32> = x_1083.x_AdditionalLightsSpotDir[bitcast<i32>(x_1134)];
    let x_1139 : vec3<f32> = u_xlat24;
    u_xlat11.x = dot(vec3<f32>(x_1137.x, x_1137.y, x_1137.z), x_1139);
    let x_1143 : f32 = u_xlat11.x;
    let x_1144 : u32 = u_xlatu49;
    let x_1147 : f32 = x_1083.x_AdditionalLightsAttenuation[bitcast<i32>(x_1144)].z;
    let x_1149 : u32 = u_xlatu49;
    let x_1152 : f32 = x_1083.x_AdditionalLightsAttenuation[bitcast<i32>(x_1149)].w;
    u_xlat11.x = ((x_1143 * x_1147) + x_1152);
    let x_1156 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_1156, 0.0f, 1.0f);
    let x_1160 : f32 = u_xlat11.x;
    let x_1162 : f32 = u_xlat11.x;
    u_xlat11.x = (x_1160 * x_1162);
    let x_1165 : f32 = u_xlat50;
    let x_1167 : f32 = u_xlat11.x;
    u_xlat50 = (x_1165 * x_1167);
    let x_1170 : u32 = u_xlatu49;
    u_xlatu11 = (x_1170 >> 5u);
    let x_1173 : u32 = u_xlatu49;
    u_xlati25 = (1i << bitcast<u32>((bitcast<i32>(x_1173) & 31i)));
    let x_1179 : i32 = u_xlati25;
    let x_1181 : u32 = u_xlatu11;
    let x_1184 : f32 = x_630.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1181)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_1179) & bitcast<u32>(x_1184)));
    let x_1188 : i32 = u_xlati11;
    if ((x_1188 != 0i)) {
      let x_1198 : u32 = u_xlatu49;
      let x_1201 : f32 = x_1197.x_AdditionalLightsLightTypes[bitcast<i32>(x_1198)].el;
      u_xlati11 = i32(x_1201);
      let x_1203 : i32 = u_xlati11;
      u_xlati25 = select(1i, 0i, (x_1203 != 0i));
      let x_1207 : u32 = u_xlatu49;
      u_xlati39 = (bitcast<i32>(x_1207) << bitcast<u32>(2i));
      let x_1210 : i32 = u_xlati25;
      if ((x_1210 != 0i)) {
        let x_1215 : vec3<f32> = vs_INTERP0;
        let x_1217 : i32 = u_xlati39;
        let x_1220 : i32 = u_xlati39;
        let x_1224 : vec4<f32> = x_1197.x_AdditionalLightsWorldToLights[((x_1217 + 1i) / 4i)][((x_1220 + 1i) % 4i)];
        let x_1226 : vec3<f32> = (vec3<f32>(x_1215.y, x_1215.y, x_1215.y) * vec3<f32>(x_1224.x, x_1224.y, x_1224.w));
        let x_1227 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
        let x_1229 : i32 = u_xlati39;
        let x_1231 : i32 = u_xlati39;
        let x_1234 : vec4<f32> = x_1197.x_AdditionalLightsWorldToLights[(x_1229 / 4i)][(x_1231 % 4i)];
        let x_1236 : vec3<f32> = vs_INTERP0;
        let x_1239 : vec4<f32> = u_xlat12;
        let x_1241 : vec3<f32> = ((vec3<f32>(x_1234.x, x_1234.y, x_1234.w) * vec3<f32>(x_1236.x, x_1236.x, x_1236.x)) + vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
        let x_1242 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
        let x_1244 : i32 = u_xlati39;
        let x_1247 : i32 = u_xlati39;
        let x_1251 : vec4<f32> = x_1197.x_AdditionalLightsWorldToLights[((x_1244 + 2i) / 4i)][((x_1247 + 2i) % 4i)];
        let x_1253 : vec3<f32> = vs_INTERP0;
        let x_1256 : vec4<f32> = u_xlat12;
        let x_1258 : vec3<f32> = ((vec3<f32>(x_1251.x, x_1251.y, x_1251.w) * vec3<f32>(x_1253.z, x_1253.z, x_1253.z)) + vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
        let x_1259 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat12;
        let x_1263 : i32 = u_xlati39;
        let x_1266 : i32 = u_xlati39;
        let x_1270 : vec4<f32> = x_1197.x_AdditionalLightsWorldToLights[((x_1263 + 3i) / 4i)][((x_1266 + 3i) % 4i)];
        let x_1272 : vec3<f32> = (vec3<f32>(x_1261.x, x_1261.y, x_1261.z) + vec3<f32>(x_1270.x, x_1270.y, x_1270.w));
        let x_1273 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
        let x_1276 : vec4<f32> = u_xlat12;
        let x_1278 : vec4<f32> = u_xlat12;
        let x_1280 : vec2<f32> = (vec2<f32>(x_1276.x, x_1276.y) / vec2<f32>(x_1278.z, x_1278.z));
        let x_1281 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1280.x, x_1281.y, x_1280.y);
        let x_1283 : vec3<f32> = u_xlat25;
        let x_1286 : vec2<f32> = ((vec2<f32>(x_1283.x, x_1283.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1287 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1286.x, x_1287.y, x_1286.y);
        let x_1289 : vec3<f32> = u_xlat25;
        let x_1293 : vec2<f32> = clamp(vec2<f32>(x_1289.x, x_1289.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1294 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1293.x, x_1294.y, x_1293.y);
        let x_1296 : u32 = u_xlatu49;
        let x_1299 : vec4<f32> = x_1197.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1296)];
        let x_1301 : vec3<f32> = u_xlat25;
        let x_1304 : u32 = u_xlatu49;
        let x_1307 : vec4<f32> = x_1197.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1304)];
        let x_1309 : vec2<f32> = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1301.x, x_1301.z)) + vec2<f32>(x_1307.z, x_1307.w));
        let x_1310 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1309.x, x_1310.y, x_1309.y);
      } else {
        let x_1314 : i32 = u_xlati11;
        u_xlatb11 = (x_1314 == 1i);
        let x_1316 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_1316);
        let x_1318 : i32 = u_xlati11;
        if ((x_1318 != 0i)) {
          let x_1322 : vec3<f32> = vs_INTERP0;
          let x_1324 : i32 = u_xlati39;
          let x_1327 : i32 = u_xlati39;
          let x_1331 : vec4<f32> = x_1197.x_AdditionalLightsWorldToLights[((x_1324 + 1i) / 4i)][((x_1327 + 1i) % 4i)];
          let x_1333 : vec2<f32> = (vec2<f32>(x_1322.y, x_1322.y) * vec2<f32>(x_1331.x, x_1331.y));
          let x_1334 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1333.x, x_1333.y, x_1334.z, x_1334.w);
          let x_1336 : i32 = u_xlati39;
          let x_1338 : i32 = u_xlati39;
          let x_1341 : vec4<f32> = x_1197.x_AdditionalLightsWorldToLights[(x_1336 / 4i)][(x_1338 % 4i)];
          let x_1343 : vec3<f32> = vs_INTERP0;
          let x_1346 : vec4<f32> = u_xlat12;
          let x_1348 : vec2<f32> = ((vec2<f32>(x_1341.x, x_1341.y) * vec2<f32>(x_1343.x, x_1343.x)) + vec2<f32>(x_1346.x, x_1346.y));
          let x_1349 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1349.w);
          let x_1351 : i32 = u_xlati39;
          let x_1354 : i32 = u_xlati39;
          let x_1358 : vec4<f32> = x_1197.x_AdditionalLightsWorldToLights[((x_1351 + 2i) / 4i)][((x_1354 + 2i) % 4i)];
          let x_1360 : vec3<f32> = vs_INTERP0;
          let x_1363 : vec4<f32> = u_xlat12;
          let x_1365 : vec2<f32> = ((vec2<f32>(x_1358.x, x_1358.y) * vec2<f32>(x_1360.z, x_1360.z)) + vec2<f32>(x_1363.x, x_1363.y));
          let x_1366 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1365.x, x_1365.y, x_1366.z, x_1366.w);
          let x_1368 : vec4<f32> = u_xlat12;
          let x_1370 : i32 = u_xlati39;
          let x_1373 : i32 = u_xlati39;
          let x_1377 : vec4<f32> = x_1197.x_AdditionalLightsWorldToLights[((x_1370 + 3i) / 4i)][((x_1373 + 3i) % 4i)];
          let x_1379 : vec2<f32> = (vec2<f32>(x_1368.x, x_1368.y) + vec2<f32>(x_1377.x, x_1377.y));
          let x_1380 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
          let x_1382 : vec4<f32> = u_xlat12;
          let x_1385 : vec2<f32> = ((vec2<f32>(x_1382.x, x_1382.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1386 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1385.x, x_1385.y, x_1386.z, x_1386.w);
          let x_1388 : vec4<f32> = u_xlat12;
          let x_1390 : vec2<f32> = fract(vec2<f32>(x_1388.x, x_1388.y));
          let x_1391 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1390.x, x_1390.y, x_1391.z, x_1391.w);
          let x_1393 : u32 = u_xlatu49;
          let x_1396 : vec4<f32> = x_1197.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1393)];
          let x_1398 : vec4<f32> = u_xlat12;
          let x_1401 : u32 = u_xlatu49;
          let x_1404 : vec4<f32> = x_1197.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1401)];
          let x_1406 : vec2<f32> = ((vec2<f32>(x_1396.x, x_1396.y) * vec2<f32>(x_1398.x, x_1398.y)) + vec2<f32>(x_1404.z, x_1404.w));
          let x_1407 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1406.x, x_1407.y, x_1406.y);
        } else {
          let x_1410 : vec3<f32> = vs_INTERP0;
          let x_1412 : i32 = u_xlati39;
          let x_1415 : i32 = u_xlati39;
          let x_1419 : vec4<f32> = x_1197.x_AdditionalLightsWorldToLights[((x_1412 + 1i) / 4i)][((x_1415 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1410.y, x_1410.y, x_1410.y, x_1410.y) * x_1419);
          let x_1421 : i32 = u_xlati39;
          let x_1423 : i32 = u_xlati39;
          let x_1426 : vec4<f32> = x_1197.x_AdditionalLightsWorldToLights[(x_1421 / 4i)][(x_1423 % 4i)];
          let x_1427 : vec3<f32> = vs_INTERP0;
          let x_1430 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1426 * vec4<f32>(x_1427.x, x_1427.x, x_1427.x, x_1427.x)) + x_1430);
          let x_1432 : i32 = u_xlati39;
          let x_1435 : i32 = u_xlati39;
          let x_1439 : vec4<f32> = x_1197.x_AdditionalLightsWorldToLights[((x_1432 + 2i) / 4i)][((x_1435 + 2i) % 4i)];
          let x_1440 : vec3<f32> = vs_INTERP0;
          let x_1443 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1439 * vec4<f32>(x_1440.z, x_1440.z, x_1440.z, x_1440.z)) + x_1443);
          let x_1445 : vec4<f32> = u_xlat12;
          let x_1446 : i32 = u_xlati39;
          let x_1449 : i32 = u_xlati39;
          let x_1453 : vec4<f32> = x_1197.x_AdditionalLightsWorldToLights[((x_1446 + 3i) / 4i)][((x_1449 + 3i) % 4i)];
          u_xlat12 = (x_1445 + x_1453);
          let x_1455 : vec4<f32> = u_xlat12;
          let x_1457 : vec4<f32> = u_xlat12;
          let x_1459 : vec3<f32> = (vec3<f32>(x_1455.x, x_1455.y, x_1455.z) / vec3<f32>(x_1457.w, x_1457.w, x_1457.w));
          let x_1460 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
          let x_1462 : vec4<f32> = u_xlat12;
          let x_1464 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_1462.x, x_1462.y, x_1462.z), vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
          let x_1469 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_1469);
          let x_1472 : vec4<f32> = u_xlat11;
          let x_1474 : vec4<f32> = u_xlat12;
          let x_1476 : vec3<f32> = (vec3<f32>(x_1472.x, x_1472.x, x_1472.x) * vec3<f32>(x_1474.x, x_1474.y, x_1474.z));
          let x_1477 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
          let x_1479 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_1479.x, x_1479.y, x_1479.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1486 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_1486, 0.000001f);
          let x_1491 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_1491);
          let x_1495 : vec4<f32> = u_xlat11;
          let x_1497 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1495.x, x_1495.x, x_1495.x) * vec3<f32>(x_1497.z, x_1497.x, x_1497.y));
          let x_1501 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1501);
          let x_1505 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1505, 0.0f, 1.0f);
          let x_1509 : vec3<f32> = u_xlat13;
          let x_1512 : vec4<bool> = (vec4<f32>(x_1509.y, x_1509.z, x_1509.y, x_1509.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb40 = vec2<bool>(x_1512.x, x_1512.y);
          let x_1516 : bool = u_xlatb40.x;
          if (x_1516) {
            let x_1521 : f32 = u_xlat13.x;
            x_1517 = x_1521;
          } else {
            let x_1524 : f32 = u_xlat13.x;
            x_1517 = -(x_1524);
          }
          let x_1526 : f32 = x_1517;
          u_xlat40.x = x_1526;
          let x_1529 : bool = u_xlatb40.y;
          if (x_1529) {
            let x_1534 : f32 = u_xlat13.x;
            x_1530 = x_1534;
          } else {
            let x_1537 : f32 = u_xlat13.x;
            x_1530 = -(x_1537);
          }
          let x_1539 : f32 = x_1530;
          u_xlat40.y = x_1539;
          let x_1541 : vec4<f32> = u_xlat12;
          let x_1543 : vec4<f32> = u_xlat11;
          let x_1546 : vec2<f32> = u_xlat40;
          let x_1547 : vec2<f32> = ((vec2<f32>(x_1541.x, x_1541.y) * vec2<f32>(x_1543.x, x_1543.x)) + x_1546);
          let x_1548 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1547.x, x_1548.y, x_1547.y, x_1548.w);
          let x_1550 : vec4<f32> = u_xlat11;
          let x_1553 : vec2<f32> = ((vec2<f32>(x_1550.x, x_1550.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1554 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1553.x, x_1554.y, x_1553.y, x_1554.w);
          let x_1556 : vec4<f32> = u_xlat11;
          let x_1560 : vec2<f32> = clamp(vec2<f32>(x_1556.x, x_1556.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1561 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1560.x, x_1561.y, x_1560.y, x_1561.w);
          let x_1563 : u32 = u_xlatu49;
          let x_1566 : vec4<f32> = x_1197.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1563)];
          let x_1568 : vec4<f32> = u_xlat11;
          let x_1571 : u32 = u_xlatu49;
          let x_1574 : vec4<f32> = x_1197.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1571)];
          let x_1576 : vec2<f32> = ((vec2<f32>(x_1566.x, x_1566.y) * vec2<f32>(x_1568.x, x_1568.z)) + vec2<f32>(x_1574.z, x_1574.w));
          let x_1577 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1576.x, x_1577.y, x_1576.y);
        }
      }
      let x_1584 : vec3<f32> = u_xlat25;
      let x_1587 : f32 = x_45.x_GlobalMipBias.x;
      let x_1588 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1584.x, x_1584.z), x_1587);
      u_xlat11 = x_1588;
      let x_1591 : bool = u_xlatb3.w;
      if (x_1591) {
        let x_1596 : f32 = u_xlat11.w;
        x_1592 = x_1596;
      } else {
        let x_1599 : f32 = u_xlat11.x;
        x_1592 = x_1599;
      }
      let x_1600 : f32 = x_1592;
      u_xlat53 = x_1600;
      let x_1602 : bool = u_xlatb3.x;
      if (x_1602) {
        let x_1606 : vec4<f32> = u_xlat11;
        x_1603 = vec3<f32>(x_1606.x, x_1606.y, x_1606.z);
      } else {
        let x_1609 : f32 = u_xlat53;
        x_1603 = vec3<f32>(x_1609, x_1609, x_1609);
      }
      let x_1611 : vec3<f32> = x_1603;
      let x_1612 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1618 : vec4<f32> = u_xlat11;
    let x_1620 : u32 = u_xlatu49;
    let x_1623 : vec4<f32> = x_1083.x_AdditionalLightsColor[bitcast<i32>(x_1620)];
    let x_1625 : vec3<f32> = (vec3<f32>(x_1618.x, x_1618.y, x_1618.z) * vec3<f32>(x_1623.x, x_1623.y, x_1623.z));
    let x_1626 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1625.x, x_1625.y, x_1625.z, x_1626.w);
    let x_1628 : vec4<f32> = u_xlat6;
    let x_1630 : vec4<f32> = u_xlat11;
    let x_1632 : vec3<f32> = (vec3<f32>(x_1628.x, x_1628.x, x_1628.x) * vec3<f32>(x_1630.x, x_1630.y, x_1630.z));
    let x_1633 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
    let x_1635 : vec4<f32> = u_xlat4;
    let x_1637 : vec3<f32> = u_xlat24;
    u_xlat49 = dot(vec3<f32>(x_1635.x, x_1635.y, x_1635.z), x_1637);
    let x_1639 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1639, 0.0f, 1.0f);
    let x_1641 : f32 = u_xlat49;
    let x_1642 : f32 = u_xlat50;
    u_xlat49 = (x_1641 * x_1642);
    let x_1644 : f32 = u_xlat49;
    let x_1646 : vec4<f32> = u_xlat11;
    let x_1648 : vec3<f32> = (vec3<f32>(x_1644, x_1644, x_1644) * vec3<f32>(x_1646.x, x_1646.y, x_1646.z));
    let x_1649 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1648.x, x_1648.y, x_1648.z, x_1649.w);
    let x_1651 : vec3<f32> = u_xlat23;
    let x_1652 : f32 = u_xlat10;
    let x_1655 : vec4<f32> = u_xlat1;
    u_xlat23 = ((x_1651 * vec3<f32>(x_1652, x_1652, x_1652)) + vec3<f32>(x_1655.x, x_1655.y, x_1655.w));
    let x_1658 : vec3<f32> = u_xlat23;
    let x_1659 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(x_1658, x_1659);
    let x_1661 : f32 = u_xlat49;
    u_xlat49 = max(x_1661, 1.17549435e-37f);
    let x_1663 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1663);
    let x_1665 : f32 = u_xlat49;
    let x_1667 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1665, x_1665, x_1665) * x_1667);
    let x_1669 : vec4<f32> = u_xlat4;
    let x_1671 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(vec3<f32>(x_1669.x, x_1669.y, x_1669.z), x_1671);
    let x_1673 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1673, 0.0f, 1.0f);
    let x_1675 : vec3<f32> = u_xlat24;
    let x_1676 : vec3<f32> = u_xlat23;
    u_xlat50 = dot(x_1675, x_1676);
    let x_1678 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1678, 0.0f, 1.0f);
    let x_1680 : f32 = u_xlat49;
    let x_1681 : f32 = u_xlat49;
    u_xlat49 = (x_1680 * x_1681);
    let x_1683 : f32 = u_xlat49;
    let x_1685 : f32 = u_xlat9.x;
    u_xlat49 = ((x_1683 * x_1685) + 1.000010014f);
    let x_1688 : f32 = u_xlat50;
    let x_1689 : f32 = u_xlat50;
    u_xlat50 = (x_1688 * x_1689);
    let x_1691 : f32 = u_xlat49;
    let x_1692 : f32 = u_xlat49;
    u_xlat49 = (x_1691 * x_1692);
    let x_1694 : f32 = u_xlat50;
    u_xlat50 = max(x_1694, 0.100000001f);
    let x_1696 : f32 = u_xlat49;
    let x_1697 : f32 = u_xlat50;
    u_xlat49 = (x_1696 * x_1697);
    let x_1699 : f32 = u_xlat46;
    let x_1700 : f32 = u_xlat49;
    u_xlat49 = (x_1699 * x_1700);
    let x_1702 : f32 = u_xlat17;
    let x_1703 : f32 = u_xlat49;
    u_xlat49 = (x_1702 / x_1703);
    let x_1705 : vec3<f32> = u_xlat0;
    let x_1706 : f32 = u_xlat49;
    let x_1709 : vec3<f32> = u_xlat7;
    u_xlat23 = ((x_1705 * vec3<f32>(x_1706, x_1706, x_1706)) + x_1709);
    let x_1711 : vec3<f32> = u_xlat23;
    let x_1712 : vec4<f32> = u_xlat11;
    let x_1715 : vec4<f32> = u_xlat8;
    let x_1717 : vec3<f32> = ((x_1711 * vec3<f32>(x_1712.x, x_1712.y, x_1712.z)) + vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
    let x_1718 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);

    continuing {
      let x_1720 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1720 + bitcast<u32>(1i));
    }
  }
  let x_1722 : vec3<f32> = u_xlat5;
  let x_1723 : f32 = u_xlat31;
  let x_1726 : vec3<f32> = u_xlat20;
  u_xlat0 = ((x_1722 * vec3<f32>(x_1723, x_1723, x_1723)) + x_1726);
  let x_1728 : vec4<f32> = u_xlat8;
  let x_1730 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1728.x, x_1728.y, x_1728.z) + x_1730);
  let x_1732 : vec4<f32> = u_xlat2;
  let x_1734 : f32 = u_xlat29;
  let x_1737 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1732.x, x_1732.y, x_1732.z) * vec3<f32>(x_1734, x_1734, x_1734)) + x_1737);
  let x_1739 : f32 = u_xlat42;
  let x_1740 : f32 = u_xlat42;
  u_xlat42 = (x_1739 * -(x_1740));
  let x_1743 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1743);
  let x_1745 : vec3<f32> = u_xlat0;
  let x_1748 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1745 + -(vec3<f32>(x_1748.x, x_1748.y, x_1748.z)));
  let x_1754 : f32 = u_xlat42;
  let x_1756 : vec3<f32> = u_xlat0;
  let x_1759 : vec4<f32> = x_45.unity_FogColor;
  let x_1761 : vec3<f32> = ((vec3<f32>(x_1754, x_1754, x_1754) * x_1756) + vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
  let x_1762 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1762.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

