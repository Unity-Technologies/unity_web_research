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

@group(1) @binding(3) var<uniform> x_305 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_824 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1282 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1396 : AdditionalLightsCookies;

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
  var u_xlat5 : vec4<f32>;
  var x_289 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu42 : u32;
  var u_xlati42 : i32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat17 : f32;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : vec2<bool>;
  var u_xlatb33 : bool;
  var x_777 : f32;
  var u_xlat33 : f32;
  var x_908 : f32;
  var x_919 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatu44 : u32;
  var u_xlatb3 : vec2<bool>;
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
  var x_1717 : f32;
  var x_1730 : f32;
  var u_xlat53 : f32;
  var x_1792 : f32;
  var x_1803 : vec3<f32>;
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
    let x_295 : vec4<f32> = u_xlat5;
    x_289 = vec3<f32>(x_295.x, x_295.y, x_295.z);
  }
  let x_297 : vec3<f32> = x_289;
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_297.x, x_297.y, x_298.z, x_297.z);
  let x_300 : vec3<f32> = vs_INTERP0;
  let x_307 : vec4<f32> = x_305.x_CascadeShadowSplitSpheres0;
  let x_310 : vec3<f32> = (x_300 + -(vec3<f32>(x_307.x, x_307.y, x_307.z)));
  let x_311 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_314 : vec3<f32> = vs_INTERP0;
  let x_316 : vec4<f32> = x_305.x_CascadeShadowSplitSpheres1;
  let x_319 : vec3<f32> = (x_314 + -(vec3<f32>(x_316.x, x_316.y, x_316.z)));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : vec3<f32> = vs_INTERP0;
  let x_325 : vec4<f32> = x_305.x_CascadeShadowSplitSpheres2;
  let x_328 : vec3<f32> = (x_323 + -(vec3<f32>(x_325.x, x_325.y, x_325.z)));
  let x_329 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_332 : vec3<f32> = vs_INTERP0;
  let x_335 : vec4<f32> = x_305.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_332 + -(vec3<f32>(x_335.x, x_335.y, x_335.z)));
  let x_339 : vec4<f32> = u_xlat5;
  let x_341 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_345 : vec4<f32> = u_xlat6;
  let x_347 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_351 : vec4<f32> = u_xlat7;
  let x_353 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_351.x, x_351.y, x_351.z), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_357 : vec3<f32> = u_xlat8;
  let x_358 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_357, x_358);
  let x_364 : vec4<f32> = u_xlat5;
  let x_367 : vec4<f32> = x_305.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_364 < x_367);
  let x_370 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_370);
  let x_374 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_374);
  let x_378 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_378);
  let x_382 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_382);
  let x_386 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_386);
  let x_391 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_391);
  let x_395 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_395);
  let x_398 : vec4<f32> = u_xlat5;
  let x_400 : vec4<f32> = u_xlat6;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) + vec3<f32>(x_400.y, x_400.z, x_400.w));
  let x_403 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat5;
  let x_408 : vec3<f32> = max(vec3<f32>(x_405.x, x_405.y, x_405.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_409 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_409.x, x_408.x, x_408.y, x_408.z);
  let x_411 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_411, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_416 : f32 = u_xlat42;
  u_xlat42 = (-(x_416) + 4.0f);
  let x_421 : f32 = u_xlat42;
  u_xlatu42 = u32(x_421);
  let x_425 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_425) << bitcast<u32>(2i));
  let x_428 : vec3<f32> = vs_INTERP0;
  let x_430 : i32 = u_xlati42;
  let x_433 : i32 = u_xlati42;
  let x_437 : vec4<f32> = x_305.x_MainLightWorldToShadow[((x_430 + 1i) / 4i)][((x_433 + 1i) % 4i)];
  let x_439 : vec3<f32> = (vec3<f32>(x_428.y, x_428.y, x_428.y) * vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : i32 = u_xlati42;
  let x_444 : i32 = u_xlati42;
  let x_447 : vec4<f32> = x_305.x_MainLightWorldToShadow[(x_442 / 4i)][(x_444 % 4i)];
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_452 : vec4<f32> = u_xlat5;
  let x_454 : vec3<f32> = ((vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(x_449.x, x_449.x, x_449.x)) + vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : i32 = u_xlati42;
  let x_460 : i32 = u_xlati42;
  let x_464 : vec4<f32> = x_305.x_MainLightWorldToShadow[((x_457 + 2i) / 4i)][((x_460 + 2i) % 4i)];
  let x_466 : vec3<f32> = vs_INTERP0;
  let x_469 : vec4<f32> = u_xlat5;
  let x_471 : vec3<f32> = ((vec3<f32>(x_464.x, x_464.y, x_464.z) * vec3<f32>(x_466.z, x_466.z, x_466.z)) + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat5;
  let x_476 : i32 = u_xlati42;
  let x_479 : i32 = u_xlati42;
  let x_483 : vec4<f32> = x_305.x_MainLightWorldToShadow[((x_476 + 3i) / 4i)][((x_479 + 3i) % 4i)];
  let x_485 : vec3<f32> = (vec3<f32>(x_474.x, x_474.y, x_474.z) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = vs_INTERP0.y;
  let x_491 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat42 = (x_489 * x_491);
  let x_494 : f32 = x_45.unity_MatrixV[0i].z;
  let x_496 : f32 = vs_INTERP0.x;
  let x_498 : f32 = u_xlat42;
  u_xlat42 = ((x_494 * x_496) + x_498);
  let x_501 : f32 = x_45.unity_MatrixV[2i].z;
  let x_503 : f32 = vs_INTERP0.z;
  let x_505 : f32 = u_xlat42;
  u_xlat42 = ((x_501 * x_503) + x_505);
  let x_507 : f32 = u_xlat42;
  let x_509 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat42 = (x_507 + x_509);
  let x_511 : f32 = u_xlat42;
  let x_515 : f32 = x_45.x_ProjectionParams.y;
  u_xlat42 = (-(x_511) + -(x_515));
  let x_518 : f32 = u_xlat42;
  u_xlat42 = max(x_518, 0.0f);
  let x_520 : f32 = u_xlat42;
  let x_523 : f32 = x_45.unity_FogParams.x;
  u_xlat42 = (x_520 * x_523);
  u_xlat4.w = 1.0f;
  let x_528 : vec4<f32> = x_120.unity_SHAr;
  let x_529 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_528, x_529);
  let x_534 : vec4<f32> = x_120.unity_SHAg;
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_534, x_535);
  let x_540 : vec4<f32> = x_120.unity_SHAb;
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_540, x_541);
  let x_544 : vec4<f32> = u_xlat4;
  let x_546 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_544.y, x_544.z, x_544.z, x_544.x) * vec4<f32>(x_546.x, x_546.y, x_546.z, x_546.z));
  let x_551 : vec4<f32> = x_120.unity_SHBr;
  let x_552 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_551, x_552);
  let x_557 : vec4<f32> = x_120.unity_SHBg;
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_557, x_558);
  let x_563 : vec4<f32> = x_120.unity_SHBb;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_563, x_564);
  let x_568 : f32 = u_xlat4.y;
  let x_570 : f32 = u_xlat4.y;
  u_xlat44 = (x_568 * x_570);
  let x_573 : f32 = u_xlat4.x;
  let x_575 : f32 = u_xlat4.x;
  let x_577 : f32 = u_xlat44;
  u_xlat44 = ((x_573 * x_575) + -(x_577));
  let x_582 : vec4<f32> = x_120.unity_SHC;
  let x_584 : f32 = u_xlat44;
  let x_587 : vec3<f32> = u_xlat8;
  let x_588 : vec3<f32> = ((vec3<f32>(x_582.x, x_582.y, x_582.z) * vec3<f32>(x_584, x_584, x_584)) + x_587);
  let x_589 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat6;
  let x_593 : vec4<f32> = u_xlat7;
  let x_595 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) + vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat6;
  let x_600 : vec3<f32> = max(vec3<f32>(x_598.x, x_598.y, x_598.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_601 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_605 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_606 : vec2<f32> = vec2<f32>(x_605.x, x_605.y);
  let x_610 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_606.x, x_606.y));
  let x_611 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_610.x, x_610.y, x_611.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat7;
  let x_615 : vec4<f32> = hlslcc_FragCoord;
  let x_617 : vec2<f32> = (vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_615.x, x_615.y));
  let x_618 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_617.x, x_617.y, x_618.z, x_618.w);
  let x_621 : f32 = u_xlat7.y;
  let x_624 : f32 = x_45.x_ScaleBiasRt.x;
  let x_627 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat44 = ((x_621 * x_624) + x_627);
  let x_629 : f32 = u_xlat44;
  u_xlat7.z = (-(x_629) + 1.0f);
  let x_633 : vec3<f32> = u_xlat3;
  let x_634 : vec2<f32> = vec2<f32>(x_633.x, x_633.y);
  let x_635 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_634.x, x_634.y, x_635.z);
  let x_637 : vec3<f32> = u_xlat3;
  let x_641 : vec2<f32> = clamp(vec2<f32>(x_637.x, x_637.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_642 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_641.x, x_641.y, x_642.z);
  let x_645 : f32 = u_xlat3.x;
  u_xlat44 = ((-(x_645) * 0.959999979f) + 0.959999979f);
  let x_651 : f32 = u_xlat44;
  u_xlat45 = (-(x_651) + 1.0f);
  let x_654 : vec3<f32> = u_xlat0;
  let x_655 : f32 = u_xlat44;
  u_xlat8 = (x_654 * vec3<f32>(x_655, x_655, x_655));
  let x_658 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_658 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_662 : vec3<f32> = u_xlat3;
  let x_664 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_662.x, x_662.x, x_662.x) * x_664) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_670 : f32 = u_xlat3.y;
  u_xlat44 = (-(x_670) + 1.0f);
  let x_673 : f32 = u_xlat44;
  let x_674 : f32 = u_xlat44;
  u_xlat3.x = (x_673 * x_674);
  let x_678 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_678, 0.0078125f);
  let x_684 : f32 = u_xlat3.x;
  let x_686 : f32 = u_xlat3.x;
  u_xlat46 = (x_684 * x_686);
  let x_689 : f32 = u_xlat45;
  let x_691 : f32 = u_xlat3.y;
  u_xlat17 = (x_689 + x_691);
  let x_693 : f32 = u_xlat17;
  u_xlat17 = min(x_693, 1.0f);
  let x_696 : f32 = u_xlat3.x;
  u_xlat45 = ((x_696 * 4.0f) + 2.0f);
  let x_705 : vec4<f32> = u_xlat7;
  let x_708 : f32 = x_45.x_GlobalMipBias.x;
  let x_709 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_705.x, x_705.z), x_708);
  u_xlat47 = x_709.x;
  let x_712 : f32 = u_xlat47;
  u_xlat48 = (x_712 + -1.0f);
  let x_715 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_716 : f32 = u_xlat48;
  u_xlat48 = ((x_715 * x_716) + 1.0f);
  let x_721 : f32 = u_xlat3.z;
  let x_722 : f32 = u_xlat47;
  u_xlat31 = min(x_721, x_722);
  let x_725 : vec4<f32> = u_xlat5;
  let x_726 : vec2<f32> = vec2<f32>(x_725.x, x_725.y);
  let x_728 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_726.x, x_726.y, x_728);
  let x_740 : vec3<f32> = txVec0;
  let x_742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_740.xy, x_740.z);
  u_xlat5.x = x_742;
  let x_746 : f32 = x_305.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_746) + 1.0f);
  let x_751 : f32 = u_xlat5.x;
  let x_753 : f32 = x_305.x_MainLightShadowParams.x;
  let x_756 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_751 * x_753) + x_756);
  let x_763 : f32 = u_xlat5.z;
  u_xlatb19.x = (0.0f >= x_763);
  let x_768 : f32 = u_xlat5.z;
  u_xlatb33 = (x_768 >= 1.0f);
  let x_770 : bool = u_xlatb33;
  let x_772 : bool = u_xlatb19.x;
  u_xlatb19.x = (x_770 | x_772);
  let x_776 : bool = u_xlatb19.x;
  if (x_776) {
    x_777 = 1.0f;
  } else {
    let x_782 : f32 = u_xlat5.x;
    x_777 = x_782;
  }
  let x_783 : f32 = x_777;
  u_xlat5.x = x_783;
  let x_785 : vec3<f32> = vs_INTERP0;
  let x_787 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat19 = (x_785 + -(x_787));
  let x_790 : vec3<f32> = u_xlat19;
  let x_791 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_790, x_791);
  let x_795 : f32 = u_xlat19.x;
  let x_797 : f32 = x_305.x_MainLightShadowParams.z;
  let x_800 : f32 = x_305.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_795 * x_797) + x_800);
  let x_804 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_804, 0.0f, 1.0f);
  let x_809 : f32 = u_xlat5.x;
  u_xlat33 = (-(x_809) + 1.0f);
  let x_813 : f32 = u_xlat19.x;
  let x_814 : f32 = u_xlat33;
  let x_817 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_813 * x_814) + x_817);
  let x_826 : f32 = x_824.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_826 == -1.0f));
  let x_830 : bool = u_xlatb19.x;
  if (x_830) {
    let x_833 : vec3<f32> = vs_INTERP0;
    let x_836 : vec4<f32> = x_824.x_MainLightWorldToLight[1i];
    let x_838 : vec2<f32> = (vec2<f32>(x_833.y, x_833.y) * vec2<f32>(x_836.x, x_836.y));
    let x_839 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_838.x, x_838.y, x_839.z);
    let x_842 : vec4<f32> = x_824.x_MainLightWorldToLight[0i];
    let x_844 : vec3<f32> = vs_INTERP0;
    let x_847 : vec3<f32> = u_xlat19;
    let x_849 : vec2<f32> = ((vec2<f32>(x_842.x, x_842.y) * vec2<f32>(x_844.x, x_844.x)) + vec2<f32>(x_847.x, x_847.y));
    let x_850 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_849.x, x_849.y, x_850.z);
    let x_853 : vec4<f32> = x_824.x_MainLightWorldToLight[2i];
    let x_855 : vec3<f32> = vs_INTERP0;
    let x_858 : vec3<f32> = u_xlat19;
    let x_860 : vec2<f32> = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_855.z, x_855.z)) + vec2<f32>(x_858.x, x_858.y));
    let x_861 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_860.x, x_860.y, x_861.z);
    let x_863 : vec3<f32> = u_xlat19;
    let x_866 : vec4<f32> = x_824.x_MainLightWorldToLight[3i];
    let x_868 : vec2<f32> = (vec2<f32>(x_863.x, x_863.y) + vec2<f32>(x_866.x, x_866.y));
    let x_869 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_868.x, x_868.y, x_869.z);
    let x_871 : vec3<f32> = u_xlat19;
    let x_876 : vec2<f32> = ((vec2<f32>(x_871.x, x_871.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_877 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_876.x, x_876.y, x_877.z);
    let x_884 : vec3<f32> = u_xlat19;
    let x_887 : f32 = x_45.x_GlobalMipBias.x;
    let x_888 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_884.x, x_884.y), x_887);
    u_xlat7 = x_888;
    let x_890 : f32 = x_824.x_MainLightCookieTextureFormat;
    let x_892 : f32 = x_824.x_MainLightCookieTextureFormat;
    let x_894 : f32 = x_824.x_MainLightCookieTextureFormat;
    let x_896 : f32 = x_824.x_MainLightCookieTextureFormat;
    let x_897 : vec4<f32> = vec4<f32>(x_890, x_892, x_894, x_896);
    let x_904 : vec4<bool> = (vec4<f32>(x_897.x, x_897.y, x_897.z, x_897.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_904.x, x_904.y);
    let x_907 : bool = u_xlatb19.y;
    if (x_907) {
      let x_912 : f32 = u_xlat7.w;
      x_908 = x_912;
    } else {
      let x_915 : f32 = u_xlat7.x;
      x_908 = x_915;
    }
    let x_916 : f32 = x_908;
    u_xlat33 = x_916;
    let x_918 : bool = u_xlatb19.x;
    if (x_918) {
      let x_922 : vec4<f32> = u_xlat7;
      x_919 = vec3<f32>(x_922.x, x_922.y, x_922.z);
    } else {
      let x_925 : f32 = u_xlat33;
      x_919 = vec3<f32>(x_925, x_925, x_925);
    }
    let x_927 : vec3<f32> = x_919;
    u_xlat19 = x_927;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_932 : vec3<f32> = u_xlat19;
  let x_934 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat19 = (x_932 * vec3<f32>(x_934.x, x_934.y, x_934.z));
  let x_937 : f32 = u_xlat48;
  let x_939 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_937, x_937, x_937) * x_939);
  let x_941 : vec4<f32> = u_xlat1;
  let x_944 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(vec3<f32>(x_941.x, x_941.y, x_941.w)), vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_949 : f32 = u_xlat7.x;
  let x_951 : f32 = u_xlat7.x;
  u_xlat7.x = (x_949 + x_951);
  let x_954 : vec4<f32> = u_xlat4;
  let x_956 : vec4<f32> = u_xlat7;
  let x_960 : vec4<f32> = u_xlat1;
  let x_963 : vec3<f32> = ((vec3<f32>(x_954.x, x_954.y, x_954.z) * -(vec3<f32>(x_956.x, x_956.x, x_956.x))) + -(vec3<f32>(x_960.x, x_960.y, x_960.w)));
  let x_964 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_967 : vec4<f32> = u_xlat4;
  let x_969 : vec4<f32> = u_xlat1;
  u_xlat49 = dot(vec3<f32>(x_967.x, x_967.y, x_967.z), vec3<f32>(x_969.x, x_969.y, x_969.w));
  let x_972 : f32 = u_xlat49;
  u_xlat49 = clamp(x_972, 0.0f, 1.0f);
  let x_974 : f32 = u_xlat49;
  u_xlat49 = (-(x_974) + 1.0f);
  let x_977 : f32 = u_xlat49;
  let x_978 : f32 = u_xlat49;
  u_xlat49 = (x_977 * x_978);
  let x_980 : f32 = u_xlat49;
  let x_981 : f32 = u_xlat49;
  u_xlat49 = (x_980 * x_981);
  let x_984 : f32 = u_xlat44;
  u_xlat50 = ((-(x_984) * 0.699999988f) + 1.700000048f);
  let x_990 : f32 = u_xlat44;
  let x_991 : f32 = u_xlat50;
  u_xlat2.w = (x_990 * x_991);
  let x_994 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_994 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_1008 : vec4<f32> = u_xlat7;
  let x_1011 : f32 = u_xlat2.w;
  let x_1012 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1008.x, x_1008.y, x_1008.z), x_1011);
  u_xlat9 = x_1012;
  let x_1014 : f32 = u_xlat9.w;
  u_xlat44 = (x_1014 + -1.0f);
  let x_1017 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_1018 : f32 = u_xlat44;
  u_xlat44 = ((x_1017 * x_1018) + 1.0f);
  let x_1021 : f32 = u_xlat44;
  u_xlat44 = max(x_1021, 0.0f);
  let x_1023 : f32 = u_xlat44;
  u_xlat44 = log2(x_1023);
  let x_1025 : f32 = u_xlat44;
  let x_1027 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_1025 * x_1027);
  let x_1029 : f32 = u_xlat44;
  u_xlat44 = exp2(x_1029);
  let x_1031 : f32 = u_xlat44;
  let x_1033 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_1031 * x_1033);
  let x_1035 : vec4<f32> = u_xlat9;
  let x_1037 : f32 = u_xlat44;
  let x_1039 : vec3<f32> = (vec3<f32>(x_1035.x, x_1035.y, x_1035.z) * vec3<f32>(x_1037, x_1037, x_1037));
  let x_1040 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1042 : vec3<f32> = u_xlat3;
  let x_1044 : vec3<f32> = u_xlat3;
  let x_1048 : vec2<f32> = ((vec2<f32>(x_1042.x, x_1042.x) * vec2<f32>(x_1044.x, x_1044.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1049 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
  let x_1052 : f32 = u_xlat9.y;
  u_xlat44 = (1.0f / x_1052);
  let x_1055 : vec3<f32> = u_xlat0;
  let x_1057 : f32 = u_xlat17;
  u_xlat23 = (-(x_1055) + vec3<f32>(x_1057, x_1057, x_1057));
  let x_1060 : f32 = u_xlat49;
  let x_1062 : vec3<f32> = u_xlat23;
  let x_1064 : vec3<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_1060, x_1060, x_1060) * x_1062) + x_1064);
  let x_1066 : f32 = u_xlat44;
  let x_1068 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1066, x_1066, x_1066) * x_1068);
  let x_1070 : vec4<f32> = u_xlat7;
  let x_1072 : vec3<f32> = u_xlat23;
  let x_1073 : vec3<f32> = (vec3<f32>(x_1070.x, x_1070.y, x_1070.z) * x_1072);
  let x_1074 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1076 : vec4<f32> = u_xlat6;
  let x_1078 : vec3<f32> = u_xlat8;
  let x_1080 : vec4<f32> = u_xlat7;
  let x_1082 : vec3<f32> = ((vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * x_1078) + vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
  let x_1083 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1086 : f32 = u_xlat5.x;
  let x_1088 : f32 = x_120.unity_LightData.z;
  u_xlat44 = (x_1086 * x_1088);
  let x_1090 : vec4<f32> = u_xlat4;
  let x_1093 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1090.x, x_1090.y, x_1090.z), vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1098 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1098, 0.0f, 1.0f);
  let x_1101 : f32 = u_xlat44;
  let x_1103 : f32 = u_xlat3.x;
  u_xlat44 = (x_1101 * x_1103);
  let x_1105 : f32 = u_xlat44;
  let x_1107 : vec3<f32> = u_xlat19;
  let x_1108 : vec3<f32> = (vec3<f32>(x_1105, x_1105, x_1105) * x_1107);
  let x_1109 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : vec4<f32> = u_xlat1;
  let x_1114 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1116 : vec3<f32> = (vec3<f32>(x_1111.x, x_1111.y, x_1111.w) + vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1117 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
  let x_1119 : vec4<f32> = u_xlat7;
  let x_1121 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1119.x, x_1119.y, x_1119.z), vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : f32 = u_xlat44;
  u_xlat44 = max(x_1124, 1.17549435e-37f);
  let x_1127 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_1127);
  let x_1129 : f32 = u_xlat44;
  let x_1131 : vec4<f32> = u_xlat7;
  let x_1133 : vec3<f32> = (vec3<f32>(x_1129, x_1129, x_1129) * vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
  let x_1134 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
  let x_1136 : vec4<f32> = u_xlat4;
  let x_1138 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1136.x, x_1136.y, x_1136.z), vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1141, 0.0f, 1.0f);
  let x_1144 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1146 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_1144.x, x_1144.y, x_1144.z), vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
  let x_1151 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1151, 0.0f, 1.0f);
  let x_1154 : f32 = u_xlat44;
  let x_1155 : f32 = u_xlat44;
  u_xlat44 = (x_1154 * x_1155);
  let x_1157 : f32 = u_xlat44;
  let x_1159 : f32 = u_xlat9.x;
  u_xlat44 = ((x_1157 * x_1159) + 1.000010014f);
  let x_1164 : f32 = u_xlat3.x;
  let x_1166 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1164 * x_1166);
  let x_1169 : f32 = u_xlat44;
  let x_1170 : f32 = u_xlat44;
  u_xlat44 = (x_1169 * x_1170);
  let x_1173 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1173, 0.100000001f);
  let x_1177 : f32 = u_xlat44;
  let x_1179 : f32 = u_xlat3.x;
  u_xlat44 = (x_1177 * x_1179);
  let x_1181 : f32 = u_xlat45;
  let x_1182 : f32 = u_xlat44;
  u_xlat44 = (x_1181 * x_1182);
  let x_1184 : f32 = u_xlat46;
  let x_1185 : f32 = u_xlat44;
  u_xlat44 = (x_1184 / x_1185);
  let x_1187 : vec3<f32> = u_xlat0;
  let x_1188 : f32 = u_xlat44;
  let x_1191 : vec3<f32> = u_xlat8;
  let x_1192 : vec3<f32> = ((x_1187 * vec3<f32>(x_1188, x_1188, x_1188)) + x_1191);
  let x_1193 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
  let x_1195 : vec4<f32> = u_xlat5;
  let x_1197 : vec4<f32> = u_xlat7;
  let x_1199 : vec3<f32> = (vec3<f32>(x_1195.x, x_1195.y, x_1195.z) * vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
  let x_1200 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
  let x_1203 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1205 : f32 = x_120.unity_LightData.y;
  u_xlat44 = min(x_1203, x_1205);
  let x_1208 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1208));
  let x_1213 : f32 = x_824.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1215 : f32 = x_824.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1217 : f32 = x_824.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1219 : f32 = x_824.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1220 : vec4<f32> = vec4<f32>(x_1213, x_1215, x_1217, x_1219);
  let x_1226 : vec4<bool> = (vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1220.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb3 = vec2<bool>(x_1226.x, x_1226.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1237 : u32 = u_xlatu_loop_1;
    let x_1238 : u32 = u_xlatu44;
    if ((x_1237 < x_1238)) {
    } else {
      break;
    }
    let x_1241 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1241 >> 2u);
    let x_1244 : u32 = u_xlatu_loop_1;
    u_xlati50 = bitcast<i32>((x_1244 & 3u));
    let x_1247 : u32 = u_xlatu49;
    let x_1250 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_1247)];
    let x_1260 : i32 = u_xlati50;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1265 : vec4<u32> = indexable[x_1260];
    u_xlat49 = dot(x_1250, bitcast<vec4<f32>>(x_1265));
    let x_1268 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_1268));
    let x_1271 : vec3<f32> = vs_INTERP0;
    let x_1283 : u32 = u_xlatu49;
    let x_1286 : vec4<f32> = x_1282.x_AdditionalLightsPosition[bitcast<i32>(x_1283)];
    let x_1289 : u32 = u_xlatu49;
    let x_1292 : vec4<f32> = x_1282.x_AdditionalLightsPosition[bitcast<i32>(x_1289)];
    u_xlat23 = ((-(x_1271) * vec3<f32>(x_1286.w, x_1286.w, x_1286.w)) + vec3<f32>(x_1292.x, x_1292.y, x_1292.z));
    let x_1295 : vec3<f32> = u_xlat23;
    let x_1296 : vec3<f32> = u_xlat23;
    u_xlat50 = dot(x_1295, x_1296);
    let x_1298 : f32 = u_xlat50;
    u_xlat50 = max(x_1298, 6.10351562e-05f);
    let x_1302 : f32 = u_xlat50;
    u_xlat10 = inverseSqrt(x_1302);
    let x_1305 : vec3<f32> = u_xlat23;
    let x_1306 : f32 = u_xlat10;
    u_xlat24 = (x_1305 * vec3<f32>(x_1306, x_1306, x_1306));
    let x_1310 : f32 = u_xlat50;
    u_xlat11.x = (1.0f / x_1310);
    let x_1313 : f32 = u_xlat50;
    let x_1314 : u32 = u_xlatu49;
    let x_1317 : f32 = x_1282.x_AdditionalLightsAttenuation[bitcast<i32>(x_1314)].x;
    u_xlat50 = (x_1313 * x_1317);
    let x_1319 : f32 = u_xlat50;
    let x_1321 : f32 = u_xlat50;
    u_xlat50 = ((-(x_1319) * x_1321) + 1.0f);
    let x_1324 : f32 = u_xlat50;
    u_xlat50 = max(x_1324, 0.0f);
    let x_1326 : f32 = u_xlat50;
    let x_1327 : f32 = u_xlat50;
    u_xlat50 = (x_1326 * x_1327);
    let x_1329 : f32 = u_xlat50;
    let x_1331 : f32 = u_xlat11.x;
    u_xlat50 = (x_1329 * x_1331);
    let x_1333 : u32 = u_xlatu49;
    let x_1336 : vec4<f32> = x_1282.x_AdditionalLightsSpotDir[bitcast<i32>(x_1333)];
    let x_1338 : vec3<f32> = u_xlat24;
    u_xlat11.x = dot(vec3<f32>(x_1336.x, x_1336.y, x_1336.z), x_1338);
    let x_1342 : f32 = u_xlat11.x;
    let x_1343 : u32 = u_xlatu49;
    let x_1346 : f32 = x_1282.x_AdditionalLightsAttenuation[bitcast<i32>(x_1343)].z;
    let x_1348 : u32 = u_xlatu49;
    let x_1351 : f32 = x_1282.x_AdditionalLightsAttenuation[bitcast<i32>(x_1348)].w;
    u_xlat11.x = ((x_1342 * x_1346) + x_1351);
    let x_1355 : f32 = u_xlat11.x;
    u_xlat11.x = clamp(x_1355, 0.0f, 1.0f);
    let x_1359 : f32 = u_xlat11.x;
    let x_1361 : f32 = u_xlat11.x;
    u_xlat11.x = (x_1359 * x_1361);
    let x_1364 : f32 = u_xlat50;
    let x_1366 : f32 = u_xlat11.x;
    u_xlat50 = (x_1364 * x_1366);
    let x_1369 : u32 = u_xlatu49;
    u_xlatu11 = (x_1369 >> 5u);
    let x_1372 : u32 = u_xlatu49;
    u_xlati25 = (1i << bitcast<u32>((bitcast<i32>(x_1372) & 31i)));
    let x_1378 : i32 = u_xlati25;
    let x_1380 : u32 = u_xlatu11;
    let x_1383 : f32 = x_824.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1380)].el;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_1378) & bitcast<u32>(x_1383)));
    let x_1387 : i32 = u_xlati11;
    if ((x_1387 != 0i)) {
      let x_1397 : u32 = u_xlatu49;
      let x_1400 : f32 = x_1396.x_AdditionalLightsLightTypes[bitcast<i32>(x_1397)].el;
      u_xlati11 = i32(x_1400);
      let x_1402 : i32 = u_xlati11;
      u_xlati25 = select(1i, 0i, (x_1402 != 0i));
      let x_1406 : u32 = u_xlatu49;
      u_xlati39 = (bitcast<i32>(x_1406) << bitcast<u32>(2i));
      let x_1409 : i32 = u_xlati25;
      if ((x_1409 != 0i)) {
        let x_1414 : vec3<f32> = vs_INTERP0;
        let x_1416 : i32 = u_xlati39;
        let x_1419 : i32 = u_xlati39;
        let x_1423 : vec4<f32> = x_1396.x_AdditionalLightsWorldToLights[((x_1416 + 1i) / 4i)][((x_1419 + 1i) % 4i)];
        let x_1425 : vec3<f32> = (vec3<f32>(x_1414.y, x_1414.y, x_1414.y) * vec3<f32>(x_1423.x, x_1423.y, x_1423.w));
        let x_1426 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
        let x_1428 : i32 = u_xlati39;
        let x_1430 : i32 = u_xlati39;
        let x_1433 : vec4<f32> = x_1396.x_AdditionalLightsWorldToLights[(x_1428 / 4i)][(x_1430 % 4i)];
        let x_1435 : vec3<f32> = vs_INTERP0;
        let x_1438 : vec4<f32> = u_xlat12;
        let x_1440 : vec3<f32> = ((vec3<f32>(x_1433.x, x_1433.y, x_1433.w) * vec3<f32>(x_1435.x, x_1435.x, x_1435.x)) + vec3<f32>(x_1438.x, x_1438.y, x_1438.z));
        let x_1441 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
        let x_1443 : i32 = u_xlati39;
        let x_1446 : i32 = u_xlati39;
        let x_1450 : vec4<f32> = x_1396.x_AdditionalLightsWorldToLights[((x_1443 + 2i) / 4i)][((x_1446 + 2i) % 4i)];
        let x_1452 : vec3<f32> = vs_INTERP0;
        let x_1455 : vec4<f32> = u_xlat12;
        let x_1457 : vec3<f32> = ((vec3<f32>(x_1450.x, x_1450.y, x_1450.w) * vec3<f32>(x_1452.z, x_1452.z, x_1452.z)) + vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
        let x_1458 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
        let x_1460 : vec4<f32> = u_xlat12;
        let x_1462 : i32 = u_xlati39;
        let x_1465 : i32 = u_xlati39;
        let x_1469 : vec4<f32> = x_1396.x_AdditionalLightsWorldToLights[((x_1462 + 3i) / 4i)][((x_1465 + 3i) % 4i)];
        let x_1471 : vec3<f32> = (vec3<f32>(x_1460.x, x_1460.y, x_1460.z) + vec3<f32>(x_1469.x, x_1469.y, x_1469.w));
        let x_1472 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);
        let x_1475 : vec4<f32> = u_xlat12;
        let x_1477 : vec4<f32> = u_xlat12;
        let x_1479 : vec2<f32> = (vec2<f32>(x_1475.x, x_1475.y) / vec2<f32>(x_1477.z, x_1477.z));
        let x_1480 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1479.x, x_1480.y, x_1479.y);
        let x_1482 : vec3<f32> = u_xlat25;
        let x_1485 : vec2<f32> = ((vec2<f32>(x_1482.x, x_1482.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1486 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1485.x, x_1486.y, x_1485.y);
        let x_1488 : vec3<f32> = u_xlat25;
        let x_1492 : vec2<f32> = clamp(vec2<f32>(x_1488.x, x_1488.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1493 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1492.x, x_1493.y, x_1492.y);
        let x_1495 : u32 = u_xlatu49;
        let x_1498 : vec4<f32> = x_1396.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1495)];
        let x_1500 : vec3<f32> = u_xlat25;
        let x_1503 : u32 = u_xlatu49;
        let x_1506 : vec4<f32> = x_1396.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1503)];
        let x_1508 : vec2<f32> = ((vec2<f32>(x_1498.x, x_1498.y) * vec2<f32>(x_1500.x, x_1500.z)) + vec2<f32>(x_1506.z, x_1506.w));
        let x_1509 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1508.x, x_1509.y, x_1508.y);
      } else {
        let x_1513 : i32 = u_xlati11;
        u_xlatb11 = (x_1513 == 1i);
        let x_1515 : bool = u_xlatb11;
        u_xlati11 = select(0i, 1i, x_1515);
        let x_1517 : i32 = u_xlati11;
        if ((x_1517 != 0i)) {
          let x_1521 : vec3<f32> = vs_INTERP0;
          let x_1523 : i32 = u_xlati39;
          let x_1526 : i32 = u_xlati39;
          let x_1530 : vec4<f32> = x_1396.x_AdditionalLightsWorldToLights[((x_1523 + 1i) / 4i)][((x_1526 + 1i) % 4i)];
          let x_1532 : vec2<f32> = (vec2<f32>(x_1521.y, x_1521.y) * vec2<f32>(x_1530.x, x_1530.y));
          let x_1533 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1532.x, x_1532.y, x_1533.z, x_1533.w);
          let x_1535 : i32 = u_xlati39;
          let x_1537 : i32 = u_xlati39;
          let x_1540 : vec4<f32> = x_1396.x_AdditionalLightsWorldToLights[(x_1535 / 4i)][(x_1537 % 4i)];
          let x_1542 : vec3<f32> = vs_INTERP0;
          let x_1545 : vec4<f32> = u_xlat12;
          let x_1547 : vec2<f32> = ((vec2<f32>(x_1540.x, x_1540.y) * vec2<f32>(x_1542.x, x_1542.x)) + vec2<f32>(x_1545.x, x_1545.y));
          let x_1548 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1547.x, x_1547.y, x_1548.z, x_1548.w);
          let x_1550 : i32 = u_xlati39;
          let x_1553 : i32 = u_xlati39;
          let x_1557 : vec4<f32> = x_1396.x_AdditionalLightsWorldToLights[((x_1550 + 2i) / 4i)][((x_1553 + 2i) % 4i)];
          let x_1559 : vec3<f32> = vs_INTERP0;
          let x_1562 : vec4<f32> = u_xlat12;
          let x_1564 : vec2<f32> = ((vec2<f32>(x_1557.x, x_1557.y) * vec2<f32>(x_1559.z, x_1559.z)) + vec2<f32>(x_1562.x, x_1562.y));
          let x_1565 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1564.x, x_1564.y, x_1565.z, x_1565.w);
          let x_1567 : vec4<f32> = u_xlat12;
          let x_1569 : i32 = u_xlati39;
          let x_1572 : i32 = u_xlati39;
          let x_1576 : vec4<f32> = x_1396.x_AdditionalLightsWorldToLights[((x_1569 + 3i) / 4i)][((x_1572 + 3i) % 4i)];
          let x_1578 : vec2<f32> = (vec2<f32>(x_1567.x, x_1567.y) + vec2<f32>(x_1576.x, x_1576.y));
          let x_1579 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1578.x, x_1578.y, x_1579.z, x_1579.w);
          let x_1581 : vec4<f32> = u_xlat12;
          let x_1584 : vec2<f32> = ((vec2<f32>(x_1581.x, x_1581.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1585 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1584.x, x_1584.y, x_1585.z, x_1585.w);
          let x_1587 : vec4<f32> = u_xlat12;
          let x_1589 : vec2<f32> = fract(vec2<f32>(x_1587.x, x_1587.y));
          let x_1590 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1589.x, x_1589.y, x_1590.z, x_1590.w);
          let x_1592 : u32 = u_xlatu49;
          let x_1595 : vec4<f32> = x_1396.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1592)];
          let x_1597 : vec4<f32> = u_xlat12;
          let x_1600 : u32 = u_xlatu49;
          let x_1603 : vec4<f32> = x_1396.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1600)];
          let x_1605 : vec2<f32> = ((vec2<f32>(x_1595.x, x_1595.y) * vec2<f32>(x_1597.x, x_1597.y)) + vec2<f32>(x_1603.z, x_1603.w));
          let x_1606 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1605.x, x_1606.y, x_1605.y);
        } else {
          let x_1609 : vec3<f32> = vs_INTERP0;
          let x_1611 : i32 = u_xlati39;
          let x_1614 : i32 = u_xlati39;
          let x_1618 : vec4<f32> = x_1396.x_AdditionalLightsWorldToLights[((x_1611 + 1i) / 4i)][((x_1614 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1609.y, x_1609.y, x_1609.y, x_1609.y) * x_1618);
          let x_1620 : i32 = u_xlati39;
          let x_1622 : i32 = u_xlati39;
          let x_1625 : vec4<f32> = x_1396.x_AdditionalLightsWorldToLights[(x_1620 / 4i)][(x_1622 % 4i)];
          let x_1626 : vec3<f32> = vs_INTERP0;
          let x_1629 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1625 * vec4<f32>(x_1626.x, x_1626.x, x_1626.x, x_1626.x)) + x_1629);
          let x_1631 : i32 = u_xlati39;
          let x_1634 : i32 = u_xlati39;
          let x_1638 : vec4<f32> = x_1396.x_AdditionalLightsWorldToLights[((x_1631 + 2i) / 4i)][((x_1634 + 2i) % 4i)];
          let x_1639 : vec3<f32> = vs_INTERP0;
          let x_1642 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1638 * vec4<f32>(x_1639.z, x_1639.z, x_1639.z, x_1639.z)) + x_1642);
          let x_1644 : vec4<f32> = u_xlat12;
          let x_1645 : i32 = u_xlati39;
          let x_1648 : i32 = u_xlati39;
          let x_1652 : vec4<f32> = x_1396.x_AdditionalLightsWorldToLights[((x_1645 + 3i) / 4i)][((x_1648 + 3i) % 4i)];
          u_xlat12 = (x_1644 + x_1652);
          let x_1654 : vec4<f32> = u_xlat12;
          let x_1656 : vec4<f32> = u_xlat12;
          let x_1658 : vec3<f32> = (vec3<f32>(x_1654.x, x_1654.y, x_1654.z) / vec3<f32>(x_1656.w, x_1656.w, x_1656.w));
          let x_1659 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1658.x, x_1658.y, x_1658.z, x_1659.w);
          let x_1661 : vec4<f32> = u_xlat12;
          let x_1663 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(vec3<f32>(x_1661.x, x_1661.y, x_1661.z), vec3<f32>(x_1663.x, x_1663.y, x_1663.z));
          let x_1668 : f32 = u_xlat11.x;
          u_xlat11.x = inverseSqrt(x_1668);
          let x_1671 : vec4<f32> = u_xlat11;
          let x_1673 : vec4<f32> = u_xlat12;
          let x_1675 : vec3<f32> = (vec3<f32>(x_1671.x, x_1671.x, x_1671.x) * vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
          let x_1676 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);
          let x_1678 : vec4<f32> = u_xlat12;
          u_xlat11.x = dot(abs(vec3<f32>(x_1678.x, x_1678.y, x_1678.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1685 : f32 = u_xlat11.x;
          u_xlat11.x = max(x_1685, 0.000001f);
          let x_1690 : f32 = u_xlat11.x;
          u_xlat11.x = (1.0f / x_1690);
          let x_1694 : vec4<f32> = u_xlat11;
          let x_1696 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1694.x, x_1694.x, x_1694.x) * vec3<f32>(x_1696.z, x_1696.x, x_1696.y));
          let x_1700 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1700);
          let x_1704 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1704, 0.0f, 1.0f);
          let x_1708 : vec3<f32> = u_xlat13;
          let x_1711 : vec4<bool> = (vec4<f32>(x_1708.y, x_1708.z, x_1708.y, x_1708.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb40 = vec2<bool>(x_1711.x, x_1711.y);
          let x_1716 : bool = u_xlatb40.x;
          if (x_1716) {
            let x_1721 : f32 = u_xlat13.x;
            x_1717 = x_1721;
          } else {
            let x_1724 : f32 = u_xlat13.x;
            x_1717 = -(x_1724);
          }
          let x_1726 : f32 = x_1717;
          u_xlat40.x = x_1726;
          let x_1729 : bool = u_xlatb40.y;
          if (x_1729) {
            let x_1734 : f32 = u_xlat13.x;
            x_1730 = x_1734;
          } else {
            let x_1737 : f32 = u_xlat13.x;
            x_1730 = -(x_1737);
          }
          let x_1739 : f32 = x_1730;
          u_xlat40.y = x_1739;
          let x_1741 : vec4<f32> = u_xlat12;
          let x_1743 : vec4<f32> = u_xlat11;
          let x_1746 : vec2<f32> = u_xlat40;
          let x_1747 : vec2<f32> = ((vec2<f32>(x_1741.x, x_1741.y) * vec2<f32>(x_1743.x, x_1743.x)) + x_1746);
          let x_1748 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1747.x, x_1748.y, x_1747.y, x_1748.w);
          let x_1750 : vec4<f32> = u_xlat11;
          let x_1753 : vec2<f32> = ((vec2<f32>(x_1750.x, x_1750.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1754 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1753.x, x_1754.y, x_1753.y, x_1754.w);
          let x_1756 : vec4<f32> = u_xlat11;
          let x_1760 : vec2<f32> = clamp(vec2<f32>(x_1756.x, x_1756.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1761 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1760.x, x_1761.y, x_1760.y, x_1761.w);
          let x_1763 : u32 = u_xlatu49;
          let x_1766 : vec4<f32> = x_1396.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1763)];
          let x_1768 : vec4<f32> = u_xlat11;
          let x_1771 : u32 = u_xlatu49;
          let x_1774 : vec4<f32> = x_1396.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1771)];
          let x_1776 : vec2<f32> = ((vec2<f32>(x_1766.x, x_1766.y) * vec2<f32>(x_1768.x, x_1768.z)) + vec2<f32>(x_1774.z, x_1774.w));
          let x_1777 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1776.x, x_1777.y, x_1776.y);
        }
      }
      let x_1784 : vec3<f32> = u_xlat25;
      let x_1787 : f32 = x_45.x_GlobalMipBias.x;
      let x_1788 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1784.x, x_1784.z), x_1787);
      u_xlat11 = x_1788;
      let x_1791 : bool = u_xlatb3.y;
      if (x_1791) {
        let x_1796 : f32 = u_xlat11.w;
        x_1792 = x_1796;
      } else {
        let x_1799 : f32 = u_xlat11.x;
        x_1792 = x_1799;
      }
      let x_1800 : f32 = x_1792;
      u_xlat53 = x_1800;
      let x_1802 : bool = u_xlatb3.x;
      if (x_1802) {
        let x_1806 : vec4<f32> = u_xlat11;
        x_1803 = vec3<f32>(x_1806.x, x_1806.y, x_1806.z);
      } else {
        let x_1809 : f32 = u_xlat53;
        x_1803 = vec3<f32>(x_1809, x_1809, x_1809);
      }
      let x_1811 : vec3<f32> = x_1803;
      let x_1812 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1818 : vec4<f32> = u_xlat11;
    let x_1820 : u32 = u_xlatu49;
    let x_1823 : vec4<f32> = x_1282.x_AdditionalLightsColor[bitcast<i32>(x_1820)];
    let x_1825 : vec3<f32> = (vec3<f32>(x_1818.x, x_1818.y, x_1818.z) * vec3<f32>(x_1823.x, x_1823.y, x_1823.z));
    let x_1826 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1825.x, x_1825.y, x_1825.z, x_1826.w);
    let x_1828 : f32 = u_xlat48;
    let x_1830 : vec4<f32> = u_xlat11;
    let x_1832 : vec3<f32> = (vec3<f32>(x_1828, x_1828, x_1828) * vec3<f32>(x_1830.x, x_1830.y, x_1830.z));
    let x_1833 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
    let x_1835 : vec4<f32> = u_xlat4;
    let x_1837 : vec3<f32> = u_xlat24;
    u_xlat49 = dot(vec3<f32>(x_1835.x, x_1835.y, x_1835.z), x_1837);
    let x_1839 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1839, 0.0f, 1.0f);
    let x_1841 : f32 = u_xlat49;
    let x_1842 : f32 = u_xlat50;
    u_xlat49 = (x_1841 * x_1842);
    let x_1844 : f32 = u_xlat49;
    let x_1846 : vec4<f32> = u_xlat11;
    let x_1848 : vec3<f32> = (vec3<f32>(x_1844, x_1844, x_1844) * vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
    let x_1849 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
    let x_1851 : vec3<f32> = u_xlat23;
    let x_1852 : f32 = u_xlat10;
    let x_1855 : vec4<f32> = u_xlat1;
    u_xlat23 = ((x_1851 * vec3<f32>(x_1852, x_1852, x_1852)) + vec3<f32>(x_1855.x, x_1855.y, x_1855.w));
    let x_1858 : vec3<f32> = u_xlat23;
    let x_1859 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(x_1858, x_1859);
    let x_1861 : f32 = u_xlat49;
    u_xlat49 = max(x_1861, 1.17549435e-37f);
    let x_1863 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1863);
    let x_1865 : f32 = u_xlat49;
    let x_1867 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1865, x_1865, x_1865) * x_1867);
    let x_1869 : vec4<f32> = u_xlat4;
    let x_1871 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(vec3<f32>(x_1869.x, x_1869.y, x_1869.z), x_1871);
    let x_1873 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1873, 0.0f, 1.0f);
    let x_1875 : vec3<f32> = u_xlat24;
    let x_1876 : vec3<f32> = u_xlat23;
    u_xlat50 = dot(x_1875, x_1876);
    let x_1878 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1878, 0.0f, 1.0f);
    let x_1880 : f32 = u_xlat49;
    let x_1881 : f32 = u_xlat49;
    u_xlat49 = (x_1880 * x_1881);
    let x_1883 : f32 = u_xlat49;
    let x_1885 : f32 = u_xlat9.x;
    u_xlat49 = ((x_1883 * x_1885) + 1.000010014f);
    let x_1888 : f32 = u_xlat50;
    let x_1889 : f32 = u_xlat50;
    u_xlat50 = (x_1888 * x_1889);
    let x_1891 : f32 = u_xlat49;
    let x_1892 : f32 = u_xlat49;
    u_xlat49 = (x_1891 * x_1892);
    let x_1894 : f32 = u_xlat50;
    u_xlat50 = max(x_1894, 0.100000001f);
    let x_1896 : f32 = u_xlat49;
    let x_1897 : f32 = u_xlat50;
    u_xlat49 = (x_1896 * x_1897);
    let x_1899 : f32 = u_xlat45;
    let x_1900 : f32 = u_xlat49;
    u_xlat49 = (x_1899 * x_1900);
    let x_1902 : f32 = u_xlat46;
    let x_1903 : f32 = u_xlat49;
    u_xlat49 = (x_1902 / x_1903);
    let x_1905 : vec3<f32> = u_xlat0;
    let x_1906 : f32 = u_xlat49;
    let x_1909 : vec3<f32> = u_xlat8;
    u_xlat23 = ((x_1905 * vec3<f32>(x_1906, x_1906, x_1906)) + x_1909);
    let x_1911 : vec3<f32> = u_xlat23;
    let x_1912 : vec4<f32> = u_xlat11;
    let x_1915 : vec4<f32> = u_xlat7;
    let x_1917 : vec3<f32> = ((x_1911 * vec3<f32>(x_1912.x, x_1912.y, x_1912.z)) + vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
    let x_1918 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);

    continuing {
      let x_1920 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1920 + bitcast<u32>(1i));
    }
  }
  let x_1922 : vec4<f32> = u_xlat6;
  let x_1924 : f32 = u_xlat31;
  let x_1927 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1922.x, x_1922.y, x_1922.z) * vec3<f32>(x_1924, x_1924, x_1924)) + vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
  let x_1930 : vec4<f32> = u_xlat7;
  let x_1932 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1930.x, x_1930.y, x_1930.z) + x_1932);
  let x_1934 : vec4<f32> = u_xlat2;
  let x_1936 : f32 = u_xlat29;
  let x_1939 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1934.x, x_1934.y, x_1934.z) * vec3<f32>(x_1936, x_1936, x_1936)) + x_1939);
  let x_1941 : f32 = u_xlat42;
  let x_1942 : f32 = u_xlat42;
  u_xlat42 = (x_1941 * -(x_1942));
  let x_1945 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1945);
  let x_1947 : vec3<f32> = u_xlat0;
  let x_1950 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1947 + -(vec3<f32>(x_1950.x, x_1950.y, x_1950.z)));
  let x_1956 : f32 = u_xlat42;
  let x_1958 : vec3<f32> = u_xlat0;
  let x_1961 : vec4<f32> = x_45.unity_FogColor;
  let x_1963 : vec3<f32> = ((vec3<f32>(x_1956, x_1956, x_1956) * x_1958) + vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1963.x, x_1963.y, x_1963.z, x_1964.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0);
}

