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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat75 : f32;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_249 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb81 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb30 : bool;

var<private> u_xlatb55 : bool;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat55 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1999 : UnityPerDraw;

var<private> u_xlatu26 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2298 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu30 : u32;

fn main_1() {
  var x_187 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1891 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2439 : f32;
  var x_2451 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3945 : f32;
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
  u_xlat51 = ((vec2<f32>(x_82.x, x_82.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec2<f32> = u_xlat51;
  let x_92 : vec2<f32> = u_xlat51;
  u_xlat75 = dot(x_91, x_92);
  let x_94 : f32 = u_xlat75;
  u_xlat75 = min(x_94, 1.0f);
  let x_97 : f32 = u_xlat75;
  u_xlat75 = (-(x_97) + 1.0f);
  let x_100 : f32 = u_xlat75;
  u_xlat75 = sqrt(x_100);
  let x_102 : f32 = u_xlat75;
  u_xlat75 = max(x_102, 0.0000000000000001f);
  let x_105 : vec2<f32> = u_xlat51;
  let x_108 : f32 = x_54.x_BumpScale;
  let x_110 : f32 = x_54.x_BumpScale;
  let x_111 : vec2<f32> = vec2<f32>(x_108, x_110);
  u_xlat51 = (x_105 * vec2<f32>(x_111.x, x_111.y));
  let x_121 : vec2<f32> = vs_TEXCOORD0;
  let x_123 : f32 = x_28.x_GlobalMipBias.x;
  let x_124 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_121, x_123);
  u_xlat3.x = x_124.y;
  let x_131 : f32 = x_54.x_OcclusionStrength;
  u_xlat28.x = (-(x_131) + 1.0f);
  let x_136 : f32 = u_xlat3.x;
  let x_138 : f32 = x_54.x_OcclusionStrength;
  let x_141 : f32 = u_xlat28.x;
  u_xlat3.x = ((x_136 * x_138) + x_141);
  let x_150 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb28 = (x_150 == 0.0f);
  let x_156 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_156) + x_161);
  let x_164 : vec3<f32> = u_xlat4;
  let x_165 : vec3<f32> = u_xlat4;
  u_xlat53 = dot(x_164, x_165);
  let x_167 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_167);
  let x_169 : f32 = u_xlat53;
  let x_171 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_169, x_169, x_169) * x_171);
  let x_176 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat5.x = x_176;
  let x_180 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat5.y = x_180;
  let x_183 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat5.z = x_183;
  let x_185 : bool = u_xlatb28;
  if (x_185) {
    let x_190 : vec3<f32> = u_xlat4;
    x_187 = x_190;
  } else {
    let x_192 : vec4<f32> = u_xlat5;
    x_187 = vec3<f32>(x_192.x, x_192.y, x_192.z);
  }
  let x_194 : vec3<f32> = x_187;
  u_xlat28 = x_194;
  let x_196 : vec3<f32> = vs_TEXCOORD2;
  let x_200 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (vec3<f32>(x_196.z, x_196.x, x_196.y) * vec3<f32>(x_200.y, x_200.z, x_200.x));
  let x_203 : vec3<f32> = vs_TEXCOORD2;
  let x_205 : vec4<f32> = vs_TEXCOORD3;
  let x_208 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_203.y, x_203.z, x_203.x) * vec3<f32>(x_205.z, x_205.x, x_205.y)) + -(x_208));
  let x_211 : vec3<f32> = u_xlat4;
  let x_212 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (x_211 * vec3<f32>(x_212.w, x_212.w, x_212.w));
  let x_215 : vec2<f32> = u_xlat51;
  let x_217 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_215.y, x_215.y, x_215.y) * x_217);
  let x_219 : vec2<f32> = u_xlat51;
  let x_221 : vec4<f32> = vs_TEXCOORD3;
  let x_224 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_219.x, x_219.x, x_219.x) * vec3<f32>(x_221.x, x_221.y, x_221.z)) + x_224);
  let x_226 : f32 = u_xlat75;
  let x_228 : vec3<f32> = vs_TEXCOORD2;
  let x_230 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_226, x_226, x_226) * x_228) + x_230);
  let x_232 : vec3<f32> = u_xlat4;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat75 = dot(x_232, x_233);
  let x_235 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_235);
  let x_237 : f32 = u_xlat75;
  let x_239 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_237, x_237, x_237) * x_239);
  let x_241 : vec3<f32> = vs_TEXCOORD1;
  let x_251 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres0;
  let x_254 : vec3<f32> = (x_241 + -(vec3<f32>(x_251.x, x_251.y, x_251.z)));
  let x_255 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : vec3<f32> = vs_TEXCOORD1;
  let x_260 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres1;
  let x_263 : vec3<f32> = (x_258 + -(vec3<f32>(x_260.x, x_260.y, x_260.z)));
  let x_264 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : vec3<f32> = vs_TEXCOORD1;
  let x_270 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres2;
  let x_273 : vec3<f32> = (x_267 + -(vec3<f32>(x_270.x, x_270.y, x_270.z)));
  let x_274 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres3;
  let x_282 : vec3<f32> = (x_277 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat5;
  let x_287 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec4<f32> = u_xlat6;
  let x_293 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_297 : vec4<f32> = u_xlat7;
  let x_299 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_303 : vec4<f32> = u_xlat8;
  let x_305 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_303.x, x_303.y, x_303.z), vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_312 : vec4<f32> = u_xlat5;
  let x_315 : vec4<f32> = x_249.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_312 < x_315);
  let x_318 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_318);
  let x_322 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_326);
  let x_330 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_330);
  let x_334 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_334);
  let x_339 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_339);
  let x_343 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_343);
  let x_346 : vec4<f32> = u_xlat5;
  let x_348 : vec4<f32> = u_xlat6;
  let x_350 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) + vec3<f32>(x_348.y, x_348.z, x_348.w));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat5;
  let x_356 : vec3<f32> = max(vec3<f32>(x_353.x, x_353.y, x_353.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_357 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_357.x, x_356.x, x_356.y, x_356.z);
  let x_359 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(x_359, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_364 : f32 = u_xlat75;
  u_xlat75 = (-(x_364) + 4.0f);
  let x_369 : f32 = u_xlat75;
  u_xlatu75 = u32(x_369);
  let x_373 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_373) << bitcast<u32>(2i));
  let x_376 : vec3<f32> = vs_TEXCOORD1;
  let x_378 : i32 = u_xlati75;
  let x_381 : i32 = u_xlati75;
  let x_385 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_378 + 1i) / 4i)][((x_381 + 1i) % 4i)];
  let x_387 : vec3<f32> = (vec3<f32>(x_376.y, x_376.y, x_376.y) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : i32 = u_xlati75;
  let x_392 : i32 = u_xlati75;
  let x_395 : vec4<f32> = x_249.x_MainLightWorldToShadow[(x_390 / 4i)][(x_392 % 4i)];
  let x_397 : vec3<f32> = vs_TEXCOORD1;
  let x_400 : vec4<f32> = u_xlat5;
  let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397.x, x_397.x, x_397.x)) + vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : i32 = u_xlati75;
  let x_408 : i32 = u_xlati75;
  let x_412 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_405 + 2i) / 4i)][((x_408 + 2i) % 4i)];
  let x_414 : vec3<f32> = vs_TEXCOORD1;
  let x_417 : vec4<f32> = u_xlat5;
  let x_419 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.z, x_414.z, x_414.z)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat5;
  let x_424 : i32 = u_xlati75;
  let x_427 : i32 = u_xlati75;
  let x_431 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_424 + 3i) / 4i)][((x_427 + 3i) % 4i)];
  let x_433 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_438 : f32 = vs_TEXCOORD1.y;
  let x_440 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat75 = (x_438 * x_440);
  let x_443 : f32 = x_28.unity_MatrixV[0i].z;
  let x_445 : f32 = vs_TEXCOORD1.x;
  let x_447 : f32 = u_xlat75;
  u_xlat75 = ((x_443 * x_445) + x_447);
  let x_450 : f32 = x_28.unity_MatrixV[2i].z;
  let x_452 : f32 = vs_TEXCOORD1.z;
  let x_454 : f32 = u_xlat75;
  u_xlat75 = ((x_450 * x_452) + x_454);
  let x_456 : f32 = u_xlat75;
  let x_458 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat75 = (x_456 + x_458);
  let x_460 : f32 = u_xlat75;
  let x_463 : f32 = x_28.x_ProjectionParams.y;
  u_xlat75 = (-(x_460) + -(x_463));
  let x_466 : f32 = u_xlat75;
  u_xlat75 = max(x_466, 0.0f);
  let x_468 : f32 = u_xlat75;
  let x_471 : f32 = x_28.unity_FogParams.x;
  u_xlat75 = (x_468 * x_471);
  let x_479 : vec2<f32> = vs_TEXCOORD8;
  let x_481 : f32 = x_28.x_GlobalMipBias.x;
  let x_482 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_479, x_481);
  u_xlat6 = x_482;
  let x_487 : vec2<f32> = vs_TEXCOORD8;
  let x_489 : f32 = x_28.x_GlobalMipBias.x;
  let x_490 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_487, x_489);
  let x_491 : vec3<f32> = vec3<f32>(x_490.x, x_490.y, x_490.z);
  let x_492 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat6;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_499 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec3<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat6;
  u_xlat51.x = dot(x_501, vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_507 : f32 = u_xlat51.x;
  u_xlat51.x = (x_507 + 0.5f);
  let x_511 : vec2<f32> = u_xlat51;
  let x_513 : vec4<f32> = u_xlat7;
  let x_515 : vec3<f32> = (vec3<f32>(x_511.x, x_511.x, x_511.x) * vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_519 : f32 = u_xlat6.w;
  u_xlat51.x = max(x_519, 0.00009999999747378752f);
  let x_523 : vec4<f32> = u_xlat6;
  let x_525 : vec2<f32> = u_xlat51;
  let x_527 : vec3<f32> = (vec3<f32>(x_523.x, x_523.y, x_523.z) / vec3<f32>(x_525.x, x_525.x, x_525.x));
  let x_528 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_531 : f32 = u_xlat1.x;
  u_xlat51.x = ((-(x_531) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_539 : f32 = u_xlat1.y;
  let x_541 : f32 = x_54.x_Smoothness;
  let x_544 : f32 = u_xlat51.x;
  u_xlat76 = ((x_539 * x_541) + -(x_544));
  let x_548 : vec2<f32> = u_xlat51;
  let x_550 : vec4<f32> = u_xlat2;
  u_xlat27 = (vec3<f32>(x_548.x, x_548.x, x_548.x) * vec3<f32>(x_550.y, x_550.z, x_550.w));
  let x_553 : vec4<f32> = u_xlat0;
  let x_556 : vec4<f32> = x_54.x_BaseColor;
  let x_561 : vec3<f32> = ((vec3<f32>(x_553.x, x_553.y, x_553.z) * vec3<f32>(x_556.x, x_556.y, x_556.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_562 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_564 : vec2<f32> = u_xlat1;
  let x_566 : vec4<f32> = u_xlat0;
  let x_571 : vec3<f32> = ((vec3<f32>(x_564.x, x_564.x, x_564.x) * vec3<f32>(x_566.x, x_566.y, x_566.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_572 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_575 : f32 = u_xlat1.y;
  let x_578 : f32 = x_54.x_Smoothness;
  u_xlat1.x = ((-(x_575) * x_578) + 1.0f);
  let x_584 : f32 = u_xlat1.x;
  let x_586 : f32 = u_xlat1.x;
  u_xlat26.x = (x_584 * x_586);
  let x_590 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_590, 0.0078125f);
  let x_595 : f32 = u_xlat26.x;
  let x_597 : f32 = u_xlat26.x;
  u_xlat51.x = (x_595 * x_597);
  let x_600 : f32 = u_xlat76;
  u_xlat76 = (x_600 + 1.0f);
  let x_602 : f32 = u_xlat76;
  u_xlat76 = clamp(x_602, 0.0f, 1.0f);
  let x_606 : f32 = u_xlat26.x;
  u_xlat79 = ((x_606 * 4.0f) + 2.0f);
  let x_610 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_610, 1.0f);
  let x_615 : f32 = x_249.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_615);
  let x_617 : bool = u_xlatb80;
  if (x_617) {
    let x_621 : f32 = x_249.x_MainLightShadowParams.y;
    u_xlatb80 = (x_621 == 1.0f);
    let x_623 : bool = u_xlatb80;
    if (x_623) {
      let x_626 : vec4<f32> = u_xlat5;
      let x_629 : vec4<f32> = x_249.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_626.x, x_626.y, x_626.x, x_626.y) + x_629);
      let x_632 : vec4<f32> = u_xlat7;
      let x_633 : vec2<f32> = vec2<f32>(x_632.x, x_632.y);
      let x_635 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_633.x, x_633.y, x_635);
      let x_647 : vec3<f32> = txVec0;
      let x_649 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_647.xy, x_647.z);
      u_xlat8.x = x_649;
      let x_652 : vec4<f32> = u_xlat7;
      let x_653 : vec2<f32> = vec2<f32>(x_652.z, x_652.w);
      let x_655 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_653.x, x_653.y, x_655);
      let x_662 : vec3<f32> = txVec1;
      let x_664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_662.xy, x_662.z);
      u_xlat8.y = x_664;
      let x_666 : vec4<f32> = u_xlat5;
      let x_669 : vec4<f32> = x_249.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y) + x_669);
      let x_672 : vec4<f32> = u_xlat7;
      let x_673 : vec2<f32> = vec2<f32>(x_672.x, x_672.y);
      let x_675 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_673.x, x_673.y, x_675);
      let x_682 : vec3<f32> = txVec2;
      let x_684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_682.xy, x_682.z);
      u_xlat8.z = x_684;
      let x_687 : vec4<f32> = u_xlat7;
      let x_688 : vec2<f32> = vec2<f32>(x_687.z, x_687.w);
      let x_690 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_688.x, x_688.y, x_690);
      let x_697 : vec3<f32> = txVec3;
      let x_699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_697.xy, x_697.z);
      u_xlat8.w = x_699;
      let x_702 : vec4<f32> = u_xlat8;
      u_xlat80 = dot(x_702, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_709 : f32 = x_249.x_MainLightShadowParams.y;
      u_xlatb81 = (x_709 == 2.0f);
      let x_711 : bool = u_xlatb81;
      if (x_711) {
        let x_714 : vec4<f32> = u_xlat5;
        let x_717 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_721 : vec2<f32> = ((vec2<f32>(x_714.x, x_714.y) * vec2<f32>(x_717.z, x_717.w)) + vec2<f32>(0.5f, 0.5f));
        let x_722 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_721.x, x_721.y, x_722.z, x_722.w);
        let x_724 : vec4<f32> = u_xlat7;
        let x_726 : vec2<f32> = floor(vec2<f32>(x_724.x, x_724.y));
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
        let x_730 : vec4<f32> = u_xlat5;
        let x_733 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_736 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_730.x, x_730.y) * vec2<f32>(x_733.z, x_733.w)) + -(vec2<f32>(x_736.x, x_736.y)));
        let x_740 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_740.x, x_740.x, x_740.y, x_740.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_745 : vec4<f32> = u_xlat8;
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_745.x, x_745.x, x_745.z, x_745.z) * vec4<f32>(x_747.x, x_747.x, x_747.z, x_747.z));
        let x_750 : vec4<f32> = u_xlat9;
        let x_754 : vec2<f32> = (vec2<f32>(x_750.y, x_750.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_755 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_754.x, x_755.y, x_754.y, x_755.w);
        let x_757 : vec4<f32> = u_xlat9;
        let x_760 : vec2<f32> = u_xlat57;
        let x_762 : vec2<f32> = ((vec2<f32>(x_757.x, x_757.z) * vec2<f32>(0.5f, 0.5f)) + -(x_760));
        let x_763 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
        let x_766 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_766) + vec2<f32>(1.0f, 1.0f));
        let x_771 : vec2<f32> = u_xlat57;
        let x_773 : vec2<f32> = min(x_771, vec2<f32>(0.0f, 0.0f));
        let x_774 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_773.x, x_773.y, x_774.z, x_774.w);
        let x_776 : vec4<f32> = u_xlat10;
        let x_779 : vec4<f32> = u_xlat10;
        let x_782 : vec2<f32> = u_xlat59;
        let x_783 : vec2<f32> = ((-(vec2<f32>(x_776.x, x_776.y)) * vec2<f32>(x_779.x, x_779.y)) + x_782);
        let x_784 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_786 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_786, vec2<f32>(0.0f, 0.0f));
        let x_788 : vec2<f32> = u_xlat57;
        let x_790 : vec2<f32> = u_xlat57;
        let x_792 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_788) * x_790) + vec2<f32>(x_792.y, x_792.w));
        let x_795 : vec4<f32> = u_xlat10;
        let x_797 : vec2<f32> = (vec2<f32>(x_795.x, x_795.y) + vec2<f32>(1.0f, 1.0f));
        let x_798 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_798.w);
        let x_800 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_800 + vec2<f32>(1.0f, 1.0f));
        let x_803 : vec4<f32> = u_xlat9;
        let x_807 : vec2<f32> = (vec2<f32>(x_803.x, x_803.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_808 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
        let x_810 : vec2<f32> = u_xlat59;
        let x_811 : vec2<f32> = (x_810 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_812 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
        let x_814 : vec4<f32> = u_xlat10;
        let x_816 : vec2<f32> = (vec2<f32>(x_814.x, x_814.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_817 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_816.x, x_816.y, x_817.z, x_817.w);
        let x_820 : vec2<f32> = u_xlat57;
        let x_821 : vec2<f32> = (x_820 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_822 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
        let x_824 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_824.y, x_824.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_828 : f32 = u_xlat10.x;
        u_xlat11.z = x_828;
        let x_831 : f32 = u_xlat57.x;
        u_xlat11.w = x_831;
        let x_834 : f32 = u_xlat12.x;
        u_xlat9.z = x_834;
        let x_837 : f32 = u_xlat8.x;
        u_xlat9.w = x_837;
        let x_840 : vec4<f32> = u_xlat9;
        let x_842 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_840.z, x_840.w, x_840.x, x_840.z) + vec4<f32>(x_842.z, x_842.w, x_842.x, x_842.z));
        let x_846 : f32 = u_xlat11.y;
        u_xlat10.z = x_846;
        let x_849 : f32 = u_xlat57.y;
        u_xlat10.w = x_849;
        let x_852 : f32 = u_xlat9.y;
        u_xlat12.z = x_852;
        let x_855 : f32 = u_xlat8.z;
        u_xlat12.w = x_855;
        let x_857 : vec4<f32> = u_xlat10;
        let x_859 : vec4<f32> = u_xlat12;
        let x_861 : vec3<f32> = (vec3<f32>(x_857.z, x_857.y, x_857.w) + vec3<f32>(x_859.z, x_859.y, x_859.w));
        let x_862 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
        let x_864 : vec4<f32> = u_xlat9;
        let x_866 : vec4<f32> = u_xlat13;
        let x_868 : vec3<f32> = (vec3<f32>(x_864.x, x_864.z, x_864.w) / vec3<f32>(x_866.z, x_866.w, x_866.y));
        let x_869 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
        let x_871 : vec4<f32> = u_xlat9;
        let x_876 : vec3<f32> = (vec3<f32>(x_871.x, x_871.y, x_871.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_877 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
        let x_879 : vec4<f32> = u_xlat12;
        let x_881 : vec4<f32> = u_xlat8;
        let x_883 : vec3<f32> = (vec3<f32>(x_879.z, x_879.y, x_879.w) / vec3<f32>(x_881.x, x_881.y, x_881.z));
        let x_884 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
        let x_886 : vec4<f32> = u_xlat10;
        let x_888 : vec3<f32> = (vec3<f32>(x_886.x, x_886.y, x_886.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_889 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
        let x_891 : vec4<f32> = u_xlat9;
        let x_894 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_896 : vec3<f32> = (vec3<f32>(x_891.y, x_891.x, x_891.z) * vec3<f32>(x_894.x, x_894.x, x_894.x));
        let x_897 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
        let x_899 : vec4<f32> = u_xlat10;
        let x_902 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_904 : vec3<f32> = (vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(x_902.y, x_902.y, x_902.y));
        let x_905 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
        let x_908 : f32 = u_xlat10.x;
        u_xlat9.w = x_908;
        let x_910 : vec4<f32> = u_xlat7;
        let x_913 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_916 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_910.x, x_910.y, x_910.x, x_910.y) * vec4<f32>(x_913.x, x_913.y, x_913.x, x_913.y)) + vec4<f32>(x_916.y, x_916.w, x_916.x, x_916.w));
        let x_919 : vec4<f32> = u_xlat7;
        let x_922 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_925 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_919.x, x_919.y) * vec2<f32>(x_922.x, x_922.y)) + vec2<f32>(x_925.z, x_925.w));
        let x_929 : f32 = u_xlat9.y;
        u_xlat10.w = x_929;
        let x_931 : vec4<f32> = u_xlat10;
        let x_932 : vec2<f32> = vec2<f32>(x_931.y, x_931.z);
        let x_933 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_933.x, x_932.x, x_933.z, x_932.y);
        let x_935 : vec4<f32> = u_xlat7;
        let x_938 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_941 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_935.x, x_935.y, x_935.x, x_935.y) * vec4<f32>(x_938.x, x_938.y, x_938.x, x_938.y)) + vec4<f32>(x_941.x, x_941.y, x_941.z, x_941.y));
        let x_944 : vec4<f32> = u_xlat7;
        let x_947 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_950 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_944.x, x_944.y, x_944.x, x_944.y) * vec4<f32>(x_947.x, x_947.y, x_947.x, x_947.y)) + vec4<f32>(x_950.w, x_950.y, x_950.w, x_950.z));
        let x_953 : vec4<f32> = u_xlat7;
        let x_956 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_959 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_953.x, x_953.y, x_953.x, x_953.y) * vec4<f32>(x_956.x, x_956.y, x_956.x, x_956.y)) + vec4<f32>(x_959.x, x_959.w, x_959.z, x_959.w));
        let x_963 : vec4<f32> = u_xlat8;
        let x_965 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_963.x, x_963.x, x_963.x, x_963.y) * vec4<f32>(x_965.z, x_965.w, x_965.y, x_965.z));
        let x_969 : vec4<f32> = u_xlat8;
        let x_971 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_969.y, x_969.y, x_969.z, x_969.z) * x_971);
        let x_975 : f32 = u_xlat8.z;
        let x_977 : f32 = u_xlat13.y;
        u_xlat81 = (x_975 * x_977);
        let x_980 : vec4<f32> = u_xlat11;
        let x_981 : vec2<f32> = vec2<f32>(x_980.x, x_980.y);
        let x_983 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_981.x, x_981.y, x_983);
        let x_990 : vec3<f32> = txVec4;
        let x_992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_990.xy, x_990.z);
        u_xlat7.x = x_992;
        let x_995 : vec4<f32> = u_xlat11;
        let x_996 : vec2<f32> = vec2<f32>(x_995.z, x_995.w);
        let x_998 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1006 : vec3<f32> = txVec5;
        let x_1008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1006.xy, x_1006.z);
        u_xlat32 = x_1008;
        let x_1009 : f32 = u_xlat32;
        let x_1011 : f32 = u_xlat14.y;
        u_xlat32 = (x_1009 * x_1011);
        let x_1014 : f32 = u_xlat14.x;
        let x_1016 : f32 = u_xlat7.x;
        let x_1018 : f32 = u_xlat32;
        u_xlat7.x = ((x_1014 * x_1016) + x_1018);
        let x_1022 : vec2<f32> = u_xlat57;
        let x_1024 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_1022.x, x_1022.y, x_1024);
        let x_1031 : vec3<f32> = txVec6;
        let x_1033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1031.xy, x_1031.z);
        u_xlat32 = x_1033;
        let x_1035 : f32 = u_xlat14.z;
        let x_1036 : f32 = u_xlat32;
        let x_1039 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1035 * x_1036) + x_1039);
        let x_1043 : vec4<f32> = u_xlat10;
        let x_1044 : vec2<f32> = vec2<f32>(x_1043.x, x_1043.y);
        let x_1046 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
        let x_1053 : vec3<f32> = txVec7;
        let x_1055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1053.xy, x_1053.z);
        u_xlat32 = x_1055;
        let x_1057 : f32 = u_xlat14.w;
        let x_1058 : f32 = u_xlat32;
        let x_1061 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1057 * x_1058) + x_1061);
        let x_1065 : vec4<f32> = u_xlat12;
        let x_1066 : vec2<f32> = vec2<f32>(x_1065.x, x_1065.y);
        let x_1068 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1066.x, x_1066.y, x_1068);
        let x_1075 : vec3<f32> = txVec8;
        let x_1077 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1075.xy, x_1075.z);
        u_xlat32 = x_1077;
        let x_1079 : f32 = u_xlat15.x;
        let x_1080 : f32 = u_xlat32;
        let x_1083 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1079 * x_1080) + x_1083);
        let x_1087 : vec4<f32> = u_xlat12;
        let x_1088 : vec2<f32> = vec2<f32>(x_1087.z, x_1087.w);
        let x_1090 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
        let x_1097 : vec3<f32> = txVec9;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1097.xy, x_1097.z);
        u_xlat32 = x_1099;
        let x_1101 : f32 = u_xlat15.y;
        let x_1102 : f32 = u_xlat32;
        let x_1105 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1101 * x_1102) + x_1105);
        let x_1109 : vec4<f32> = u_xlat10;
        let x_1110 : vec2<f32> = vec2<f32>(x_1109.z, x_1109.w);
        let x_1112 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1119 : vec3<f32> = txVec10;
        let x_1121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1119.xy, x_1119.z);
        u_xlat32 = x_1121;
        let x_1123 : f32 = u_xlat15.z;
        let x_1124 : f32 = u_xlat32;
        let x_1127 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1123 * x_1124) + x_1127);
        let x_1131 : vec4<f32> = u_xlat9;
        let x_1132 : vec2<f32> = vec2<f32>(x_1131.x, x_1131.y);
        let x_1134 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1132.x, x_1132.y, x_1134);
        let x_1141 : vec3<f32> = txVec11;
        let x_1143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1141.xy, x_1141.z);
        u_xlat32 = x_1143;
        let x_1145 : f32 = u_xlat15.w;
        let x_1146 : f32 = u_xlat32;
        let x_1149 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1145 * x_1146) + x_1149);
        let x_1153 : vec4<f32> = u_xlat9;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.z, x_1153.w);
        let x_1156 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec12;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1163.xy, x_1163.z);
        u_xlat32 = x_1165;
        let x_1166 : f32 = u_xlat81;
        let x_1167 : f32 = u_xlat32;
        let x_1170 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1166 * x_1167) + x_1170);
      } else {
        let x_1173 : vec4<f32> = u_xlat5;
        let x_1176 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1179 : vec2<f32> = ((vec2<f32>(x_1173.x, x_1173.y) * vec2<f32>(x_1176.z, x_1176.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat7;
        let x_1184 : vec2<f32> = floor(vec2<f32>(x_1182.x, x_1182.y));
        let x_1185 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat5;
        let x_1190 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1193 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1187.x, x_1187.y) * vec2<f32>(x_1190.z, x_1190.w)) + -(vec2<f32>(x_1193.x, x_1193.y)));
        let x_1197 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1197.x, x_1197.x, x_1197.y, x_1197.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1200 : vec4<f32> = u_xlat8;
        let x_1202 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1200.x, x_1200.x, x_1200.z, x_1200.z) * vec4<f32>(x_1202.x, x_1202.x, x_1202.z, x_1202.z));
        let x_1205 : vec4<f32> = u_xlat9;
        let x_1209 : vec2<f32> = (vec2<f32>(x_1205.y, x_1205.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1210 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1210.x, x_1209.x, x_1210.z, x_1209.y);
        let x_1212 : vec4<f32> = u_xlat9;
        let x_1215 : vec2<f32> = u_xlat57;
        let x_1217 : vec2<f32> = ((vec2<f32>(x_1212.x, x_1212.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1215));
        let x_1218 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1217.x, x_1218.y, x_1217.y, x_1218.w);
        let x_1220 : vec2<f32> = u_xlat57;
        let x_1222 : vec2<f32> = (-(x_1220) + vec2<f32>(1.0f, 1.0f));
        let x_1223 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1222.x, x_1222.y, x_1223.z, x_1223.w);
        let x_1225 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1225, vec2<f32>(0.0f, 0.0f));
        let x_1227 : vec2<f32> = u_xlat59;
        let x_1229 : vec2<f32> = u_xlat59;
        let x_1231 : vec4<f32> = u_xlat9;
        let x_1233 : vec2<f32> = ((-(x_1227) * x_1229) + vec2<f32>(x_1231.x, x_1231.y));
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1233.x, x_1233.y, x_1234.z, x_1234.w);
        let x_1236 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1236, vec2<f32>(0.0f, 0.0f));
        let x_1239 : vec2<f32> = u_xlat59;
        let x_1241 : vec2<f32> = u_xlat59;
        let x_1243 : vec4<f32> = u_xlat8;
        let x_1245 : vec2<f32> = ((-(x_1239) * x_1241) + vec2<f32>(x_1243.y, x_1243.w));
        let x_1246 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1245.x, x_1246.y, x_1245.y);
        let x_1248 : vec4<f32> = u_xlat9;
        let x_1250 : vec2<f32> = (vec2<f32>(x_1248.x, x_1248.y) + vec2<f32>(2.0f, 2.0f));
        let x_1251 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1250.x, x_1250.y, x_1251.z, x_1251.w);
        let x_1253 : vec3<f32> = u_xlat33;
        let x_1255 : vec2<f32> = (vec2<f32>(x_1253.x, x_1253.z) + vec2<f32>(2.0f, 2.0f));
        let x_1256 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1256.x, x_1255.x, x_1256.z, x_1255.y);
        let x_1259 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1259 * 0.08163200318813323975f);
        let x_1263 : vec4<f32> = u_xlat8;
        let x_1266 : vec3<f32> = (vec3<f32>(x_1263.z, x_1263.x, x_1263.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1267 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
        let x_1269 : vec4<f32> = u_xlat9;
        let x_1272 : vec2<f32> = (vec2<f32>(x_1269.x, x_1269.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1273 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1272.x, x_1272.y, x_1273.z, x_1273.w);
        let x_1276 : f32 = u_xlat12.y;
        u_xlat11.x = x_1276;
        let x_1278 : vec2<f32> = u_xlat57;
        let x_1285 : vec2<f32> = ((vec2<f32>(x_1278.x, x_1278.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1286 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1286.x, x_1285.x, x_1286.z, x_1285.y);
        let x_1288 : vec2<f32> = u_xlat57;
        let x_1292 : vec2<f32> = ((vec2<f32>(x_1288.x, x_1288.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1293 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1292.x, x_1293.y, x_1292.y, x_1293.w);
        let x_1296 : f32 = u_xlat8.x;
        u_xlat9.y = x_1296;
        let x_1299 : f32 = u_xlat10.y;
        u_xlat9.w = x_1299;
        let x_1301 : vec4<f32> = u_xlat9;
        let x_1302 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1301 + x_1302);
        let x_1304 : vec2<f32> = u_xlat57;
        let x_1307 : vec2<f32> = ((vec2<f32>(x_1304.y, x_1304.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1308 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1308.x, x_1307.x, x_1308.z, x_1307.y);
        let x_1310 : vec2<f32> = u_xlat57;
        let x_1313 : vec2<f32> = ((vec2<f32>(x_1310.y, x_1310.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1314 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1313.x, x_1314.y, x_1313.y, x_1314.w);
        let x_1317 : f32 = u_xlat8.y;
        u_xlat10.y = x_1317;
        let x_1319 : vec4<f32> = u_xlat10;
        let x_1320 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1319 + x_1320);
        let x_1322 : vec4<f32> = u_xlat9;
        let x_1323 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1322 / x_1323);
        let x_1325 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1325 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1331 : vec4<f32> = u_xlat10;
        let x_1332 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1331 / x_1332);
        let x_1334 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1334 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1336 : vec4<f32> = u_xlat9;
        let x_1339 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1336.w, x_1336.x, x_1336.y, x_1336.z) * vec4<f32>(x_1339.x, x_1339.x, x_1339.x, x_1339.x));
        let x_1342 : vec4<f32> = u_xlat10;
        let x_1345 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1342.x, x_1342.w, x_1342.y, x_1342.z) * vec4<f32>(x_1345.y, x_1345.y, x_1345.y, x_1345.y));
        let x_1348 : vec4<f32> = u_xlat9;
        let x_1349 : vec3<f32> = vec3<f32>(x_1348.y, x_1348.z, x_1348.w);
        let x_1350 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1349.x, x_1350.y, x_1349.y, x_1349.z);
        let x_1353 : f32 = u_xlat10.x;
        u_xlat12.y = x_1353;
        let x_1355 : vec4<f32> = u_xlat7;
        let x_1358 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1361 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y) * vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y)) + vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1361.y));
        let x_1364 : vec4<f32> = u_xlat7;
        let x_1367 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(x_1367.x, x_1367.y)) + vec2<f32>(x_1370.w, x_1370.y));
        let x_1374 : f32 = u_xlat12.y;
        u_xlat9.y = x_1374;
        let x_1377 : f32 = u_xlat10.z;
        u_xlat12.y = x_1377;
        let x_1379 : vec4<f32> = u_xlat7;
        let x_1382 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1379.x, x_1379.y, x_1379.x, x_1379.y) * vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.y)) + vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1385.y));
        let x_1388 : vec4<f32> = u_xlat7;
        let x_1391 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1394 : vec4<f32> = u_xlat12;
        let x_1396 : vec2<f32> = ((vec2<f32>(x_1388.x, x_1388.y) * vec2<f32>(x_1391.x, x_1391.y)) + vec2<f32>(x_1394.w, x_1394.y));
        let x_1397 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1396.x, x_1396.y, x_1397.z, x_1397.w);
        let x_1400 : f32 = u_xlat12.y;
        u_xlat9.z = x_1400;
        let x_1403 : vec4<f32> = u_xlat7;
        let x_1406 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1409 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1403.x, x_1403.y, x_1403.x, x_1403.y) * vec4<f32>(x_1406.x, x_1406.y, x_1406.x, x_1406.y)) + vec4<f32>(x_1409.x, x_1409.y, x_1409.x, x_1409.z));
        let x_1413 : f32 = u_xlat10.w;
        u_xlat12.y = x_1413;
        let x_1416 : vec4<f32> = u_xlat7;
        let x_1419 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1422 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1416.x, x_1416.y, x_1416.x, x_1416.y) * vec4<f32>(x_1419.x, x_1419.y, x_1419.x, x_1419.y)) + vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1422.y));
        let x_1426 : vec4<f32> = u_xlat7;
        let x_1429 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1432 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1426.x, x_1426.y) * vec2<f32>(x_1429.x, x_1429.y)) + vec2<f32>(x_1432.w, x_1432.y));
        let x_1436 : f32 = u_xlat12.y;
        u_xlat9.w = x_1436;
        let x_1439 : vec4<f32> = u_xlat7;
        let x_1442 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1445 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1439.x, x_1439.y) * vec2<f32>(x_1442.x, x_1442.y)) + vec2<f32>(x_1445.x, x_1445.w));
        let x_1448 : vec4<f32> = u_xlat12;
        let x_1449 : vec3<f32> = vec3<f32>(x_1448.x, x_1448.z, x_1448.w);
        let x_1450 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1449.x, x_1450.y, x_1449.y, x_1449.z);
        let x_1452 : vec4<f32> = u_xlat7;
        let x_1455 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1458 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1452.x, x_1452.y, x_1452.x, x_1452.y) * vec4<f32>(x_1455.x, x_1455.y, x_1455.x, x_1455.y)) + vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1458.y));
        let x_1462 : vec4<f32> = u_xlat7;
        let x_1465 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1468 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1462.x, x_1462.y) * vec2<f32>(x_1465.x, x_1465.y)) + vec2<f32>(x_1468.w, x_1468.y));
        let x_1472 : f32 = u_xlat9.x;
        u_xlat10.x = x_1472;
        let x_1474 : vec4<f32> = u_xlat7;
        let x_1477 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1480 : vec4<f32> = u_xlat10;
        let x_1482 : vec2<f32> = ((vec2<f32>(x_1474.x, x_1474.y) * vec2<f32>(x_1477.x, x_1477.y)) + vec2<f32>(x_1480.x, x_1480.y));
        let x_1483 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1482.x, x_1482.y, x_1483.z, x_1483.w);
        let x_1486 : vec4<f32> = u_xlat8;
        let x_1488 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1486.x, x_1486.x, x_1486.x, x_1486.x) * x_1488);
        let x_1491 : vec4<f32> = u_xlat8;
        let x_1493 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1491.y, x_1491.y, x_1491.y, x_1491.y) * x_1493);
        let x_1496 : vec4<f32> = u_xlat8;
        let x_1498 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1496.z, x_1496.z, x_1496.z, x_1496.z) * x_1498);
        let x_1500 : vec4<f32> = u_xlat8;
        let x_1502 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1500.w, x_1500.w, x_1500.w, x_1500.w) * x_1502);
        let x_1505 : vec4<f32> = u_xlat13;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
        let x_1508 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec13;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat81 = x_1517;
        let x_1519 : vec4<f32> = u_xlat13;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.z, x_1519.w);
        let x_1522 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec14;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1529.xy, x_1529.z);
        u_xlat9.x = x_1531;
        let x_1534 : f32 = u_xlat9.x;
        let x_1536 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1534 * x_1536);
        let x_1540 : f32 = u_xlat18.x;
        let x_1541 : f32 = u_xlat81;
        let x_1544 : f32 = u_xlat9.x;
        u_xlat81 = ((x_1540 * x_1541) + x_1544);
        let x_1547 : vec2<f32> = u_xlat57;
        let x_1549 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1547.x, x_1547.y, x_1549);
        let x_1556 : vec3<f32> = txVec15;
        let x_1558 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1556.xy, x_1556.z);
        u_xlat57.x = x_1558;
        let x_1561 : f32 = u_xlat18.z;
        let x_1563 : f32 = u_xlat57.x;
        let x_1565 : f32 = u_xlat81;
        u_xlat81 = ((x_1561 * x_1563) + x_1565);
        let x_1568 : vec4<f32> = u_xlat16;
        let x_1569 : vec2<f32> = vec2<f32>(x_1568.x, x_1568.y);
        let x_1571 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec16;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1578.xy, x_1578.z);
        u_xlat57.x = x_1580;
        let x_1583 : f32 = u_xlat18.w;
        let x_1585 : f32 = u_xlat57.x;
        let x_1587 : f32 = u_xlat81;
        u_xlat81 = ((x_1583 * x_1585) + x_1587);
        let x_1590 : vec4<f32> = u_xlat14;
        let x_1591 : vec2<f32> = vec2<f32>(x_1590.x, x_1590.y);
        let x_1593 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
        let x_1600 : vec3<f32> = txVec17;
        let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1600.xy, x_1600.z);
        u_xlat57.x = x_1602;
        let x_1605 : f32 = u_xlat19.x;
        let x_1607 : f32 = u_xlat57.x;
        let x_1609 : f32 = u_xlat81;
        u_xlat81 = ((x_1605 * x_1607) + x_1609);
        let x_1612 : vec4<f32> = u_xlat14;
        let x_1613 : vec2<f32> = vec2<f32>(x_1612.z, x_1612.w);
        let x_1615 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1613.x, x_1613.y, x_1615);
        let x_1622 : vec3<f32> = txVec18;
        let x_1624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1622.xy, x_1622.z);
        u_xlat57.x = x_1624;
        let x_1627 : f32 = u_xlat19.y;
        let x_1629 : f32 = u_xlat57.x;
        let x_1631 : f32 = u_xlat81;
        u_xlat81 = ((x_1627 * x_1629) + x_1631);
        let x_1634 : vec4<f32> = u_xlat15;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.x, x_1634.y);
        let x_1637 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec19;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat57.x = x_1646;
        let x_1649 : f32 = u_xlat19.z;
        let x_1651 : f32 = u_xlat57.x;
        let x_1653 : f32 = u_xlat81;
        u_xlat81 = ((x_1649 * x_1651) + x_1653);
        let x_1656 : vec4<f32> = u_xlat16;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.z, x_1656.w);
        let x_1659 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec20;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
        u_xlat57.x = x_1668;
        let x_1671 : f32 = u_xlat19.w;
        let x_1673 : f32 = u_xlat57.x;
        let x_1675 : f32 = u_xlat81;
        u_xlat81 = ((x_1671 * x_1673) + x_1675);
        let x_1678 : vec4<f32> = u_xlat17;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
        let x_1681 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec21;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1688.xy, x_1688.z);
        u_xlat57.x = x_1690;
        let x_1693 : f32 = u_xlat20.x;
        let x_1695 : f32 = u_xlat57.x;
        let x_1697 : f32 = u_xlat81;
        u_xlat81 = ((x_1693 * x_1695) + x_1697);
        let x_1700 : vec4<f32> = u_xlat17;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.z, x_1700.w);
        let x_1703 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec22;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat57.x = x_1712;
        let x_1715 : f32 = u_xlat20.y;
        let x_1717 : f32 = u_xlat57.x;
        let x_1719 : f32 = u_xlat81;
        u_xlat81 = ((x_1715 * x_1717) + x_1719);
        let x_1722 : vec2<f32> = u_xlat34;
        let x_1724 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1722.x, x_1722.y, x_1724);
        let x_1731 : vec3<f32> = txVec23;
        let x_1733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1731.xy, x_1731.z);
        u_xlat57.x = x_1733;
        let x_1736 : f32 = u_xlat20.z;
        let x_1738 : f32 = u_xlat57.x;
        let x_1740 : f32 = u_xlat81;
        u_xlat81 = ((x_1736 * x_1738) + x_1740);
        let x_1743 : vec2<f32> = u_xlat65;
        let x_1745 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1743.x, x_1743.y, x_1745);
        let x_1752 : vec3<f32> = txVec24;
        let x_1754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1752.xy, x_1752.z);
        u_xlat57.x = x_1754;
        let x_1757 : f32 = u_xlat20.w;
        let x_1759 : f32 = u_xlat57.x;
        let x_1761 : f32 = u_xlat81;
        u_xlat81 = ((x_1757 * x_1759) + x_1761);
        let x_1764 : vec4<f32> = u_xlat12;
        let x_1765 : vec2<f32> = vec2<f32>(x_1764.x, x_1764.y);
        let x_1767 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1765.x, x_1765.y, x_1767);
        let x_1774 : vec3<f32> = txVec25;
        let x_1776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1774.xy, x_1774.z);
        u_xlat57.x = x_1776;
        let x_1779 : f32 = u_xlat8.x;
        let x_1781 : f32 = u_xlat57.x;
        let x_1783 : f32 = u_xlat81;
        u_xlat81 = ((x_1779 * x_1781) + x_1783);
        let x_1786 : vec4<f32> = u_xlat12;
        let x_1787 : vec2<f32> = vec2<f32>(x_1786.z, x_1786.w);
        let x_1789 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1787.x, x_1787.y, x_1789);
        let x_1796 : vec3<f32> = txVec26;
        let x_1798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1796.xy, x_1796.z);
        u_xlat57.x = x_1798;
        let x_1801 : f32 = u_xlat8.y;
        let x_1803 : f32 = u_xlat57.x;
        let x_1805 : f32 = u_xlat81;
        u_xlat81 = ((x_1801 * x_1803) + x_1805);
        let x_1808 : vec2<f32> = u_xlat60;
        let x_1810 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1808.x, x_1808.y, x_1810);
        let x_1817 : vec3<f32> = txVec27;
        let x_1819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1817.xy, x_1817.z);
        u_xlat57.x = x_1819;
        let x_1822 : f32 = u_xlat8.z;
        let x_1824 : f32 = u_xlat57.x;
        let x_1826 : f32 = u_xlat81;
        u_xlat81 = ((x_1822 * x_1824) + x_1826);
        let x_1829 : vec4<f32> = u_xlat7;
        let x_1830 : vec2<f32> = vec2<f32>(x_1829.x, x_1829.y);
        let x_1832 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1830.x, x_1830.y, x_1832);
        let x_1839 : vec3<f32> = txVec28;
        let x_1841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1839.xy, x_1839.z);
        u_xlat7.x = x_1841;
        let x_1844 : f32 = u_xlat8.w;
        let x_1846 : f32 = u_xlat7.x;
        let x_1848 : f32 = u_xlat81;
        u_xlat80 = ((x_1844 * x_1846) + x_1848);
      }
    }
  } else {
    let x_1852 : vec4<f32> = u_xlat5;
    let x_1853 : vec2<f32> = vec2<f32>(x_1852.x, x_1852.y);
    let x_1855 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1853.x, x_1853.y, x_1855);
    let x_1862 : vec3<f32> = txVec29;
    let x_1864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1862.xy, x_1862.z);
    u_xlat80 = x_1864;
  }
  let x_1866 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1866) + 1.0f);
  let x_1870 : f32 = u_xlat80;
  let x_1872 : f32 = x_249.x_MainLightShadowParams.x;
  let x_1875 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1870 * x_1872) + x_1875);
  let x_1880 : f32 = u_xlat5.z;
  u_xlatb30 = (0.0f >= x_1880);
  let x_1884 : f32 = u_xlat5.z;
  u_xlatb55 = (x_1884 >= 1.0f);
  let x_1886 : bool = u_xlatb55;
  let x_1887 : bool = u_xlatb30;
  u_xlatb30 = (x_1886 | x_1887);
  let x_1889 : bool = u_xlatb30;
  if (x_1889) {
    x_1891 = 1.0f;
  } else {
    let x_1896 : f32 = u_xlat5.x;
    x_1891 = x_1896;
  }
  let x_1897 : f32 = x_1891;
  u_xlat5.x = x_1897;
  let x_1900 : vec3<f32> = vs_TEXCOORD1;
  let x_1902 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat30 = (x_1900 + -(x_1902));
  let x_1905 : vec3<f32> = u_xlat30;
  let x_1906 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_1905, x_1906);
  let x_1911 : f32 = u_xlat30.x;
  let x_1913 : f32 = x_249.x_MainLightShadowParams.z;
  let x_1916 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat55 = ((x_1911 * x_1913) + x_1916);
  let x_1918 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1918, 0.0f, 1.0f);
  let x_1921 : f32 = u_xlat5.x;
  u_xlat80 = (-(x_1921) + 1.0f);
  let x_1924 : f32 = u_xlat55;
  let x_1925 : f32 = u_xlat80;
  let x_1928 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1924 * x_1925) + x_1928);
  let x_1931 : vec3<f32> = u_xlat28;
  let x_1933 : vec3<f32> = u_xlat4;
  u_xlat55 = dot(-(x_1931), x_1933);
  let x_1935 : f32 = u_xlat55;
  let x_1936 : f32 = u_xlat55;
  u_xlat55 = (x_1935 + x_1936);
  let x_1938 : vec3<f32> = u_xlat4;
  let x_1939 : f32 = u_xlat55;
  let x_1943 : vec3<f32> = u_xlat28;
  let x_1945 : vec3<f32> = ((x_1938 * -(vec3<f32>(x_1939, x_1939, x_1939))) + -(x_1943));
  let x_1946 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1946.w);
  let x_1948 : vec3<f32> = u_xlat4;
  let x_1949 : vec3<f32> = u_xlat28;
  u_xlat55 = dot(x_1948, x_1949);
  let x_1951 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1951, 0.0f, 1.0f);
  let x_1953 : f32 = u_xlat55;
  u_xlat55 = (-(x_1953) + 1.0f);
  let x_1956 : f32 = u_xlat55;
  let x_1957 : f32 = u_xlat55;
  u_xlat55 = (x_1956 * x_1957);
  let x_1959 : f32 = u_xlat55;
  let x_1960 : f32 = u_xlat55;
  u_xlat55 = (x_1959 * x_1960);
  let x_1963 : f32 = u_xlat1.x;
  u_xlat80 = ((-(x_1963) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1970 : f32 = u_xlat1.x;
  let x_1971 : f32 = u_xlat80;
  u_xlat1.x = (x_1970 * x_1971);
  let x_1975 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1975 * 6.0f);
  let x_1987 : vec4<f32> = u_xlat7;
  let x_1990 : f32 = u_xlat1.x;
  let x_1991 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1987.x, x_1987.y, x_1987.z), x_1990);
  u_xlat7 = x_1991;
  let x_1993 : f32 = u_xlat7.w;
  u_xlat1.x = (x_1993 + -1.0f);
  let x_2001 : f32 = x_1999.unity_SpecCube0_HDR.w;
  let x_2003 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2001 * x_2003) + 1.0f);
  let x_2008 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2008, 0.0f);
  let x_2012 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_2012);
  let x_2016 : f32 = u_xlat1.x;
  let x_2018 : f32 = x_1999.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_2016 * x_2018);
  let x_2022 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2022);
  let x_2026 : f32 = u_xlat1.x;
  let x_2028 : f32 = x_1999.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_2026 * x_2028);
  let x_2031 : vec4<f32> = u_xlat7;
  let x_2033 : vec2<f32> = u_xlat1;
  let x_2035 : vec3<f32> = (vec3<f32>(x_2031.x, x_2031.y, x_2031.z) * vec3<f32>(x_2033.x, x_2033.x, x_2033.x));
  let x_2036 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
  let x_2038 : vec3<f32> = u_xlat26;
  let x_2040 : vec3<f32> = u_xlat26;
  u_xlat1 = ((vec2<f32>(x_2038.x, x_2038.x) * vec2<f32>(x_2040.x, x_2040.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2046 : f32 = u_xlat1.y;
  u_xlat26.x = (1.0f / x_2046);
  let x_2049 : vec4<f32> = u_xlat0;
  let x_2052 : f32 = u_xlat76;
  let x_2054 : vec3<f32> = (-(vec3<f32>(x_2049.x, x_2049.y, x_2049.z)) + vec3<f32>(x_2052, x_2052, x_2052));
  let x_2055 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
  let x_2057 : f32 = u_xlat55;
  let x_2059 : vec4<f32> = u_xlat8;
  let x_2062 : vec4<f32> = u_xlat0;
  let x_2064 : vec3<f32> = ((vec3<f32>(x_2057, x_2057, x_2057) * vec3<f32>(x_2059.x, x_2059.y, x_2059.z)) + vec3<f32>(x_2062.x, x_2062.y, x_2062.z));
  let x_2065 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2064.x, x_2064.y, x_2064.z, x_2065.w);
  let x_2067 : vec3<f32> = u_xlat26;
  let x_2069 : vec4<f32> = u_xlat8;
  let x_2071 : vec3<f32> = (vec3<f32>(x_2067.x, x_2067.x, x_2067.x) * vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
  let x_2072 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
  let x_2074 : vec4<f32> = u_xlat7;
  let x_2076 : vec4<f32> = u_xlat8;
  let x_2078 : vec3<f32> = (vec3<f32>(x_2074.x, x_2074.y, x_2074.z) * vec3<f32>(x_2076.x, x_2076.y, x_2076.z));
  let x_2079 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
  let x_2081 : vec4<f32> = u_xlat6;
  let x_2083 : vec3<f32> = u_xlat27;
  let x_2085 : vec4<f32> = u_xlat7;
  let x_2087 : vec3<f32> = ((vec3<f32>(x_2081.x, x_2081.y, x_2081.z) * x_2083) + vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
  let x_2088 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
  let x_2091 : f32 = u_xlat5.x;
  let x_2093 : f32 = x_1999.unity_LightData.z;
  u_xlat26.x = (x_2091 * x_2093);
  let x_2096 : vec3<f32> = u_xlat4;
  let x_2098 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat76 = dot(x_2096, vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
  let x_2101 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2101, 0.0f, 1.0f);
  let x_2103 : f32 = u_xlat76;
  let x_2105 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2103 * x_2105);
  let x_2108 : vec3<f32> = u_xlat26;
  let x_2111 : vec4<f32> = x_28.x_MainLightColor;
  let x_2113 : vec3<f32> = (vec3<f32>(x_2108.x, x_2108.x, x_2108.x) * vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
  let x_2114 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2113.x, x_2114.y, x_2113.y, x_2113.z);
  let x_2116 : vec3<f32> = u_xlat28;
  let x_2118 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2120 : vec3<f32> = (x_2116 + vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
  let x_2121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
  let x_2123 : vec4<f32> = u_xlat7;
  let x_2125 : vec4<f32> = u_xlat7;
  u_xlat26.x = dot(vec3<f32>(x_2123.x, x_2123.y, x_2123.z), vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
  let x_2130 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_2130, 1.17549435e-38f);
  let x_2135 : f32 = u_xlat26.x;
  u_xlat26.x = inverseSqrt(x_2135);
  let x_2138 : vec3<f32> = u_xlat26;
  let x_2140 : vec4<f32> = u_xlat7;
  let x_2142 : vec3<f32> = (vec3<f32>(x_2138.x, x_2138.x, x_2138.x) * vec3<f32>(x_2140.x, x_2140.y, x_2140.z));
  let x_2143 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2142.x, x_2142.y, x_2142.z, x_2143.w);
  let x_2145 : vec3<f32> = u_xlat4;
  let x_2146 : vec4<f32> = u_xlat7;
  u_xlat26.x = dot(x_2145, vec3<f32>(x_2146.x, x_2146.y, x_2146.z));
  let x_2151 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_2151, 0.0f, 1.0f);
  let x_2155 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2157 : vec4<f32> = u_xlat7;
  u_xlat26.z = dot(vec3<f32>(x_2155.x, x_2155.y, x_2155.z), vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
  let x_2162 : f32 = u_xlat26.z;
  u_xlat26.z = clamp(x_2162, 0.0f, 1.0f);
  let x_2165 : vec3<f32> = u_xlat26;
  let x_2167 : vec3<f32> = u_xlat26;
  let x_2169 : vec2<f32> = (vec2<f32>(x_2165.x, x_2165.z) * vec2<f32>(x_2167.x, x_2167.z));
  let x_2170 : vec3<f32> = u_xlat26;
  u_xlat26 = vec3<f32>(x_2169.x, x_2170.y, x_2169.y);
  let x_2173 : f32 = u_xlat26.x;
  let x_2175 : f32 = u_xlat1.x;
  u_xlat26.x = ((x_2173 * x_2175) + 1.00001001358032226562f);
  let x_2181 : f32 = u_xlat26.x;
  let x_2183 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2181 * x_2183);
  let x_2187 : f32 = u_xlat26.z;
  u_xlat76 = max(x_2187, 0.10000000149011611938f);
  let x_2190 : f32 = u_xlat76;
  let x_2192 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2190 * x_2192);
  let x_2195 : f32 = u_xlat79;
  let x_2197 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2195 * x_2197);
  let x_2201 : f32 = u_xlat51.x;
  let x_2203 : f32 = u_xlat26.x;
  u_xlat26.x = (x_2201 / x_2203);
  let x_2206 : vec4<f32> = u_xlat0;
  let x_2208 : vec3<f32> = u_xlat26;
  let x_2211 : vec3<f32> = u_xlat27;
  let x_2212 : vec3<f32> = ((vec3<f32>(x_2206.x, x_2206.y, x_2206.z) * vec3<f32>(x_2208.x, x_2208.x, x_2208.x)) + x_2211);
  let x_2213 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2212.x, x_2212.y, x_2212.z, x_2213.w);
  let x_2215 : vec4<f32> = u_xlat5;
  let x_2217 : vec4<f32> = u_xlat7;
  let x_2219 : vec3<f32> = (vec3<f32>(x_2215.x, x_2215.z, x_2215.w) * vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
  let x_2220 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2219.x, x_2220.y, x_2219.y, x_2219.z);
  let x_2223 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2225 : f32 = x_1999.unity_LightData.y;
  u_xlat26.x = min(x_2223, x_2225);
  let x_2230 : f32 = u_xlat26.x;
  u_xlatu26 = bitcast<u32>(i32(x_2230));
  let x_2234 : f32 = u_xlat30.x;
  let x_2237 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_2240 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_2234 * x_2237) + x_2240);
  let x_2242 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2242, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2254 : u32 = u_xlatu_loop_1;
    let x_2255 : u32 = u_xlatu26;
    if ((x_2254 < x_2255)) {
    } else {
      break;
    }
    let x_2258 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2258 >> 2u);
    let x_2261 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2261 & 3u));
    let x_2264 : u32 = u_xlatu81;
    let x_2267 : vec4<f32> = x_1999.unity_LightIndices[bitcast<i32>(x_2264)];
    let x_2277 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2282 : vec4<u32> = indexable[x_2277];
    u_xlat81 = dot(x_2267, bitcast<vec4<f32>>(x_2282));
    let x_2286 : f32 = u_xlat81;
    u_xlati81 = i32(x_2286);
    let x_2288 : vec3<f32> = vs_TEXCOORD1;
    let x_2299 : i32 = u_xlati81;
    let x_2301 : vec4<f32> = x_2298.x_AdditionalLightsPosition[x_2299];
    let x_2304 : i32 = u_xlati81;
    let x_2306 : vec4<f32> = x_2298.x_AdditionalLightsPosition[x_2304];
    let x_2308 : vec3<f32> = ((-(x_2288) * vec3<f32>(x_2301.w, x_2301.w, x_2301.w)) + vec3<f32>(x_2306.x, x_2306.y, x_2306.z));
    let x_2309 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2308.x, x_2308.y, x_2308.z, x_2309.w);
    let x_2312 : vec4<f32> = u_xlat8;
    let x_2314 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2312.x, x_2312.y, x_2312.z), vec3<f32>(x_2314.x, x_2314.y, x_2314.z));
    let x_2317 : f32 = u_xlat82;
    u_xlat82 = max(x_2317, 0.00006103515625f);
    let x_2321 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2321);
    let x_2323 : f32 = u_xlat83;
    let x_2325 : vec4<f32> = u_xlat8;
    let x_2327 : vec3<f32> = (vec3<f32>(x_2323, x_2323, x_2323) * vec3<f32>(x_2325.x, x_2325.y, x_2325.z));
    let x_2328 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2327.x, x_2327.y, x_2327.z, x_2328.w);
    let x_2331 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2331);
    let x_2333 : f32 = u_xlat82;
    let x_2334 : i32 = u_xlati81;
    let x_2336 : f32 = x_2298.x_AdditionalLightsAttenuation[x_2334].x;
    u_xlat82 = (x_2333 * x_2336);
    let x_2338 : f32 = u_xlat82;
    let x_2340 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2338) * x_2340) + 1.0f);
    let x_2343 : f32 = u_xlat82;
    u_xlat82 = max(x_2343, 0.0f);
    let x_2345 : f32 = u_xlat82;
    let x_2346 : f32 = u_xlat82;
    u_xlat82 = (x_2345 * x_2346);
    let x_2348 : f32 = u_xlat82;
    let x_2349 : f32 = u_xlat84;
    u_xlat82 = (x_2348 * x_2349);
    let x_2351 : i32 = u_xlati81;
    let x_2353 : vec4<f32> = x_2298.x_AdditionalLightsSpotDir[x_2351];
    let x_2355 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2353.x, x_2353.y, x_2353.z), vec3<f32>(x_2355.x, x_2355.y, x_2355.z));
    let x_2358 : f32 = u_xlat84;
    let x_2359 : i32 = u_xlati81;
    let x_2361 : f32 = x_2298.x_AdditionalLightsAttenuation[x_2359].z;
    let x_2363 : i32 = u_xlati81;
    let x_2365 : f32 = x_2298.x_AdditionalLightsAttenuation[x_2363].w;
    u_xlat84 = ((x_2358 * x_2361) + x_2365);
    let x_2367 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2367, 0.0f, 1.0f);
    let x_2369 : f32 = u_xlat84;
    let x_2370 : f32 = u_xlat84;
    u_xlat84 = (x_2369 * x_2370);
    let x_2372 : f32 = u_xlat82;
    let x_2373 : f32 = u_xlat84;
    u_xlat82 = (x_2372 * x_2373);
    let x_2377 : i32 = u_xlati81;
    let x_2379 : f32 = x_249.x_AdditionalShadowParams[x_2377].w;
    u_xlati84 = i32(x_2379);
    let x_2384 : i32 = u_xlati84;
    u_xlatb10.x = (x_2384 >= 0i);
    let x_2388 : bool = u_xlatb10.x;
    if (x_2388) {
      let x_2392 : i32 = u_xlati81;
      let x_2394 : f32 = x_249.x_AdditionalShadowParams[x_2392].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2394, x_2394, x_2394, x_2394))));
      let x_2400 : bool = u_xlatb10.x;
      if (x_2400) {
        let x_2403 : vec4<f32> = u_xlat9;
        let x_2406 : vec4<f32> = u_xlat9;
        let x_2409 : vec4<bool> = (abs(vec4<f32>(x_2403.z, x_2403.z, x_2403.y, x_2403.z)) >= abs(vec4<f32>(x_2406.x, x_2406.y, x_2406.x, x_2406.x)));
        u_xlatb10 = vec3<bool>(x_2409.x, x_2409.y, x_2409.z);
        let x_2412 : bool = u_xlatb10.y;
        let x_2414 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2412 & x_2414);
        let x_2418 : vec4<f32> = u_xlat9;
        let x_2421 : vec4<bool> = (-(vec4<f32>(x_2418.z, x_2418.y, x_2418.x, x_2418.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2421.x, x_2421.y, x_2421.z);
        let x_2425 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2425);
        let x_2430 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2430);
        let x_2434 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2434);
        let x_2438 : bool = u_xlatb10.z;
        if (x_2438) {
          let x_2443 : f32 = u_xlat35.z;
          x_2439 = x_2443;
        } else {
          let x_2446 : f32 = u_xlat11.x;
          x_2439 = x_2446;
        }
        let x_2447 : f32 = x_2439;
        u_xlat60.x = x_2447;
        let x_2450 : bool = u_xlatb10.x;
        if (x_2450) {
          let x_2455 : f32 = u_xlat35.x;
          x_2451 = x_2455;
        } else {
          let x_2458 : f32 = u_xlat60.x;
          x_2451 = x_2458;
        }
        let x_2459 : f32 = x_2451;
        u_xlat10.x = x_2459;
        let x_2461 : i32 = u_xlati81;
        let x_2463 : f32 = x_249.x_AdditionalShadowParams[x_2461].w;
        u_xlat35.x = trunc(x_2463);
        let x_2467 : f32 = u_xlat10.x;
        let x_2469 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2467 + x_2469);
        let x_2473 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2473);
      }
      let x_2475 : i32 = u_xlati84;
      u_xlati84 = (x_2475 << bitcast<u32>(2i));
      let x_2477 : vec3<f32> = vs_TEXCOORD1;
      let x_2480 : i32 = u_xlati84;
      let x_2483 : i32 = u_xlati84;
      let x_2487 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2480 + 1i) / 4i)][((x_2483 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2477.y, x_2477.y, x_2477.y, x_2477.y) * x_2487);
      let x_2489 : i32 = u_xlati84;
      let x_2491 : i32 = u_xlati84;
      let x_2494 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_2489 / 4i)][(x_2491 % 4i)];
      let x_2495 : vec3<f32> = vs_TEXCOORD1;
      let x_2498 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2494 * vec4<f32>(x_2495.x, x_2495.x, x_2495.x, x_2495.x)) + x_2498);
      let x_2500 : i32 = u_xlati84;
      let x_2503 : i32 = u_xlati84;
      let x_2507 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2500 + 2i) / 4i)][((x_2503 + 2i) % 4i)];
      let x_2508 : vec3<f32> = vs_TEXCOORD1;
      let x_2511 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2507 * vec4<f32>(x_2508.z, x_2508.z, x_2508.z, x_2508.z)) + x_2511);
      let x_2513 : vec4<f32> = u_xlat10;
      let x_2514 : i32 = u_xlati84;
      let x_2517 : i32 = u_xlati84;
      let x_2521 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_2514 + 3i) / 4i)][((x_2517 + 3i) % 4i)];
      u_xlat10 = (x_2513 + x_2521);
      let x_2523 : vec4<f32> = u_xlat10;
      let x_2525 : vec4<f32> = u_xlat10;
      let x_2527 : vec3<f32> = (vec3<f32>(x_2523.x, x_2523.y, x_2523.z) / vec3<f32>(x_2525.w, x_2525.w, x_2525.w));
      let x_2528 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2527.x, x_2527.y, x_2527.z, x_2528.w);
      let x_2531 : i32 = u_xlati81;
      let x_2533 : f32 = x_249.x_AdditionalShadowParams[x_2531].y;
      u_xlatb84 = (0.0f < x_2533);
      let x_2535 : bool = u_xlatb84;
      if (x_2535) {
        let x_2538 : i32 = u_xlati81;
        let x_2540 : f32 = x_249.x_AdditionalShadowParams[x_2538].y;
        u_xlatb84 = (1.0f == x_2540);
        let x_2542 : bool = u_xlatb84;
        if (x_2542) {
          let x_2545 : vec4<f32> = u_xlat10;
          let x_2548 : vec4<f32> = x_249.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2545.x, x_2545.y, x_2545.x, x_2545.y) + x_2548);
          let x_2551 : vec4<f32> = u_xlat11;
          let x_2552 : vec2<f32> = vec2<f32>(x_2551.x, x_2551.y);
          let x_2554 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2552.x, x_2552.y, x_2554);
          let x_2562 : vec3<f32> = txVec30;
          let x_2564 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2562.xy, x_2562.z);
          u_xlat12.x = x_2564;
          let x_2567 : vec4<f32> = u_xlat11;
          let x_2568 : vec2<f32> = vec2<f32>(x_2567.z, x_2567.w);
          let x_2570 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2568.x, x_2568.y, x_2570);
          let x_2577 : vec3<f32> = txVec31;
          let x_2579 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2577.xy, x_2577.z);
          u_xlat12.y = x_2579;
          let x_2581 : vec4<f32> = u_xlat10;
          let x_2585 : vec4<f32> = x_249.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2581.x, x_2581.y, x_2581.x, x_2581.y) + x_2585);
          let x_2588 : vec4<f32> = u_xlat11;
          let x_2589 : vec2<f32> = vec2<f32>(x_2588.x, x_2588.y);
          let x_2591 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2589.x, x_2589.y, x_2591);
          let x_2598 : vec3<f32> = txVec32;
          let x_2600 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2598.xy, x_2598.z);
          u_xlat12.z = x_2600;
          let x_2603 : vec4<f32> = u_xlat11;
          let x_2604 : vec2<f32> = vec2<f32>(x_2603.z, x_2603.w);
          let x_2606 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2604.x, x_2604.y, x_2606);
          let x_2613 : vec3<f32> = txVec33;
          let x_2615 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2613.xy, x_2613.z);
          u_xlat12.w = x_2615;
          let x_2617 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2617, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2621 : i32 = u_xlati81;
          let x_2623 : f32 = x_249.x_AdditionalShadowParams[x_2621].y;
          u_xlatb85 = (2.0f == x_2623);
          let x_2625 : bool = u_xlatb85;
          if (x_2625) {
            let x_2628 : vec4<f32> = u_xlat10;
            let x_2632 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2635 : vec2<f32> = ((vec2<f32>(x_2628.x, x_2628.y) * vec2<f32>(x_2632.z, x_2632.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2636 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
            let x_2638 : vec4<f32> = u_xlat11;
            let x_2640 : vec2<f32> = floor(vec2<f32>(x_2638.x, x_2638.y));
            let x_2641 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2640.x, x_2640.y, x_2641.z, x_2641.w);
            let x_2644 : vec4<f32> = u_xlat10;
            let x_2647 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2650 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2644.x, x_2644.y) * vec2<f32>(x_2647.z, x_2647.w)) + -(vec2<f32>(x_2650.x, x_2650.y)));
            let x_2654 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2654.x, x_2654.x, x_2654.y, x_2654.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2657 : vec4<f32> = u_xlat12;
            let x_2659 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2657.x, x_2657.x, x_2657.z, x_2657.z) * vec4<f32>(x_2659.x, x_2659.x, x_2659.z, x_2659.z));
            let x_2662 : vec4<f32> = u_xlat13;
            let x_2664 : vec2<f32> = (vec2<f32>(x_2662.y, x_2662.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2665 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2664.x, x_2665.y, x_2664.y, x_2665.w);
            let x_2667 : vec4<f32> = u_xlat13;
            let x_2670 : vec2<f32> = u_xlat61;
            let x_2672 : vec2<f32> = ((vec2<f32>(x_2667.x, x_2667.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2670));
            let x_2673 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2672.x, x_2672.y, x_2673.z, x_2673.w);
            let x_2676 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2676) + vec2<f32>(1.0f, 1.0f));
            let x_2679 : vec2<f32> = u_xlat61;
            let x_2680 : vec2<f32> = min(x_2679, vec2<f32>(0.0f, 0.0f));
            let x_2681 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2680.x, x_2680.y, x_2681.z, x_2681.w);
            let x_2683 : vec4<f32> = u_xlat14;
            let x_2686 : vec4<f32> = u_xlat14;
            let x_2689 : vec2<f32> = u_xlat63;
            let x_2690 : vec2<f32> = ((-(vec2<f32>(x_2683.x, x_2683.y)) * vec2<f32>(x_2686.x, x_2686.y)) + x_2689);
            let x_2691 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2690.x, x_2690.y, x_2691.z, x_2691.w);
            let x_2693 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2693, vec2<f32>(0.0f, 0.0f));
            let x_2695 : vec2<f32> = u_xlat61;
            let x_2697 : vec2<f32> = u_xlat61;
            let x_2699 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2695) * x_2697) + vec2<f32>(x_2699.y, x_2699.w));
            let x_2702 : vec4<f32> = u_xlat14;
            let x_2704 : vec2<f32> = (vec2<f32>(x_2702.x, x_2702.y) + vec2<f32>(1.0f, 1.0f));
            let x_2705 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2704.x, x_2704.y, x_2705.z, x_2705.w);
            let x_2707 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2707 + vec2<f32>(1.0f, 1.0f));
            let x_2709 : vec4<f32> = u_xlat13;
            let x_2711 : vec2<f32> = (vec2<f32>(x_2709.x, x_2709.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2712 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2711.x, x_2711.y, x_2712.z, x_2712.w);
            let x_2714 : vec2<f32> = u_xlat63;
            let x_2715 : vec2<f32> = (x_2714 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2716 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2715.x, x_2715.y, x_2716.z, x_2716.w);
            let x_2718 : vec4<f32> = u_xlat14;
            let x_2720 : vec2<f32> = (vec2<f32>(x_2718.x, x_2718.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2721 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2720.x, x_2720.y, x_2721.z, x_2721.w);
            let x_2723 : vec2<f32> = u_xlat61;
            let x_2724 : vec2<f32> = (x_2723 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2725 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2724.x, x_2724.y, x_2725.z, x_2725.w);
            let x_2727 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2727.y, x_2727.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2731 : f32 = u_xlat14.x;
            u_xlat15.z = x_2731;
            let x_2734 : f32 = u_xlat61.x;
            u_xlat15.w = x_2734;
            let x_2737 : f32 = u_xlat16.x;
            u_xlat13.z = x_2737;
            let x_2740 : f32 = u_xlat12.x;
            u_xlat13.w = x_2740;
            let x_2742 : vec4<f32> = u_xlat13;
            let x_2744 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2742.z, x_2742.w, x_2742.x, x_2742.z) + vec4<f32>(x_2744.z, x_2744.w, x_2744.x, x_2744.z));
            let x_2748 : f32 = u_xlat15.y;
            u_xlat14.z = x_2748;
            let x_2751 : f32 = u_xlat61.y;
            u_xlat14.w = x_2751;
            let x_2754 : f32 = u_xlat13.y;
            u_xlat16.z = x_2754;
            let x_2757 : f32 = u_xlat12.z;
            u_xlat16.w = x_2757;
            let x_2759 : vec4<f32> = u_xlat14;
            let x_2761 : vec4<f32> = u_xlat16;
            let x_2763 : vec3<f32> = (vec3<f32>(x_2759.z, x_2759.y, x_2759.w) + vec3<f32>(x_2761.z, x_2761.y, x_2761.w));
            let x_2764 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2763.x, x_2763.y, x_2763.z, x_2764.w);
            let x_2766 : vec4<f32> = u_xlat13;
            let x_2768 : vec4<f32> = u_xlat17;
            let x_2770 : vec3<f32> = (vec3<f32>(x_2766.x, x_2766.z, x_2766.w) / vec3<f32>(x_2768.z, x_2768.w, x_2768.y));
            let x_2771 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2770.x, x_2770.y, x_2770.z, x_2771.w);
            let x_2773 : vec4<f32> = u_xlat13;
            let x_2775 : vec3<f32> = (vec3<f32>(x_2773.x, x_2773.y, x_2773.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2776 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2775.x, x_2775.y, x_2775.z, x_2776.w);
            let x_2778 : vec4<f32> = u_xlat16;
            let x_2780 : vec4<f32> = u_xlat12;
            let x_2782 : vec3<f32> = (vec3<f32>(x_2778.z, x_2778.y, x_2778.w) / vec3<f32>(x_2780.x, x_2780.y, x_2780.z));
            let x_2783 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2782.x, x_2782.y, x_2782.z, x_2783.w);
            let x_2785 : vec4<f32> = u_xlat14;
            let x_2787 : vec3<f32> = (vec3<f32>(x_2785.x, x_2785.y, x_2785.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2788 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2787.x, x_2787.y, x_2787.z, x_2788.w);
            let x_2790 : vec4<f32> = u_xlat13;
            let x_2793 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2795 : vec3<f32> = (vec3<f32>(x_2790.y, x_2790.x, x_2790.z) * vec3<f32>(x_2793.x, x_2793.x, x_2793.x));
            let x_2796 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2796.w);
            let x_2798 : vec4<f32> = u_xlat14;
            let x_2801 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2803 : vec3<f32> = (vec3<f32>(x_2798.x, x_2798.y, x_2798.z) * vec3<f32>(x_2801.y, x_2801.y, x_2801.y));
            let x_2804 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
            let x_2807 : f32 = u_xlat14.x;
            u_xlat13.w = x_2807;
            let x_2809 : vec4<f32> = u_xlat11;
            let x_2812 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2815 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2809.x, x_2809.y, x_2809.x, x_2809.y) * vec4<f32>(x_2812.x, x_2812.y, x_2812.x, x_2812.y)) + vec4<f32>(x_2815.y, x_2815.w, x_2815.x, x_2815.w));
            let x_2818 : vec4<f32> = u_xlat11;
            let x_2821 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2824 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2818.x, x_2818.y) * vec2<f32>(x_2821.x, x_2821.y)) + vec2<f32>(x_2824.z, x_2824.w));
            let x_2828 : f32 = u_xlat13.y;
            u_xlat14.w = x_2828;
            let x_2830 : vec4<f32> = u_xlat14;
            let x_2831 : vec2<f32> = vec2<f32>(x_2830.y, x_2830.z);
            let x_2832 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2832.x, x_2831.x, x_2832.z, x_2831.y);
            let x_2834 : vec4<f32> = u_xlat11;
            let x_2837 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2840 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2834.x, x_2834.y, x_2834.x, x_2834.y) * vec4<f32>(x_2837.x, x_2837.y, x_2837.x, x_2837.y)) + vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2840.y));
            let x_2843 : vec4<f32> = u_xlat11;
            let x_2846 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2849 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2843.x, x_2843.y, x_2843.x, x_2843.y) * vec4<f32>(x_2846.x, x_2846.y, x_2846.x, x_2846.y)) + vec4<f32>(x_2849.w, x_2849.y, x_2849.w, x_2849.z));
            let x_2852 : vec4<f32> = u_xlat11;
            let x_2855 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_2858 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2852.x, x_2852.y, x_2852.x, x_2852.y) * vec4<f32>(x_2855.x, x_2855.y, x_2855.x, x_2855.y)) + vec4<f32>(x_2858.x, x_2858.w, x_2858.z, x_2858.w));
            let x_2861 : vec4<f32> = u_xlat12;
            let x_2863 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2861.x, x_2861.x, x_2861.x, x_2861.y) * vec4<f32>(x_2863.z, x_2863.w, x_2863.y, x_2863.z));
            let x_2866 : vec4<f32> = u_xlat12;
            let x_2868 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2866.y, x_2866.y, x_2866.z, x_2866.z) * x_2868);
            let x_2872 : f32 = u_xlat12.z;
            let x_2874 : f32 = u_xlat17.y;
            u_xlat85 = (x_2872 * x_2874);
            let x_2877 : vec4<f32> = u_xlat15;
            let x_2878 : vec2<f32> = vec2<f32>(x_2877.x, x_2877.y);
            let x_2880 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2878.x, x_2878.y, x_2880);
            let x_2887 : vec3<f32> = txVec34;
            let x_2889 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2887.xy, x_2887.z);
            u_xlat11.x = x_2889;
            let x_2892 : vec4<f32> = u_xlat15;
            let x_2893 : vec2<f32> = vec2<f32>(x_2892.z, x_2892.w);
            let x_2895 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2893.x, x_2893.y, x_2895);
            let x_2903 : vec3<f32> = txVec35;
            let x_2905 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2903.xy, x_2903.z);
            u_xlat36 = x_2905;
            let x_2906 : f32 = u_xlat36;
            let x_2908 : f32 = u_xlat18.y;
            u_xlat36 = (x_2906 * x_2908);
            let x_2911 : f32 = u_xlat18.x;
            let x_2913 : f32 = u_xlat11.x;
            let x_2915 : f32 = u_xlat36;
            u_xlat11.x = ((x_2911 * x_2913) + x_2915);
            let x_2919 : vec2<f32> = u_xlat61;
            let x_2921 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2919.x, x_2919.y, x_2921);
            let x_2928 : vec3<f32> = txVec36;
            let x_2930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2928.xy, x_2928.z);
            u_xlat36 = x_2930;
            let x_2932 : f32 = u_xlat18.z;
            let x_2933 : f32 = u_xlat36;
            let x_2936 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2932 * x_2933) + x_2936);
            let x_2940 : vec4<f32> = u_xlat14;
            let x_2941 : vec2<f32> = vec2<f32>(x_2940.x, x_2940.y);
            let x_2943 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2941.x, x_2941.y, x_2943);
            let x_2950 : vec3<f32> = txVec37;
            let x_2952 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2950.xy, x_2950.z);
            u_xlat36 = x_2952;
            let x_2954 : f32 = u_xlat18.w;
            let x_2955 : f32 = u_xlat36;
            let x_2958 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2954 * x_2955) + x_2958);
            let x_2962 : vec4<f32> = u_xlat16;
            let x_2963 : vec2<f32> = vec2<f32>(x_2962.x, x_2962.y);
            let x_2965 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2963.x, x_2963.y, x_2965);
            let x_2972 : vec3<f32> = txVec38;
            let x_2974 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2972.xy, x_2972.z);
            u_xlat36 = x_2974;
            let x_2976 : f32 = u_xlat19.x;
            let x_2977 : f32 = u_xlat36;
            let x_2980 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2976 * x_2977) + x_2980);
            let x_2984 : vec4<f32> = u_xlat16;
            let x_2985 : vec2<f32> = vec2<f32>(x_2984.z, x_2984.w);
            let x_2987 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2985.x, x_2985.y, x_2987);
            let x_2994 : vec3<f32> = txVec39;
            let x_2996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2994.xy, x_2994.z);
            u_xlat36 = x_2996;
            let x_2998 : f32 = u_xlat19.y;
            let x_2999 : f32 = u_xlat36;
            let x_3002 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_2998 * x_2999) + x_3002);
            let x_3006 : vec4<f32> = u_xlat14;
            let x_3007 : vec2<f32> = vec2<f32>(x_3006.z, x_3006.w);
            let x_3009 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3007.x, x_3007.y, x_3009);
            let x_3016 : vec3<f32> = txVec40;
            let x_3018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
            u_xlat36 = x_3018;
            let x_3020 : f32 = u_xlat19.z;
            let x_3021 : f32 = u_xlat36;
            let x_3024 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3020 * x_3021) + x_3024);
            let x_3028 : vec4<f32> = u_xlat13;
            let x_3029 : vec2<f32> = vec2<f32>(x_3028.x, x_3028.y);
            let x_3031 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
            let x_3038 : vec3<f32> = txVec41;
            let x_3040 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3038.xy, x_3038.z);
            u_xlat36 = x_3040;
            let x_3042 : f32 = u_xlat19.w;
            let x_3043 : f32 = u_xlat36;
            let x_3046 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3042 * x_3043) + x_3046);
            let x_3050 : vec4<f32> = u_xlat13;
            let x_3051 : vec2<f32> = vec2<f32>(x_3050.z, x_3050.w);
            let x_3053 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3051.x, x_3051.y, x_3053);
            let x_3060 : vec3<f32> = txVec42;
            let x_3062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3060.xy, x_3060.z);
            u_xlat36 = x_3062;
            let x_3063 : f32 = u_xlat85;
            let x_3064 : f32 = u_xlat36;
            let x_3067 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3063 * x_3064) + x_3067);
          } else {
            let x_3070 : vec4<f32> = u_xlat10;
            let x_3073 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3076 : vec2<f32> = ((vec2<f32>(x_3070.x, x_3070.y) * vec2<f32>(x_3073.z, x_3073.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3077 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3076.x, x_3076.y, x_3077.z, x_3077.w);
            let x_3079 : vec4<f32> = u_xlat11;
            let x_3081 : vec2<f32> = floor(vec2<f32>(x_3079.x, x_3079.y));
            let x_3082 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3081.x, x_3081.y, x_3082.z, x_3082.w);
            let x_3084 : vec4<f32> = u_xlat10;
            let x_3087 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3090 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3084.x, x_3084.y) * vec2<f32>(x_3087.z, x_3087.w)) + -(vec2<f32>(x_3090.x, x_3090.y)));
            let x_3094 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3094.x, x_3094.x, x_3094.y, x_3094.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3097 : vec4<f32> = u_xlat12;
            let x_3099 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3097.x, x_3097.x, x_3097.z, x_3097.z) * vec4<f32>(x_3099.x, x_3099.x, x_3099.z, x_3099.z));
            let x_3102 : vec4<f32> = u_xlat13;
            let x_3104 : vec2<f32> = (vec2<f32>(x_3102.y, x_3102.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3105 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3105.x, x_3104.x, x_3105.z, x_3104.y);
            let x_3107 : vec4<f32> = u_xlat13;
            let x_3110 : vec2<f32> = u_xlat61;
            let x_3112 : vec2<f32> = ((vec2<f32>(x_3107.x, x_3107.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3110));
            let x_3113 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3112.x, x_3113.y, x_3112.y, x_3113.w);
            let x_3115 : vec2<f32> = u_xlat61;
            let x_3117 : vec2<f32> = (-(x_3115) + vec2<f32>(1.0f, 1.0f));
            let x_3118 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3117.x, x_3117.y, x_3118.z, x_3118.w);
            let x_3120 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3120, vec2<f32>(0.0f, 0.0f));
            let x_3122 : vec2<f32> = u_xlat63;
            let x_3124 : vec2<f32> = u_xlat63;
            let x_3126 : vec4<f32> = u_xlat13;
            let x_3128 : vec2<f32> = ((-(x_3122) * x_3124) + vec2<f32>(x_3126.x, x_3126.y));
            let x_3129 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3128.x, x_3128.y, x_3129.z, x_3129.w);
            let x_3131 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3131, vec2<f32>(0.0f, 0.0f));
            let x_3134 : vec2<f32> = u_xlat63;
            let x_3136 : vec2<f32> = u_xlat63;
            let x_3138 : vec4<f32> = u_xlat12;
            let x_3140 : vec2<f32> = ((-(x_3134) * x_3136) + vec2<f32>(x_3138.y, x_3138.w));
            let x_3141 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3140.x, x_3141.y, x_3140.y);
            let x_3143 : vec4<f32> = u_xlat13;
            let x_3145 : vec2<f32> = (vec2<f32>(x_3143.x, x_3143.y) + vec2<f32>(2.0f, 2.0f));
            let x_3146 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3145.x, x_3145.y, x_3146.z, x_3146.w);
            let x_3148 : vec3<f32> = u_xlat37;
            let x_3150 : vec2<f32> = (vec2<f32>(x_3148.x, x_3148.z) + vec2<f32>(2.0f, 2.0f));
            let x_3151 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3151.x, x_3150.x, x_3151.z, x_3150.y);
            let x_3154 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3154 * 0.08163200318813323975f);
            let x_3157 : vec4<f32> = u_xlat12;
            let x_3159 : vec3<f32> = (vec3<f32>(x_3157.z, x_3157.x, x_3157.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3160 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3159.x, x_3159.y, x_3159.z, x_3160.w);
            let x_3162 : vec4<f32> = u_xlat13;
            let x_3164 : vec2<f32> = (vec2<f32>(x_3162.x, x_3162.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3165 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3164.x, x_3164.y, x_3165.z, x_3165.w);
            let x_3168 : f32 = u_xlat16.y;
            u_xlat15.x = x_3168;
            let x_3170 : vec2<f32> = u_xlat61;
            let x_3173 : vec2<f32> = ((vec2<f32>(x_3170.x, x_3170.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3174 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3174.x, x_3173.x, x_3174.z, x_3173.y);
            let x_3176 : vec2<f32> = u_xlat61;
            let x_3179 : vec2<f32> = ((vec2<f32>(x_3176.x, x_3176.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3180 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3179.x, x_3180.y, x_3179.y, x_3180.w);
            let x_3183 : f32 = u_xlat12.x;
            u_xlat13.y = x_3183;
            let x_3186 : f32 = u_xlat14.y;
            u_xlat13.w = x_3186;
            let x_3188 : vec4<f32> = u_xlat13;
            let x_3189 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3188 + x_3189);
            let x_3191 : vec2<f32> = u_xlat61;
            let x_3194 : vec2<f32> = ((vec2<f32>(x_3191.y, x_3191.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3195 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3195.x, x_3194.x, x_3195.z, x_3194.y);
            let x_3197 : vec2<f32> = u_xlat61;
            let x_3200 : vec2<f32> = ((vec2<f32>(x_3197.y, x_3197.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3201 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3200.x, x_3201.y, x_3200.y, x_3201.w);
            let x_3204 : f32 = u_xlat12.y;
            u_xlat14.y = x_3204;
            let x_3206 : vec4<f32> = u_xlat14;
            let x_3207 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3206 + x_3207);
            let x_3209 : vec4<f32> = u_xlat13;
            let x_3210 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3209 / x_3210);
            let x_3212 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3212 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3214 : vec4<f32> = u_xlat14;
            let x_3215 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3214 / x_3215);
            let x_3217 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3217 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3219 : vec4<f32> = u_xlat13;
            let x_3222 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3219.w, x_3219.x, x_3219.y, x_3219.z) * vec4<f32>(x_3222.x, x_3222.x, x_3222.x, x_3222.x));
            let x_3225 : vec4<f32> = u_xlat14;
            let x_3228 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3225.x, x_3225.w, x_3225.y, x_3225.z) * vec4<f32>(x_3228.y, x_3228.y, x_3228.y, x_3228.y));
            let x_3231 : vec4<f32> = u_xlat13;
            let x_3232 : vec3<f32> = vec3<f32>(x_3231.y, x_3231.z, x_3231.w);
            let x_3233 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3232.x, x_3233.y, x_3232.y, x_3232.z);
            let x_3236 : f32 = u_xlat14.x;
            u_xlat16.y = x_3236;
            let x_3238 : vec4<f32> = u_xlat11;
            let x_3241 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3244 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3238.x, x_3238.y, x_3238.x, x_3238.y) * vec4<f32>(x_3241.x, x_3241.y, x_3241.x, x_3241.y)) + vec4<f32>(x_3244.x, x_3244.y, x_3244.z, x_3244.y));
            let x_3247 : vec4<f32> = u_xlat11;
            let x_3250 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3253 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3247.x, x_3247.y) * vec2<f32>(x_3250.x, x_3250.y)) + vec2<f32>(x_3253.w, x_3253.y));
            let x_3257 : f32 = u_xlat16.y;
            u_xlat13.y = x_3257;
            let x_3260 : f32 = u_xlat14.z;
            u_xlat16.y = x_3260;
            let x_3262 : vec4<f32> = u_xlat11;
            let x_3265 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3268 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3262.x, x_3262.y, x_3262.x, x_3262.y) * vec4<f32>(x_3265.x, x_3265.y, x_3265.x, x_3265.y)) + vec4<f32>(x_3268.x, x_3268.y, x_3268.z, x_3268.y));
            let x_3271 : vec4<f32> = u_xlat11;
            let x_3274 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3277 : vec4<f32> = u_xlat16;
            let x_3279 : vec2<f32> = ((vec2<f32>(x_3271.x, x_3271.y) * vec2<f32>(x_3274.x, x_3274.y)) + vec2<f32>(x_3277.w, x_3277.y));
            let x_3280 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3279.x, x_3279.y, x_3280.z, x_3280.w);
            let x_3283 : f32 = u_xlat16.y;
            u_xlat13.z = x_3283;
            let x_3285 : vec4<f32> = u_xlat11;
            let x_3288 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3291 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3285.x, x_3285.y, x_3285.x, x_3285.y) * vec4<f32>(x_3288.x, x_3288.y, x_3288.x, x_3288.y)) + vec4<f32>(x_3291.x, x_3291.y, x_3291.x, x_3291.z));
            let x_3295 : f32 = u_xlat14.w;
            u_xlat16.y = x_3295;
            let x_3298 : vec4<f32> = u_xlat11;
            let x_3301 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3304 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3298.x, x_3298.y, x_3298.x, x_3298.y) * vec4<f32>(x_3301.x, x_3301.y, x_3301.x, x_3301.y)) + vec4<f32>(x_3304.x, x_3304.y, x_3304.z, x_3304.y));
            let x_3308 : vec4<f32> = u_xlat11;
            let x_3311 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3314 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3308.x, x_3308.y) * vec2<f32>(x_3311.x, x_3311.y)) + vec2<f32>(x_3314.w, x_3314.y));
            let x_3318 : f32 = u_xlat16.y;
            u_xlat13.w = x_3318;
            let x_3321 : vec4<f32> = u_xlat11;
            let x_3324 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3327 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3321.x, x_3321.y) * vec2<f32>(x_3324.x, x_3324.y)) + vec2<f32>(x_3327.x, x_3327.w));
            let x_3330 : vec4<f32> = u_xlat16;
            let x_3331 : vec3<f32> = vec3<f32>(x_3330.x, x_3330.z, x_3330.w);
            let x_3332 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3331.x, x_3332.y, x_3331.y, x_3331.z);
            let x_3334 : vec4<f32> = u_xlat11;
            let x_3337 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3340 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3334.x, x_3334.y, x_3334.x, x_3334.y) * vec4<f32>(x_3337.x, x_3337.y, x_3337.x, x_3337.y)) + vec4<f32>(x_3340.x, x_3340.y, x_3340.z, x_3340.y));
            let x_3344 : vec4<f32> = u_xlat11;
            let x_3347 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3350 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3344.x, x_3344.y) * vec2<f32>(x_3347.x, x_3347.y)) + vec2<f32>(x_3350.w, x_3350.y));
            let x_3354 : f32 = u_xlat13.x;
            u_xlat14.x = x_3354;
            let x_3356 : vec4<f32> = u_xlat11;
            let x_3359 : vec4<f32> = x_249.x_AdditionalShadowmapSize;
            let x_3362 : vec4<f32> = u_xlat14;
            let x_3364 : vec2<f32> = ((vec2<f32>(x_3356.x, x_3356.y) * vec2<f32>(x_3359.x, x_3359.y)) + vec2<f32>(x_3362.x, x_3362.y));
            let x_3365 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3364.x, x_3364.y, x_3365.z, x_3365.w);
            let x_3368 : vec4<f32> = u_xlat12;
            let x_3370 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3368.x, x_3368.x, x_3368.x, x_3368.x) * x_3370);
            let x_3373 : vec4<f32> = u_xlat12;
            let x_3375 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3373.y, x_3373.y, x_3373.y, x_3373.y) * x_3375);
            let x_3378 : vec4<f32> = u_xlat12;
            let x_3380 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3378.z, x_3378.z, x_3378.z, x_3378.z) * x_3380);
            let x_3382 : vec4<f32> = u_xlat12;
            let x_3384 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3382.w, x_3382.w, x_3382.w, x_3382.w) * x_3384);
            let x_3387 : vec4<f32> = u_xlat17;
            let x_3388 : vec2<f32> = vec2<f32>(x_3387.x, x_3387.y);
            let x_3390 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3388.x, x_3388.y, x_3390);
            let x_3397 : vec3<f32> = txVec43;
            let x_3399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3397.xy, x_3397.z);
            u_xlat85 = x_3399;
            let x_3401 : vec4<f32> = u_xlat17;
            let x_3402 : vec2<f32> = vec2<f32>(x_3401.z, x_3401.w);
            let x_3404 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3402.x, x_3402.y, x_3404);
            let x_3411 : vec3<f32> = txVec44;
            let x_3413 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3411.xy, x_3411.z);
            u_xlat13.x = x_3413;
            let x_3416 : f32 = u_xlat13.x;
            let x_3418 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3416 * x_3418);
            let x_3422 : f32 = u_xlat22.x;
            let x_3423 : f32 = u_xlat85;
            let x_3426 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3422 * x_3423) + x_3426);
            let x_3429 : vec2<f32> = u_xlat61;
            let x_3431 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3429.x, x_3429.y, x_3431);
            let x_3438 : vec3<f32> = txVec45;
            let x_3440 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3438.xy, x_3438.z);
            u_xlat61.x = x_3440;
            let x_3443 : f32 = u_xlat22.z;
            let x_3445 : f32 = u_xlat61.x;
            let x_3447 : f32 = u_xlat85;
            u_xlat85 = ((x_3443 * x_3445) + x_3447);
            let x_3450 : vec4<f32> = u_xlat20;
            let x_3451 : vec2<f32> = vec2<f32>(x_3450.x, x_3450.y);
            let x_3453 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3451.x, x_3451.y, x_3453);
            let x_3460 : vec3<f32> = txVec46;
            let x_3462 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3460.xy, x_3460.z);
            u_xlat61.x = x_3462;
            let x_3465 : f32 = u_xlat22.w;
            let x_3467 : f32 = u_xlat61.x;
            let x_3469 : f32 = u_xlat85;
            u_xlat85 = ((x_3465 * x_3467) + x_3469);
            let x_3472 : vec4<f32> = u_xlat18;
            let x_3473 : vec2<f32> = vec2<f32>(x_3472.x, x_3472.y);
            let x_3475 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3473.x, x_3473.y, x_3475);
            let x_3482 : vec3<f32> = txVec47;
            let x_3484 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3482.xy, x_3482.z);
            u_xlat61.x = x_3484;
            let x_3487 : f32 = u_xlat23.x;
            let x_3489 : f32 = u_xlat61.x;
            let x_3491 : f32 = u_xlat85;
            u_xlat85 = ((x_3487 * x_3489) + x_3491);
            let x_3494 : vec4<f32> = u_xlat18;
            let x_3495 : vec2<f32> = vec2<f32>(x_3494.z, x_3494.w);
            let x_3497 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3495.x, x_3495.y, x_3497);
            let x_3504 : vec3<f32> = txVec48;
            let x_3506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3504.xy, x_3504.z);
            u_xlat61.x = x_3506;
            let x_3509 : f32 = u_xlat23.y;
            let x_3511 : f32 = u_xlat61.x;
            let x_3513 : f32 = u_xlat85;
            u_xlat85 = ((x_3509 * x_3511) + x_3513);
            let x_3516 : vec4<f32> = u_xlat19;
            let x_3517 : vec2<f32> = vec2<f32>(x_3516.x, x_3516.y);
            let x_3519 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3517.x, x_3517.y, x_3519);
            let x_3526 : vec3<f32> = txVec49;
            let x_3528 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3526.xy, x_3526.z);
            u_xlat61.x = x_3528;
            let x_3531 : f32 = u_xlat23.z;
            let x_3533 : f32 = u_xlat61.x;
            let x_3535 : f32 = u_xlat85;
            u_xlat85 = ((x_3531 * x_3533) + x_3535);
            let x_3538 : vec4<f32> = u_xlat20;
            let x_3539 : vec2<f32> = vec2<f32>(x_3538.z, x_3538.w);
            let x_3541 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3539.x, x_3539.y, x_3541);
            let x_3548 : vec3<f32> = txVec50;
            let x_3550 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3548.xy, x_3548.z);
            u_xlat61.x = x_3550;
            let x_3553 : f32 = u_xlat23.w;
            let x_3555 : f32 = u_xlat61.x;
            let x_3557 : f32 = u_xlat85;
            u_xlat85 = ((x_3553 * x_3555) + x_3557);
            let x_3560 : vec4<f32> = u_xlat21;
            let x_3561 : vec2<f32> = vec2<f32>(x_3560.x, x_3560.y);
            let x_3563 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3561.x, x_3561.y, x_3563);
            let x_3570 : vec3<f32> = txVec51;
            let x_3572 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3570.xy, x_3570.z);
            u_xlat61.x = x_3572;
            let x_3575 : f32 = u_xlat24.x;
            let x_3577 : f32 = u_xlat61.x;
            let x_3579 : f32 = u_xlat85;
            u_xlat85 = ((x_3575 * x_3577) + x_3579);
            let x_3582 : vec4<f32> = u_xlat21;
            let x_3583 : vec2<f32> = vec2<f32>(x_3582.z, x_3582.w);
            let x_3585 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3583.x, x_3583.y, x_3585);
            let x_3592 : vec3<f32> = txVec52;
            let x_3594 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3592.xy, x_3592.z);
            u_xlat61.x = x_3594;
            let x_3597 : f32 = u_xlat24.y;
            let x_3599 : f32 = u_xlat61.x;
            let x_3601 : f32 = u_xlat85;
            u_xlat85 = ((x_3597 * x_3599) + x_3601);
            let x_3604 : vec2<f32> = u_xlat38;
            let x_3606 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3604.x, x_3604.y, x_3606);
            let x_3613 : vec3<f32> = txVec53;
            let x_3615 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3613.xy, x_3613.z);
            u_xlat61.x = x_3615;
            let x_3618 : f32 = u_xlat24.z;
            let x_3620 : f32 = u_xlat61.x;
            let x_3622 : f32 = u_xlat85;
            u_xlat85 = ((x_3618 * x_3620) + x_3622);
            let x_3625 : vec2<f32> = u_xlat69;
            let x_3627 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3625.x, x_3625.y, x_3627);
            let x_3634 : vec3<f32> = txVec54;
            let x_3636 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3634.xy, x_3634.z);
            u_xlat61.x = x_3636;
            let x_3639 : f32 = u_xlat24.w;
            let x_3641 : f32 = u_xlat61.x;
            let x_3643 : f32 = u_xlat85;
            u_xlat85 = ((x_3639 * x_3641) + x_3643);
            let x_3646 : vec4<f32> = u_xlat16;
            let x_3647 : vec2<f32> = vec2<f32>(x_3646.x, x_3646.y);
            let x_3649 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3647.x, x_3647.y, x_3649);
            let x_3656 : vec3<f32> = txVec55;
            let x_3658 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3656.xy, x_3656.z);
            u_xlat61.x = x_3658;
            let x_3661 : f32 = u_xlat12.x;
            let x_3663 : f32 = u_xlat61.x;
            let x_3665 : f32 = u_xlat85;
            u_xlat85 = ((x_3661 * x_3663) + x_3665);
            let x_3668 : vec4<f32> = u_xlat16;
            let x_3669 : vec2<f32> = vec2<f32>(x_3668.z, x_3668.w);
            let x_3671 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3669.x, x_3669.y, x_3671);
            let x_3678 : vec3<f32> = txVec56;
            let x_3680 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3678.xy, x_3678.z);
            u_xlat61.x = x_3680;
            let x_3683 : f32 = u_xlat12.y;
            let x_3685 : f32 = u_xlat61.x;
            let x_3687 : f32 = u_xlat85;
            u_xlat85 = ((x_3683 * x_3685) + x_3687);
            let x_3690 : vec2<f32> = u_xlat64;
            let x_3692 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3690.x, x_3690.y, x_3692);
            let x_3699 : vec3<f32> = txVec57;
            let x_3701 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3699.xy, x_3699.z);
            u_xlat61.x = x_3701;
            let x_3704 : f32 = u_xlat12.z;
            let x_3706 : f32 = u_xlat61.x;
            let x_3708 : f32 = u_xlat85;
            u_xlat85 = ((x_3704 * x_3706) + x_3708);
            let x_3711 : vec4<f32> = u_xlat11;
            let x_3712 : vec2<f32> = vec2<f32>(x_3711.x, x_3711.y);
            let x_3714 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3712.x, x_3712.y, x_3714);
            let x_3721 : vec3<f32> = txVec58;
            let x_3723 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3721.xy, x_3721.z);
            u_xlat11.x = x_3723;
            let x_3726 : f32 = u_xlat12.w;
            let x_3728 : f32 = u_xlat11.x;
            let x_3730 : f32 = u_xlat85;
            u_xlat84 = ((x_3726 * x_3728) + x_3730);
          }
        }
      } else {
        let x_3734 : vec4<f32> = u_xlat10;
        let x_3735 : vec2<f32> = vec2<f32>(x_3734.x, x_3734.y);
        let x_3737 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3735.x, x_3735.y, x_3737);
        let x_3744 : vec3<f32> = txVec59;
        let x_3746 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3744.xy, x_3744.z);
        u_xlat84 = x_3746;
      }
      let x_3747 : i32 = u_xlati81;
      let x_3749 : f32 = x_249.x_AdditionalShadowParams[x_3747].x;
      u_xlat10.x = (1.0f + -(x_3749));
      let x_3753 : f32 = u_xlat84;
      let x_3754 : i32 = u_xlati81;
      let x_3756 : f32 = x_249.x_AdditionalShadowParams[x_3754].x;
      let x_3759 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3753 * x_3756) + x_3759);
      let x_3762 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3762);
      let x_3767 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3767 >= 1.0f);
      let x_3769 : bool = u_xlatb35;
      let x_3771 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3769 | x_3771);
      let x_3775 : bool = u_xlatb10.x;
      let x_3776 : f32 = u_xlat84;
      u_xlat84 = select(x_3776, 1.0f, x_3775);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3779 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3779) + 1.0f);
    let x_3783 : f32 = u_xlat76;
    let x_3785 : f32 = u_xlat10.x;
    let x_3787 : f32 = u_xlat84;
    u_xlat84 = ((x_3783 * x_3785) + x_3787);
    let x_3789 : f32 = u_xlat82;
    let x_3790 : f32 = u_xlat84;
    u_xlat82 = (x_3789 * x_3790);
    let x_3792 : vec3<f32> = u_xlat4;
    let x_3793 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(x_3792, vec3<f32>(x_3793.x, x_3793.y, x_3793.z));
    let x_3796 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3796, 0.0f, 1.0f);
    let x_3798 : f32 = u_xlat82;
    let x_3799 : f32 = u_xlat84;
    u_xlat82 = (x_3798 * x_3799);
    let x_3801 : f32 = u_xlat82;
    let x_3803 : i32 = u_xlati81;
    let x_3805 : vec4<f32> = x_2298.x_AdditionalLightsColor[x_3803];
    let x_3807 : vec3<f32> = (vec3<f32>(x_3801, x_3801, x_3801) * vec3<f32>(x_3805.x, x_3805.y, x_3805.z));
    let x_3808 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3807.x, x_3807.y, x_3807.z, x_3808.w);
    let x_3810 : vec4<f32> = u_xlat8;
    let x_3812 : f32 = u_xlat83;
    let x_3815 : vec3<f32> = u_xlat28;
    let x_3816 : vec3<f32> = ((vec3<f32>(x_3810.x, x_3810.y, x_3810.z) * vec3<f32>(x_3812, x_3812, x_3812)) + x_3815);
    let x_3817 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3816.x, x_3816.y, x_3816.z, x_3817.w);
    let x_3819 : vec4<f32> = u_xlat8;
    let x_3821 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3819.x, x_3819.y, x_3819.z), vec3<f32>(x_3821.x, x_3821.y, x_3821.z));
    let x_3824 : f32 = u_xlat81;
    u_xlat81 = max(x_3824, 1.17549435e-38f);
    let x_3826 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3826);
    let x_3828 : f32 = u_xlat81;
    let x_3830 : vec4<f32> = u_xlat8;
    let x_3832 : vec3<f32> = (vec3<f32>(x_3828, x_3828, x_3828) * vec3<f32>(x_3830.x, x_3830.y, x_3830.z));
    let x_3833 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3832.x, x_3832.y, x_3832.z, x_3833.w);
    let x_3835 : vec3<f32> = u_xlat4;
    let x_3836 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(x_3835, vec3<f32>(x_3836.x, x_3836.y, x_3836.z));
    let x_3839 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3839, 0.0f, 1.0f);
    let x_3841 : vec4<f32> = u_xlat9;
    let x_3843 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3841.x, x_3841.y, x_3841.z), vec3<f32>(x_3843.x, x_3843.y, x_3843.z));
    let x_3846 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3846, 0.0f, 1.0f);
    let x_3848 : f32 = u_xlat81;
    let x_3849 : f32 = u_xlat81;
    u_xlat81 = (x_3848 * x_3849);
    let x_3851 : f32 = u_xlat81;
    let x_3853 : f32 = u_xlat1.x;
    u_xlat81 = ((x_3851 * x_3853) + 1.00001001358032226562f);
    let x_3856 : f32 = u_xlat82;
    let x_3857 : f32 = u_xlat82;
    u_xlat82 = (x_3856 * x_3857);
    let x_3859 : f32 = u_xlat81;
    let x_3860 : f32 = u_xlat81;
    u_xlat81 = (x_3859 * x_3860);
    let x_3862 : f32 = u_xlat82;
    u_xlat82 = max(x_3862, 0.10000000149011611938f);
    let x_3864 : f32 = u_xlat81;
    let x_3865 : f32 = u_xlat82;
    u_xlat81 = (x_3864 * x_3865);
    let x_3867 : f32 = u_xlat79;
    let x_3868 : f32 = u_xlat81;
    u_xlat81 = (x_3867 * x_3868);
    let x_3871 : f32 = u_xlat51.x;
    let x_3872 : f32 = u_xlat81;
    u_xlat81 = (x_3871 / x_3872);
    let x_3874 : vec4<f32> = u_xlat0;
    let x_3876 : f32 = u_xlat81;
    let x_3879 : vec3<f32> = u_xlat27;
    let x_3880 : vec3<f32> = ((vec3<f32>(x_3874.x, x_3874.y, x_3874.z) * vec3<f32>(x_3876, x_3876, x_3876)) + x_3879);
    let x_3881 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3880.x, x_3880.y, x_3880.z, x_3881.w);
    let x_3883 : vec4<f32> = u_xlat8;
    let x_3885 : vec4<f32> = u_xlat10;
    let x_3888 : vec4<f32> = u_xlat7;
    let x_3890 : vec3<f32> = ((vec3<f32>(x_3883.x, x_3883.y, x_3883.z) * vec3<f32>(x_3885.x, x_3885.y, x_3885.z)) + vec3<f32>(x_3888.x, x_3888.y, x_3888.z));
    let x_3891 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3890.x, x_3890.y, x_3890.z, x_3891.w);

    continuing {
      let x_3893 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3893 + bitcast<u32>(1i));
    }
  }
  let x_3895 : vec4<f32> = u_xlat6;
  let x_3897 : vec3<f32> = u_xlat3;
  let x_3900 : vec4<f32> = u_xlat5;
  let x_3902 : vec3<f32> = ((vec3<f32>(x_3895.x, x_3895.y, x_3895.z) * vec3<f32>(x_3897.x, x_3897.x, x_3897.x)) + vec3<f32>(x_3900.x, x_3900.z, x_3900.w));
  let x_3903 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3902.x, x_3902.y, x_3902.z, x_3903.w);
  let x_3905 : vec4<f32> = u_xlat7;
  let x_3907 : vec4<f32> = u_xlat0;
  let x_3909 : vec3<f32> = (vec3<f32>(x_3905.x, x_3905.y, x_3905.z) + vec3<f32>(x_3907.x, x_3907.y, x_3907.z));
  let x_3910 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3909.x, x_3909.y, x_3909.z, x_3910.w);
  let x_3912 : f32 = u_xlat75;
  let x_3913 : f32 = u_xlat75;
  u_xlat75 = (x_3912 * -(x_3913));
  let x_3916 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3916);
  let x_3918 : vec4<f32> = u_xlat0;
  let x_3921 : vec4<f32> = x_28.unity_FogColor;
  let x_3924 : vec3<f32> = (vec3<f32>(x_3918.x, x_3918.y, x_3918.z) + -(vec3<f32>(x_3921.x, x_3921.y, x_3921.z)));
  let x_3925 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3924.x, x_3924.y, x_3924.z, x_3925.w);
  let x_3929 : f32 = u_xlat75;
  let x_3931 : vec4<f32> = u_xlat0;
  let x_3935 : vec4<f32> = x_28.unity_FogColor;
  let x_3937 : vec3<f32> = ((vec3<f32>(x_3929, x_3929, x_3929) * vec3<f32>(x_3931.x, x_3931.y, x_3931.z)) + vec3<f32>(x_3935.x, x_3935.y, x_3935.z));
  let x_3938 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3937.x, x_3937.y, x_3937.z, x_3938.w);
  let x_3942 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_3942 == 1.0f);
  let x_3944 : bool = u_xlatb0;
  if (x_3944) {
    let x_3949 : f32 = u_xlat2.x;
    x_3945 = x_3949;
  } else {
    x_3945 = 1.0f;
  }
  let x_3951 : f32 = x_3945;
  SV_Target0.w = x_3951;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


