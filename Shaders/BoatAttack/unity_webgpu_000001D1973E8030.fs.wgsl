struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
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
}

struct UnityPerMaterial {
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

var<private> vs_INTERP1 : vec3<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_66 : PGlobals;

@group(1) @binding(6) var<uniform> x_78 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_138 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_500 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_896 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1331 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1453 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu42 : u32;
  var u_xlati42 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlatb44 : bool;
  var u_xlatb1 : bool;
  var x_412 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat43 : f32;
  var u_xlatb29 : bool;
  var x_461 : f32;
  var u_xlatb15 : vec3<bool>;
  var x_615 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var u_xlat34 : vec2<f32>;
  var u_xlat48 : f32;
  var u_xlatb34 : vec2<bool>;
  var x_964 : f32;
  var x_975 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu44 : u32;
  var u_xlati3 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat23 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati52 : i32;
  var u_xlati50 : i32;
  var u_xlati11 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb50 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb11 : vec4<bool>;
  var u_xlat11 : vec4<f32>;
  var x_1756 : f32;
  var x_1769 : f32;
  var x_1831 : f32;
  var x_1842 : vec3<f32>;
  var x_2015 : f32;
  var u_xlatu0 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec3<f32> = vs_INTERP1;
  let x_31 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_30, x_31);
  let x_37 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_37);
  let x_41 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_41);
  let x_44 : vec3<f32> = u_xlat0;
  let x_46 : vec3<f32> = vs_INTERP1;
  u_xlat0 = (vec3<f32>(x_44.x, x_44.x, x_44.x) * x_46);
  let x_61 : vec4<f32> = vs_INTERP3;
  let x_71 : f32 = x_66.x_GlobalMipBias.x;
  let x_72 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_61.x, x_61.y), x_71);
  u_xlat1 = x_72;
  let x_74 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = x_78.Color_C30C7CA3;
  u_xlat2 = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_90 : vec4<f32> = vs_INTERP3;
  let x_93 : f32 = x_66.x_GlobalMipBias.x;
  let x_94 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_90.x, x_90.y), x_93);
  u_xlat3 = vec4<f32>(x_94.w, x_94.x, x_94.y, x_94.z);
  let x_97 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec4<f32>(x_97.y, x_97.z, x_97.w, x_97.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_106 : vec4<f32> = u_xlat4;
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_109);
  let x_112 : f32 = u_xlat42;
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat17 = (vec3<f32>(x_112, x_112, x_112) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_120 : f32 = vs_INTERP4.y;
  u_xlat42 = (x_120 * 200.0f);
  let x_123 : f32 = u_xlat42;
  u_xlat42 = min(x_123, 1.0f);
  let x_125 : f32 = u_xlat42;
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec3<f32> = (vec3<f32>(x_125, x_125, x_125) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_133 : vec3<f32> = vs_INTERP0;
  let x_140 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres0;
  let x_143 : vec3<f32> = (x_133 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = vs_INTERP0;
  let x_150 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres1;
  let x_153 : vec3<f32> = (x_147 + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_154 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec3<f32> = vs_INTERP0;
  let x_160 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres2;
  let x_163 : vec3<f32> = (x_157 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_INTERP0;
  let x_170 : vec4<f32> = x_138.x_CascadeShadowSplitSpheres3;
  let x_173 : vec3<f32> = (x_167 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec4<f32> = u_xlat4;
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_182 : vec4<f32> = u_xlat5;
  let x_184 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_188 : vec4<f32> = u_xlat6;
  let x_190 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_195 : vec4<f32> = u_xlat7;
  let x_197 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_205 : vec4<f32> = u_xlat4;
  let x_208 : vec4<f32> = x_138.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_205 < x_208);
  let x_212 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_212);
  let x_217 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_229);
  let x_234 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_234);
  let x_238 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_238);
  let x_241 : vec4<f32> = u_xlat4;
  let x_243 : vec4<f32> = u_xlat5;
  let x_245 : vec3<f32> = (vec3<f32>(x_241.x, x_241.y, x_241.z) + vec3<f32>(x_243.y, x_243.z, x_243.w));
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_248 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = max(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_252.x, x_251.x, x_251.y, x_251.z);
  let x_254 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_254, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_259 : f32 = u_xlat42;
  u_xlat42 = (-(x_259) + 4.0f);
  let x_264 : f32 = u_xlat42;
  u_xlatu42 = u32(x_264);
  let x_268 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_268) << bitcast<u32>(2i));
  let x_271 : vec3<f32> = vs_INTERP0;
  let x_274 : i32 = u_xlati42;
  let x_277 : i32 = u_xlati42;
  let x_281 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_274 + 1i) / 4i)][((x_277 + 1i) % 4i)];
  let x_283 : vec3<f32> = (vec3<f32>(x_271.y, x_271.y, x_271.y) * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : i32 = u_xlati42;
  let x_288 : i32 = u_xlati42;
  let x_291 : vec4<f32> = x_138.x_MainLightWorldToShadow[(x_286 / 4i)][(x_288 % 4i)];
  let x_293 : vec3<f32> = vs_INTERP0;
  let x_296 : vec4<f32> = u_xlat4;
  let x_298 : vec3<f32> = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.x, x_293.x, x_293.x)) + vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : i32 = u_xlati42;
  let x_304 : i32 = u_xlati42;
  let x_308 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_301 + 2i) / 4i)][((x_304 + 2i) % 4i)];
  let x_310 : vec3<f32> = vs_INTERP0;
  let x_313 : vec4<f32> = u_xlat4;
  let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.z, x_310.z, x_310.z)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_320 : i32 = u_xlati42;
  let x_323 : i32 = u_xlati42;
  let x_327 : vec4<f32> = x_138.x_MainLightWorldToShadow[((x_320 + 3i) / 4i)][((x_323 + 3i) % 4i)];
  let x_329 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.z) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_333 : vec4<f32> = u_xlat4;
  let x_334 : vec2<f32> = vec2<f32>(x_333.x, x_333.y);
  let x_336 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_334.x, x_334.y, x_336);
  let x_348 : vec3<f32> = txVec0;
  let x_350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_348.xy, x_348.z);
  u_xlat42 = x_350;
  let x_354 : f32 = x_138.x_MainLightShadowParams.x;
  u_xlat44 = (-(x_354) + 1.0f);
  let x_357 : f32 = u_xlat42;
  let x_359 : f32 = x_138.x_MainLightShadowParams.x;
  let x_361 : f32 = u_xlat44;
  u_xlat42 = ((x_357 * x_359) + x_361);
  let x_365 : f32 = u_xlat4.z;
  u_xlatb44 = (0.0f >= x_365);
  let x_368 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_368 >= 1.0f);
  let x_371 : bool = u_xlatb44;
  let x_373 : bool = u_xlatb4.x;
  u_xlatb44 = (x_371 | x_373);
  let x_375 : bool = u_xlatb44;
  let x_376 : f32 = u_xlat42;
  u_xlat42 = select(x_376, 1.0f, x_375);
  let x_378 : vec3<f32> = u_xlat0;
  let x_380 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat0.x = dot(x_378, -(vec3<f32>(x_380.x, x_380.y, x_380.z)));
  let x_386 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_386, 0.0f, 1.0f);
  let x_389 : f32 = u_xlat42;
  let x_392 : vec4<f32> = x_66.x_MainLightColor;
  let x_394 : vec3<f32> = (vec3<f32>(x_389, x_389, x_389) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec3<f32> = u_xlat0;
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec3<f32>(x_397.x, x_397.x, x_397.x) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec3<f32> = u_xlat0;
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_402 * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_408 : f32 = u_xlat1.w;
  u_xlatb1 = (x_408 >= 0.400000006f);
  let x_411 : bool = u_xlatb1;
  if (x_411) {
    let x_416 : f32 = u_xlat1.w;
    x_412 = x_416;
  } else {
    x_412 = 0.0f;
  }
  let x_418 : f32 = x_412;
  u_xlat1.x = x_418;
  let x_422 : f32 = u_xlat1.w;
  u_xlat15.x = (x_422 + -0.400000006f);
  let x_428 : f32 = u_xlat1.w;
  u_xlat29 = dpdxCoarse(x_428);
  let x_432 : f32 = u_xlat1.w;
  u_xlat43 = dpdyCoarse(x_432);
  let x_434 : f32 = u_xlat43;
  let x_436 : f32 = u_xlat29;
  u_xlat29 = (abs(x_434) + abs(x_436));
  let x_439 : f32 = u_xlat29;
  u_xlat29 = max(x_439, 0.0001f);
  let x_443 : f32 = u_xlat15.x;
  let x_444 : f32 = u_xlat29;
  u_xlat15.x = (x_443 / x_444);
  let x_448 : f32 = u_xlat15.x;
  u_xlat15.x = (x_448 + 0.5f);
  let x_453 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_453, 0.0f, 1.0f);
  let x_458 : f32 = x_66.x_AlphaToMaskAvailable;
  u_xlatb29 = !((x_458 == 0.0f));
  let x_460 : bool = u_xlatb29;
  if (x_460) {
    let x_465 : f32 = u_xlat15.x;
    x_461 = x_465;
  } else {
    let x_468 : f32 = u_xlat1.x;
    x_461 = x_468;
  }
  let x_469 : f32 = x_461;
  u_xlat1.x = x_469;
  let x_472 : f32 = u_xlat1.x;
  u_xlat15.x = (x_472 + -0.0001f);
  let x_480 : f32 = u_xlat15.x;
  u_xlatb15.x = (x_480 < 0.0f);
  let x_484 : bool = u_xlatb15.x;
  if (((select(0i, 1i, x_484) * -1i) != 0i)) {
    discard;
  }
  let x_494 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_494);
  let x_502 : f32 = x_500.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_502 >= 0.0f);
  let x_506 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_506);
  let x_510 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_510);
  let x_514 : f32 = u_xlat15.z;
  let x_516 : f32 = u_xlat15.x;
  u_xlat15.x = (x_514 * x_516);
  let x_519 : vec3<f32> = vs_INTERP1;
  let x_521 : vec4<f32> = vs_INTERP2;
  let x_523 : vec3<f32> = (vec3<f32>(x_519.z, x_519.x, x_519.y) * vec3<f32>(x_521.y, x_521.z, x_521.x));
  let x_524 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec3<f32> = vs_INTERP1;
  let x_528 : vec4<f32> = vs_INTERP2;
  let x_531 : vec4<f32> = u_xlat4;
  let x_534 : vec3<f32> = ((vec3<f32>(x_526.y, x_526.z, x_526.x) * vec3<f32>(x_528.z, x_528.x, x_528.y)) + -(vec3<f32>(x_531.x, x_531.y, x_531.z)));
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec3<f32> = u_xlat15;
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec3<f32> = (vec3<f32>(x_537.x, x_537.x, x_537.x) * vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec3<f32> = u_xlat17;
  let x_546 : vec4<f32> = u_xlat4;
  let x_548 : vec3<f32> = (vec3<f32>(x_544.y, x_544.y, x_544.y) * vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec3<f32> = u_xlat17;
  let x_553 : vec4<f32> = vs_INTERP2;
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : vec3<f32> = ((vec3<f32>(x_551.x, x_551.x, x_551.x) * vec3<f32>(x_553.x, x_553.y, x_553.z)) + vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec3<f32> = u_xlat17;
  let x_563 : vec3<f32> = vs_INTERP1;
  let x_565 : vec4<f32> = u_xlat4;
  u_xlat17 = ((vec3<f32>(x_561.z, x_561.z, x_561.z) * x_563) + vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : vec3<f32> = u_xlat17;
  let x_569 : vec3<f32> = u_xlat17;
  u_xlat15.x = dot(x_568, x_569);
  let x_573 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_573);
  let x_576 : vec3<f32> = u_xlat15;
  let x_578 : vec3<f32> = u_xlat17;
  let x_579 : vec3<f32> = (vec3<f32>(x_576.x, x_576.x, x_576.x) * x_578);
  let x_580 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_584 : f32 = x_66.unity_OrthoParams.w;
  u_xlatb15.x = (x_584 == 0.0f);
  let x_587 : vec3<f32> = vs_INTERP0;
  let x_592 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  u_xlat17 = (-(x_587) + x_592);
  let x_594 : vec3<f32> = u_xlat17;
  let x_595 : vec3<f32> = u_xlat17;
  u_xlat43 = dot(x_594, x_595);
  let x_597 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_597);
  let x_599 : f32 = u_xlat43;
  let x_601 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_599, x_599, x_599) * x_601);
  let x_605 : f32 = x_66.unity_MatrixV[0i].z;
  u_xlat5.x = x_605;
  let x_608 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat5.y = x_608;
  let x_611 : f32 = x_66.unity_MatrixV[2i].z;
  u_xlat5.z = x_611;
  let x_614 : bool = u_xlatb15.x;
  if (x_614) {
    let x_618 : vec3<f32> = u_xlat17;
    x_615 = x_618;
  } else {
    let x_620 : vec4<f32> = u_xlat5;
    x_615 = vec3<f32>(x_620.x, x_620.y, x_620.z);
  }
  let x_622 : vec3<f32> = x_615;
  u_xlat17 = x_622;
  let x_624 : f32 = vs_INTERP0.y;
  let x_626 : f32 = x_66.unity_MatrixV[1i].z;
  u_xlat15.x = (x_624 * x_626);
  let x_630 : f32 = x_66.unity_MatrixV[0i].z;
  let x_632 : f32 = vs_INTERP0.x;
  let x_635 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_630 * x_632) + x_635);
  let x_639 : f32 = x_66.unity_MatrixV[2i].z;
  let x_641 : f32 = vs_INTERP0.z;
  let x_644 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_639 * x_641) + x_644);
  let x_648 : f32 = u_xlat15.x;
  let x_650 : f32 = x_66.unity_MatrixV[3i].z;
  u_xlat15.x = (x_648 + x_650);
  let x_654 : f32 = u_xlat15.x;
  let x_658 : f32 = x_66.x_ProjectionParams.y;
  u_xlat15.x = (-(x_654) + -(x_658));
  let x_663 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_663, 0.0f);
  let x_667 : f32 = u_xlat15.x;
  let x_670 : f32 = x_66.unity_FogParams.x;
  u_xlat15.x = (x_667 * x_670);
  u_xlat4.w = 1.0f;
  let x_676 : vec4<f32> = x_500.unity_SHAr;
  let x_677 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_676, x_677);
  let x_682 : vec4<f32> = x_500.unity_SHAg;
  let x_683 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_682, x_683);
  let x_688 : vec4<f32> = x_500.unity_SHAb;
  let x_689 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_688, x_689);
  let x_692 : vec4<f32> = u_xlat4;
  let x_694 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_692.y, x_692.z, x_692.z, x_692.x) * vec4<f32>(x_694.x, x_694.y, x_694.z, x_694.z));
  let x_699 : vec4<f32> = x_500.unity_SHBr;
  let x_700 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_699, x_700);
  let x_705 : vec4<f32> = x_500.unity_SHBg;
  let x_706 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_705, x_706);
  let x_711 : vec4<f32> = x_500.unity_SHBb;
  let x_712 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_711, x_712);
  let x_716 : f32 = u_xlat4.y;
  let x_718 : f32 = u_xlat4.y;
  u_xlat43 = (x_716 * x_718);
  let x_721 : f32 = u_xlat4.x;
  let x_723 : f32 = u_xlat4.x;
  let x_725 : f32 = u_xlat43;
  u_xlat43 = ((x_721 * x_723) + -(x_725));
  let x_730 : vec4<f32> = x_500.unity_SHC;
  let x_732 : f32 = u_xlat43;
  let x_735 : vec4<f32> = u_xlat7;
  let x_737 : vec3<f32> = ((vec3<f32>(x_730.x, x_730.y, x_730.z) * vec3<f32>(x_732, x_732, x_732)) + vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec4<f32> = u_xlat5;
  let x_742 : vec4<f32> = u_xlat6;
  let x_744 : vec3<f32> = (vec3<f32>(x_740.x, x_740.y, x_740.z) + vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_747 : vec4<f32> = u_xlat5;
  let x_749 : vec3<f32> = max(vec3<f32>(x_747.x, x_747.y, x_747.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_750 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_754 : vec4<f32> = x_66.x_ScaledScreenParams;
  let x_755 : vec2<f32> = vec2<f32>(x_754.x, x_754.y);
  let x_759 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_755.x, x_755.y));
  let x_760 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat6;
  let x_764 : vec4<f32> = hlslcc_FragCoord;
  let x_766 : vec2<f32> = (vec2<f32>(x_762.x, x_762.y) * vec2<f32>(x_764.x, x_764.y));
  let x_767 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
  let x_770 : f32 = u_xlat6.y;
  let x_773 : f32 = x_66.x_ScaleBiasRt.x;
  let x_776 : f32 = x_66.x_ScaleBiasRt.y;
  u_xlat43 = ((x_770 * x_773) + x_776);
  let x_778 : f32 = u_xlat43;
  u_xlat6.z = (-(x_778) + 1.0f);
  let x_783 : f32 = u_xlat3.x;
  u_xlat3.x = x_783;
  let x_786 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_786, 0.0f, 1.0f);
  let x_790 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_790, 1.0f);
  let x_793 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_793 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_798 : f32 = u_xlat3.x;
  u_xlat43 = (-(x_798) + 1.0f);
  let x_801 : f32 = u_xlat43;
  let x_802 : f32 = u_xlat43;
  u_xlat44 = (x_801 * x_802);
  let x_804 : f32 = u_xlat44;
  u_xlat44 = max(x_804, 0.0078125f);
  let x_808 : f32 = u_xlat44;
  let x_809 : f32 = u_xlat44;
  u_xlat46 = (x_808 * x_809);
  let x_812 : f32 = u_xlat3.x;
  u_xlat3.x = (x_812 + 0.040000021f);
  let x_817 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_817, 1.0f);
  let x_821 : f32 = u_xlat44;
  u_xlat47 = ((x_821 * 4.0f) + 2.0f);
  let x_829 : vec4<f32> = u_xlat6;
  let x_832 : f32 = x_66.x_GlobalMipBias.x;
  let x_833 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_829.x, x_829.z), x_832);
  u_xlat6.x = x_833.x;
  let x_838 : f32 = u_xlat6.x;
  u_xlat20 = (x_838 + -1.0f);
  let x_841 : f32 = x_66.x_AmbientOcclusionParam.w;
  let x_842 : f32 = u_xlat20;
  u_xlat20 = ((x_841 * x_842) + 1.0f);
  let x_846 : f32 = u_xlat6.x;
  let x_848 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_846, x_848);
  let x_851 : vec3<f32> = vs_INTERP0;
  let x_853 : vec3<f32> = x_66.x_WorldSpaceCameraPos;
  let x_855 : vec3<f32> = (x_851 + -(x_853));
  let x_856 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_860 : vec4<f32> = u_xlat7;
  let x_862 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_860.x, x_860.y, x_860.z), vec3<f32>(x_862.x, x_862.y, x_862.z));
  let x_867 : f32 = u_xlat34.x;
  let x_869 : f32 = x_138.x_MainLightShadowParams.z;
  let x_872 : f32 = x_138.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_867 * x_869) + x_872);
  let x_876 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_876, 0.0f, 1.0f);
  let x_880 : f32 = u_xlat42;
  u_xlat48 = (-(x_880) + 1.0f);
  let x_884 : f32 = u_xlat34.x;
  let x_885 : f32 = u_xlat48;
  let x_887 : f32 = u_xlat42;
  u_xlat42 = ((x_884 * x_885) + x_887);
  let x_898 : f32 = x_896.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_898 == -1.0f));
  let x_902 : bool = u_xlatb34.x;
  if (x_902) {
    let x_905 : vec3<f32> = vs_INTERP0;
    let x_908 : vec4<f32> = x_896.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_905.y, x_905.y) * vec2<f32>(x_908.x, x_908.y));
    let x_912 : vec4<f32> = x_896.x_MainLightWorldToLight[0i];
    let x_914 : vec3<f32> = vs_INTERP0;
    let x_917 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_912.x, x_912.y) * vec2<f32>(x_914.x, x_914.x)) + x_917);
    let x_920 : vec4<f32> = x_896.x_MainLightWorldToLight[2i];
    let x_922 : vec3<f32> = vs_INTERP0;
    let x_925 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_920.x, x_920.y) * vec2<f32>(x_922.z, x_922.z)) + x_925);
    let x_927 : vec2<f32> = u_xlat34;
    let x_929 : vec4<f32> = x_896.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_927 + vec2<f32>(x_929.x, x_929.y));
    let x_932 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_932 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_941 : vec2<f32> = u_xlat34;
    let x_943 : f32 = x_66.x_GlobalMipBias.x;
    let x_944 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_941, x_943);
    u_xlat7 = x_944;
    let x_946 : f32 = x_896.x_MainLightCookieTextureFormat;
    let x_948 : f32 = x_896.x_MainLightCookieTextureFormat;
    let x_950 : f32 = x_896.x_MainLightCookieTextureFormat;
    let x_952 : f32 = x_896.x_MainLightCookieTextureFormat;
    let x_953 : vec4<f32> = vec4<f32>(x_946, x_948, x_950, x_952);
    let x_960 : vec4<bool> = (vec4<f32>(x_953.x, x_953.y, x_953.z, x_953.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_960.x, x_960.y);
    let x_963 : bool = u_xlatb34.y;
    if (x_963) {
      let x_968 : f32 = u_xlat7.w;
      x_964 = x_968;
    } else {
      let x_971 : f32 = u_xlat7.x;
      x_964 = x_971;
    }
    let x_972 : f32 = x_964;
    u_xlat48 = x_972;
    let x_974 : bool = u_xlatb34.x;
    if (x_974) {
      let x_978 : vec4<f32> = u_xlat7;
      x_975 = vec3<f32>(x_978.x, x_978.y, x_978.z);
    } else {
      let x_981 : f32 = u_xlat48;
      x_975 = vec3<f32>(x_981, x_981, x_981);
    }
    let x_983 : vec3<f32> = x_975;
    let x_984 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_990 : vec4<f32> = u_xlat7;
  let x_993 : vec4<f32> = x_66.x_MainLightColor;
  let x_995 : vec3<f32> = (vec3<f32>(x_990.x, x_990.y, x_990.z) * vec3<f32>(x_993.x, x_993.y, x_993.z));
  let x_996 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
  let x_998 : f32 = u_xlat20;
  let x_1000 : vec4<f32> = u_xlat7;
  let x_1002 : vec3<f32> = (vec3<f32>(x_998, x_998, x_998) * vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1005 : vec3<f32> = u_xlat17;
  let x_1007 : vec4<f32> = u_xlat4;
  u_xlat34.x = dot(-(x_1005), vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1012 : f32 = u_xlat34.x;
  let x_1014 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1012 + x_1014);
  let x_1018 : vec4<f32> = u_xlat4;
  let x_1020 : vec2<f32> = u_xlat34;
  let x_1024 : vec3<f32> = u_xlat17;
  let x_1026 : vec3<f32> = ((vec3<f32>(x_1018.x, x_1018.y, x_1018.z) * -(vec3<f32>(x_1020.x, x_1020.x, x_1020.x))) + -(x_1024));
  let x_1027 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1029 : vec4<f32> = u_xlat4;
  let x_1031 : vec3<f32> = u_xlat17;
  u_xlat34.x = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), x_1031);
  let x_1035 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1035, 0.0f, 1.0f);
  let x_1039 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1039) + 1.0f);
  let x_1044 : f32 = u_xlat34.x;
  let x_1046 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1044 * x_1046);
  let x_1050 : f32 = u_xlat34.x;
  let x_1052 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1050 * x_1052);
  let x_1055 : f32 = u_xlat43;
  u_xlat48 = ((-(x_1055) * 0.699999988f) + 1.700000048f);
  let x_1061 : f32 = u_xlat43;
  let x_1062 : f32 = u_xlat48;
  u_xlat43 = (x_1061 * x_1062);
  let x_1064 : f32 = u_xlat43;
  u_xlat43 = (x_1064 * 6.0f);
  let x_1075 : vec4<f32> = u_xlat8;
  let x_1077 : f32 = u_xlat43;
  let x_1078 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1075.x, x_1075.y, x_1075.z), x_1077);
  u_xlat8 = x_1078;
  let x_1080 : f32 = u_xlat8.w;
  u_xlat43 = (x_1080 + -1.0f);
  let x_1083 : f32 = x_500.unity_SpecCube0_HDR.w;
  let x_1084 : f32 = u_xlat43;
  u_xlat43 = ((x_1083 * x_1084) + 1.0f);
  let x_1087 : f32 = u_xlat43;
  u_xlat43 = max(x_1087, 0.0f);
  let x_1089 : f32 = u_xlat43;
  u_xlat43 = log2(x_1089);
  let x_1091 : f32 = u_xlat43;
  let x_1093 : f32 = x_500.unity_SpecCube0_HDR.y;
  u_xlat43 = (x_1091 * x_1093);
  let x_1095 : f32 = u_xlat43;
  u_xlat43 = exp2(x_1095);
  let x_1097 : f32 = u_xlat43;
  let x_1099 : f32 = x_500.unity_SpecCube0_HDR.x;
  u_xlat43 = (x_1097 * x_1099);
  let x_1101 : vec4<f32> = u_xlat8;
  let x_1103 : f32 = u_xlat43;
  let x_1105 : vec3<f32> = (vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * vec3<f32>(x_1103, x_1103, x_1103));
  let x_1106 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
  let x_1109 : f32 = u_xlat44;
  let x_1111 : f32 = u_xlat44;
  u_xlat9 = ((vec2<f32>(x_1109, x_1109) * vec2<f32>(x_1111, x_1111)) + vec2<f32>(-1.0f, 1.0f));
  let x_1117 : f32 = u_xlat9.y;
  u_xlat43 = (1.0f / x_1117);
  let x_1120 : f32 = u_xlat3.x;
  u_xlat44 = (x_1120 + -0.039999999f);
  let x_1124 : f32 = u_xlat34.x;
  let x_1125 : f32 = u_xlat44;
  u_xlat44 = ((x_1124 * x_1125) + 0.039999999f);
  let x_1129 : f32 = u_xlat43;
  let x_1130 : f32 = u_xlat44;
  u_xlat43 = (x_1129 * x_1130);
  let x_1132 : f32 = u_xlat43;
  let x_1134 : vec4<f32> = u_xlat8;
  let x_1136 : vec3<f32> = (vec3<f32>(x_1132, x_1132, x_1132) * vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
  let x_1137 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1139 : vec4<f32> = u_xlat5;
  let x_1141 : vec3<f32> = u_xlat2;
  let x_1143 : vec4<f32> = u_xlat8;
  let x_1145 : vec3<f32> = ((vec3<f32>(x_1139.x, x_1139.y, x_1139.z) * x_1141) + vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
  let x_1146 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : f32 = u_xlat42;
  let x_1150 : f32 = x_500.unity_LightData.z;
  u_xlat42 = (x_1148 * x_1150);
  let x_1152 : vec4<f32> = u_xlat4;
  let x_1155 : vec4<f32> = x_66.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1152.x, x_1152.y, x_1152.z), vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
  let x_1158 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1158, 0.0f, 1.0f);
  let x_1160 : f32 = u_xlat42;
  let x_1161 : f32 = u_xlat43;
  u_xlat42 = (x_1160 * x_1161);
  let x_1163 : f32 = u_xlat42;
  let x_1165 : vec4<f32> = u_xlat7;
  let x_1167 : vec3<f32> = (vec3<f32>(x_1163, x_1163, x_1163) * vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1170 : vec3<f32> = u_xlat17;
  let x_1172 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1174 : vec3<f32> = (x_1170 + vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
  let x_1175 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
  let x_1177 : vec4<f32> = u_xlat8;
  let x_1179 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1177.x, x_1177.y, x_1177.z), vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : f32 = u_xlat42;
  u_xlat42 = max(x_1182, 1.17549435e-37f);
  let x_1185 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1185);
  let x_1187 : f32 = u_xlat42;
  let x_1189 : vec4<f32> = u_xlat8;
  let x_1191 : vec3<f32> = (vec3<f32>(x_1187, x_1187, x_1187) * vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
  let x_1192 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
  let x_1194 : vec4<f32> = u_xlat4;
  let x_1196 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1194.x, x_1194.y, x_1194.z), vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1199, 0.0f, 1.0f);
  let x_1202 : vec4<f32> = x_66.x_MainLightPosition;
  let x_1204 : vec4<f32> = u_xlat8;
  u_xlat43 = dot(vec3<f32>(x_1202.x, x_1202.y, x_1202.z), vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
  let x_1207 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1207, 0.0f, 1.0f);
  let x_1209 : f32 = u_xlat42;
  let x_1210 : f32 = u_xlat42;
  u_xlat42 = (x_1209 * x_1210);
  let x_1212 : f32 = u_xlat42;
  let x_1214 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1212 * x_1214) + 1.000010014f);
  let x_1218 : f32 = u_xlat43;
  let x_1219 : f32 = u_xlat43;
  u_xlat43 = (x_1218 * x_1219);
  let x_1221 : f32 = u_xlat42;
  let x_1222 : f32 = u_xlat42;
  u_xlat42 = (x_1221 * x_1222);
  let x_1224 : f32 = u_xlat43;
  u_xlat43 = max(x_1224, 0.100000001f);
  let x_1227 : f32 = u_xlat42;
  let x_1228 : f32 = u_xlat43;
  u_xlat42 = (x_1227 * x_1228);
  let x_1230 : f32 = u_xlat47;
  let x_1231 : f32 = u_xlat42;
  u_xlat42 = (x_1230 * x_1231);
  let x_1233 : f32 = u_xlat46;
  let x_1234 : f32 = u_xlat42;
  u_xlat42 = (x_1233 / x_1234);
  let x_1236 : f32 = u_xlat42;
  let x_1240 : vec3<f32> = u_xlat2;
  let x_1241 : vec3<f32> = ((vec3<f32>(x_1236, x_1236, x_1236) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1240);
  let x_1242 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : vec4<f32> = u_xlat7;
  let x_1246 : vec4<f32> = u_xlat8;
  let x_1248 : vec3<f32> = (vec3<f32>(x_1244.x, x_1244.y, x_1244.z) * vec3<f32>(x_1246.x, x_1246.y, x_1246.z));
  let x_1249 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
  let x_1253 : f32 = x_66.x_AdditionalLightsCount.x;
  let x_1255 : f32 = x_500.unity_LightData.y;
  u_xlat42 = min(x_1253, x_1255);
  let x_1257 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1257));
  let x_1261 : f32 = x_896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1263 : f32 = x_896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1265 : f32 = x_896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1267 : f32 = x_896.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1268 : vec4<f32> = vec4<f32>(x_1261, x_1263, x_1265, x_1267);
  let x_1274 : vec4<bool> = (vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1268.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_1274.x, x_1274.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1285 : u32 = u_xlatu_loop_1;
    let x_1286 : u32 = u_xlatu42;
    if ((x_1285 < x_1286)) {
    } else {
      break;
    }
    let x_1289 : u32 = u_xlatu_loop_1;
    u_xlatu44 = (x_1289 >> 2u);
    let x_1292 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_1292 & 3u));
    let x_1295 : u32 = u_xlatu44;
    let x_1298 : vec4<f32> = x_500.unity_LightIndices[bitcast<i32>(x_1295)];
    let x_1308 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1313 : vec4<u32> = indexable[x_1308];
    u_xlat44 = dot(x_1298, bitcast<vec4<f32>>(x_1313));
    let x_1316 : f32 = u_xlat44;
    u_xlatu44 = bitcast<u32>(i32(x_1316));
    let x_1320 : vec3<f32> = vs_INTERP0;
    let x_1332 : u32 = u_xlatu44;
    let x_1335 : vec4<f32> = x_1331.x_AdditionalLightsPosition[bitcast<i32>(x_1332)];
    let x_1338 : u32 = u_xlatu44;
    let x_1341 : vec4<f32> = x_1331.x_AdditionalLightsPosition[bitcast<i32>(x_1338)];
    u_xlat23 = ((-(x_1320) * vec3<f32>(x_1335.w, x_1335.w, x_1335.w)) + vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
    let x_1344 : vec3<f32> = u_xlat23;
    let x_1345 : vec3<f32> = u_xlat23;
    u_xlat3.x = dot(x_1344, x_1345);
    let x_1349 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1349, 6.10351562e-05f);
    let x_1355 : f32 = u_xlat3.x;
    u_xlat49 = inverseSqrt(x_1355);
    let x_1358 : f32 = u_xlat49;
    let x_1360 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1358, x_1358, x_1358) * x_1360);
    let x_1364 : f32 = u_xlat3.x;
    u_xlat50 = (1.0f / x_1364);
    let x_1367 : f32 = u_xlat3.x;
    let x_1368 : u32 = u_xlatu44;
    let x_1371 : f32 = x_1331.x_AdditionalLightsAttenuation[bitcast<i32>(x_1368)].x;
    u_xlat3.x = (x_1367 * x_1371);
    let x_1375 : f32 = u_xlat3.x;
    let x_1378 : f32 = u_xlat3.x;
    u_xlat3.x = ((-(x_1375) * x_1378) + 1.0f);
    let x_1383 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1383, 0.0f);
    let x_1387 : f32 = u_xlat3.x;
    let x_1389 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1387 * x_1389);
    let x_1393 : f32 = u_xlat3.x;
    let x_1394 : f32 = u_xlat50;
    u_xlat3.x = (x_1393 * x_1394);
    let x_1397 : u32 = u_xlatu44;
    let x_1400 : vec4<f32> = x_1331.x_AdditionalLightsSpotDir[bitcast<i32>(x_1397)];
    let x_1402 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1400.x, x_1400.y, x_1400.z), x_1402);
    let x_1404 : f32 = u_xlat50;
    let x_1405 : u32 = u_xlatu44;
    let x_1408 : f32 = x_1331.x_AdditionalLightsAttenuation[bitcast<i32>(x_1405)].z;
    let x_1410 : u32 = u_xlatu44;
    let x_1413 : f32 = x_1331.x_AdditionalLightsAttenuation[bitcast<i32>(x_1410)].w;
    u_xlat50 = ((x_1404 * x_1408) + x_1413);
    let x_1415 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1415, 0.0f, 1.0f);
    let x_1417 : f32 = u_xlat50;
    let x_1418 : f32 = u_xlat50;
    u_xlat50 = (x_1417 * x_1418);
    let x_1421 : f32 = u_xlat3.x;
    let x_1422 : f32 = u_xlat50;
    u_xlat3.x = (x_1421 * x_1422);
    let x_1426 : u32 = u_xlatu44;
    u_xlatu50 = (x_1426 >> 5u);
    let x_1429 : u32 = u_xlatu44;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1429) & 31i)));
    let x_1435 : i32 = u_xlati52;
    let x_1437 : u32 = u_xlatu50;
    let x_1440 : f32 = x_896.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1437)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1435) & bitcast<u32>(x_1440)));
    let x_1444 : i32 = u_xlati50;
    if ((x_1444 != 0i)) {
      let x_1454 : u32 = u_xlatu44;
      let x_1457 : f32 = x_1453.x_AdditionalLightsLightTypes[bitcast<i32>(x_1454)].el;
      u_xlati50 = i32(x_1457);
      let x_1459 : i32 = u_xlati50;
      u_xlati52 = select(1i, 0i, (x_1459 != 0i));
      let x_1463 : u32 = u_xlatu44;
      u_xlati11 = (bitcast<i32>(x_1463) << bitcast<u32>(2i));
      let x_1466 : i32 = u_xlati52;
      if ((x_1466 != 0i)) {
        let x_1471 : vec3<f32> = vs_INTERP0;
        let x_1473 : i32 = u_xlati11;
        let x_1476 : i32 = u_xlati11;
        let x_1480 : vec4<f32> = x_1453.x_AdditionalLightsWorldToLights[((x_1473 + 1i) / 4i)][((x_1476 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1471.y, x_1471.y, x_1471.y) * vec3<f32>(x_1480.x, x_1480.y, x_1480.w));
        let x_1483 : i32 = u_xlati11;
        let x_1485 : i32 = u_xlati11;
        let x_1488 : vec4<f32> = x_1453.x_AdditionalLightsWorldToLights[(x_1483 / 4i)][(x_1485 % 4i)];
        let x_1490 : vec3<f32> = vs_INTERP0;
        let x_1493 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1488.x, x_1488.y, x_1488.w) * vec3<f32>(x_1490.x, x_1490.x, x_1490.x)) + x_1493);
        let x_1495 : i32 = u_xlati11;
        let x_1498 : i32 = u_xlati11;
        let x_1502 : vec4<f32> = x_1453.x_AdditionalLightsWorldToLights[((x_1495 + 2i) / 4i)][((x_1498 + 2i) % 4i)];
        let x_1504 : vec3<f32> = vs_INTERP0;
        let x_1507 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1502.x, x_1502.y, x_1502.w) * vec3<f32>(x_1504.z, x_1504.z, x_1504.z)) + x_1507);
        let x_1509 : vec3<f32> = u_xlat25;
        let x_1510 : i32 = u_xlati11;
        let x_1513 : i32 = u_xlati11;
        let x_1517 : vec4<f32> = x_1453.x_AdditionalLightsWorldToLights[((x_1510 + 3i) / 4i)][((x_1513 + 3i) % 4i)];
        u_xlat25 = (x_1509 + vec3<f32>(x_1517.x, x_1517.y, x_1517.w));
        let x_1520 : vec3<f32> = u_xlat25;
        let x_1522 : vec3<f32> = u_xlat25;
        let x_1524 : vec2<f32> = (vec2<f32>(x_1520.x, x_1520.y) / vec2<f32>(x_1522.z, x_1522.z));
        let x_1525 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1524.x, x_1524.y, x_1525.z);
        let x_1527 : vec3<f32> = u_xlat25;
        let x_1530 : vec2<f32> = ((vec2<f32>(x_1527.x, x_1527.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1531 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1530.x, x_1530.y, x_1531.z);
        let x_1533 : vec3<f32> = u_xlat25;
        let x_1537 : vec2<f32> = clamp(vec2<f32>(x_1533.x, x_1533.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1538 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1537.x, x_1537.y, x_1538.z);
        let x_1540 : u32 = u_xlatu44;
        let x_1543 : vec4<f32> = x_1453.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1540)];
        let x_1545 : vec3<f32> = u_xlat25;
        let x_1548 : u32 = u_xlatu44;
        let x_1551 : vec4<f32> = x_1453.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1548)];
        let x_1553 : vec2<f32> = ((vec2<f32>(x_1543.x, x_1543.y) * vec2<f32>(x_1545.x, x_1545.y)) + vec2<f32>(x_1551.z, x_1551.w));
        let x_1554 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1553.x, x_1553.y, x_1554.z);
      } else {
        let x_1558 : i32 = u_xlati50;
        u_xlatb50 = (x_1558 == 1i);
        let x_1560 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1560);
        let x_1562 : i32 = u_xlati50;
        if ((x_1562 != 0i)) {
          let x_1567 : vec3<f32> = vs_INTERP0;
          let x_1569 : i32 = u_xlati11;
          let x_1572 : i32 = u_xlati11;
          let x_1576 : vec4<f32> = x_1453.x_AdditionalLightsWorldToLights[((x_1569 + 1i) / 4i)][((x_1572 + 1i) % 4i)];
          let x_1578 : vec2<f32> = (vec2<f32>(x_1567.y, x_1567.y) * vec2<f32>(x_1576.x, x_1576.y));
          let x_1579 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1578.x, x_1578.y, x_1579.z, x_1579.w);
          let x_1581 : i32 = u_xlati11;
          let x_1583 : i32 = u_xlati11;
          let x_1586 : vec4<f32> = x_1453.x_AdditionalLightsWorldToLights[(x_1581 / 4i)][(x_1583 % 4i)];
          let x_1588 : vec3<f32> = vs_INTERP0;
          let x_1591 : vec4<f32> = u_xlat12;
          let x_1593 : vec2<f32> = ((vec2<f32>(x_1586.x, x_1586.y) * vec2<f32>(x_1588.x, x_1588.x)) + vec2<f32>(x_1591.x, x_1591.y));
          let x_1594 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1593.x, x_1593.y, x_1594.z, x_1594.w);
          let x_1596 : i32 = u_xlati11;
          let x_1599 : i32 = u_xlati11;
          let x_1603 : vec4<f32> = x_1453.x_AdditionalLightsWorldToLights[((x_1596 + 2i) / 4i)][((x_1599 + 2i) % 4i)];
          let x_1605 : vec3<f32> = vs_INTERP0;
          let x_1608 : vec4<f32> = u_xlat12;
          let x_1610 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1605.z, x_1605.z)) + vec2<f32>(x_1608.x, x_1608.y));
          let x_1611 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1610.x, x_1610.y, x_1611.z, x_1611.w);
          let x_1613 : vec4<f32> = u_xlat12;
          let x_1615 : i32 = u_xlati11;
          let x_1618 : i32 = u_xlati11;
          let x_1622 : vec4<f32> = x_1453.x_AdditionalLightsWorldToLights[((x_1615 + 3i) / 4i)][((x_1618 + 3i) % 4i)];
          let x_1624 : vec2<f32> = (vec2<f32>(x_1613.x, x_1613.y) + vec2<f32>(x_1622.x, x_1622.y));
          let x_1625 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1624.x, x_1624.y, x_1625.z, x_1625.w);
          let x_1627 : vec4<f32> = u_xlat12;
          let x_1630 : vec2<f32> = ((vec2<f32>(x_1627.x, x_1627.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1631 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1630.x, x_1630.y, x_1631.z, x_1631.w);
          let x_1633 : vec4<f32> = u_xlat12;
          let x_1635 : vec2<f32> = fract(vec2<f32>(x_1633.x, x_1633.y));
          let x_1636 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1635.x, x_1635.y, x_1636.z, x_1636.w);
          let x_1638 : u32 = u_xlatu44;
          let x_1641 : vec4<f32> = x_1453.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1638)];
          let x_1643 : vec4<f32> = u_xlat12;
          let x_1646 : u32 = u_xlatu44;
          let x_1649 : vec4<f32> = x_1453.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1646)];
          let x_1651 : vec2<f32> = ((vec2<f32>(x_1641.x, x_1641.y) * vec2<f32>(x_1643.x, x_1643.y)) + vec2<f32>(x_1649.z, x_1649.w));
          let x_1652 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1651.x, x_1651.y, x_1652.z);
        } else {
          let x_1655 : vec3<f32> = vs_INTERP0;
          let x_1657 : i32 = u_xlati11;
          let x_1660 : i32 = u_xlati11;
          let x_1664 : vec4<f32> = x_1453.x_AdditionalLightsWorldToLights[((x_1657 + 1i) / 4i)][((x_1660 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1655.y, x_1655.y, x_1655.y, x_1655.y) * x_1664);
          let x_1666 : i32 = u_xlati11;
          let x_1668 : i32 = u_xlati11;
          let x_1671 : vec4<f32> = x_1453.x_AdditionalLightsWorldToLights[(x_1666 / 4i)][(x_1668 % 4i)];
          let x_1672 : vec3<f32> = vs_INTERP0;
          let x_1675 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1671 * vec4<f32>(x_1672.x, x_1672.x, x_1672.x, x_1672.x)) + x_1675);
          let x_1677 : i32 = u_xlati11;
          let x_1680 : i32 = u_xlati11;
          let x_1684 : vec4<f32> = x_1453.x_AdditionalLightsWorldToLights[((x_1677 + 2i) / 4i)][((x_1680 + 2i) % 4i)];
          let x_1685 : vec3<f32> = vs_INTERP0;
          let x_1688 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1684 * vec4<f32>(x_1685.z, x_1685.z, x_1685.z, x_1685.z)) + x_1688);
          let x_1690 : vec4<f32> = u_xlat12;
          let x_1691 : i32 = u_xlati11;
          let x_1694 : i32 = u_xlati11;
          let x_1698 : vec4<f32> = x_1453.x_AdditionalLightsWorldToLights[((x_1691 + 3i) / 4i)][((x_1694 + 3i) % 4i)];
          u_xlat12 = (x_1690 + x_1698);
          let x_1700 : vec4<f32> = u_xlat12;
          let x_1702 : vec4<f32> = u_xlat12;
          let x_1704 : vec3<f32> = (vec3<f32>(x_1700.x, x_1700.y, x_1700.z) / vec3<f32>(x_1702.w, x_1702.w, x_1702.w));
          let x_1705 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1704.x, x_1704.y, x_1704.z, x_1705.w);
          let x_1707 : vec4<f32> = u_xlat12;
          let x_1709 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1707.x, x_1707.y, x_1707.z), vec3<f32>(x_1709.x, x_1709.y, x_1709.z));
          let x_1712 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1712);
          let x_1714 : f32 = u_xlat50;
          let x_1716 : vec4<f32> = u_xlat12;
          let x_1718 : vec3<f32> = (vec3<f32>(x_1714, x_1714, x_1714) * vec3<f32>(x_1716.x, x_1716.y, x_1716.z));
          let x_1719 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1718.x, x_1718.y, x_1718.z, x_1719.w);
          let x_1721 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1721.x, x_1721.y, x_1721.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1726 : f32 = u_xlat50;
          u_xlat50 = max(x_1726, 0.000001f);
          let x_1729 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1729);
          let x_1732 : f32 = u_xlat50;
          let x_1734 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1732, x_1732, x_1732) * vec3<f32>(x_1734.z, x_1734.x, x_1734.y));
          let x_1738 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1738);
          let x_1742 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1742, 0.0f, 1.0f);
          let x_1746 : vec3<f32> = u_xlat13;
          let x_1749 : vec4<bool> = (vec4<f32>(x_1746.y, x_1746.y, x_1746.y, x_1746.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1750 : vec2<bool> = vec2<bool>(x_1749.x, x_1749.w);
          let x_1751 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1750.x, x_1751.y, x_1751.z, x_1750.y);
          let x_1755 : bool = u_xlatb11.x;
          if (x_1755) {
            let x_1760 : f32 = u_xlat13.x;
            x_1756 = x_1760;
          } else {
            let x_1763 : f32 = u_xlat13.x;
            x_1756 = -(x_1763);
          }
          let x_1765 : f32 = x_1756;
          u_xlat11.x = x_1765;
          let x_1768 : bool = u_xlatb11.w;
          if (x_1768) {
            let x_1773 : f32 = u_xlat13.x;
            x_1769 = x_1773;
          } else {
            let x_1776 : f32 = u_xlat13.x;
            x_1769 = -(x_1776);
          }
          let x_1778 : f32 = x_1769;
          u_xlat11.w = x_1778;
          let x_1780 : vec4<f32> = u_xlat12;
          let x_1782 : f32 = u_xlat50;
          let x_1785 : vec4<f32> = u_xlat11;
          let x_1787 : vec2<f32> = ((vec2<f32>(x_1780.x, x_1780.y) * vec2<f32>(x_1782, x_1782)) + vec2<f32>(x_1785.x, x_1785.w));
          let x_1788 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1787.x, x_1788.y, x_1788.z, x_1787.y);
          let x_1790 : vec4<f32> = u_xlat11;
          let x_1793 : vec2<f32> = ((vec2<f32>(x_1790.x, x_1790.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1794 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1793.x, x_1794.y, x_1794.z, x_1793.y);
          let x_1796 : vec4<f32> = u_xlat11;
          let x_1800 : vec2<f32> = clamp(vec2<f32>(x_1796.x, x_1796.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1801 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1800.x, x_1801.y, x_1801.z, x_1800.y);
          let x_1803 : u32 = u_xlatu44;
          let x_1806 : vec4<f32> = x_1453.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1803)];
          let x_1808 : vec4<f32> = u_xlat11;
          let x_1811 : u32 = u_xlatu44;
          let x_1814 : vec4<f32> = x_1453.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1811)];
          let x_1816 : vec2<f32> = ((vec2<f32>(x_1806.x, x_1806.y) * vec2<f32>(x_1808.x, x_1808.w)) + vec2<f32>(x_1814.z, x_1814.w));
          let x_1817 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1816.x, x_1816.y, x_1817.z);
        }
      }
      let x_1824 : vec3<f32> = u_xlat25;
      let x_1827 : f32 = x_66.x_GlobalMipBias.x;
      let x_1828 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1824.x, x_1824.y), x_1827);
      u_xlat11 = x_1828;
      let x_1830 : bool = u_xlatb34.y;
      if (x_1830) {
        let x_1835 : f32 = u_xlat11.w;
        x_1831 = x_1835;
      } else {
        let x_1838 : f32 = u_xlat11.x;
        x_1831 = x_1838;
      }
      let x_1839 : f32 = x_1831;
      u_xlat50 = x_1839;
      let x_1841 : bool = u_xlatb34.x;
      if (x_1841) {
        let x_1845 : vec4<f32> = u_xlat11;
        x_1842 = vec3<f32>(x_1845.x, x_1845.y, x_1845.z);
      } else {
        let x_1848 : f32 = u_xlat50;
        x_1842 = vec3<f32>(x_1848, x_1848, x_1848);
      }
      let x_1850 : vec3<f32> = x_1842;
      let x_1851 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1857 : vec4<f32> = u_xlat11;
    let x_1859 : u32 = u_xlatu44;
    let x_1862 : vec4<f32> = x_1331.x_AdditionalLightsColor[bitcast<i32>(x_1859)];
    let x_1864 : vec3<f32> = (vec3<f32>(x_1857.x, x_1857.y, x_1857.z) * vec3<f32>(x_1862.x, x_1862.y, x_1862.z));
    let x_1865 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1864.x, x_1864.y, x_1864.z, x_1865.w);
    let x_1867 : f32 = u_xlat20;
    let x_1869 : vec4<f32> = u_xlat11;
    let x_1871 : vec3<f32> = (vec3<f32>(x_1867, x_1867, x_1867) * vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
    let x_1872 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1872.w);
    let x_1874 : vec4<f32> = u_xlat4;
    let x_1876 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_1874.x, x_1874.y, x_1874.z), x_1876);
    let x_1878 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1878, 0.0f, 1.0f);
    let x_1880 : f32 = u_xlat44;
    let x_1882 : f32 = u_xlat3.x;
    u_xlat44 = (x_1880 * x_1882);
    let x_1884 : f32 = u_xlat44;
    let x_1886 : vec4<f32> = u_xlat11;
    let x_1888 : vec3<f32> = (vec3<f32>(x_1884, x_1884, x_1884) * vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
    let x_1889 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
    let x_1891 : vec3<f32> = u_xlat23;
    let x_1892 : f32 = u_xlat49;
    let x_1895 : vec3<f32> = u_xlat17;
    u_xlat23 = ((x_1891 * vec3<f32>(x_1892, x_1892, x_1892)) + x_1895);
    let x_1897 : vec3<f32> = u_xlat23;
    let x_1898 : vec3<f32> = u_xlat23;
    u_xlat44 = dot(x_1897, x_1898);
    let x_1900 : f32 = u_xlat44;
    u_xlat44 = max(x_1900, 1.17549435e-37f);
    let x_1902 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_1902);
    let x_1904 : f32 = u_xlat44;
    let x_1906 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1904, x_1904, x_1904) * x_1906);
    let x_1908 : vec4<f32> = u_xlat4;
    let x_1910 : vec3<f32> = u_xlat23;
    u_xlat44 = dot(vec3<f32>(x_1908.x, x_1908.y, x_1908.z), x_1910);
    let x_1912 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1912, 0.0f, 1.0f);
    let x_1914 : vec3<f32> = u_xlat10;
    let x_1915 : vec3<f32> = u_xlat23;
    u_xlat3.x = dot(x_1914, x_1915);
    let x_1919 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1919, 0.0f, 1.0f);
    let x_1922 : f32 = u_xlat44;
    let x_1923 : f32 = u_xlat44;
    u_xlat44 = (x_1922 * x_1923);
    let x_1925 : f32 = u_xlat44;
    let x_1927 : f32 = u_xlat9.x;
    u_xlat44 = ((x_1925 * x_1927) + 1.000010014f);
    let x_1931 : f32 = u_xlat3.x;
    let x_1933 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1931 * x_1933);
    let x_1936 : f32 = u_xlat44;
    let x_1937 : f32 = u_xlat44;
    u_xlat44 = (x_1936 * x_1937);
    let x_1940 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1940, 0.100000001f);
    let x_1943 : f32 = u_xlat44;
    let x_1945 : f32 = u_xlat3.x;
    u_xlat44 = (x_1943 * x_1945);
    let x_1947 : f32 = u_xlat47;
    let x_1948 : f32 = u_xlat44;
    u_xlat44 = (x_1947 * x_1948);
    let x_1950 : f32 = u_xlat46;
    let x_1951 : f32 = u_xlat44;
    u_xlat44 = (x_1950 / x_1951);
    let x_1953 : f32 = u_xlat44;
    let x_1956 : vec3<f32> = u_xlat2;
    u_xlat23 = ((vec3<f32>(x_1953, x_1953, x_1953) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1956);
    let x_1958 : vec3<f32> = u_xlat23;
    let x_1959 : vec4<f32> = u_xlat11;
    let x_1962 : vec4<f32> = u_xlat8;
    let x_1964 : vec3<f32> = ((x_1958 * vec3<f32>(x_1959.x, x_1959.y, x_1959.z)) + vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
    let x_1965 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);

    continuing {
      let x_1967 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1967 + bitcast<u32>(1i));
    }
  }
  let x_1969 : vec4<f32> = u_xlat5;
  let x_1971 : vec4<f32> = u_xlat6;
  let x_1974 : vec4<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_1969.x, x_1969.y, x_1969.z) * vec3<f32>(x_1971.x, x_1971.x, x_1971.x)) + vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
  let x_1977 : vec4<f32> = u_xlat8;
  let x_1979 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1977.x, x_1977.y, x_1977.z) + x_1979);
  let x_1981 : vec4<f32> = vs_INTERP4;
  let x_1983 : vec3<f32> = u_xlat0;
  let x_1985 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1981.w, x_1981.w, x_1981.w) * x_1983) + x_1985);
  let x_1988 : f32 = u_xlat15.x;
  let x_1990 : f32 = u_xlat15.x;
  u_xlat42 = (x_1988 * -(x_1990));
  let x_1993 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1993);
  let x_1995 : vec3<f32> = u_xlat0;
  let x_1998 : vec4<f32> = x_66.unity_FogColor;
  u_xlat0 = (x_1995 + -(vec3<f32>(x_1998.x, x_1998.y, x_1998.z)));
  let x_2004 : f32 = u_xlat42;
  let x_2006 : vec3<f32> = u_xlat0;
  let x_2009 : vec4<f32> = x_66.unity_FogColor;
  let x_2011 : vec3<f32> = ((vec3<f32>(x_2004, x_2004, x_2004) * x_2006) + vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
  let x_2012 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2012.w);
  let x_2014 : bool = u_xlatb29;
  if (x_2014) {
    let x_2019 : f32 = u_xlat1.x;
    x_2015 = x_2019;
  } else {
    x_2015 = 1.0f;
  }
  let x_2021 : f32 = x_2015;
  SV_Target0.w = x_2021;
  let x_2028 : u32 = x_66.x_RenderingLayerMaxInt;
  let x_2030 : f32 = x_500.unity_RenderingLayer.x;
  u_xlatu0 = (x_2028 & bitcast<u32>(x_2030));
  let x_2033 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2033);
  let x_2038 : f32 = u_xlat0.x;
  let x_2040 : f32 = x_66.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2038 * x_2040);
  let x_2044 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2044, 0.0f, 1.0f);
  let x_2047 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2047.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

