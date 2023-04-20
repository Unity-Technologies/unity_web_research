diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
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
  /* @offset(208) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
}

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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_96 : UnityPerDraw;

var<private> u_xlatb36 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat17 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat41 : f32;

@group(1) @binding(4) var<uniform> x_405 : LightShadows;

var<private> u_xlatb41 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat18 : f32;

var<private> u_xlat42 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatu29 : u32;

var<private> u_xlati41 : i32;

var<private> u_xlati29 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_767 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlati44 : i32;

var<private> u_xlatb45 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb46 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatb29 : bool;

var<private> u_xlatu40 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_167 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_431 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_900 : f32;
  var x_910 : f32;
  var txVec1 : vec3<f32>;
  var x_1187 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_67 : vec4<f32> = hlslcc_FragCoord;
  let x_71 : f32 = x_45.x_DitheringTextureInvSize;
  let x_73 : vec2<f32> = (vec2<f32>(x_67.x, x_67.y) * vec2<f32>(x_71, x_71));
  let x_74 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_73.x, x_73.y, x_74.z);
  let x_83 : vec3<f32> = u_xlat2;
  let x_86 : f32 = x_45.x_GlobalMipBias.x;
  let x_87 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_83.x, x_83.y), x_86);
  u_xlat36 = x_87.w;
  let x_98 : f32 = x_96.unity_LODFade.x;
  u_xlatb2 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb2;
  if (x_101) {
    let x_106 : f32 = u_xlat36;
    x_103 = abs(x_106);
  } else {
    let x_109 : f32 = u_xlat36;
    x_103 = -(abs(x_109));
  }
  let x_112 : f32 = x_103;
  u_xlat36 = x_112;
  let x_113 : f32 = u_xlat36;
  let x_116 : f32 = x_96.unity_LODFade.x;
  u_xlat36 = (-(x_113) + x_116);
  let x_119 : f32 = u_xlat36;
  u_xlatb36 = (x_119 < 0.0f);
  let x_121 : bool = u_xlatb36;
  if (((select(0i, 1i, x_121) * -1i) != 0i)) {
    discard;
  }
  let x_132 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb36 = (x_132 == 0.0f);
  let x_136 : vec3<f32> = vs_TEXCOORD1;
  let x_141 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_136) + x_141);
  let x_144 : vec3<f32> = u_xlat2;
  let x_145 : vec3<f32> = u_xlat2;
  u_xlat38 = dot(x_144, x_145);
  let x_147 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_147);
  let x_149 : f32 = u_xlat38;
  let x_151 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_149, x_149, x_149) * x_151);
  let x_156 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat3.x = x_156;
  let x_159 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat3.y = x_159;
  let x_163 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat3.z = x_163;
  let x_165 : bool = u_xlatb36;
  if (x_165) {
    let x_170 : vec3<f32> = u_xlat2;
    x_167 = x_170;
  } else {
    let x_172 : vec4<f32> = u_xlat3;
    x_167 = vec3<f32>(x_172.x, x_172.y, x_172.z);
  }
  let x_174 : vec3<f32> = x_167;
  u_xlat2 = x_174;
  let x_176 : vec3<f32> = vs_TEXCOORD2;
  let x_177 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_176, x_177);
  let x_179 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_179);
  let x_181 : f32 = u_xlat36;
  let x_183 : vec3<f32> = vs_TEXCOORD2;
  let x_184 : vec3<f32> = (vec3<f32>(x_181, x_181, x_181) * x_183);
  let x_185 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : f32 = vs_TEXCOORD1.y;
  let x_190 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat36 = (x_188 * x_190);
  let x_193 : f32 = x_45.unity_MatrixV[0i].z;
  let x_195 : f32 = vs_TEXCOORD1.x;
  let x_197 : f32 = u_xlat36;
  u_xlat36 = ((x_193 * x_195) + x_197);
  let x_200 : f32 = x_45.unity_MatrixV[2i].z;
  let x_202 : f32 = vs_TEXCOORD1.z;
  let x_204 : f32 = u_xlat36;
  u_xlat36 = ((x_200 * x_202) + x_204);
  let x_206 : f32 = u_xlat36;
  let x_209 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat36 = (x_206 + x_209);
  let x_211 : f32 = u_xlat36;
  let x_215 : f32 = x_45.x_ProjectionParams.y;
  u_xlat36 = (-(x_211) + -(x_215));
  let x_218 : f32 = u_xlat36;
  u_xlat36 = max(x_218, 0.0f);
  let x_220 : f32 = u_xlat36;
  let x_223 : f32 = x_45.unity_FogParams.x;
  u_xlat36 = (x_220 * x_223);
  u_xlat3.w = 1.0f;
  let x_229 : vec4<f32> = x_96.unity_SHAr;
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_229, x_230);
  let x_235 : vec4<f32> = x_96.unity_SHAg;
  let x_236 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_235, x_236);
  let x_241 : vec4<f32> = x_96.unity_SHAb;
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_241, x_242);
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_246.y, x_246.z, x_246.z, x_246.x) * vec4<f32>(x_248.x, x_248.y, x_248.z, x_248.z));
  let x_254 : vec4<f32> = x_96.unity_SHBr;
  let x_255 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_254, x_255);
  let x_260 : vec4<f32> = x_96.unity_SHBg;
  let x_261 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_260, x_261);
  let x_266 : vec4<f32> = x_96.unity_SHBb;
  let x_267 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_266, x_267);
  let x_271 : f32 = u_xlat3.y;
  let x_273 : f32 = u_xlat3.y;
  u_xlat38 = (x_271 * x_273);
  let x_276 : f32 = u_xlat3.x;
  let x_278 : f32 = u_xlat3.x;
  let x_280 : f32 = u_xlat38;
  u_xlat38 = ((x_276 * x_278) + -(x_280));
  let x_285 : vec4<f32> = x_96.unity_SHC;
  let x_287 : f32 = u_xlat38;
  let x_290 : vec3<f32> = u_xlat6;
  let x_291 : vec3<f32> = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_287, x_287, x_287)) + x_290);
  let x_292 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec3<f32> = u_xlat4;
  let x_295 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_294 + vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_298, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_302 : f32 = x_58.x_Metallic;
  u_xlat38 = ((-(x_302) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_308 : f32 = u_xlat38;
  let x_311 : f32 = x_58.x_Smoothness;
  u_xlat39 = (-(x_308) + x_311);
  let x_314 : vec4<f32> = u_xlat1;
  let x_316 : f32 = u_xlat38;
  u_xlat13 = (vec3<f32>(x_314.y, x_314.z, x_314.w) * vec3<f32>(x_316, x_316, x_316));
  let x_319 : vec4<f32> = u_xlat0;
  let x_322 : vec4<f32> = x_58.x_BaseColor;
  let x_327 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_322.x, x_322.y, x_322.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : f32 = x_58.x_Metallic;
  let x_333 : f32 = x_58.x_Metallic;
  let x_335 : f32 = x_58.x_Metallic;
  let x_336 : vec3<f32> = vec3<f32>(x_331, x_333, x_335);
  let x_341 : vec4<f32> = u_xlat0;
  let x_346 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_347 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_350 : f32 = x_58.x_Smoothness;
  u_xlat38 = (-(x_350) + 1.0f);
  let x_354 : f32 = u_xlat38;
  let x_355 : f32 = u_xlat38;
  u_xlat40 = (x_354 * x_355);
  let x_357 : f32 = u_xlat40;
  u_xlat40 = max(x_357, 0.0078125f);
  let x_360 : f32 = u_xlat40;
  let x_361 : f32 = u_xlat40;
  u_xlat5.x = (x_360 * x_361);
  let x_364 : f32 = u_xlat39;
  u_xlat39 = (x_364 + 1.0f);
  let x_366 : f32 = u_xlat39;
  u_xlat39 = clamp(x_366, 0.0f, 1.0f);
  let x_369 : f32 = u_xlat40;
  u_xlat17 = ((x_369 * 4.0f) + 2.0f);
  let x_376 : vec4<f32> = vs_TEXCOORD6;
  let x_377 : vec2<f32> = vec2<f32>(x_376.x, x_376.y);
  let x_379 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_377.x, x_377.y, x_379);
  let x_393 : vec3<f32> = txVec0;
  let x_395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_393.xy, x_393.z);
  u_xlat29.x = x_395;
  let x_408 : f32 = x_405.x_MainLightShadowParams.x;
  u_xlat41 = (-(x_408) + 1.0f);
  let x_412 : f32 = u_xlat29.x;
  let x_414 : f32 = x_405.x_MainLightShadowParams.x;
  let x_416 : f32 = u_xlat41;
  u_xlat29.x = ((x_412 * x_414) + x_416);
  let x_421 : f32 = vs_TEXCOORD6.z;
  u_xlatb41 = (0.0f >= x_421);
  let x_425 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_425 >= 1.0f);
  let x_427 : bool = u_xlatb41;
  let x_428 : bool = u_xlatb6;
  u_xlatb41 = (x_427 | x_428);
  let x_430 : bool = u_xlatb41;
  if (x_430) {
    x_431 = 1.0f;
  } else {
    let x_436 : f32 = u_xlat29.x;
    x_431 = x_436;
  }
  let x_437 : f32 = x_431;
  u_xlat29.x = x_437;
  let x_439 : vec3<f32> = vs_TEXCOORD1;
  let x_441 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat6 = (x_439 + -(x_441));
  let x_444 : vec3<f32> = u_xlat6;
  let x_445 : vec3<f32> = u_xlat6;
  u_xlat41 = dot(x_444, x_445);
  let x_447 : f32 = u_xlat41;
  let x_449 : f32 = x_405.x_MainLightShadowParams.z;
  let x_452 : f32 = x_405.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_447 * x_449) + x_452);
  let x_456 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_456, 0.0f, 1.0f);
  let x_461 : f32 = u_xlat29.x;
  u_xlat18 = (-(x_461) + 1.0f);
  let x_465 : f32 = u_xlat6.x;
  let x_466 : f32 = u_xlat18;
  let x_469 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_465 * x_466) + x_469);
  let x_472 : vec3<f32> = u_xlat2;
  let x_474 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(-(x_472), vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_479 : f32 = u_xlat6.x;
  let x_481 : f32 = u_xlat6.x;
  u_xlat6.x = (x_479 + x_481);
  let x_484 : vec4<f32> = u_xlat3;
  let x_486 : vec3<f32> = u_xlat6;
  let x_490 : vec3<f32> = u_xlat2;
  u_xlat6 = ((vec3<f32>(x_484.x, x_484.y, x_484.z) * -(vec3<f32>(x_486.x, x_486.x, x_486.x))) + -(x_490));
  let x_494 : vec4<f32> = u_xlat3;
  let x_496 : vec3<f32> = u_xlat2;
  u_xlat42 = dot(vec3<f32>(x_494.x, x_494.y, x_494.z), x_496);
  let x_498 : f32 = u_xlat42;
  u_xlat42 = clamp(x_498, 0.0f, 1.0f);
  let x_500 : f32 = u_xlat42;
  u_xlat42 = (-(x_500) + 1.0f);
  let x_503 : f32 = u_xlat42;
  let x_504 : f32 = u_xlat42;
  u_xlat42 = (x_503 * x_504);
  let x_506 : f32 = u_xlat42;
  let x_507 : f32 = u_xlat42;
  u_xlat42 = (x_506 * x_507);
  let x_510 : f32 = u_xlat38;
  u_xlat7.x = ((-(x_510) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_517 : f32 = u_xlat38;
  let x_519 : f32 = u_xlat7.x;
  u_xlat38 = (x_517 * x_519);
  let x_521 : f32 = u_xlat38;
  u_xlat38 = (x_521 * 6.0f);
  let x_532 : vec3<f32> = u_xlat6;
  let x_533 : f32 = u_xlat38;
  let x_534 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_532, x_533);
  u_xlat7 = x_534;
  let x_536 : f32 = u_xlat7.w;
  u_xlat38 = (x_536 + -1.0f);
  let x_540 : f32 = x_96.unity_SpecCube0_HDR.w;
  let x_541 : f32 = u_xlat38;
  u_xlat38 = ((x_540 * x_541) + 1.0f);
  let x_544 : f32 = u_xlat38;
  u_xlat38 = max(x_544, 0.0f);
  let x_546 : f32 = u_xlat38;
  u_xlat38 = log2(x_546);
  let x_548 : f32 = u_xlat38;
  let x_550 : f32 = x_96.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_548 * x_550);
  let x_552 : f32 = u_xlat38;
  u_xlat38 = exp2(x_552);
  let x_554 : f32 = u_xlat38;
  let x_556 : f32 = x_96.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_554 * x_556);
  let x_558 : vec4<f32> = u_xlat7;
  let x_560 : f32 = u_xlat38;
  u_xlat6 = (vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(x_560, x_560, x_560));
  let x_563 : f32 = u_xlat40;
  let x_565 : f32 = u_xlat40;
  let x_569 : vec2<f32> = ((vec2<f32>(x_563, x_563) * vec2<f32>(x_565, x_565)) + vec2<f32>(-1.0f, 1.0f));
  let x_570 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
  let x_573 : f32 = u_xlat7.y;
  u_xlat38 = (1.0f / x_573);
  let x_576 : vec4<f32> = u_xlat0;
  let x_579 : f32 = u_xlat39;
  u_xlat19 = (-(vec3<f32>(x_576.x, x_576.y, x_576.z)) + vec3<f32>(x_579, x_579, x_579));
  let x_582 : f32 = u_xlat42;
  let x_584 : vec3<f32> = u_xlat19;
  let x_586 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_582, x_582, x_582) * x_584) + vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : f32 = u_xlat38;
  let x_591 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_589, x_589, x_589) * x_591);
  let x_593 : vec3<f32> = u_xlat6;
  let x_594 : vec3<f32> = u_xlat19;
  u_xlat6 = (x_593 * x_594);
  let x_596 : vec3<f32> = u_xlat4;
  let x_597 : vec3<f32> = u_xlat13;
  let x_599 : vec3<f32> = u_xlat6;
  u_xlat4 = ((x_596 * x_597) + x_599);
  let x_602 : f32 = u_xlat29.x;
  let x_604 : f32 = x_96.unity_LightData.z;
  u_xlat38 = (x_602 * x_604);
  let x_606 : vec4<f32> = u_xlat3;
  let x_609 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat39 = dot(vec3<f32>(x_606.x, x_606.y, x_606.z), vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : f32 = u_xlat39;
  u_xlat39 = clamp(x_612, 0.0f, 1.0f);
  let x_614 : f32 = u_xlat38;
  let x_615 : f32 = u_xlat39;
  u_xlat38 = (x_614 * x_615);
  let x_617 : f32 = u_xlat38;
  let x_620 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_617, x_617, x_617) * vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : vec3<f32> = u_xlat2;
  let x_625 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat19 = (x_623 + vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : vec3<f32> = u_xlat19;
  let x_629 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(x_628, x_629);
  let x_631 : f32 = u_xlat38;
  u_xlat38 = max(x_631, 1.17549435e-38f);
  let x_634 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_634);
  let x_636 : f32 = u_xlat38;
  let x_638 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_636, x_636, x_636) * x_638);
  let x_640 : vec4<f32> = u_xlat3;
  let x_642 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), x_642);
  let x_644 : f32 = u_xlat38;
  u_xlat38 = clamp(x_644, 0.0f, 1.0f);
  let x_647 : vec4<f32> = x_45.x_MainLightPosition;
  let x_649 : vec3<f32> = u_xlat19;
  u_xlat39 = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), x_649);
  let x_651 : f32 = u_xlat39;
  u_xlat39 = clamp(x_651, 0.0f, 1.0f);
  let x_653 : f32 = u_xlat38;
  let x_654 : f32 = u_xlat38;
  u_xlat38 = (x_653 * x_654);
  let x_656 : f32 = u_xlat38;
  let x_658 : f32 = u_xlat7.x;
  u_xlat38 = ((x_656 * x_658) + 1.00001001358032226562f);
  let x_662 : f32 = u_xlat39;
  let x_663 : f32 = u_xlat39;
  u_xlat39 = (x_662 * x_663);
  let x_665 : f32 = u_xlat38;
  let x_666 : f32 = u_xlat38;
  u_xlat38 = (x_665 * x_666);
  let x_668 : f32 = u_xlat39;
  u_xlat39 = max(x_668, 0.10000000149011611938f);
  let x_671 : f32 = u_xlat38;
  let x_672 : f32 = u_xlat39;
  u_xlat38 = (x_671 * x_672);
  let x_674 : f32 = u_xlat17;
  let x_675 : f32 = u_xlat38;
  u_xlat38 = (x_674 * x_675);
  let x_678 : f32 = u_xlat5.x;
  let x_679 : f32 = u_xlat38;
  u_xlat38 = (x_678 / x_679);
  let x_681 : vec4<f32> = u_xlat0;
  let x_683 : f32 = u_xlat38;
  let x_686 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(x_683, x_683, x_683)) + x_686);
  let x_689 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_691 : f32 = x_96.unity_LightData.y;
  u_xlat38 = min(x_689, x_691);
  let x_695 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_695));
  let x_698 : f32 = u_xlat41;
  let x_701 : f32 = x_405.x_AdditionalShadowFadeParams.x;
  let x_704 : f32 = x_405.x_AdditionalShadowFadeParams.y;
  u_xlat39 = ((x_698 * x_701) + x_704);
  let x_706 : f32 = u_xlat39;
  u_xlat39 = clamp(x_706, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_719 : u32 = u_xlatu_loop_1;
    let x_720 : u32 = u_xlatu38;
    if ((x_719 < x_720)) {
    } else {
      break;
    }
    let x_723 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_723 >> 2u);
    let x_727 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_727 & 3u));
    let x_730 : u32 = u_xlatu29;
    let x_733 : vec4<f32> = x_96.unity_LightIndices[bitcast<i32>(x_730)];
    let x_743 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_748 : vec4<u32> = indexable[x_743];
    u_xlat29.x = dot(x_733, bitcast<vec4<f32>>(x_748));
    let x_754 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_754);
    let x_757 : vec3<f32> = vs_TEXCOORD1;
    let x_768 : i32 = u_xlati29;
    let x_770 : vec4<f32> = x_767.x_AdditionalLightsPosition[x_768];
    let x_773 : i32 = u_xlati29;
    let x_775 : vec4<f32> = x_767.x_AdditionalLightsPosition[x_773];
    u_xlat9 = ((-(x_757) * vec3<f32>(x_770.w, x_770.w, x_770.w)) + vec3<f32>(x_775.x, x_775.y, x_775.z));
    let x_778 : vec3<f32> = u_xlat9;
    let x_779 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_778, x_779);
    let x_781 : f32 = u_xlat41;
    u_xlat41 = max(x_781, 0.00006103515625f);
    let x_784 : f32 = u_xlat41;
    u_xlat42 = inverseSqrt(x_784);
    let x_787 : f32 = u_xlat42;
    let x_789 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_787, x_787, x_787) * x_789);
    let x_792 : f32 = u_xlat41;
    u_xlat44 = (1.0f / x_792);
    let x_794 : f32 = u_xlat41;
    let x_795 : i32 = u_xlati29;
    let x_797 : f32 = x_767.x_AdditionalLightsAttenuation[x_795].x;
    u_xlat41 = (x_794 * x_797);
    let x_799 : f32 = u_xlat41;
    let x_801 : f32 = u_xlat41;
    u_xlat41 = ((-(x_799) * x_801) + 1.0f);
    let x_804 : f32 = u_xlat41;
    u_xlat41 = max(x_804, 0.0f);
    let x_806 : f32 = u_xlat41;
    let x_807 : f32 = u_xlat41;
    u_xlat41 = (x_806 * x_807);
    let x_809 : f32 = u_xlat41;
    let x_810 : f32 = u_xlat44;
    u_xlat41 = (x_809 * x_810);
    let x_812 : i32 = u_xlati29;
    let x_814 : vec4<f32> = x_767.x_AdditionalLightsSpotDir[x_812];
    let x_816 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_814.x, x_814.y, x_814.z), x_816);
    let x_818 : f32 = u_xlat44;
    let x_819 : i32 = u_xlati29;
    let x_821 : f32 = x_767.x_AdditionalLightsAttenuation[x_819].z;
    let x_823 : i32 = u_xlati29;
    let x_825 : f32 = x_767.x_AdditionalLightsAttenuation[x_823].w;
    u_xlat44 = ((x_818 * x_821) + x_825);
    let x_827 : f32 = u_xlat44;
    u_xlat44 = clamp(x_827, 0.0f, 1.0f);
    let x_829 : f32 = u_xlat44;
    let x_830 : f32 = u_xlat44;
    u_xlat44 = (x_829 * x_830);
    let x_832 : f32 = u_xlat41;
    let x_833 : f32 = u_xlat44;
    u_xlat41 = (x_832 * x_833);
    let x_837 : i32 = u_xlati29;
    let x_839 : f32 = x_405.x_AdditionalShadowParams[x_837].w;
    u_xlati44 = i32(x_839);
    let x_842 : i32 = u_xlati44;
    u_xlatb45 = (x_842 >= 0i);
    let x_844 : bool = u_xlatb45;
    if (x_844) {
      let x_848 : i32 = u_xlati29;
      let x_850 : f32 = x_405.x_AdditionalShadowParams[x_848].z;
      u_xlatb45 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_850, x_850, x_850, x_850))));
      let x_855 : bool = u_xlatb45;
      if (x_855) {
        let x_860 : vec3<f32> = u_xlat10;
        let x_863 : vec3<f32> = u_xlat10;
        let x_866 : vec4<bool> = (abs(vec4<f32>(x_860.z, x_860.z, x_860.y, x_860.z)) >= abs(vec4<f32>(x_863.x, x_863.y, x_863.x, x_863.x)));
        let x_868 : vec3<bool> = vec3<bool>(x_866.x, x_866.y, x_866.z);
        let x_869 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_868.x, x_868.y, x_868.z, x_869.w);
        let x_872 : bool = u_xlatb11.y;
        let x_874 : bool = u_xlatb11.x;
        u_xlatb45 = (x_872 & x_874);
        let x_876 : vec3<f32> = u_xlat10;
        let x_879 : vec4<bool> = (-(vec4<f32>(x_876.z, x_876.y, x_876.z, x_876.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_880 : vec3<bool> = vec3<bool>(x_879.x, x_879.y, x_879.w);
        let x_881 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_880.x, x_880.y, x_881.z, x_880.z);
        let x_885 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_885);
        let x_890 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_890);
        let x_896 : bool = u_xlatb11.w;
        u_xlat46 = select(0.0f, 1.0f, x_896);
        let x_899 : bool = u_xlatb11.z;
        if (x_899) {
          let x_904 : f32 = u_xlat11.y;
          x_900 = x_904;
        } else {
          let x_906 : f32 = u_xlat46;
          x_900 = x_906;
        }
        let x_907 : f32 = x_900;
        u_xlat46 = x_907;
        let x_909 : bool = u_xlatb45;
        if (x_909) {
          let x_914 : f32 = u_xlat11.x;
          x_910 = x_914;
        } else {
          let x_916 : f32 = u_xlat46;
          x_910 = x_916;
        }
        let x_917 : f32 = x_910;
        u_xlat45 = x_917;
        let x_918 : i32 = u_xlati29;
        let x_920 : f32 = x_405.x_AdditionalShadowParams[x_918].w;
        u_xlat46 = trunc(x_920);
        let x_922 : f32 = u_xlat45;
        let x_923 : f32 = u_xlat46;
        u_xlat45 = (x_922 + x_923);
        let x_925 : f32 = u_xlat45;
        u_xlati44 = i32(x_925);
      }
      let x_927 : i32 = u_xlati44;
      u_xlati44 = (x_927 << bitcast<u32>(2i));
      let x_929 : vec3<f32> = vs_TEXCOORD1;
      let x_932 : i32 = u_xlati44;
      let x_935 : i32 = u_xlati44;
      let x_939 : vec4<f32> = x_405.x_AdditionalLightsWorldToShadow[((x_932 + 1i) / 4i)][((x_935 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_929.y, x_929.y, x_929.y, x_929.y) * x_939);
      let x_941 : i32 = u_xlati44;
      let x_943 : i32 = u_xlati44;
      let x_946 : vec4<f32> = x_405.x_AdditionalLightsWorldToShadow[(x_941 / 4i)][(x_943 % 4i)];
      let x_947 : vec3<f32> = vs_TEXCOORD1;
      let x_950 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_946 * vec4<f32>(x_947.x, x_947.x, x_947.x, x_947.x)) + x_950);
      let x_952 : i32 = u_xlati44;
      let x_955 : i32 = u_xlati44;
      let x_959 : vec4<f32> = x_405.x_AdditionalLightsWorldToShadow[((x_952 + 2i) / 4i)][((x_955 + 2i) % 4i)];
      let x_960 : vec3<f32> = vs_TEXCOORD1;
      let x_963 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_959 * vec4<f32>(x_960.z, x_960.z, x_960.z, x_960.z)) + x_963);
      let x_965 : vec4<f32> = u_xlat11;
      let x_966 : i32 = u_xlati44;
      let x_969 : i32 = u_xlati44;
      let x_973 : vec4<f32> = x_405.x_AdditionalLightsWorldToShadow[((x_966 + 3i) / 4i)][((x_969 + 3i) % 4i)];
      u_xlat11 = (x_965 + x_973);
      let x_975 : vec4<f32> = u_xlat11;
      let x_977 : vec4<f32> = u_xlat11;
      let x_979 : vec3<f32> = (vec3<f32>(x_975.x, x_975.y, x_975.z) / vec3<f32>(x_977.w, x_977.w, x_977.w));
      let x_980 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
      let x_983 : vec4<f32> = u_xlat11;
      let x_984 : vec2<f32> = vec2<f32>(x_983.x, x_983.y);
      let x_986 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_984.x, x_984.y, x_986);
      let x_994 : vec3<f32> = txVec1;
      let x_996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_994.xy, x_994.z);
      u_xlat44 = x_996;
      let x_997 : i32 = u_xlati29;
      let x_999 : f32 = x_405.x_AdditionalShadowParams[x_997].x;
      u_xlat45 = (1.0f + -(x_999));
      let x_1002 : f32 = u_xlat44;
      let x_1003 : i32 = u_xlati29;
      let x_1005 : f32 = x_405.x_AdditionalShadowParams[x_1003].x;
      let x_1007 : f32 = u_xlat45;
      u_xlat44 = ((x_1002 * x_1005) + x_1007);
      let x_1010 : f32 = u_xlat11.z;
      u_xlatb45 = (0.0f >= x_1010);
      let x_1014 : f32 = u_xlat11.z;
      u_xlatb46 = (x_1014 >= 1.0f);
      let x_1016 : bool = u_xlatb45;
      let x_1017 : bool = u_xlatb46;
      u_xlatb45 = (x_1016 | x_1017);
      let x_1019 : bool = u_xlatb45;
      let x_1020 : f32 = u_xlat44;
      u_xlat44 = select(x_1020, 1.0f, x_1019);
    } else {
      u_xlat44 = 1.0f;
    }
    let x_1023 : f32 = u_xlat44;
    u_xlat45 = (-(x_1023) + 1.0f);
    let x_1026 : f32 = u_xlat39;
    let x_1027 : f32 = u_xlat45;
    let x_1029 : f32 = u_xlat44;
    u_xlat44 = ((x_1026 * x_1027) + x_1029);
    let x_1031 : f32 = u_xlat41;
    let x_1032 : f32 = u_xlat44;
    u_xlat41 = (x_1031 * x_1032);
    let x_1034 : vec4<f32> = u_xlat3;
    let x_1036 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_1034.x, x_1034.y, x_1034.z), x_1036);
    let x_1038 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1038, 0.0f, 1.0f);
    let x_1040 : f32 = u_xlat41;
    let x_1041 : f32 = u_xlat44;
    u_xlat41 = (x_1040 * x_1041);
    let x_1043 : f32 = u_xlat41;
    let x_1045 : i32 = u_xlati29;
    let x_1047 : vec4<f32> = x_767.x_AdditionalLightsColor[x_1045];
    let x_1049 : vec3<f32> = (vec3<f32>(x_1043, x_1043, x_1043) * vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
    let x_1050 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
    let x_1052 : vec3<f32> = u_xlat9;
    let x_1053 : f32 = u_xlat42;
    let x_1056 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1052 * vec3<f32>(x_1053, x_1053, x_1053)) + x_1056);
    let x_1058 : vec3<f32> = u_xlat9;
    let x_1059 : vec3<f32> = u_xlat9;
    u_xlat29.x = dot(x_1058, x_1059);
    let x_1063 : f32 = u_xlat29.x;
    u_xlat29.x = max(x_1063, 1.17549435e-38f);
    let x_1067 : f32 = u_xlat29.x;
    u_xlat29.x = inverseSqrt(x_1067);
    let x_1070 : vec2<f32> = u_xlat29;
    let x_1072 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1070.x, x_1070.x, x_1070.x) * x_1072);
    let x_1074 : vec4<f32> = u_xlat3;
    let x_1076 : vec3<f32> = u_xlat9;
    u_xlat29.x = dot(vec3<f32>(x_1074.x, x_1074.y, x_1074.z), x_1076);
    let x_1080 : f32 = u_xlat29.x;
    u_xlat29.x = clamp(x_1080, 0.0f, 1.0f);
    let x_1083 : vec3<f32> = u_xlat10;
    let x_1084 : vec3<f32> = u_xlat9;
    u_xlat29.y = dot(x_1083, x_1084);
    let x_1088 : f32 = u_xlat29.y;
    u_xlat29.y = clamp(x_1088, 0.0f, 1.0f);
    let x_1091 : vec2<f32> = u_xlat29;
    let x_1092 : vec2<f32> = u_xlat29;
    u_xlat29 = (x_1091 * x_1092);
    let x_1095 : f32 = u_xlat29.x;
    let x_1097 : f32 = u_xlat7.x;
    u_xlat29.x = ((x_1095 * x_1097) + 1.00001001358032226562f);
    let x_1102 : f32 = u_xlat29.x;
    let x_1104 : f32 = u_xlat29.x;
    u_xlat29.x = (x_1102 * x_1104);
    let x_1108 : f32 = u_xlat29.y;
    u_xlat41 = max(x_1108, 0.10000000149011611938f);
    let x_1110 : f32 = u_xlat41;
    let x_1112 : f32 = u_xlat29.x;
    u_xlat29.x = (x_1110 * x_1112);
    let x_1115 : f32 = u_xlat17;
    let x_1117 : f32 = u_xlat29.x;
    u_xlat29.x = (x_1115 * x_1117);
    let x_1121 : f32 = u_xlat5.x;
    let x_1123 : f32 = u_xlat29.x;
    u_xlat29.x = (x_1121 / x_1123);
    let x_1126 : vec4<f32> = u_xlat0;
    let x_1128 : vec2<f32> = u_xlat29;
    let x_1131 : vec3<f32> = u_xlat13;
    u_xlat9 = ((vec3<f32>(x_1126.x, x_1126.y, x_1126.z) * vec3<f32>(x_1128.x, x_1128.x, x_1128.x)) + x_1131);
    let x_1133 : vec3<f32> = u_xlat9;
    let x_1134 : vec4<f32> = u_xlat11;
    let x_1137 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1133 * vec3<f32>(x_1134.x, x_1134.y, x_1134.z)) + x_1137);

    continuing {
      let x_1139 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1139 + bitcast<u32>(1i));
    }
  }
  let x_1141 : vec3<f32> = u_xlat19;
  let x_1142 : vec3<f32> = u_xlat6;
  let x_1144 : vec3<f32> = u_xlat4;
  let x_1145 : vec3<f32> = ((x_1141 * x_1142) + x_1144);
  let x_1146 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : vec3<f32> = u_xlat8;
  let x_1149 : vec4<f32> = u_xlat0;
  let x_1151 : vec3<f32> = (x_1148 + vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1152 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1154 : f32 = u_xlat36;
  let x_1155 : f32 = u_xlat36;
  u_xlat36 = (x_1154 * -(x_1155));
  let x_1158 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1158);
  let x_1160 : vec4<f32> = u_xlat0;
  let x_1163 : vec4<f32> = x_45.unity_FogColor;
  let x_1166 : vec3<f32> = (vec3<f32>(x_1160.x, x_1160.y, x_1160.z) + -(vec3<f32>(x_1163.x, x_1163.y, x_1163.z)));
  let x_1167 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
  let x_1171 : f32 = u_xlat36;
  let x_1173 : vec4<f32> = u_xlat0;
  let x_1177 : vec4<f32> = x_45.unity_FogColor;
  let x_1179 : vec3<f32> = ((vec3<f32>(x_1171, x_1171, x_1171) * vec3<f32>(x_1173.x, x_1173.y, x_1173.z)) + vec3<f32>(x_1177.x, x_1177.y, x_1177.z));
  let x_1180 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
  let x_1184 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_1184 == 1.0f);
  let x_1186 : bool = u_xlatb0;
  if (x_1186) {
    let x_1191 : f32 = u_xlat1.x;
    x_1187 = x_1191;
  } else {
    x_1187 = 1.0f;
  }
  let x_1193 : f32 = x_1187;
  SV_Target0.w = x_1193;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


