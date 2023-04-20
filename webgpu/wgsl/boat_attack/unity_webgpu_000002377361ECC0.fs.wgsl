diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : f32;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb12 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_42 : UnityPerDraw;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_121 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_131 : UnityPerMaterial;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat18 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_225 : LightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat37 : f32;

var<private> u_xlatb2 : bool;

var<private> u_xlatb14 : bool;

var<private> u_xlatb0 : bool;

var<private> u_xlat14 : f32;

var<private> u_xlat26 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat15 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatu37 : u32;

var<private> u_xlatu29 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati29 : i32;

@group(1) @binding(1) var<uniform> x_996 : AdditionalLights;

var<private> u_xlat43 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu5 : u32;

var<private> u_xlatb29 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_344 : f32;
  var x_390 : f32;
  var x_473 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1143 : f32;
  var x_1154 : f32;
  var txVec2 : vec3<f32>;
  var x_1271 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_INTERP9;
  let x_13 : vec3<f32> = vs_INTERP9;
  u_xlat0 = dot(x_12, x_13);
  let x_15 : f32 = u_xlat0;
  u_xlat0 = sqrt(x_15);
  let x_18 : f32 = u_xlat0;
  u_xlat0 = (1.0f / x_18);
  let x_32 : f32 = vs_INTERP4.w;
  u_xlatb12.x = (0.0f < x_32);
  let x_47 : f32 = x_42.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_47 >= 0.0f);
  let x_54 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_54);
  let x_59 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_59);
  let x_63 : f32 = u_xlat12.y;
  let x_65 : f32 = u_xlat12.x;
  u_xlat12.x = (x_63 * x_65);
  let x_69 : vec4<f32> = vs_INTERP4;
  let x_71 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_69.y, x_69.z, x_69.x) * vec3<f32>(x_71.z, x_71.x, x_71.y));
  let x_74 : vec3<f32> = vs_INTERP9;
  let x_76 : vec4<f32> = vs_INTERP4;
  let x_79 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_74.y, x_74.z, x_74.x) * vec3<f32>(x_76.z, x_76.x, x_76.y)) + -(x_79));
  let x_82 : vec3<f32> = u_xlat12;
  let x_84 : vec3<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_82.x, x_82.x, x_82.x) * x_84);
  let x_86 : f32 = u_xlat0;
  let x_88 : vec3<f32> = vs_INTERP9;
  u_xlat1 = (vec3<f32>(x_86, x_86, x_86) * x_88);
  let x_92 : f32 = u_xlat0;
  let x_94 : vec4<f32> = vs_INTERP4;
  let x_96 : vec3<f32> = (vec3<f32>(x_92, x_92, x_92) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_100 : vec3<f32> = u_xlat12;
  let x_101 : f32 = u_xlat0;
  u_xlat3 = (x_100 * vec3<f32>(x_101, x_101, x_101));
  let x_117 : vec4<f32> = vs_INTERP5;
  let x_124 : f32 = x_121.x_GlobalMipBias.x;
  let x_125 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_117.x, x_117.y), x_124);
  u_xlat4 = x_125;
  let x_127 : vec4<f32> = u_xlat4;
  let x_135 : vec4<f32> = x_131.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_127.x, x_127.y, x_127.z) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_144 : vec4<f32> = vs_INTERP5;
  let x_147 : f32 = x_121.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_144.x, x_144.y), x_147);
  u_xlat6 = vec4<f32>(x_148.w, x_148.x, x_148.y, x_148.z);
  let x_151 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_151.y, x_151.z, x_151.w, x_151.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_158 : vec4<f32> = u_xlat7;
  let x_159 : vec4<f32> = u_xlat7;
  u_xlat0 = dot(x_158, x_159);
  let x_161 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_161);
  let x_164 : f32 = u_xlat0;
  let x_166 : vec4<f32> = u_xlat7;
  u_xlat18 = (vec3<f32>(x_164, x_164, x_164) * vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_171 : f32 = vs_INTERP6.y;
  u_xlat0 = (x_171 * 200.0f);
  let x_174 : f32 = u_xlat0;
  u_xlat0 = min(x_174, 1.0f);
  let x_176 : f32 = u_xlat0;
  let x_178 : vec4<f32> = u_xlat4;
  let x_180 : vec3<f32> = (vec3<f32>(x_176, x_176, x_176) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_183 : vec3<f32> = u_xlat3;
  let x_184 : vec3<f32> = u_xlat18;
  u_xlat3 = (x_183 * vec3<f32>(x_184.y, x_184.y, x_184.y));
  let x_187 : vec3<f32> = u_xlat18;
  let x_189 : vec4<f32> = u_xlat2;
  let x_192 : vec3<f32> = u_xlat3;
  let x_193 : vec3<f32> = ((vec3<f32>(x_187.x, x_187.x, x_187.x) * vec3<f32>(x_189.x, x_189.y, x_189.z)) + x_192);
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec3<f32> = u_xlat18;
  let x_198 : vec3<f32> = u_xlat1;
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_196.z, x_196.z, x_196.z) * x_198) + vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec3<f32> = u_xlat1;
  let x_204 : vec3<f32> = u_xlat1;
  u_xlat0 = dot(x_203, x_204);
  let x_206 : f32 = u_xlat0;
  u_xlat0 = max(x_206, 1.17549435e-38f);
  let x_209 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_209);
  let x_211 : f32 = u_xlat0;
  let x_213 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_211, x_211, x_211) * x_213);
  let x_216 : vec3<f32> = vs_INTERP8;
  let x_227 : vec4<f32> = x_225.x_MainLightWorldToShadow[0i][1i];
  let x_229 : vec3<f32> = (vec3<f32>(x_216.y, x_216.y, x_216.y) * vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : vec4<f32> = x_225.x_MainLightWorldToShadow[0i][0i];
  let x_235 : vec3<f32> = vs_INTERP8;
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_245 : vec4<f32> = x_225.x_MainLightWorldToShadow[0i][2i];
  let x_247 : vec3<f32> = vs_INTERP8;
  let x_250 : vec4<f32> = u_xlat2;
  let x_252 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.z, x_247.z, x_247.z)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = x_225.x_MainLightWorldToShadow[0i][3i];
  let x_260 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_265 : vec4<f32> = u_xlat2;
  let x_266 : vec2<f32> = vec2<f32>(x_265.x, x_265.y);
  let x_268 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_266.x, x_266.y, x_268);
  let x_280 : vec3<f32> = txVec0;
  let x_282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_280.xy, x_280.z);
  u_xlat0 = x_282;
  let x_286 : f32 = x_225.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_286) + 1.0f);
  let x_289 : f32 = u_xlat0;
  let x_291 : f32 = x_225.x_MainLightShadowParams.x;
  let x_293 : f32 = u_xlat37;
  u_xlat0 = ((x_289 * x_291) + x_293);
  let x_297 : f32 = u_xlat2.z;
  u_xlatb2 = (0.0f >= x_297);
  let x_301 : f32 = u_xlat2.z;
  u_xlatb14 = (x_301 >= 1.0f);
  let x_303 : bool = u_xlatb14;
  let x_304 : bool = u_xlatb2;
  u_xlatb2 = (x_303 | x_304);
  let x_306 : bool = u_xlatb2;
  let x_307 : f32 = u_xlat0;
  u_xlat0 = select(x_307, 1.0f, x_306);
  let x_309 : vec3<f32> = u_xlat1;
  let x_311 : vec4<f32> = x_121.x_MainLightPosition;
  u_xlat1.x = dot(x_309, -(vec3<f32>(x_311.x, x_311.y, x_311.z)));
  let x_317 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_317, 0.0f, 1.0f);
  let x_320 : f32 = u_xlat0;
  let x_323 : vec4<f32> = x_121.x_MainLightColor;
  let x_325 : vec3<f32> = (vec3<f32>(x_320, x_320, x_320) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec3<f32> = u_xlat1;
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_328.x, x_328.x, x_328.x) * vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec3<f32> = u_xlat1;
  let x_334 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_333 * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_339 : f32 = u_xlat4.w;
  u_xlatb0 = (x_339 >= 0.40000000596046447754f);
  let x_342 : bool = u_xlatb0;
  if (x_342) {
    let x_348 : f32 = u_xlat4.w;
    x_344 = x_348;
  } else {
    x_344 = 0.0f;
  }
  let x_350 : f32 = x_344;
  u_xlat0 = x_350;
  let x_352 : f32 = u_xlat4.w;
  u_xlat2.x = (x_352 + -0.40000000596046447754f);
  let x_358 : f32 = u_xlat4.w;
  u_xlat14 = dpdxCoarse(x_358);
  let x_362 : f32 = u_xlat4.w;
  u_xlat26 = dpdyCoarse(x_362);
  let x_364 : f32 = u_xlat26;
  let x_366 : f32 = u_xlat14;
  u_xlat14 = (abs(x_364) + abs(x_366));
  let x_369 : f32 = u_xlat14;
  u_xlat14 = max(x_369, 0.00009999999747378752f);
  let x_373 : f32 = u_xlat2.x;
  let x_374 : f32 = u_xlat14;
  u_xlat2.x = (x_373 / x_374);
  let x_378 : f32 = u_xlat2.x;
  u_xlat2.x = (x_378 + 0.5f);
  let x_383 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_383, 0.0f, 1.0f);
  let x_387 : f32 = x_121.x_AlphaToMaskAvailable;
  u_xlatb14 = !((x_387 == 0.0f));
  let x_389 : bool = u_xlatb14;
  if (x_389) {
    let x_394 : f32 = u_xlat2.x;
    x_390 = x_394;
  } else {
    let x_396 : f32 = u_xlat0;
    x_390 = x_396;
  }
  let x_397 : f32 = x_390;
  u_xlat0 = x_397;
  let x_398 : f32 = u_xlat0;
  u_xlat2.x = (x_398 + -0.00009999999747378752f);
  let x_403 : f32 = u_xlat2.x;
  u_xlatb2 = (x_403 < 0.0f);
  let x_405 : bool = u_xlatb2;
  if (((select(0i, 1i, x_405) * -1i) != 0i)) {
    discard;
  }
  let x_413 : vec3<f32> = u_xlat12;
  let x_414 : vec3<f32> = u_xlat18;
  u_xlat12 = (x_413 * vec3<f32>(x_414.y, x_414.y, x_414.y));
  let x_417 : vec3<f32> = u_xlat18;
  let x_419 : vec4<f32> = vs_INTERP4;
  let x_422 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_417.x, x_417.x, x_417.x) * vec3<f32>(x_419.x, x_419.y, x_419.z)) + x_422);
  let x_424 : vec3<f32> = u_xlat18;
  let x_426 : vec3<f32> = vs_INTERP9;
  let x_428 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_424.z, x_424.z, x_424.z) * x_426) + x_428);
  let x_430 : vec3<f32> = u_xlat12;
  let x_431 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_430, x_431);
  let x_435 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_435);
  let x_438 : vec3<f32> = u_xlat12;
  let x_439 : vec4<f32> = u_xlat2;
  u_xlat12 = (x_438 * vec3<f32>(x_439.x, x_439.x, x_439.x));
  let x_444 : f32 = x_121.unity_OrthoParams.w;
  u_xlatb2 = (x_444 == 0.0f);
  let x_446 : vec3<f32> = vs_INTERP8;
  let x_451 : vec3<f32> = x_121.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_446) + x_451);
  let x_453 : vec3<f32> = u_xlat3;
  let x_454 : vec3<f32> = u_xlat3;
  u_xlat26 = dot(x_453, x_454);
  let x_456 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_456);
  let x_458 : f32 = u_xlat26;
  let x_460 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_458, x_458, x_458) * x_460);
  let x_464 : f32 = x_121.unity_MatrixV[0i].z;
  u_xlat4.x = x_464;
  let x_467 : f32 = x_121.unity_MatrixV[1i].z;
  u_xlat4.y = x_467;
  let x_470 : f32 = x_121.unity_MatrixV[2i].z;
  u_xlat4.z = x_470;
  let x_472 : bool = u_xlatb2;
  if (x_472) {
    let x_476 : vec3<f32> = u_xlat3;
    x_473 = x_476;
  } else {
    let x_478 : vec4<f32> = u_xlat4;
    x_473 = vec3<f32>(x_478.x, x_478.y, x_478.z);
  }
  let x_480 : vec3<f32> = x_473;
  let x_481 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_480.x, x_481.y, x_480.y, x_480.z);
  let x_484 : f32 = vs_INTERP8.y;
  let x_486 : f32 = x_121.unity_MatrixV[1i].z;
  u_xlat3.x = (x_484 * x_486);
  let x_490 : f32 = x_121.unity_MatrixV[0i].z;
  let x_492 : f32 = vs_INTERP8.x;
  let x_495 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_490 * x_492) + x_495);
  let x_499 : f32 = x_121.unity_MatrixV[2i].z;
  let x_501 : f32 = vs_INTERP8.z;
  let x_504 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_499 * x_501) + x_504);
  let x_508 : f32 = u_xlat3.x;
  let x_510 : f32 = x_121.unity_MatrixV[3i].z;
  u_xlat3.x = (x_508 + x_510);
  let x_514 : f32 = u_xlat3.x;
  let x_518 : f32 = x_121.x_ProjectionParams.y;
  u_xlat3.x = (-(x_514) + -(x_518));
  let x_523 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_523, 0.0f);
  let x_527 : f32 = u_xlat3.x;
  let x_529 : f32 = x_121.unity_FogParams.x;
  u_xlat3.x = (x_527 * x_529);
  let x_539 : vec2<f32> = vs_INTERP0;
  let x_541 : f32 = x_121.x_GlobalMipBias.x;
  let x_542 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_539, x_541);
  u_xlat4 = x_542;
  let x_548 : vec2<f32> = vs_INTERP0;
  let x_550 : f32 = x_121.x_GlobalMipBias.x;
  let x_551 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_548, x_550);
  u_xlat15 = vec3<f32>(x_551.x, x_551.y, x_551.z);
  let x_553 : vec4<f32> = u_xlat4;
  let x_557 : vec3<f32> = (vec3<f32>(x_553.x, x_553.y, x_553.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_558 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_560 : vec3<f32> = u_xlat12;
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(x_560, vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_566 : f32 = u_xlat4.x;
  u_xlat4.x = (x_566 + 0.5f);
  let x_569 : vec3<f32> = u_xlat15;
  let x_570 : vec4<f32> = u_xlat4;
  u_xlat15 = (x_569 * vec3<f32>(x_570.x, x_570.x, x_570.x));
  let x_574 : f32 = u_xlat4.w;
  u_xlat4.x = max(x_574, 0.00009999999747378752f);
  let x_577 : vec3<f32> = u_xlat15;
  let x_578 : vec4<f32> = u_xlat4;
  u_xlat15 = (x_577 / vec3<f32>(x_578.x, x_578.x, x_578.x));
  let x_582 : f32 = u_xlat6.x;
  u_xlat6.x = x_582;
  let x_585 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_585, 0.0f, 1.0f);
  let x_588 : f32 = u_xlat0;
  u_xlat0 = min(x_588, 1.0f);
  let x_590 : vec3<f32> = u_xlat5;
  let x_593 : vec3<f32> = (x_590 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_594 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_598 : f32 = u_xlat6.x;
  u_xlat40 = (-(x_598) + 1.0f);
  let x_601 : f32 = u_xlat40;
  let x_602 : f32 = u_xlat40;
  u_xlat5.x = (x_601 * x_602);
  let x_606 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_606, 0.0078125f);
  let x_612 : f32 = u_xlat5.x;
  let x_614 : f32 = u_xlat5.x;
  u_xlat17 = (x_612 * x_614);
  let x_618 : f32 = u_xlat6.x;
  u_xlat29 = (x_618 + 0.04000002145767211914f);
  let x_621 : f32 = u_xlat29;
  u_xlat29 = min(x_621, 1.0f);
  let x_625 : f32 = u_xlat5.x;
  u_xlat41 = ((x_625 * 4.0f) + 2.0f);
  let x_630 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_630, 1.0f);
  let x_635 : vec4<f32> = vs_INTERP3;
  let x_636 : vec2<f32> = vec2<f32>(x_635.x, x_635.y);
  let x_638 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_636.x, x_636.y, x_638);
  let x_645 : vec3<f32> = txVec1;
  let x_647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_645.xy, x_645.z);
  u_xlat18.x = x_647;
  let x_650 : f32 = u_xlat18.x;
  let x_652 : f32 = x_225.x_MainLightShadowParams.x;
  let x_654 : f32 = u_xlat37;
  u_xlat37 = ((x_650 * x_652) + x_654);
  let x_658 : f32 = vs_INTERP3.z;
  u_xlatb18 = (0.0f >= x_658);
  let x_662 : f32 = vs_INTERP3.z;
  u_xlatb30 = (x_662 >= 1.0f);
  let x_664 : bool = u_xlatb30;
  let x_665 : bool = u_xlatb18;
  u_xlatb18 = (x_664 | x_665);
  let x_667 : bool = u_xlatb18;
  let x_668 : f32 = u_xlat37;
  u_xlat37 = select(x_668, 1.0f, x_667);
  let x_670 : vec3<f32> = vs_INTERP8;
  let x_672 : vec3<f32> = x_121.x_WorldSpaceCameraPos;
  u_xlat18 = (x_670 + -(x_672));
  let x_675 : vec3<f32> = u_xlat18;
  let x_676 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_675, x_676);
  let x_681 : f32 = u_xlat18.x;
  let x_683 : f32 = x_225.x_MainLightShadowParams.z;
  let x_686 : f32 = x_225.x_MainLightShadowParams.w;
  u_xlat30 = ((x_681 * x_683) + x_686);
  let x_688 : f32 = u_xlat30;
  u_xlat30 = clamp(x_688, 0.0f, 1.0f);
  let x_691 : f32 = u_xlat37;
  u_xlat42 = (-(x_691) + 1.0f);
  let x_694 : f32 = u_xlat30;
  let x_695 : f32 = u_xlat42;
  let x_697 : f32 = u_xlat37;
  u_xlat37 = ((x_694 * x_695) + x_697);
  let x_699 : vec4<f32> = u_xlat2;
  let x_702 : vec3<f32> = u_xlat12;
  u_xlat30 = dot(-(vec3<f32>(x_699.x, x_699.z, x_699.w)), x_702);
  let x_704 : f32 = u_xlat30;
  let x_705 : f32 = u_xlat30;
  u_xlat30 = (x_704 + x_705);
  let x_707 : vec3<f32> = u_xlat12;
  let x_708 : f32 = u_xlat30;
  let x_712 : vec4<f32> = u_xlat2;
  let x_715 : vec3<f32> = ((x_707 * -(vec3<f32>(x_708, x_708, x_708))) + -(vec3<f32>(x_712.x, x_712.z, x_712.w)));
  let x_716 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec3<f32> = u_xlat12;
  let x_719 : vec4<f32> = u_xlat2;
  u_xlat30 = dot(x_718, vec3<f32>(x_719.x, x_719.z, x_719.w));
  let x_722 : f32 = u_xlat30;
  u_xlat30 = clamp(x_722, 0.0f, 1.0f);
  let x_724 : f32 = u_xlat30;
  u_xlat30 = (-(x_724) + 1.0f);
  let x_727 : f32 = u_xlat30;
  let x_728 : f32 = u_xlat30;
  u_xlat30 = (x_727 * x_728);
  let x_730 : f32 = u_xlat30;
  let x_731 : f32 = u_xlat30;
  u_xlat30 = (x_730 * x_731);
  let x_733 : f32 = u_xlat40;
  u_xlat42 = ((-(x_733) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_739 : f32 = u_xlat40;
  let x_740 : f32 = u_xlat42;
  u_xlat40 = (x_739 * x_740);
  let x_742 : f32 = u_xlat40;
  u_xlat40 = (x_742 * 6.0f);
  let x_753 : vec4<f32> = u_xlat7;
  let x_755 : f32 = u_xlat40;
  let x_756 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_753.x, x_753.y, x_753.z), x_755);
  u_xlat7 = x_756;
  let x_758 : f32 = u_xlat7.w;
  u_xlat40 = (x_758 + -1.0f);
  let x_761 : f32 = x_42.unity_SpecCube0_HDR.w;
  let x_762 : f32 = u_xlat40;
  u_xlat40 = ((x_761 * x_762) + 1.0f);
  let x_765 : f32 = u_xlat40;
  u_xlat40 = max(x_765, 0.0f);
  let x_767 : f32 = u_xlat40;
  u_xlat40 = log2(x_767);
  let x_769 : f32 = u_xlat40;
  let x_771 : f32 = x_42.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_769 * x_771);
  let x_773 : f32 = u_xlat40;
  u_xlat40 = exp2(x_773);
  let x_775 : f32 = u_xlat40;
  let x_777 : f32 = x_42.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_775 * x_777);
  let x_779 : vec4<f32> = u_xlat7;
  let x_781 : f32 = u_xlat40;
  let x_783 : vec3<f32> = (vec3<f32>(x_779.x, x_779.y, x_779.z) * vec3<f32>(x_781, x_781, x_781));
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_788 : vec3<f32> = u_xlat5;
  let x_790 : vec3<f32> = u_xlat5;
  u_xlat8 = ((vec2<f32>(x_788.x, x_788.x) * vec2<f32>(x_790.x, x_790.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_796 : f32 = u_xlat8.y;
  u_xlat40 = (1.0f / x_796);
  let x_798 : f32 = u_xlat29;
  u_xlat5.x = (x_798 + -0.03999999910593032837f);
  let x_802 : f32 = u_xlat30;
  let x_804 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_802 * x_804) + 0.03999999910593032837f);
  let x_809 : f32 = u_xlat40;
  let x_811 : f32 = u_xlat5.x;
  u_xlat40 = (x_809 * x_811);
  let x_813 : f32 = u_xlat40;
  let x_815 : vec4<f32> = u_xlat7;
  let x_817 : vec3<f32> = (vec3<f32>(x_813, x_813, x_813) * vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec3<f32> = u_xlat15;
  let x_821 : vec4<f32> = u_xlat4;
  let x_824 : vec4<f32> = u_xlat7;
  u_xlat15 = ((x_820 * vec3<f32>(x_821.x, x_821.y, x_821.z)) + vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_827 : f32 = u_xlat37;
  let x_829 : f32 = x_42.unity_LightData.z;
  u_xlat37 = (x_827 * x_829);
  let x_831 : vec3<f32> = u_xlat12;
  let x_833 : vec4<f32> = x_121.x_MainLightPosition;
  u_xlat40 = dot(x_831, vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : f32 = u_xlat40;
  u_xlat40 = clamp(x_836, 0.0f, 1.0f);
  let x_838 : f32 = u_xlat37;
  let x_839 : f32 = u_xlat40;
  u_xlat37 = (x_838 * x_839);
  let x_841 : f32 = u_xlat37;
  let x_844 : vec4<f32> = x_121.x_MainLightColor;
  let x_846 : vec3<f32> = (vec3<f32>(x_841, x_841, x_841) * vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_850 : vec4<f32> = u_xlat2;
  let x_853 : vec4<f32> = x_121.x_MainLightPosition;
  u_xlat20 = (vec3<f32>(x_850.x, x_850.z, x_850.w) + vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec3<f32> = u_xlat20;
  let x_857 : vec3<f32> = u_xlat20;
  u_xlat37 = dot(x_856, x_857);
  let x_859 : f32 = u_xlat37;
  u_xlat37 = max(x_859, 1.17549435e-38f);
  let x_861 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_861);
  let x_863 : f32 = u_xlat37;
  let x_865 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_863, x_863, x_863) * x_865);
  let x_867 : vec3<f32> = u_xlat12;
  let x_868 : vec3<f32> = u_xlat20;
  u_xlat37 = dot(x_867, x_868);
  let x_870 : f32 = u_xlat37;
  u_xlat37 = clamp(x_870, 0.0f, 1.0f);
  let x_873 : vec4<f32> = x_121.x_MainLightPosition;
  let x_875 : vec3<f32> = u_xlat20;
  u_xlat40 = dot(vec3<f32>(x_873.x, x_873.y, x_873.z), x_875);
  let x_877 : f32 = u_xlat40;
  u_xlat40 = clamp(x_877, 0.0f, 1.0f);
  let x_879 : f32 = u_xlat37;
  let x_880 : f32 = u_xlat37;
  u_xlat37 = (x_879 * x_880);
  let x_882 : f32 = u_xlat37;
  let x_884 : f32 = u_xlat8.x;
  u_xlat37 = ((x_882 * x_884) + 1.00001001358032226562f);
  let x_888 : f32 = u_xlat40;
  let x_889 : f32 = u_xlat40;
  u_xlat40 = (x_888 * x_889);
  let x_891 : f32 = u_xlat37;
  let x_892 : f32 = u_xlat37;
  u_xlat37 = (x_891 * x_892);
  let x_894 : f32 = u_xlat40;
  u_xlat40 = max(x_894, 0.10000000149011611938f);
  let x_897 : f32 = u_xlat37;
  let x_898 : f32 = u_xlat40;
  u_xlat37 = (x_897 * x_898);
  let x_900 : f32 = u_xlat41;
  let x_901 : f32 = u_xlat37;
  u_xlat37 = (x_900 * x_901);
  let x_903 : f32 = u_xlat17;
  let x_904 : f32 = u_xlat37;
  u_xlat37 = (x_903 / x_904);
  let x_906 : f32 = u_xlat37;
  let x_910 : vec4<f32> = u_xlat4;
  u_xlat20 = ((vec3<f32>(x_906, x_906, x_906) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_910.x, x_910.y, x_910.z));
  let x_913 : vec4<f32> = u_xlat7;
  let x_915 : vec3<f32> = u_xlat20;
  let x_916 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) * x_915);
  let x_917 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_921 : f32 = x_121.x_AdditionalLightsCount.x;
  let x_923 : f32 = x_42.unity_LightData.y;
  u_xlat37 = min(x_921, x_923);
  let x_927 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_927));
  let x_931 : f32 = u_xlat18.x;
  let x_934 : f32 = x_225.x_AdditionalShadowFadeParams.x;
  let x_937 : f32 = x_225.x_AdditionalShadowFadeParams.y;
  u_xlat40 = ((x_931 * x_934) + x_937);
  let x_939 : f32 = u_xlat40;
  u_xlat40 = clamp(x_939, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_951 : u32 = u_xlatu_loop_1;
    let x_952 : u32 = u_xlatu37;
    if ((x_951 < x_952)) {
    } else {
      break;
    }
    let x_955 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_955 >> 2u);
    let x_959 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_959 & 3u));
    let x_962 : u32 = u_xlatu29;
    let x_965 : vec4<f32> = x_42.unity_LightIndices[bitcast<i32>(x_962)];
    let x_975 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_980 : vec4<u32> = indexable[x_975];
    u_xlat29 = dot(x_965, bitcast<vec4<f32>>(x_980));
    let x_984 : f32 = u_xlat29;
    u_xlati29 = i32(x_984);
    let x_986 : vec3<f32> = vs_INTERP8;
    let x_997 : i32 = u_xlati29;
    let x_999 : vec4<f32> = x_996.x_AdditionalLightsPosition[x_997];
    let x_1002 : i32 = u_xlati29;
    let x_1004 : vec4<f32> = x_996.x_AdditionalLightsPosition[x_1002];
    u_xlat20 = ((-(x_986) * vec3<f32>(x_999.w, x_999.w, x_999.w)) + vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
    let x_1008 : vec3<f32> = u_xlat20;
    let x_1009 : vec3<f32> = u_xlat20;
    u_xlat43 = dot(x_1008, x_1009);
    let x_1011 : f32 = u_xlat43;
    u_xlat43 = max(x_1011, 0.00006103515625f);
    let x_1015 : f32 = u_xlat43;
    u_xlat9 = inverseSqrt(x_1015);
    let x_1018 : vec3<f32> = u_xlat20;
    let x_1019 : f32 = u_xlat9;
    u_xlat21 = (x_1018 * vec3<f32>(x_1019, x_1019, x_1019));
    let x_1023 : f32 = u_xlat43;
    u_xlat10.x = (1.0f / x_1023);
    let x_1026 : f32 = u_xlat43;
    let x_1027 : i32 = u_xlati29;
    let x_1029 : f32 = x_996.x_AdditionalLightsAttenuation[x_1027].x;
    u_xlat43 = (x_1026 * x_1029);
    let x_1031 : f32 = u_xlat43;
    let x_1033 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1031) * x_1033) + 1.0f);
    let x_1036 : f32 = u_xlat43;
    u_xlat43 = max(x_1036, 0.0f);
    let x_1038 : f32 = u_xlat43;
    let x_1039 : f32 = u_xlat43;
    u_xlat43 = (x_1038 * x_1039);
    let x_1041 : f32 = u_xlat43;
    let x_1043 : f32 = u_xlat10.x;
    u_xlat43 = (x_1041 * x_1043);
    let x_1045 : i32 = u_xlati29;
    let x_1047 : vec4<f32> = x_996.x_AdditionalLightsSpotDir[x_1045];
    let x_1049 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1047.x, x_1047.y, x_1047.z), x_1049);
    let x_1053 : f32 = u_xlat10.x;
    let x_1054 : i32 = u_xlati29;
    let x_1056 : f32 = x_996.x_AdditionalLightsAttenuation[x_1054].z;
    let x_1058 : i32 = u_xlati29;
    let x_1060 : f32 = x_996.x_AdditionalLightsAttenuation[x_1058].w;
    u_xlat10.x = ((x_1053 * x_1056) + x_1060);
    let x_1064 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1064, 0.0f, 1.0f);
    let x_1068 : f32 = u_xlat10.x;
    let x_1070 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1068 * x_1070);
    let x_1073 : f32 = u_xlat43;
    let x_1075 : f32 = u_xlat10.x;
    u_xlat43 = (x_1073 * x_1075);
    let x_1079 : i32 = u_xlati29;
    let x_1081 : f32 = x_225.x_AdditionalShadowParams[x_1079].w;
    u_xlati10 = i32(x_1081);
    let x_1086 : i32 = u_xlati10;
    u_xlatb22.x = (x_1086 >= 0i);
    let x_1090 : bool = u_xlatb22.x;
    if (x_1090) {
      let x_1094 : i32 = u_xlati29;
      let x_1096 : f32 = x_225.x_AdditionalShadowParams[x_1094].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1096, x_1096, x_1096, x_1096))));
      let x_1103 : bool = u_xlatb22.x;
      if (x_1103) {
        let x_1106 : vec3<f32> = u_xlat21;
        let x_1109 : vec3<f32> = u_xlat21;
        let x_1112 : vec4<bool> = (abs(vec4<f32>(x_1106.z, x_1106.z, x_1106.y, x_1106.y)) >= abs(vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.x)));
        u_xlatb22 = vec3<bool>(x_1112.x, x_1112.y, x_1112.z);
        let x_1115 : bool = u_xlatb22.y;
        let x_1117 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1115 & x_1117);
        let x_1121 : vec3<f32> = u_xlat21;
        let x_1124 : vec4<bool> = (-(vec4<f32>(x_1121.z, x_1121.y, x_1121.x, x_1121.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1124.x, x_1124.y, x_1124.z);
        let x_1128 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1128);
        let x_1133 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1133);
        let x_1139 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1139);
        let x_1142 : bool = u_xlatb22.z;
        if (x_1142) {
          let x_1147 : f32 = u_xlat11.y;
          x_1143 = x_1147;
        } else {
          let x_1149 : f32 = u_xlat34;
          x_1143 = x_1149;
        }
        let x_1150 : f32 = x_1143;
        u_xlat34 = x_1150;
        let x_1153 : bool = u_xlatb22.x;
        if (x_1153) {
          let x_1158 : f32 = u_xlat11.x;
          x_1154 = x_1158;
        } else {
          let x_1160 : f32 = u_xlat34;
          x_1154 = x_1160;
        }
        let x_1161 : f32 = x_1154;
        u_xlat22 = x_1161;
        let x_1162 : i32 = u_xlati29;
        let x_1164 : f32 = x_225.x_AdditionalShadowParams[x_1162].w;
        u_xlat34 = trunc(x_1164);
        let x_1166 : f32 = u_xlat22;
        let x_1167 : f32 = u_xlat34;
        u_xlat22 = (x_1166 + x_1167);
        let x_1169 : f32 = u_xlat22;
        u_xlati10 = i32(x_1169);
      }
      let x_1171 : i32 = u_xlati10;
      u_xlati10 = (x_1171 << bitcast<u32>(2i));
      let x_1173 : vec3<f32> = vs_INTERP8;
      let x_1176 : i32 = u_xlati10;
      let x_1179 : i32 = u_xlati10;
      let x_1183 : vec4<f32> = x_225.x_AdditionalLightsWorldToShadow[((x_1176 + 1i) / 4i)][((x_1179 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1173.y, x_1173.y, x_1173.y, x_1173.y) * x_1183);
      let x_1185 : i32 = u_xlati10;
      let x_1187 : i32 = u_xlati10;
      let x_1190 : vec4<f32> = x_225.x_AdditionalLightsWorldToShadow[(x_1185 / 4i)][(x_1187 % 4i)];
      let x_1191 : vec3<f32> = vs_INTERP8;
      let x_1194 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1190 * vec4<f32>(x_1191.x, x_1191.x, x_1191.x, x_1191.x)) + x_1194);
      let x_1196 : i32 = u_xlati10;
      let x_1199 : i32 = u_xlati10;
      let x_1203 : vec4<f32> = x_225.x_AdditionalLightsWorldToShadow[((x_1196 + 2i) / 4i)][((x_1199 + 2i) % 4i)];
      let x_1204 : vec3<f32> = vs_INTERP8;
      let x_1207 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1203 * vec4<f32>(x_1204.z, x_1204.z, x_1204.z, x_1204.z)) + x_1207);
      let x_1209 : vec4<f32> = u_xlat11;
      let x_1210 : i32 = u_xlati10;
      let x_1213 : i32 = u_xlati10;
      let x_1217 : vec4<f32> = x_225.x_AdditionalLightsWorldToShadow[((x_1210 + 3i) / 4i)][((x_1213 + 3i) % 4i)];
      u_xlat10 = (x_1209 + x_1217);
      let x_1219 : vec4<f32> = u_xlat10;
      let x_1221 : vec4<f32> = u_xlat10;
      let x_1223 : vec3<f32> = (vec3<f32>(x_1219.x, x_1219.y, x_1219.z) / vec3<f32>(x_1221.w, x_1221.w, x_1221.w));
      let x_1224 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
      let x_1227 : vec4<f32> = u_xlat10;
      let x_1228 : vec2<f32> = vec2<f32>(x_1227.x, x_1227.y);
      let x_1230 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
      let x_1238 : vec3<f32> = txVec2;
      let x_1240 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1238.xy, x_1238.z);
      u_xlat10.x = x_1240;
      let x_1242 : i32 = u_xlati29;
      let x_1244 : f32 = x_225.x_AdditionalShadowParams[x_1242].x;
      u_xlat22 = (1.0f + -(x_1244));
      let x_1248 : f32 = u_xlat10.x;
      let x_1249 : i32 = u_xlati29;
      let x_1251 : f32 = x_225.x_AdditionalShadowParams[x_1249].x;
      let x_1253 : f32 = u_xlat22;
      u_xlat10.x = ((x_1248 * x_1251) + x_1253);
      let x_1257 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1257);
      let x_1262 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1262 >= 1.0f);
      let x_1264 : bool = u_xlatb34;
      let x_1266 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1264 | x_1266);
      let x_1270 : bool = u_xlatb22.x;
      if (x_1270) {
        x_1271 = 1.0f;
      } else {
        let x_1276 : f32 = u_xlat10.x;
        x_1271 = x_1276;
      }
      let x_1277 : f32 = x_1271;
      u_xlat10.x = x_1277;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1282 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1282) + 1.0f);
    let x_1285 : f32 = u_xlat40;
    let x_1286 : f32 = u_xlat22;
    let x_1289 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1285 * x_1286) + x_1289);
    let x_1292 : f32 = u_xlat43;
    let x_1294 : f32 = u_xlat10.x;
    u_xlat43 = (x_1292 * x_1294);
    let x_1296 : vec3<f32> = u_xlat12;
    let x_1297 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_1296, x_1297);
    let x_1301 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1301, 0.0f, 1.0f);
    let x_1304 : f32 = u_xlat43;
    let x_1306 : f32 = u_xlat10.x;
    u_xlat43 = (x_1304 * x_1306);
    let x_1308 : f32 = u_xlat43;
    let x_1310 : i32 = u_xlati29;
    let x_1312 : vec4<f32> = x_996.x_AdditionalLightsColor[x_1310];
    let x_1314 : vec3<f32> = (vec3<f32>(x_1308, x_1308, x_1308) * vec3<f32>(x_1312.x, x_1312.y, x_1312.z));
    let x_1315 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
    let x_1317 : vec3<f32> = u_xlat20;
    let x_1318 : f32 = u_xlat9;
    let x_1321 : vec4<f32> = u_xlat2;
    u_xlat20 = ((x_1317 * vec3<f32>(x_1318, x_1318, x_1318)) + vec3<f32>(x_1321.x, x_1321.z, x_1321.w));
    let x_1324 : vec3<f32> = u_xlat20;
    let x_1325 : vec3<f32> = u_xlat20;
    u_xlat29 = dot(x_1324, x_1325);
    let x_1327 : f32 = u_xlat29;
    u_xlat29 = max(x_1327, 1.17549435e-38f);
    let x_1329 : f32 = u_xlat29;
    u_xlat29 = inverseSqrt(x_1329);
    let x_1331 : f32 = u_xlat29;
    let x_1333 : vec3<f32> = u_xlat20;
    u_xlat20 = (vec3<f32>(x_1331, x_1331, x_1331) * x_1333);
    let x_1335 : vec3<f32> = u_xlat12;
    let x_1336 : vec3<f32> = u_xlat20;
    u_xlat29 = dot(x_1335, x_1336);
    let x_1338 : f32 = u_xlat29;
    u_xlat29 = clamp(x_1338, 0.0f, 1.0f);
    let x_1340 : vec3<f32> = u_xlat21;
    let x_1341 : vec3<f32> = u_xlat20;
    u_xlat43 = dot(x_1340, x_1341);
    let x_1343 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1343, 0.0f, 1.0f);
    let x_1345 : f32 = u_xlat29;
    let x_1346 : f32 = u_xlat29;
    u_xlat29 = (x_1345 * x_1346);
    let x_1348 : f32 = u_xlat29;
    let x_1350 : f32 = u_xlat8.x;
    u_xlat29 = ((x_1348 * x_1350) + 1.00001001358032226562f);
    let x_1353 : f32 = u_xlat43;
    let x_1354 : f32 = u_xlat43;
    u_xlat43 = (x_1353 * x_1354);
    let x_1356 : f32 = u_xlat29;
    let x_1357 : f32 = u_xlat29;
    u_xlat29 = (x_1356 * x_1357);
    let x_1359 : f32 = u_xlat43;
    u_xlat43 = max(x_1359, 0.10000000149011611938f);
    let x_1361 : f32 = u_xlat29;
    let x_1362 : f32 = u_xlat43;
    u_xlat29 = (x_1361 * x_1362);
    let x_1364 : f32 = u_xlat41;
    let x_1365 : f32 = u_xlat29;
    u_xlat29 = (x_1364 * x_1365);
    let x_1367 : f32 = u_xlat17;
    let x_1368 : f32 = u_xlat29;
    u_xlat29 = (x_1367 / x_1368);
    let x_1370 : f32 = u_xlat29;
    let x_1373 : vec4<f32> = u_xlat4;
    u_xlat20 = ((vec3<f32>(x_1370, x_1370, x_1370) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + vec3<f32>(x_1373.x, x_1373.y, x_1373.z));
    let x_1376 : vec3<f32> = u_xlat20;
    let x_1377 : vec4<f32> = u_xlat10;
    let x_1380 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1376 * vec3<f32>(x_1377.x, x_1377.y, x_1377.z)) + x_1380);

    continuing {
      let x_1382 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1382 + bitcast<u32>(1i));
    }
  }
  let x_1384 : vec3<f32> = u_xlat15;
  let x_1385 : vec4<f32> = u_xlat6;
  let x_1388 : vec4<f32> = u_xlat7;
  u_xlat12 = ((x_1384 * vec3<f32>(x_1385.x, x_1385.x, x_1385.x)) + vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
  let x_1391 : vec3<f32> = u_xlat18;
  let x_1392 : vec3<f32> = u_xlat12;
  u_xlat12 = (x_1391 + x_1392);
  let x_1394 : vec4<f32> = vs_INTERP6;
  let x_1396 : vec3<f32> = u_xlat1;
  let x_1398 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_1394.w, x_1394.w, x_1394.w) * x_1396) + x_1398);
  let x_1401 : f32 = u_xlat3.x;
  let x_1403 : f32 = u_xlat3.x;
  u_xlat1.x = (x_1401 * -(x_1403));
  let x_1408 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1408);
  let x_1411 : vec3<f32> = u_xlat12;
  let x_1414 : vec4<f32> = x_121.unity_FogColor;
  u_xlat12 = (x_1411 + -(vec3<f32>(x_1414.x, x_1414.y, x_1414.z)));
  let x_1420 : vec3<f32> = u_xlat1;
  let x_1422 : vec3<f32> = u_xlat12;
  let x_1425 : vec4<f32> = x_121.unity_FogColor;
  let x_1427 : vec3<f32> = ((vec3<f32>(x_1420.x, x_1420.x, x_1420.x) * x_1422) + vec3<f32>(x_1425.x, x_1425.y, x_1425.z));
  let x_1428 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1427.x, x_1427.y, x_1427.z, x_1428.w);
  let x_1430 : bool = u_xlatb14;
  let x_1431 : f32 = u_xlat0;
  SV_Target0.w = select(1.0f, x_1431, x_1430);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


