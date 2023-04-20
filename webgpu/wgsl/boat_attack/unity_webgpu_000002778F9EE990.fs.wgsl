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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_313 : UnityPerDraw;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat41 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_503 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu13 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_919 : AdditionalLights;

var<private> u_xlat43 : f32;

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

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu41 : u32;

fn main_1() {
  var x_194 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1062 : f32;
  var x_1073 : f32;
  var txVec1 : vec3<f32>;
  var x_1380 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : f32 = x_28.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_44, x_46);
  u_xlat1 = vec2<f32>(x_47.x, x_47.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_54.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_50.w, x_50.x, x_50.y, x_50.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_68 : vec2<f32> = vs_TEXCOORD0;
  let x_70 : f32 = x_28.x_GlobalMipBias.x;
  let x_71 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_68, x_70);
  u_xlat3 = vec3<f32>(x_71.x, x_71.y, x_71.w);
  let x_75 : f32 = u_xlat3.x;
  let x_78 : f32 = u_xlat3.z;
  u_xlat3.x = (x_75 * x_78);
  let x_82 : vec3<f32> = u_xlat3;
  u_xlat25 = ((vec2<f32>(x_82.x, x_82.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec2<f32> = u_xlat25;
  let x_92 : vec2<f32> = u_xlat25;
  u_xlat36 = dot(x_91, x_92);
  let x_94 : f32 = u_xlat36;
  u_xlat36 = min(x_94, 1.0f);
  let x_97 : f32 = u_xlat36;
  u_xlat36 = (-(x_97) + 1.0f);
  let x_100 : f32 = u_xlat36;
  u_xlat36 = sqrt(x_100);
  let x_102 : f32 = u_xlat36;
  u_xlat36 = max(x_102, 0.0000000000000001f);
  let x_105 : vec2<f32> = u_xlat25;
  let x_108 : f32 = x_54.x_BumpScale;
  let x_110 : f32 = x_54.x_BumpScale;
  let x_111 : vec2<f32> = vec2<f32>(x_108, x_110);
  u_xlat25 = (x_105 * vec2<f32>(x_111.x, x_111.y));
  let x_121 : vec2<f32> = vs_TEXCOORD0;
  let x_123 : f32 = x_28.x_GlobalMipBias.x;
  let x_124 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_121, x_123);
  u_xlat3.x = x_124.y;
  let x_131 : f32 = x_54.x_OcclusionStrength;
  u_xlat15.x = (-(x_131) + 1.0f);
  let x_136 : f32 = u_xlat3.x;
  let x_138 : f32 = x_54.x_OcclusionStrength;
  let x_141 : f32 = u_xlat15.x;
  u_xlat3.x = ((x_136 * x_138) + x_141);
  let x_150 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb15 = (x_150 == 0.0f);
  let x_156 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_162 : vec3<f32> = (-(x_156) + x_161);
  let x_163 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec4<f32> = u_xlat4;
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat27 = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat27;
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_183 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat5.x = x_183;
  let x_187 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat5.y = x_187;
  let x_190 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat5.z = x_190;
  let x_192 : bool = u_xlatb15;
  if (x_192) {
    let x_197 : vec4<f32> = u_xlat4;
    x_194 = vec3<f32>(x_197.x, x_197.y, x_197.z);
  } else {
    let x_200 : vec3<f32> = u_xlat5;
    x_194 = x_200;
  }
  let x_201 : vec3<f32> = x_194;
  u_xlat15 = x_201;
  let x_203 : vec3<f32> = vs_TEXCOORD2;
  let x_207 : vec4<f32> = vs_TEXCOORD3;
  let x_209 : vec3<f32> = (vec3<f32>(x_203.z, x_203.x, x_203.y) * vec3<f32>(x_207.y, x_207.z, x_207.x));
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec3<f32> = vs_TEXCOORD2;
  let x_214 : vec4<f32> = vs_TEXCOORD3;
  let x_217 : vec4<f32> = u_xlat4;
  let x_220 : vec3<f32> = ((vec3<f32>(x_212.y, x_212.z, x_212.x) * vec3<f32>(x_214.z, x_214.x, x_214.y)) + -(vec3<f32>(x_217.x, x_217.y, x_217.z)));
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat4;
  let x_225 : vec4<f32> = vs_TEXCOORD3;
  let x_227 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.w, x_225.w, x_225.w));
  let x_228 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec2<f32> = u_xlat25;
  let x_232 : vec4<f32> = u_xlat4;
  let x_234 : vec3<f32> = (vec3<f32>(x_230.y, x_230.y, x_230.y) * vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_237 : vec2<f32> = u_xlat25;
  let x_239 : vec4<f32> = vs_TEXCOORD3;
  let x_242 : vec4<f32> = u_xlat4;
  let x_244 : vec3<f32> = ((vec3<f32>(x_237.x, x_237.x, x_237.x) * vec3<f32>(x_239.x, x_239.y, x_239.z)) + vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : f32 = u_xlat36;
  let x_249 : vec3<f32> = vs_TEXCOORD2;
  let x_251 : vec4<f32> = u_xlat4;
  let x_253 : vec3<f32> = ((vec3<f32>(x_247, x_247, x_247) * x_249) + vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec4<f32> = u_xlat4;
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(vec3<f32>(x_256.x, x_256.y, x_256.z), vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_261);
  let x_263 : f32 = u_xlat36;
  let x_265 : vec4<f32> = u_xlat4;
  let x_267 : vec3<f32> = (vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_272 : f32 = vs_TEXCOORD1.y;
  let x_274 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat36 = (x_272 * x_274);
  let x_277 : f32 = x_28.unity_MatrixV[0i].z;
  let x_279 : f32 = vs_TEXCOORD1.x;
  let x_281 : f32 = u_xlat36;
  u_xlat36 = ((x_277 * x_279) + x_281);
  let x_284 : f32 = x_28.unity_MatrixV[2i].z;
  let x_286 : f32 = vs_TEXCOORD1.z;
  let x_288 : f32 = u_xlat36;
  u_xlat36 = ((x_284 * x_286) + x_288);
  let x_290 : f32 = u_xlat36;
  let x_293 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat36 = (x_290 + x_293);
  let x_295 : f32 = u_xlat36;
  let x_299 : f32 = x_28.x_ProjectionParams.y;
  u_xlat36 = (-(x_295) + -(x_299));
  let x_302 : f32 = u_xlat36;
  u_xlat36 = max(x_302, 0.0f);
  let x_304 : f32 = u_xlat36;
  let x_307 : f32 = x_28.unity_FogParams.x;
  u_xlat36 = (x_304 * x_307);
  u_xlat4.w = 1.0f;
  let x_316 : vec4<f32> = x_313.unity_SHAr;
  let x_317 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_316, x_317);
  let x_322 : vec4<f32> = x_313.unity_SHAg;
  let x_323 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_322, x_323);
  let x_328 : vec4<f32> = x_313.unity_SHAb;
  let x_329 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_328, x_329);
  let x_333 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_333.y, x_333.z, x_333.z, x_333.x) * vec4<f32>(x_335.x, x_335.y, x_335.z, x_335.z));
  let x_341 : vec4<f32> = x_313.unity_SHBr;
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_341, x_342);
  let x_347 : vec4<f32> = x_313.unity_SHBg;
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_347, x_348);
  let x_353 : vec4<f32> = x_313.unity_SHBb;
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_353, x_354);
  let x_358 : f32 = u_xlat4.y;
  let x_360 : f32 = u_xlat4.y;
  u_xlat25.x = (x_358 * x_360);
  let x_364 : f32 = u_xlat4.x;
  let x_366 : f32 = u_xlat4.x;
  let x_369 : f32 = u_xlat25.x;
  u_xlat25.x = ((x_364 * x_366) + -(x_369));
  let x_375 : vec4<f32> = x_313.unity_SHC;
  let x_377 : vec2<f32> = u_xlat25;
  let x_380 : vec3<f32> = u_xlat7;
  let x_381 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_377.x, x_377.x, x_377.x)) + x_380);
  let x_382 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec3<f32> = u_xlat5;
  let x_385 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_384 + vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_388, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_392 : f32 = u_xlat1.x;
  u_xlat25.x = ((-(x_392) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_400 : f32 = u_xlat1.y;
  let x_402 : f32 = x_54.x_Smoothness;
  let x_405 : f32 = u_xlat25.x;
  u_xlat37 = ((x_400 * x_402) + -(x_405));
  let x_409 : vec2<f32> = u_xlat25;
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat14 = (vec3<f32>(x_409.x, x_409.x, x_409.x) * vec3<f32>(x_411.y, x_411.z, x_411.w));
  let x_414 : vec4<f32> = u_xlat0;
  let x_417 : vec4<f32> = x_54.x_BaseColor;
  let x_422 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_417.x, x_417.y, x_417.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec2<f32> = u_xlat1;
  let x_427 : vec4<f32> = u_xlat0;
  let x_432 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.x, x_425.x) * vec3<f32>(x_427.x, x_427.y, x_427.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_433 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_436 : f32 = u_xlat1.y;
  let x_439 : f32 = x_54.x_Smoothness;
  u_xlat1.x = ((-(x_436) * x_439) + 1.0f);
  let x_445 : f32 = u_xlat1.x;
  let x_447 : f32 = u_xlat1.x;
  u_xlat13.x = (x_445 * x_447);
  let x_451 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_451, 0.0078125f);
  let x_456 : f32 = u_xlat13.x;
  let x_458 : f32 = u_xlat13.x;
  u_xlat25.x = (x_456 * x_458);
  let x_461 : f32 = u_xlat37;
  u_xlat37 = (x_461 + 1.0f);
  let x_463 : f32 = u_xlat37;
  u_xlat37 = clamp(x_463, 0.0f, 1.0f);
  let x_467 : f32 = u_xlat13.x;
  u_xlat40 = ((x_467 * 4.0f) + 2.0f);
  let x_472 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_472, 1.0f);
  let x_477 : vec4<f32> = vs_TEXCOORD6;
  let x_478 : vec2<f32> = vec2<f32>(x_477.x, x_477.y);
  let x_480 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_478.x, x_478.y, x_480);
  let x_493 : vec3<f32> = txVec0;
  let x_495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_493.xy, x_493.z);
  u_xlat41 = x_495;
  let x_505 : f32 = x_503.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_505) + 1.0f);
  let x_509 : f32 = u_xlat41;
  let x_511 : f32 = x_503.x_MainLightShadowParams.x;
  let x_514 : f32 = u_xlat6.x;
  u_xlat41 = ((x_509 * x_511) + x_514);
  let x_518 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_518);
  let x_522 : f32 = vs_TEXCOORD6.z;
  u_xlatb18 = (x_522 >= 1.0f);
  let x_524 : bool = u_xlatb18;
  let x_525 : bool = u_xlatb6;
  u_xlatb6 = (x_524 | x_525);
  let x_527 : bool = u_xlatb6;
  let x_528 : f32 = u_xlat41;
  u_xlat41 = select(x_528, 1.0f, x_527);
  let x_530 : vec3<f32> = vs_TEXCOORD1;
  let x_532 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_534 : vec3<f32> = (x_530 + -(x_532));
  let x_535 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat6;
  let x_539 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_537.x, x_537.y, x_537.z), vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_545 : f32 = u_xlat6.x;
  let x_547 : f32 = x_503.x_MainLightShadowParams.z;
  let x_550 : f32 = x_503.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_545 * x_547) + x_550);
  let x_554 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_554, 0.0f, 1.0f);
  let x_558 : f32 = u_xlat41;
  u_xlat30 = (-(x_558) + 1.0f);
  let x_562 : f32 = u_xlat18.x;
  let x_563 : f32 = u_xlat30;
  let x_565 : f32 = u_xlat41;
  u_xlat41 = ((x_562 * x_563) + x_565);
  let x_567 : vec3<f32> = u_xlat15;
  let x_569 : vec4<f32> = u_xlat4;
  u_xlat18.x = dot(-(x_567), vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_574 : f32 = u_xlat18.x;
  let x_576 : f32 = u_xlat18.x;
  u_xlat18.x = (x_574 + x_576);
  let x_579 : vec4<f32> = u_xlat4;
  let x_581 : vec3<f32> = u_xlat18;
  let x_585 : vec3<f32> = u_xlat15;
  u_xlat18 = ((vec3<f32>(x_579.x, x_579.y, x_579.z) * -(vec3<f32>(x_581.x, x_581.x, x_581.x))) + -(x_585));
  let x_588 : vec4<f32> = u_xlat4;
  let x_590 : vec3<f32> = u_xlat15;
  u_xlat7.x = dot(vec3<f32>(x_588.x, x_588.y, x_588.z), x_590);
  let x_594 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_594, 0.0f, 1.0f);
  let x_598 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_598) + 1.0f);
  let x_603 : f32 = u_xlat7.x;
  let x_605 : f32 = u_xlat7.x;
  u_xlat7.x = (x_603 * x_605);
  let x_609 : f32 = u_xlat7.x;
  let x_611 : f32 = u_xlat7.x;
  u_xlat7.x = (x_609 * x_611);
  let x_616 : f32 = u_xlat1.x;
  u_xlat19.x = ((-(x_616) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_624 : f32 = u_xlat1.x;
  let x_626 : f32 = u_xlat19.x;
  u_xlat1.x = (x_624 * x_626);
  let x_630 : f32 = u_xlat1.x;
  u_xlat1.x = (x_630 * 6.0f);
  let x_643 : vec3<f32> = u_xlat18;
  let x_645 : f32 = u_xlat1.x;
  let x_646 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_643, x_645);
  u_xlat8 = x_646;
  let x_648 : f32 = u_xlat8.w;
  u_xlat1.x = (x_648 + -1.0f);
  let x_652 : f32 = x_313.unity_SpecCube0_HDR.w;
  let x_654 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_652 * x_654) + 1.0f);
  let x_659 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_659, 0.0f);
  let x_663 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_663);
  let x_667 : f32 = u_xlat1.x;
  let x_669 : f32 = x_313.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_667 * x_669);
  let x_673 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_673);
  let x_677 : f32 = u_xlat1.x;
  let x_679 : f32 = x_313.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_677 * x_679);
  let x_682 : vec4<f32> = u_xlat8;
  let x_684 : vec2<f32> = u_xlat1;
  u_xlat18 = (vec3<f32>(x_682.x, x_682.y, x_682.z) * vec3<f32>(x_684.x, x_684.x, x_684.x));
  let x_687 : vec3<f32> = u_xlat13;
  let x_689 : vec3<f32> = u_xlat13;
  u_xlat1 = ((vec2<f32>(x_687.x, x_687.x) * vec2<f32>(x_689.x, x_689.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_695 : f32 = u_xlat1.y;
  u_xlat13.x = (1.0f / x_695);
  let x_698 : vec4<f32> = u_xlat0;
  let x_701 : f32 = u_xlat37;
  u_xlat19 = (-(vec3<f32>(x_698.x, x_698.y, x_698.z)) + vec3<f32>(x_701, x_701, x_701));
  let x_704 : vec3<f32> = u_xlat7;
  let x_706 : vec3<f32> = u_xlat19;
  let x_708 : vec4<f32> = u_xlat0;
  u_xlat7 = ((vec3<f32>(x_704.x, x_704.x, x_704.x) * x_706) + vec3<f32>(x_708.x, x_708.y, x_708.z));
  let x_711 : vec3<f32> = u_xlat13;
  let x_713 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_711.x, x_711.x, x_711.x) * x_713);
  let x_715 : vec3<f32> = u_xlat18;
  let x_716 : vec3<f32> = u_xlat7;
  u_xlat18 = (x_715 * x_716);
  let x_718 : vec3<f32> = u_xlat5;
  let x_719 : vec3<f32> = u_xlat14;
  let x_721 : vec3<f32> = u_xlat18;
  u_xlat5 = ((x_718 * x_719) + x_721);
  let x_723 : f32 = u_xlat41;
  let x_725 : f32 = x_313.unity_LightData.z;
  u_xlat13.x = (x_723 * x_725);
  let x_728 : vec4<f32> = u_xlat4;
  let x_731 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(x_731.x, x_731.y, x_731.z));
  let x_734 : f32 = u_xlat37;
  u_xlat37 = clamp(x_734, 0.0f, 1.0f);
  let x_736 : f32 = u_xlat37;
  let x_738 : f32 = u_xlat13.x;
  u_xlat13.x = (x_736 * x_738);
  let x_741 : vec3<f32> = u_xlat13;
  let x_744 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_741.x, x_741.x, x_741.x) * vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_747 : vec3<f32> = u_xlat15;
  let x_749 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat7 = (x_747 + vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec3<f32> = u_xlat7;
  let x_753 : vec3<f32> = u_xlat7;
  u_xlat13.x = dot(x_752, x_753);
  let x_757 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_757, 1.17549435e-38f);
  let x_762 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_762);
  let x_765 : vec3<f32> = u_xlat13;
  let x_767 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_765.x, x_765.x, x_765.x) * x_767);
  let x_769 : vec4<f32> = u_xlat4;
  let x_771 : vec3<f32> = u_xlat7;
  u_xlat13.x = dot(vec3<f32>(x_769.x, x_769.y, x_769.z), x_771);
  let x_775 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_775, 0.0f, 1.0f);
  let x_779 : vec4<f32> = x_28.x_MainLightPosition;
  let x_781 : vec3<f32> = u_xlat7;
  u_xlat13.z = dot(vec3<f32>(x_779.x, x_779.y, x_779.z), x_781);
  let x_785 : f32 = u_xlat13.z;
  u_xlat13.z = clamp(x_785, 0.0f, 1.0f);
  let x_788 : vec3<f32> = u_xlat13;
  let x_790 : vec3<f32> = u_xlat13;
  let x_792 : vec2<f32> = (vec2<f32>(x_788.x, x_788.z) * vec2<f32>(x_790.x, x_790.z));
  let x_793 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_792.x, x_793.y, x_792.y);
  let x_796 : f32 = u_xlat13.x;
  let x_798 : f32 = u_xlat1.x;
  u_xlat13.x = ((x_796 * x_798) + 1.00001001358032226562f);
  let x_804 : f32 = u_xlat13.x;
  let x_806 : f32 = u_xlat13.x;
  u_xlat13.x = (x_804 * x_806);
  let x_810 : f32 = u_xlat13.z;
  u_xlat37 = max(x_810, 0.10000000149011611938f);
  let x_813 : f32 = u_xlat37;
  let x_815 : f32 = u_xlat13.x;
  u_xlat13.x = (x_813 * x_815);
  let x_818 : f32 = u_xlat40;
  let x_820 : f32 = u_xlat13.x;
  u_xlat13.x = (x_818 * x_820);
  let x_824 : f32 = u_xlat25.x;
  let x_826 : f32 = u_xlat13.x;
  u_xlat13.x = (x_824 / x_826);
  let x_829 : vec4<f32> = u_xlat0;
  let x_831 : vec3<f32> = u_xlat13;
  let x_834 : vec3<f32> = u_xlat14;
  u_xlat7 = ((vec3<f32>(x_829.x, x_829.y, x_829.z) * vec3<f32>(x_831.x, x_831.x, x_831.x)) + x_834);
  let x_836 : vec3<f32> = u_xlat18;
  let x_837 : vec3<f32> = u_xlat7;
  u_xlat18 = (x_836 * x_837);
  let x_840 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_842 : f32 = x_313.unity_LightData.y;
  u_xlat13.x = min(x_840, x_842);
  let x_848 : f32 = u_xlat13.x;
  u_xlatu13 = bitcast<u32>(i32(x_848));
  let x_852 : f32 = u_xlat6.x;
  let x_855 : f32 = x_503.x_AdditionalShadowFadeParams.x;
  let x_858 : f32 = x_503.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_852 * x_855) + x_858);
  let x_860 : f32 = u_xlat37;
  u_xlat37 = clamp(x_860, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_872 : u32 = u_xlatu_loop_1;
    let x_873 : u32 = u_xlatu13;
    if ((x_872 < x_873)) {
    } else {
      break;
    }
    let x_876 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_876 >> 2u);
    let x_880 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_880 & 3u));
    let x_883 : u32 = u_xlatu6;
    let x_886 : vec4<f32> = x_313.unity_LightIndices[bitcast<i32>(x_883)];
    let x_896 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_901 : vec4<u32> = indexable[x_896];
    u_xlat6.x = dot(x_886, bitcast<vec4<f32>>(x_901));
    let x_907 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_907);
    let x_909 : vec3<f32> = vs_TEXCOORD1;
    let x_920 : i32 = u_xlati6;
    let x_922 : vec4<f32> = x_919.x_AdditionalLightsPosition[x_920];
    let x_925 : i32 = u_xlati6;
    let x_927 : vec4<f32> = x_919.x_AdditionalLightsPosition[x_925];
    let x_929 : vec3<f32> = ((-(x_909) * vec3<f32>(x_922.w, x_922.w, x_922.w)) + vec3<f32>(x_927.x, x_927.y, x_927.z));
    let x_930 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
    let x_933 : vec4<f32> = u_xlat8;
    let x_935 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_933.x, x_933.y, x_933.z), vec3<f32>(x_935.x, x_935.y, x_935.z));
    let x_938 : f32 = u_xlat43;
    u_xlat43 = max(x_938, 0.00006103515625f);
    let x_942 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_942);
    let x_945 : f32 = u_xlat44;
    let x_947 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_945, x_945, x_945) * vec3<f32>(x_947.x, x_947.y, x_947.z));
    let x_951 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_951);
    let x_953 : f32 = u_xlat43;
    let x_954 : i32 = u_xlati6;
    let x_956 : f32 = x_919.x_AdditionalLightsAttenuation[x_954].x;
    u_xlat43 = (x_953 * x_956);
    let x_958 : f32 = u_xlat43;
    let x_960 : f32 = u_xlat43;
    u_xlat43 = ((-(x_958) * x_960) + 1.0f);
    let x_963 : f32 = u_xlat43;
    u_xlat43 = max(x_963, 0.0f);
    let x_965 : f32 = u_xlat43;
    let x_966 : f32 = u_xlat43;
    u_xlat43 = (x_965 * x_966);
    let x_968 : f32 = u_xlat43;
    let x_969 : f32 = u_xlat45;
    u_xlat43 = (x_968 * x_969);
    let x_971 : i32 = u_xlati6;
    let x_973 : vec4<f32> = x_919.x_AdditionalLightsSpotDir[x_971];
    let x_975 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_973.x, x_973.y, x_973.z), x_975);
    let x_977 : f32 = u_xlat45;
    let x_978 : i32 = u_xlati6;
    let x_980 : f32 = x_919.x_AdditionalLightsAttenuation[x_978].z;
    let x_982 : i32 = u_xlati6;
    let x_984 : f32 = x_919.x_AdditionalLightsAttenuation[x_982].w;
    u_xlat45 = ((x_977 * x_980) + x_984);
    let x_986 : f32 = u_xlat45;
    u_xlat45 = clamp(x_986, 0.0f, 1.0f);
    let x_988 : f32 = u_xlat45;
    let x_989 : f32 = u_xlat45;
    u_xlat45 = (x_988 * x_989);
    let x_991 : f32 = u_xlat43;
    let x_992 : f32 = u_xlat45;
    u_xlat43 = (x_991 * x_992);
    let x_996 : i32 = u_xlati6;
    let x_998 : f32 = x_503.x_AdditionalShadowParams[x_996].w;
    u_xlati45 = i32(x_998);
    let x_1003 : i32 = u_xlati45;
    u_xlatb10.x = (x_1003 >= 0i);
    let x_1007 : bool = u_xlatb10.x;
    if (x_1007) {
      let x_1011 : i32 = u_xlati6;
      let x_1013 : f32 = x_503.x_AdditionalShadowParams[x_1011].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1013, x_1013, x_1013, x_1013))));
      let x_1020 : bool = u_xlatb10.x;
      if (x_1020) {
        let x_1023 : vec3<f32> = u_xlat9;
        let x_1026 : vec3<f32> = u_xlat9;
        let x_1029 : vec4<bool> = (abs(vec4<f32>(x_1023.z, x_1023.z, x_1023.y, x_1023.z)) >= abs(vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.x)));
        u_xlatb10 = vec3<bool>(x_1029.x, x_1029.y, x_1029.z);
        let x_1032 : bool = u_xlatb10.y;
        let x_1034 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1032 & x_1034);
        let x_1038 : vec3<f32> = u_xlat9;
        let x_1041 : vec4<bool> = (-(vec4<f32>(x_1038.z, x_1038.y, x_1038.x, x_1038.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1041.x, x_1041.y, x_1041.z);
        let x_1045 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1045);
        let x_1050 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1050);
        let x_1056 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1056);
        let x_1060 : bool = u_xlatb10.z;
        if (x_1060) {
          let x_1066 : f32 = u_xlat22.z;
          x_1062 = x_1066;
        } else {
          let x_1068 : f32 = u_xlat11;
          x_1062 = x_1068;
        }
        let x_1069 : f32 = x_1062;
        u_xlat34 = x_1069;
        let x_1072 : bool = u_xlatb10.x;
        if (x_1072) {
          let x_1077 : f32 = u_xlat22.x;
          x_1073 = x_1077;
        } else {
          let x_1079 : f32 = u_xlat34;
          x_1073 = x_1079;
        }
        let x_1080 : f32 = x_1073;
        u_xlat10.x = x_1080;
        let x_1082 : i32 = u_xlati6;
        let x_1084 : f32 = x_503.x_AdditionalShadowParams[x_1082].w;
        u_xlat22.x = trunc(x_1084);
        let x_1088 : f32 = u_xlat10.x;
        let x_1090 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1088 + x_1090);
        let x_1094 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1094);
      }
      let x_1096 : i32 = u_xlati45;
      u_xlati45 = (x_1096 << bitcast<u32>(2i));
      let x_1098 : vec3<f32> = vs_TEXCOORD1;
      let x_1101 : i32 = u_xlati45;
      let x_1104 : i32 = u_xlati45;
      let x_1108 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[((x_1101 + 1i) / 4i)][((x_1104 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1098.y, x_1098.y, x_1098.y, x_1098.y) * x_1108);
      let x_1110 : i32 = u_xlati45;
      let x_1112 : i32 = u_xlati45;
      let x_1115 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[(x_1110 / 4i)][(x_1112 % 4i)];
      let x_1116 : vec3<f32> = vs_TEXCOORD1;
      let x_1119 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1115 * vec4<f32>(x_1116.x, x_1116.x, x_1116.x, x_1116.x)) + x_1119);
      let x_1121 : i32 = u_xlati45;
      let x_1124 : i32 = u_xlati45;
      let x_1128 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[((x_1121 + 2i) / 4i)][((x_1124 + 2i) % 4i)];
      let x_1129 : vec3<f32> = vs_TEXCOORD1;
      let x_1132 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1128 * vec4<f32>(x_1129.z, x_1129.z, x_1129.z, x_1129.z)) + x_1132);
      let x_1134 : vec4<f32> = u_xlat10;
      let x_1135 : i32 = u_xlati45;
      let x_1138 : i32 = u_xlati45;
      let x_1142 : vec4<f32> = x_503.x_AdditionalLightsWorldToShadow[((x_1135 + 3i) / 4i)][((x_1138 + 3i) % 4i)];
      u_xlat10 = (x_1134 + x_1142);
      let x_1144 : vec4<f32> = u_xlat10;
      let x_1146 : vec4<f32> = u_xlat10;
      let x_1148 : vec3<f32> = (vec3<f32>(x_1144.x, x_1144.y, x_1144.z) / vec3<f32>(x_1146.w, x_1146.w, x_1146.w));
      let x_1149 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
      let x_1152 : vec4<f32> = u_xlat10;
      let x_1153 : vec2<f32> = vec2<f32>(x_1152.x, x_1152.y);
      let x_1155 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1153.x, x_1153.y, x_1155);
      let x_1163 : vec3<f32> = txVec1;
      let x_1165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1163.xy, x_1163.z);
      u_xlat45 = x_1165;
      let x_1166 : i32 = u_xlati6;
      let x_1168 : f32 = x_503.x_AdditionalShadowParams[x_1166].x;
      u_xlat10.x = (1.0f + -(x_1168));
      let x_1172 : f32 = u_xlat45;
      let x_1173 : i32 = u_xlati6;
      let x_1175 : f32 = x_503.x_AdditionalShadowParams[x_1173].x;
      let x_1178 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1172 * x_1175) + x_1178);
      let x_1181 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1181);
      let x_1186 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1186 >= 1.0f);
      let x_1188 : bool = u_xlatb22;
      let x_1190 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1188 | x_1190);
      let x_1194 : bool = u_xlatb10.x;
      let x_1195 : f32 = u_xlat45;
      u_xlat45 = select(x_1195, 1.0f, x_1194);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1198 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1198) + 1.0f);
    let x_1202 : f32 = u_xlat37;
    let x_1204 : f32 = u_xlat10.x;
    let x_1206 : f32 = u_xlat45;
    u_xlat45 = ((x_1202 * x_1204) + x_1206);
    let x_1208 : f32 = u_xlat43;
    let x_1209 : f32 = u_xlat45;
    u_xlat43 = (x_1208 * x_1209);
    let x_1211 : vec4<f32> = u_xlat4;
    let x_1213 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1211.x, x_1211.y, x_1211.z), x_1213);
    let x_1215 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1215, 0.0f, 1.0f);
    let x_1217 : f32 = u_xlat43;
    let x_1218 : f32 = u_xlat45;
    u_xlat43 = (x_1217 * x_1218);
    let x_1220 : f32 = u_xlat43;
    let x_1222 : i32 = u_xlati6;
    let x_1224 : vec4<f32> = x_919.x_AdditionalLightsColor[x_1222];
    let x_1226 : vec3<f32> = (vec3<f32>(x_1220, x_1220, x_1220) * vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
    let x_1227 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
    let x_1229 : vec4<f32> = u_xlat8;
    let x_1231 : f32 = u_xlat44;
    let x_1234 : vec3<f32> = u_xlat15;
    let x_1235 : vec3<f32> = ((vec3<f32>(x_1229.x, x_1229.y, x_1229.z) * vec3<f32>(x_1231, x_1231, x_1231)) + x_1234);
    let x_1236 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
    let x_1238 : vec4<f32> = u_xlat8;
    let x_1240 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1238.x, x_1238.y, x_1238.z), vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
    let x_1245 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1245, 1.17549435e-38f);
    let x_1249 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1249);
    let x_1252 : vec4<f32> = u_xlat6;
    let x_1254 : vec4<f32> = u_xlat8;
    let x_1256 : vec3<f32> = (vec3<f32>(x_1252.x, x_1252.x, x_1252.x) * vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
    let x_1257 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
    let x_1259 : vec4<f32> = u_xlat4;
    let x_1261 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1259.x, x_1259.y, x_1259.z), vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
    let x_1266 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1266, 0.0f, 1.0f);
    let x_1269 : vec3<f32> = u_xlat9;
    let x_1270 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(x_1269, vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
    let x_1273 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1273, 0.0f, 1.0f);
    let x_1276 : f32 = u_xlat6.x;
    let x_1278 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1276 * x_1278);
    let x_1282 : f32 = u_xlat6.x;
    let x_1284 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_1282 * x_1284) + 1.00001001358032226562f);
    let x_1288 : f32 = u_xlat43;
    let x_1289 : f32 = u_xlat43;
    u_xlat43 = (x_1288 * x_1289);
    let x_1292 : f32 = u_xlat6.x;
    let x_1294 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1292 * x_1294);
    let x_1297 : f32 = u_xlat43;
    u_xlat43 = max(x_1297, 0.10000000149011611938f);
    let x_1300 : f32 = u_xlat6.x;
    let x_1301 : f32 = u_xlat43;
    u_xlat6.x = (x_1300 * x_1301);
    let x_1304 : f32 = u_xlat40;
    let x_1306 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1304 * x_1306);
    let x_1310 : f32 = u_xlat25.x;
    let x_1312 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1310 / x_1312);
    let x_1315 : vec4<f32> = u_xlat0;
    let x_1317 : vec4<f32> = u_xlat6;
    let x_1320 : vec3<f32> = u_xlat14;
    let x_1321 : vec3<f32> = ((vec3<f32>(x_1315.x, x_1315.y, x_1315.z) * vec3<f32>(x_1317.x, x_1317.x, x_1317.x)) + x_1320);
    let x_1322 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
    let x_1324 : vec4<f32> = u_xlat8;
    let x_1326 : vec4<f32> = u_xlat10;
    let x_1329 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1324.x, x_1324.y, x_1324.z) * vec3<f32>(x_1326.x, x_1326.y, x_1326.z)) + x_1329);

    continuing {
      let x_1331 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1331 + bitcast<u32>(1i));
    }
  }
  let x_1333 : vec3<f32> = u_xlat5;
  let x_1334 : vec3<f32> = u_xlat3;
  let x_1337 : vec3<f32> = u_xlat18;
  let x_1338 : vec3<f32> = ((x_1333 * vec3<f32>(x_1334.x, x_1334.x, x_1334.x)) + x_1337);
  let x_1339 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
  let x_1341 : vec3<f32> = u_xlat7;
  let x_1342 : vec4<f32> = u_xlat0;
  let x_1344 : vec3<f32> = (x_1341 + vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
  let x_1345 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
  let x_1347 : f32 = u_xlat36;
  let x_1348 : f32 = u_xlat36;
  u_xlat36 = (x_1347 * -(x_1348));
  let x_1351 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1351);
  let x_1353 : vec4<f32> = u_xlat0;
  let x_1356 : vec4<f32> = x_28.unity_FogColor;
  let x_1359 : vec3<f32> = (vec3<f32>(x_1353.x, x_1353.y, x_1353.z) + -(vec3<f32>(x_1356.x, x_1356.y, x_1356.z)));
  let x_1360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1360.w);
  let x_1364 : f32 = u_xlat36;
  let x_1366 : vec4<f32> = u_xlat0;
  let x_1370 : vec4<f32> = x_28.unity_FogColor;
  let x_1372 : vec3<f32> = ((vec3<f32>(x_1364, x_1364, x_1364) * vec3<f32>(x_1366.x, x_1366.y, x_1366.z)) + vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
  let x_1373 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
  let x_1377 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_1377 == 1.0f);
  let x_1379 : bool = u_xlatb0;
  if (x_1379) {
    let x_1384 : f32 = u_xlat2.x;
    x_1380 = x_1384;
  } else {
    x_1380 = 1.0f;
  }
  let x_1386 : f32 = x_1380;
  SV_Target0.w = x_1386;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


