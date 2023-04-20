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
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat4 : f32;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat28 : f32;

@group(1) @binding(3) var<uniform> x_249 : LightShadows;

var<private> u_xlatb28 : bool;

var<private> u_xlatb40 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_396 : UnityPerDraw;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_636 : AdditionalLights;

var<private> u_xlat42 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatb41 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_276 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_773 : f32;
  var x_784 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_61 : vec4<f32> = vs_TEXCOORD0;
  let x_64 : f32 = x_28.x_GlobalMipBias.x;
  let x_65 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_61.x, x_61.y), x_64);
  u_xlat0 = x_65;
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  let x_75 : f32 = x_28.x_GlobalMipBias.x;
  let x_76 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_72.x, x_72.y), x_75);
  u_xlat1 = x_76.x;
  let x_81 : vec4<f32> = vs_TEXCOORD3;
  let x_83 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_88 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat13;
  let x_93 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13 = (vec3<f32>(x_91.x, x_91.x, x_91.x) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_102 : vec4<f32> = vs_TEXCOORD0;
  let x_105 : f32 = x_28.x_GlobalMipBias.x;
  let x_106 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_102.z, x_102.w), x_105);
  u_xlat2 = x_106;
  let x_112 : vec4<f32> = vs_TEXCOORD0;
  let x_115 : f32 = x_28.x_GlobalMipBias.x;
  let x_116 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_112.z, x_112.w), x_115);
  u_xlat3 = vec3<f32>(x_116.x, x_116.y, x_116.z);
  let x_118 : vec4<f32> = u_xlat2;
  let x_122 : vec3<f32> = (vec3<f32>(x_118.x, x_118.y, x_118.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec3<f32> = u_xlat13;
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_125, vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_131 : f32 = u_xlat2.x;
  u_xlat2.x = (x_131 + 0.5f);
  let x_135 : vec4<f32> = u_xlat2;
  let x_137 : vec3<f32> = u_xlat3;
  let x_138 : vec3<f32> = (vec3<f32>(x_135.x, x_135.x, x_135.x) * x_137);
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_144 : f32 = u_xlat2.w;
  u_xlat38 = max(x_144, 0.00009999999747378752f);
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : f32 = u_xlat38;
  let x_151 : vec3<f32> = (vec3<f32>(x_147.x, x_147.y, x_147.z) / vec3<f32>(x_149, x_149, x_149));
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_154 : f32 = u_xlat1;
  u_xlat38 = ((-(x_154) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_159 : f32 = u_xlat38;
  u_xlat3.x = (-(x_159) + 1.0f);
  let x_165 : vec4<f32> = u_xlat0;
  let x_167 : f32 = u_xlat38;
  u_xlat15 = (vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(x_167, x_167, x_167));
  let x_170 : vec4<f32> = u_xlat0;
  let x_174 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : f32 = u_xlat1;
  let x_179 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = ((vec3<f32>(x_177, x_177, x_177) * vec3<f32>(x_179.x, x_179.y, x_179.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_185 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_188) + 1.0f);
  let x_191 : f32 = u_xlat1;
  let x_192 : f32 = u_xlat1;
  u_xlat38 = (x_191 * x_192);
  let x_194 : f32 = u_xlat38;
  u_xlat38 = max(x_194, 0.0078125f);
  let x_198 : f32 = u_xlat38;
  let x_199 : f32 = u_xlat38;
  u_xlat4 = (x_198 * x_199);
  let x_203 : f32 = u_xlat0.w;
  let x_205 : f32 = u_xlat3.x;
  u_xlat36 = (x_203 + x_205);
  let x_207 : f32 = u_xlat36;
  u_xlat36 = clamp(x_207, 0.0f, 1.0f);
  let x_209 : f32 = u_xlat38;
  u_xlat3.x = ((x_209 * 4.0f) + 2.0f);
  let x_218 : vec4<f32> = vs_TEXCOORD8;
  let x_219 : vec2<f32> = vec2<f32>(x_218.x, x_218.y);
  let x_223 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_219.x, x_219.y, x_223);
  let x_236 : vec3<f32> = txVec0;
  let x_238 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_236.xy, x_236.z);
  u_xlat16.x = x_238;
  let x_252 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat28 = (-(x_252) + 1.0f);
  let x_256 : f32 = u_xlat16.x;
  let x_258 : f32 = x_249.x_MainLightShadowParams.x;
  let x_260 : f32 = u_xlat28;
  u_xlat16.x = ((x_256 * x_258) + x_260);
  let x_265 : f32 = vs_TEXCOORD8.z;
  u_xlatb28 = (0.0f >= x_265);
  let x_269 : f32 = vs_TEXCOORD8.z;
  u_xlatb40 = (x_269 >= 1.0f);
  let x_271 : bool = u_xlatb40;
  let x_272 : bool = u_xlatb28;
  u_xlatb28 = (x_271 | x_272);
  let x_274 : bool = u_xlatb28;
  if (x_274) {
    x_276 = 1.0f;
  } else {
    let x_281 : f32 = u_xlat16.x;
    x_276 = x_281;
  }
  let x_282 : f32 = x_276;
  u_xlat16.x = x_282;
  let x_287 : vec3<f32> = vs_TEXCOORD7;
  let x_291 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat5 = (x_287 + -(x_291));
  let x_294 : vec3<f32> = u_xlat5;
  let x_295 : vec3<f32> = u_xlat5;
  u_xlat28 = dot(x_294, x_295);
  let x_298 : f32 = u_xlat28;
  let x_300 : f32 = x_249.x_MainLightShadowParams.z;
  let x_303 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat40 = ((x_298 * x_300) + x_303);
  let x_305 : f32 = u_xlat40;
  u_xlat40 = clamp(x_305, 0.0f, 1.0f);
  let x_308 : f32 = u_xlat16.x;
  u_xlat5.x = (-(x_308) + 1.0f);
  let x_312 : f32 = u_xlat40;
  let x_314 : f32 = u_xlat5.x;
  let x_317 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_312 * x_314) + x_317);
  let x_321 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_321;
  let x_325 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_325;
  let x_330 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_330;
  let x_332 : vec3<f32> = u_xlat5;
  let x_334 : vec3<f32> = u_xlat13;
  u_xlat40 = dot(-(x_332), x_334);
  let x_336 : f32 = u_xlat40;
  let x_337 : f32 = u_xlat40;
  u_xlat40 = (x_336 + x_337);
  let x_340 : vec3<f32> = u_xlat13;
  let x_341 : f32 = u_xlat40;
  let x_345 : vec3<f32> = u_xlat5;
  let x_347 : vec3<f32> = ((x_340 * -(vec3<f32>(x_341, x_341, x_341))) + -(x_345));
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec3<f32> = u_xlat13;
  let x_351 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(x_350, x_351);
  let x_353 : f32 = u_xlat40;
  u_xlat40 = clamp(x_353, 0.0f, 1.0f);
  let x_355 : f32 = u_xlat40;
  u_xlat40 = (-(x_355) + 1.0f);
  let x_358 : f32 = u_xlat40;
  let x_359 : f32 = u_xlat40;
  u_xlat40 = (x_358 * x_359);
  let x_361 : f32 = u_xlat40;
  let x_362 : f32 = u_xlat40;
  u_xlat40 = (x_361 * x_362);
  let x_365 : f32 = u_xlat1;
  u_xlat41 = ((-(x_365) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_371 : f32 = u_xlat1;
  let x_372 : f32 = u_xlat41;
  u_xlat1 = (x_371 * x_372);
  let x_374 : f32 = u_xlat1;
  u_xlat1 = (x_374 * 6.0f);
  let x_385 : vec4<f32> = u_xlat6;
  let x_387 : f32 = u_xlat1;
  let x_388 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_385.x, x_385.y, x_385.z), x_387);
  u_xlat6 = x_388;
  let x_390 : f32 = u_xlat6.w;
  u_xlat1 = (x_390 + -1.0f);
  let x_398 : f32 = x_396.unity_SpecCube0_HDR.w;
  let x_399 : f32 = u_xlat1;
  u_xlat1 = ((x_398 * x_399) + 1.0f);
  let x_402 : f32 = u_xlat1;
  u_xlat1 = max(x_402, 0.0f);
  let x_404 : f32 = u_xlat1;
  u_xlat1 = log2(x_404);
  let x_406 : f32 = u_xlat1;
  let x_408 : f32 = x_396.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_406 * x_408);
  let x_410 : f32 = u_xlat1;
  u_xlat1 = exp2(x_410);
  let x_412 : f32 = u_xlat1;
  let x_414 : f32 = x_396.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_412 * x_414);
  let x_416 : vec4<f32> = u_xlat6;
  let x_418 : f32 = u_xlat1;
  let x_420 : vec3<f32> = (vec3<f32>(x_416.x, x_416.y, x_416.z) * vec3<f32>(x_418, x_418, x_418));
  let x_421 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_425 : f32 = u_xlat38;
  let x_427 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_425, x_425) * vec2<f32>(x_427, x_427)) + vec2<f32>(-1.0f, 1.0f));
  let x_433 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_433);
  let x_436 : vec4<f32> = u_xlat0;
  let x_439 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_436.x, x_436.y, x_436.z)) + vec3<f32>(x_439, x_439, x_439));
  let x_442 : f32 = u_xlat40;
  let x_444 : vec3<f32> = u_xlat19;
  let x_446 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_442, x_442, x_442) * x_444) + vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : f32 = u_xlat1;
  let x_451 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_449, x_449, x_449) * x_451);
  let x_453 : vec4<f32> = u_xlat6;
  let x_455 : vec3<f32> = u_xlat19;
  let x_456 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) * x_455);
  let x_457 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat2;
  let x_461 : vec3<f32> = u_xlat15;
  let x_463 : vec4<f32> = u_xlat6;
  let x_465 : vec3<f32> = ((vec3<f32>(x_459.x, x_459.y, x_459.z) * x_461) + vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_469 : f32 = u_xlat16.x;
  let x_472 : f32 = x_396.unity_LightData.z;
  u_xlat36 = (x_469 * x_472);
  let x_474 : vec3<f32> = u_xlat13;
  let x_477 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1 = dot(x_474, vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_480 : f32 = u_xlat1;
  u_xlat1 = clamp(x_480, 0.0f, 1.0f);
  let x_482 : f32 = u_xlat36;
  let x_483 : f32 = u_xlat1;
  u_xlat36 = (x_482 * x_483);
  let x_485 : f32 = u_xlat36;
  let x_489 : vec4<f32> = x_28.x_MainLightColor;
  let x_491 : vec3<f32> = (vec3<f32>(x_485, x_485, x_485) * vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec3<f32> = u_xlat5;
  let x_496 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat19 = (x_494 + vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec3<f32> = u_xlat19;
  let x_500 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_499, x_500);
  let x_502 : f32 = u_xlat36;
  u_xlat36 = max(x_502, 1.17549435e-38f);
  let x_505 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_505);
  let x_507 : f32 = u_xlat36;
  let x_509 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_507, x_507, x_507) * x_509);
  let x_511 : vec3<f32> = u_xlat13;
  let x_512 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_511, x_512);
  let x_514 : f32 = u_xlat36;
  u_xlat36 = clamp(x_514, 0.0f, 1.0f);
  let x_517 : vec4<f32> = x_28.x_MainLightPosition;
  let x_519 : vec3<f32> = u_xlat19;
  u_xlat1 = dot(vec3<f32>(x_517.x, x_517.y, x_517.z), x_519);
  let x_521 : f32 = u_xlat1;
  u_xlat1 = clamp(x_521, 0.0f, 1.0f);
  let x_523 : f32 = u_xlat36;
  let x_524 : f32 = u_xlat36;
  u_xlat36 = (x_523 * x_524);
  let x_526 : f32 = u_xlat36;
  let x_528 : f32 = u_xlat7.x;
  u_xlat36 = ((x_526 * x_528) + 1.00001001358032226562f);
  let x_532 : f32 = u_xlat1;
  let x_533 : f32 = u_xlat1;
  u_xlat1 = (x_532 * x_533);
  let x_535 : f32 = u_xlat36;
  let x_536 : f32 = u_xlat36;
  u_xlat36 = (x_535 * x_536);
  let x_538 : f32 = u_xlat1;
  u_xlat1 = max(x_538, 0.10000000149011611938f);
  let x_541 : f32 = u_xlat36;
  let x_542 : f32 = u_xlat1;
  u_xlat36 = (x_541 * x_542);
  let x_545 : f32 = u_xlat3.x;
  let x_546 : f32 = u_xlat36;
  u_xlat36 = (x_545 * x_546);
  let x_548 : f32 = u_xlat4;
  let x_549 : f32 = u_xlat36;
  u_xlat36 = (x_548 / x_549);
  let x_551 : vec4<f32> = u_xlat0;
  let x_553 : f32 = u_xlat36;
  let x_556 : vec3<f32> = u_xlat15;
  u_xlat19 = ((vec3<f32>(x_551.x, x_551.y, x_551.z) * vec3<f32>(x_553, x_553, x_553)) + x_556);
  let x_560 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_562 : f32 = x_396.unity_LightData.y;
  u_xlat36 = min(x_560, x_562);
  let x_566 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_566));
  let x_569 : f32 = u_xlat28;
  let x_572 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_575 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_569 * x_572) + x_575);
  let x_577 : f32 = u_xlat1;
  u_xlat1 = clamp(x_577, 0.0f, 1.0f);
  u_xlat16.x = 0.0f;
  u_xlat16.y = 0.0f;
  u_xlat16.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_589 : u32 = u_xlatu_loop_1;
    let x_590 : u32 = u_xlatu36;
    if ((x_589 < x_590)) {
    } else {
      break;
    }
    let x_593 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_593 >> 2u);
    let x_597 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_597 & 3u));
    let x_601 : u32 = u_xlatu41;
    let x_604 : vec4<f32> = x_396.unity_LightIndices[bitcast<i32>(x_601)];
    let x_614 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_619 : vec4<u32> = indexable[x_614];
    u_xlat41 = dot(x_604, bitcast<vec4<f32>>(x_619));
    let x_623 : f32 = u_xlat41;
    u_xlati41 = i32(x_623);
    let x_626 : vec3<f32> = vs_TEXCOORD7;
    let x_637 : i32 = u_xlati41;
    let x_639 : vec4<f32> = x_636.x_AdditionalLightsPosition[x_637];
    let x_642 : i32 = u_xlati41;
    let x_644 : vec4<f32> = x_636.x_AdditionalLightsPosition[x_642];
    u_xlat8 = ((-(x_626) * vec3<f32>(x_639.w, x_639.w, x_639.w)) + vec3<f32>(x_644.x, x_644.y, x_644.z));
    let x_648 : vec3<f32> = u_xlat8;
    let x_649 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_648, x_649);
    let x_651 : f32 = u_xlat42;
    u_xlat42 = max(x_651, 0.00006103515625f);
    let x_655 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_655);
    let x_658 : f32 = u_xlat44;
    let x_660 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_658, x_658, x_658) * x_660);
    let x_663 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_663);
    let x_665 : f32 = u_xlat42;
    let x_666 : i32 = u_xlati41;
    let x_668 : f32 = x_636.x_AdditionalLightsAttenuation[x_666].x;
    u_xlat42 = (x_665 * x_668);
    let x_670 : f32 = u_xlat42;
    let x_672 : f32 = u_xlat42;
    u_xlat42 = ((-(x_670) * x_672) + 1.0f);
    let x_675 : f32 = u_xlat42;
    u_xlat42 = max(x_675, 0.0f);
    let x_677 : f32 = u_xlat42;
    let x_678 : f32 = u_xlat42;
    u_xlat42 = (x_677 * x_678);
    let x_680 : f32 = u_xlat42;
    let x_681 : f32 = u_xlat45;
    u_xlat42 = (x_680 * x_681);
    let x_683 : i32 = u_xlati41;
    let x_685 : vec4<f32> = x_636.x_AdditionalLightsSpotDir[x_683];
    let x_687 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_685.x, x_685.y, x_685.z), x_687);
    let x_689 : f32 = u_xlat45;
    let x_690 : i32 = u_xlati41;
    let x_692 : f32 = x_636.x_AdditionalLightsAttenuation[x_690].z;
    let x_694 : i32 = u_xlati41;
    let x_696 : f32 = x_636.x_AdditionalLightsAttenuation[x_694].w;
    u_xlat45 = ((x_689 * x_692) + x_696);
    let x_698 : f32 = u_xlat45;
    u_xlat45 = clamp(x_698, 0.0f, 1.0f);
    let x_700 : f32 = u_xlat45;
    let x_701 : f32 = u_xlat45;
    u_xlat45 = (x_700 * x_701);
    let x_703 : f32 = u_xlat42;
    let x_704 : f32 = u_xlat45;
    u_xlat42 = (x_703 * x_704);
    let x_708 : i32 = u_xlati41;
    let x_710 : f32 = x_249.x_AdditionalShadowParams[x_708].w;
    u_xlati45 = i32(x_710);
    let x_715 : i32 = u_xlati45;
    u_xlatb10.x = (x_715 >= 0i);
    let x_719 : bool = u_xlatb10.x;
    if (x_719) {
      let x_723 : i32 = u_xlati41;
      let x_725 : f32 = x_249.x_AdditionalShadowParams[x_723].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_725, x_725, x_725, x_725))));
      let x_732 : bool = u_xlatb10.x;
      if (x_732) {
        let x_735 : vec3<f32> = u_xlat9;
        let x_738 : vec3<f32> = u_xlat9;
        let x_741 : vec4<bool> = (abs(vec4<f32>(x_735.z, x_735.z, x_735.y, x_735.z)) >= abs(vec4<f32>(x_738.x, x_738.y, x_738.x, x_738.x)));
        u_xlatb10 = vec3<bool>(x_741.x, x_741.y, x_741.z);
        let x_744 : bool = u_xlatb10.y;
        let x_746 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_744 & x_746);
        let x_750 : vec3<f32> = u_xlat9;
        let x_753 : vec4<bool> = (-(vec4<f32>(x_750.z, x_750.y, x_750.x, x_750.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_753.x, x_753.y, x_753.z);
        let x_757 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_757);
        let x_762 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_762);
        let x_768 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_768);
        let x_772 : bool = u_xlatb10.z;
        if (x_772) {
          let x_777 : f32 = u_xlat22.z;
          x_773 = x_777;
        } else {
          let x_779 : f32 = u_xlat11;
          x_773 = x_779;
        }
        let x_780 : f32 = x_773;
        u_xlat34 = x_780;
        let x_783 : bool = u_xlatb10.x;
        if (x_783) {
          let x_788 : f32 = u_xlat22.x;
          x_784 = x_788;
        } else {
          let x_790 : f32 = u_xlat34;
          x_784 = x_790;
        }
        let x_791 : f32 = x_784;
        u_xlat10.x = x_791;
        let x_793 : i32 = u_xlati41;
        let x_795 : f32 = x_249.x_AdditionalShadowParams[x_793].w;
        u_xlat22.x = trunc(x_795);
        let x_799 : f32 = u_xlat10.x;
        let x_801 : f32 = u_xlat22.x;
        u_xlat10.x = (x_799 + x_801);
        let x_805 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_805);
      }
      let x_807 : i32 = u_xlati45;
      u_xlati45 = (x_807 << bitcast<u32>(2i));
      let x_809 : vec3<f32> = vs_TEXCOORD7;
      let x_812 : i32 = u_xlati45;
      let x_815 : i32 = u_xlati45;
      let x_819 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_812 + 1i) / 4i)][((x_815 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_809.y, x_809.y, x_809.y, x_809.y) * x_819);
      let x_821 : i32 = u_xlati45;
      let x_823 : i32 = u_xlati45;
      let x_826 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_821 / 4i)][(x_823 % 4i)];
      let x_827 : vec3<f32> = vs_TEXCOORD7;
      let x_830 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_826 * vec4<f32>(x_827.x, x_827.x, x_827.x, x_827.x)) + x_830);
      let x_832 : i32 = u_xlati45;
      let x_835 : i32 = u_xlati45;
      let x_839 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_832 + 2i) / 4i)][((x_835 + 2i) % 4i)];
      let x_840 : vec3<f32> = vs_TEXCOORD7;
      let x_843 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_839 * vec4<f32>(x_840.z, x_840.z, x_840.z, x_840.z)) + x_843);
      let x_845 : vec4<f32> = u_xlat10;
      let x_846 : i32 = u_xlati45;
      let x_849 : i32 = u_xlati45;
      let x_853 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_846 + 3i) / 4i)][((x_849 + 3i) % 4i)];
      u_xlat10 = (x_845 + x_853);
      let x_855 : vec4<f32> = u_xlat10;
      let x_857 : vec4<f32> = u_xlat10;
      let x_859 : vec3<f32> = (vec3<f32>(x_855.x, x_855.y, x_855.z) / vec3<f32>(x_857.w, x_857.w, x_857.w));
      let x_860 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
      let x_863 : vec4<f32> = u_xlat10;
      let x_864 : vec2<f32> = vec2<f32>(x_863.x, x_863.y);
      let x_866 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_864.x, x_864.y, x_866);
      let x_874 : vec3<f32> = txVec1;
      let x_876 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
      u_xlat45 = x_876;
      let x_877 : i32 = u_xlati41;
      let x_879 : f32 = x_249.x_AdditionalShadowParams[x_877].x;
      u_xlat10.x = (1.0f + -(x_879));
      let x_883 : f32 = u_xlat45;
      let x_884 : i32 = u_xlati41;
      let x_886 : f32 = x_249.x_AdditionalShadowParams[x_884].x;
      let x_889 : f32 = u_xlat10.x;
      u_xlat45 = ((x_883 * x_886) + x_889);
      let x_892 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_892);
      let x_897 : f32 = u_xlat10.z;
      u_xlatb22 = (x_897 >= 1.0f);
      let x_899 : bool = u_xlatb22;
      let x_901 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_899 | x_901);
      let x_905 : bool = u_xlatb10.x;
      let x_906 : f32 = u_xlat45;
      u_xlat45 = select(x_906, 1.0f, x_905);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_909 : f32 = u_xlat45;
    u_xlat10.x = (-(x_909) + 1.0f);
    let x_913 : f32 = u_xlat1;
    let x_915 : f32 = u_xlat10.x;
    let x_917 : f32 = u_xlat45;
    u_xlat45 = ((x_913 * x_915) + x_917);
    let x_919 : f32 = u_xlat42;
    let x_920 : f32 = u_xlat45;
    u_xlat42 = (x_919 * x_920);
    let x_922 : vec3<f32> = u_xlat13;
    let x_923 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_922, x_923);
    let x_925 : f32 = u_xlat45;
    u_xlat45 = clamp(x_925, 0.0f, 1.0f);
    let x_927 : f32 = u_xlat42;
    let x_928 : f32 = u_xlat45;
    u_xlat42 = (x_927 * x_928);
    let x_930 : f32 = u_xlat42;
    let x_932 : i32 = u_xlati41;
    let x_934 : vec4<f32> = x_636.x_AdditionalLightsColor[x_932];
    let x_936 : vec3<f32> = (vec3<f32>(x_930, x_930, x_930) * vec3<f32>(x_934.x, x_934.y, x_934.z));
    let x_937 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
    let x_939 : vec3<f32> = u_xlat8;
    let x_940 : f32 = u_xlat44;
    let x_943 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_939 * vec3<f32>(x_940, x_940, x_940)) + x_943);
    let x_945 : vec3<f32> = u_xlat8;
    let x_946 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_945, x_946);
    let x_948 : f32 = u_xlat41;
    u_xlat41 = max(x_948, 1.17549435e-38f);
    let x_950 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_950);
    let x_952 : f32 = u_xlat41;
    let x_954 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_952, x_952, x_952) * x_954);
    let x_956 : vec3<f32> = u_xlat13;
    let x_957 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_956, x_957);
    let x_959 : f32 = u_xlat41;
    u_xlat41 = clamp(x_959, 0.0f, 1.0f);
    let x_961 : vec3<f32> = u_xlat9;
    let x_962 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_961, x_962);
    let x_964 : f32 = u_xlat42;
    u_xlat42 = clamp(x_964, 0.0f, 1.0f);
    let x_966 : f32 = u_xlat41;
    let x_967 : f32 = u_xlat41;
    u_xlat41 = (x_966 * x_967);
    let x_969 : f32 = u_xlat41;
    let x_971 : f32 = u_xlat7.x;
    u_xlat41 = ((x_969 * x_971) + 1.00001001358032226562f);
    let x_974 : f32 = u_xlat42;
    let x_975 : f32 = u_xlat42;
    u_xlat42 = (x_974 * x_975);
    let x_977 : f32 = u_xlat41;
    let x_978 : f32 = u_xlat41;
    u_xlat41 = (x_977 * x_978);
    let x_980 : f32 = u_xlat42;
    u_xlat42 = max(x_980, 0.10000000149011611938f);
    let x_982 : f32 = u_xlat41;
    let x_983 : f32 = u_xlat42;
    u_xlat41 = (x_982 * x_983);
    let x_986 : f32 = u_xlat3.x;
    let x_987 : f32 = u_xlat41;
    u_xlat41 = (x_986 * x_987);
    let x_989 : f32 = u_xlat4;
    let x_990 : f32 = u_xlat41;
    u_xlat41 = (x_989 / x_990);
    let x_992 : vec4<f32> = u_xlat0;
    let x_994 : f32 = u_xlat41;
    let x_997 : vec3<f32> = u_xlat15;
    u_xlat8 = ((vec3<f32>(x_992.x, x_992.y, x_992.z) * vec3<f32>(x_994, x_994, x_994)) + x_997);
    let x_999 : vec3<f32> = u_xlat8;
    let x_1000 : vec4<f32> = u_xlat10;
    let x_1003 : vec3<f32> = u_xlat16;
    u_xlat16 = ((x_999 * vec3<f32>(x_1000.x, x_1000.y, x_1000.z)) + x_1003);

    continuing {
      let x_1005 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1005 + bitcast<u32>(1i));
    }
  }
  let x_1007 : vec3<f32> = u_xlat19;
  let x_1008 : vec4<f32> = u_xlat6;
  let x_1011 : vec4<f32> = u_xlat2;
  let x_1013 : vec3<f32> = ((x_1007 * vec3<f32>(x_1008.x, x_1008.y, x_1008.z)) + vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1018 : vec3<f32> = u_xlat16;
  let x_1019 : vec4<f32> = u_xlat0;
  let x_1021 : vec3<f32> = (x_1018 + vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1022 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


