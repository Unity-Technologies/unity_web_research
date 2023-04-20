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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
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

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_271 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb79 : bool;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat54 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1942 : UnityPerDraw;

var<private> u_xlatu29 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati29 : i32;

@group(1) @binding(1) var<uniform> x_2208 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlati82 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu51 : u32;

fn main_1() {
  var x_183 : f32;
  var x_195 : f32;
  var x_207 : f32;
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
  var x_1841 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2340 : f32;
  var x_2350 : f32;
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
  var x_3782 : f32;
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
  let x_162 : vec3<f32> = (-(x_156) + x_161);
  let x_163 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec4<f32> = u_xlat4;
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat53 = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat53;
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : bool = u_xlatb28;
  if (x_181) {
    let x_187 : f32 = u_xlat4.x;
    x_183 = x_187;
  } else {
    let x_191 : f32 = x_28.unity_MatrixV[0i].z;
    x_183 = x_191;
  }
  let x_192 : f32 = x_183;
  u_xlat5.x = x_192;
  let x_194 : bool = u_xlatb28;
  if (x_194) {
    let x_199 : f32 = u_xlat4.y;
    x_195 = x_199;
  } else {
    let x_203 : f32 = x_28.unity_MatrixV[1i].z;
    x_195 = x_203;
  }
  let x_204 : f32 = x_195;
  u_xlat5.y = x_204;
  let x_206 : bool = u_xlatb28;
  if (x_206) {
    let x_211 : f32 = u_xlat4.z;
    x_207 = x_211;
  } else {
    let x_214 : f32 = x_28.unity_MatrixV[2i].z;
    x_207 = x_214;
  }
  let x_215 : f32 = x_207;
  u_xlat5.z = x_215;
  let x_218 : vec3<f32> = vs_TEXCOORD2;
  let x_222 : vec4<f32> = vs_TEXCOORD3;
  u_xlat28 = (vec3<f32>(x_218.z, x_218.x, x_218.y) * vec3<f32>(x_222.y, x_222.z, x_222.x));
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  let x_227 : vec4<f32> = vs_TEXCOORD3;
  let x_230 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_225.y, x_225.z, x_225.x) * vec3<f32>(x_227.z, x_227.x, x_227.y)) + -(x_230));
  let x_233 : vec3<f32> = u_xlat28;
  let x_234 : vec4<f32> = vs_TEXCOORD3;
  u_xlat28 = (x_233 * vec3<f32>(x_234.w, x_234.w, x_234.w));
  let x_237 : vec2<f32> = u_xlat51;
  let x_239 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_237.y, x_237.y, x_237.y) * x_239);
  let x_241 : vec2<f32> = u_xlat51;
  let x_243 : vec4<f32> = vs_TEXCOORD3;
  let x_246 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_241.x, x_241.x, x_241.x) * vec3<f32>(x_243.x, x_243.y, x_243.z)) + x_246);
  let x_248 : f32 = u_xlat75;
  let x_250 : vec3<f32> = vs_TEXCOORD2;
  let x_252 : vec3<f32> = u_xlat28;
  u_xlat28 = ((vec3<f32>(x_248, x_248, x_248) * x_250) + x_252);
  let x_254 : vec3<f32> = u_xlat28;
  let x_255 : vec3<f32> = u_xlat28;
  u_xlat75 = dot(x_254, x_255);
  let x_257 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_257);
  let x_259 : f32 = u_xlat75;
  let x_261 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_259, x_259, x_259) * x_261);
  let x_263 : vec3<f32> = vs_TEXCOORD1;
  let x_273 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres0;
  let x_276 : vec3<f32> = (x_263 + -(vec3<f32>(x_273.x, x_273.y, x_273.z)));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : vec3<f32> = vs_TEXCOORD1;
  let x_282 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres1;
  let x_285 : vec3<f32> = (x_280 + -(vec3<f32>(x_282.x, x_282.y, x_282.z)));
  let x_286 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_289 : vec3<f32> = vs_TEXCOORD1;
  let x_292 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres2;
  let x_295 : vec3<f32> = (x_289 + -(vec3<f32>(x_292.x, x_292.y, x_292.z)));
  let x_296 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_301 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres3;
  let x_304 : vec3<f32> = (x_299 + -(vec3<f32>(x_301.x, x_301.y, x_301.z)));
  let x_305 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_307.x, x_307.y, x_307.z), vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec4<f32> = u_xlat6;
  u_xlat4.y = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_319 : vec4<f32> = u_xlat7;
  let x_321 : vec4<f32> = u_xlat7;
  u_xlat4.z = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_325 : vec4<f32> = u_xlat8;
  let x_327 : vec4<f32> = u_xlat8;
  u_xlat4.w = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_334 : vec4<f32> = u_xlat4;
  let x_336 : vec4<f32> = x_271.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_334 < x_336);
  let x_339 : bool = u_xlatb4.x;
  u_xlat6.x = select(0.0f, 1.0f, x_339);
  let x_343 : bool = u_xlatb4.y;
  u_xlat6.y = select(0.0f, 1.0f, x_343);
  let x_347 : bool = u_xlatb4.z;
  u_xlat6.z = select(0.0f, 1.0f, x_347);
  let x_351 : bool = u_xlatb4.w;
  u_xlat6.w = select(0.0f, 1.0f, x_351);
  let x_355 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_355);
  let x_360 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_360);
  let x_364 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_364);
  let x_367 : vec4<f32> = u_xlat4;
  let x_369 : vec4<f32> = u_xlat6;
  let x_371 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) + vec3<f32>(x_369.y, x_369.z, x_369.w));
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat4;
  let x_377 : vec3<f32> = max(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_377.x, x_377.y, x_377.z);
  let x_380 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(x_380, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_385 : f32 = u_xlat75;
  u_xlat75 = (-(x_385) + 4.0f);
  let x_390 : f32 = u_xlat75;
  u_xlatu75 = u32(x_390);
  let x_394 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_394) << bitcast<u32>(2i));
  let x_397 : vec3<f32> = vs_TEXCOORD1;
  let x_399 : i32 = u_xlati75;
  let x_402 : i32 = u_xlati75;
  let x_406 : vec4<f32> = x_271.x_MainLightWorldToShadow[((x_399 + 1i) / 4i)][((x_402 + 1i) % 4i)];
  let x_408 : vec3<f32> = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : i32 = u_xlati75;
  let x_413 : i32 = u_xlati75;
  let x_416 : vec4<f32> = x_271.x_MainLightWorldToShadow[(x_411 / 4i)][(x_413 % 4i)];
  let x_418 : vec3<f32> = vs_TEXCOORD1;
  let x_421 : vec4<f32> = u_xlat4;
  let x_423 : vec3<f32> = ((vec3<f32>(x_416.x, x_416.y, x_416.z) * vec3<f32>(x_418.x, x_418.x, x_418.x)) + vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : i32 = u_xlati75;
  let x_429 : i32 = u_xlati75;
  let x_433 : vec4<f32> = x_271.x_MainLightWorldToShadow[((x_426 + 2i) / 4i)][((x_429 + 2i) % 4i)];
  let x_435 : vec3<f32> = vs_TEXCOORD1;
  let x_438 : vec4<f32> = u_xlat4;
  let x_440 : vec3<f32> = ((vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_435.z, x_435.z, x_435.z)) + vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat4;
  let x_445 : i32 = u_xlati75;
  let x_448 : i32 = u_xlati75;
  let x_452 : vec4<f32> = x_271.x_MainLightWorldToShadow[((x_445 + 3i) / 4i)][((x_448 + 3i) % 4i)];
  let x_454 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) + vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_463 : vec2<f32> = vs_TEXCOORD8;
  let x_465 : f32 = x_28.x_GlobalMipBias.x;
  let x_466 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_463, x_465);
  u_xlat6 = x_466;
  let x_471 : vec2<f32> = vs_TEXCOORD8;
  let x_473 : f32 = x_28.x_GlobalMipBias.x;
  let x_474 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_471, x_473);
  let x_475 : vec3<f32> = vec3<f32>(x_474.x, x_474.y, x_474.z);
  let x_476 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat6;
  let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_483 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec3<f32> = u_xlat28;
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat75 = dot(x_485, vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : f32 = u_xlat75;
  u_xlat75 = (x_489 + 0.5f);
  let x_492 : f32 = u_xlat75;
  let x_494 : vec4<f32> = u_xlat7;
  let x_496 : vec3<f32> = (vec3<f32>(x_492, x_492, x_492) * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_500 : f32 = u_xlat6.w;
  u_xlat75 = max(x_500, 0.00009999999747378752f);
  let x_503 : vec4<f32> = u_xlat6;
  let x_505 : f32 = u_xlat75;
  let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) / vec3<f32>(x_505, x_505, x_505));
  let x_508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_511 : f32 = u_xlat1.x;
  u_xlat75 = ((-(x_511) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_517 : f32 = u_xlat1.y;
  let x_519 : f32 = x_54.x_Smoothness;
  let x_521 : f32 = u_xlat75;
  u_xlat51.x = ((x_517 * x_519) + -(x_521));
  let x_526 : f32 = u_xlat75;
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat27 = (vec3<f32>(x_526, x_526, x_526) * vec3<f32>(x_528.y, x_528.z, x_528.w));
  let x_531 : vec4<f32> = u_xlat0;
  let x_534 : vec4<f32> = x_54.x_BaseColor;
  let x_539 : vec3<f32> = ((vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(x_534.x, x_534.y, x_534.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_540 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec2<f32> = u_xlat1;
  let x_544 : vec4<f32> = u_xlat0;
  let x_549 : vec3<f32> = ((vec3<f32>(x_542.x, x_542.x, x_542.x) * vec3<f32>(x_544.x, x_544.y, x_544.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_550 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_553 : f32 = u_xlat1.y;
  let x_556 : f32 = x_54.x_Smoothness;
  u_xlat75 = ((-(x_553) * x_556) + 1.0f);
  let x_559 : f32 = u_xlat75;
  let x_560 : f32 = u_xlat75;
  u_xlat1.x = (x_559 * x_560);
  let x_564 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_564, 0.0078125f);
  let x_570 : f32 = u_xlat1.x;
  let x_572 : f32 = u_xlat1.x;
  u_xlat26 = (x_570 * x_572);
  let x_575 : f32 = u_xlat51.x;
  u_xlat51.x = (x_575 + 1.0f);
  let x_579 : f32 = u_xlat51.x;
  u_xlat51.x = clamp(x_579, 0.0f, 1.0f);
  let x_584 : f32 = u_xlat1.x;
  u_xlat76 = ((x_584 * 4.0f) + 2.0f);
  let x_588 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_588, 1.0f);
  let x_593 : f32 = x_271.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_593);
  let x_595 : bool = u_xlatb79;
  if (x_595) {
    let x_599 : f32 = x_271.x_MainLightShadowParams.y;
    u_xlatb79 = (x_599 == 1.0f);
    let x_601 : bool = u_xlatb79;
    if (x_601) {
      let x_604 : vec4<f32> = u_xlat4;
      let x_607 : vec4<f32> = x_271.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_604.x, x_604.y, x_604.x, x_604.y) + x_607);
      let x_611 : vec4<f32> = u_xlat7;
      let x_612 : vec2<f32> = vec2<f32>(x_611.x, x_611.y);
      let x_614 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_612.x, x_612.y, x_614);
      let x_626 : vec3<f32> = txVec0;
      let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_626.xy, x_626.z);
      u_xlat8.x = x_628;
      let x_631 : vec4<f32> = u_xlat7;
      let x_632 : vec2<f32> = vec2<f32>(x_631.z, x_631.w);
      let x_634 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_632.x, x_632.y, x_634);
      let x_641 : vec3<f32> = txVec1;
      let x_643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_641.xy, x_641.z);
      u_xlat8.y = x_643;
      let x_645 : vec4<f32> = u_xlat4;
      let x_649 : vec4<f32> = x_271.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_645.x, x_645.y, x_645.x, x_645.y) + x_649);
      let x_652 : vec4<f32> = u_xlat7;
      let x_653 : vec2<f32> = vec2<f32>(x_652.x, x_652.y);
      let x_655 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_653.x, x_653.y, x_655);
      let x_662 : vec3<f32> = txVec2;
      let x_664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_662.xy, x_662.z);
      u_xlat8.z = x_664;
      let x_667 : vec4<f32> = u_xlat7;
      let x_668 : vec2<f32> = vec2<f32>(x_667.z, x_667.w);
      let x_670 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_668.x, x_668.y, x_670);
      let x_677 : vec3<f32> = txVec3;
      let x_679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_677.xy, x_677.z);
      u_xlat8.w = x_679;
      let x_682 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_682, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_689 : f32 = x_271.x_MainLightShadowParams.y;
      u_xlatb80 = (x_689 == 2.0f);
      let x_691 : bool = u_xlatb80;
      if (x_691) {
        let x_694 : vec4<f32> = u_xlat4;
        let x_698 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_702 : vec2<f32> = ((vec2<f32>(x_694.x, x_694.y) * vec2<f32>(x_698.z, x_698.w)) + vec2<f32>(0.5f, 0.5f));
        let x_703 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat7;
        let x_707 : vec2<f32> = floor(vec2<f32>(x_705.x, x_705.y));
        let x_708 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_707.x, x_707.y, x_708.z, x_708.w);
        let x_711 : vec4<f32> = u_xlat4;
        let x_714 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_717 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_711.x, x_711.y) * vec2<f32>(x_714.z, x_714.w)) + -(vec2<f32>(x_717.x, x_717.y)));
        let x_721 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_721.x, x_721.x, x_721.y, x_721.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_726 : vec4<f32> = u_xlat8;
        let x_728 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_726.x, x_726.x, x_726.z, x_726.z) * vec4<f32>(x_728.x, x_728.x, x_728.z, x_728.z));
        let x_731 : vec4<f32> = u_xlat9;
        let x_735 : vec2<f32> = (vec2<f32>(x_731.y, x_731.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_736 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_735.x, x_736.y, x_735.y, x_736.w);
        let x_738 : vec4<f32> = u_xlat9;
        let x_741 : vec2<f32> = u_xlat57;
        let x_743 : vec2<f32> = ((vec2<f32>(x_738.x, x_738.z) * vec2<f32>(0.5f, 0.5f)) + -(x_741));
        let x_744 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
        let x_747 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_747) + vec2<f32>(1.0f, 1.0f));
        let x_752 : vec2<f32> = u_xlat57;
        let x_754 : vec2<f32> = min(x_752, vec2<f32>(0.0f, 0.0f));
        let x_755 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_757 : vec4<f32> = u_xlat10;
        let x_760 : vec4<f32> = u_xlat10;
        let x_763 : vec2<f32> = u_xlat59;
        let x_764 : vec2<f32> = ((-(vec2<f32>(x_757.x, x_757.y)) * vec2<f32>(x_760.x, x_760.y)) + x_763);
        let x_765 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_764.x, x_764.y, x_765.z, x_765.w);
        let x_767 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_767, vec2<f32>(0.0f, 0.0f));
        let x_769 : vec2<f32> = u_xlat57;
        let x_771 : vec2<f32> = u_xlat57;
        let x_773 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_769) * x_771) + vec2<f32>(x_773.y, x_773.w));
        let x_776 : vec4<f32> = u_xlat10;
        let x_778 : vec2<f32> = (vec2<f32>(x_776.x, x_776.y) + vec2<f32>(1.0f, 1.0f));
        let x_779 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
        let x_781 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_781 + vec2<f32>(1.0f, 1.0f));
        let x_784 : vec4<f32> = u_xlat9;
        let x_788 : vec2<f32> = (vec2<f32>(x_784.x, x_784.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_789 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_788.x, x_788.y, x_789.z, x_789.w);
        let x_791 : vec2<f32> = u_xlat59;
        let x_792 : vec2<f32> = (x_791 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_793 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
        let x_795 : vec4<f32> = u_xlat10;
        let x_797 : vec2<f32> = (vec2<f32>(x_795.x, x_795.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_798 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_798.w);
        let x_801 : vec2<f32> = u_xlat57;
        let x_802 : vec2<f32> = (x_801 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_803 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
        let x_805 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_805.y, x_805.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_809 : f32 = u_xlat10.x;
        u_xlat11.z = x_809;
        let x_812 : f32 = u_xlat57.x;
        u_xlat11.w = x_812;
        let x_815 : f32 = u_xlat12.x;
        u_xlat9.z = x_815;
        let x_818 : f32 = u_xlat8.x;
        u_xlat9.w = x_818;
        let x_821 : vec4<f32> = u_xlat9;
        let x_823 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_821.z, x_821.w, x_821.x, x_821.z) + vec4<f32>(x_823.z, x_823.w, x_823.x, x_823.z));
        let x_827 : f32 = u_xlat11.y;
        u_xlat10.z = x_827;
        let x_830 : f32 = u_xlat57.y;
        u_xlat10.w = x_830;
        let x_833 : f32 = u_xlat9.y;
        u_xlat12.z = x_833;
        let x_836 : f32 = u_xlat8.z;
        u_xlat12.w = x_836;
        let x_838 : vec4<f32> = u_xlat10;
        let x_840 : vec4<f32> = u_xlat12;
        let x_842 : vec3<f32> = (vec3<f32>(x_838.z, x_838.y, x_838.w) + vec3<f32>(x_840.z, x_840.y, x_840.w));
        let x_843 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
        let x_845 : vec4<f32> = u_xlat9;
        let x_847 : vec4<f32> = u_xlat13;
        let x_849 : vec3<f32> = (vec3<f32>(x_845.x, x_845.z, x_845.w) / vec3<f32>(x_847.z, x_847.w, x_847.y));
        let x_850 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat9;
        let x_857 : vec3<f32> = (vec3<f32>(x_852.x, x_852.y, x_852.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_858 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
        let x_860 : vec4<f32> = u_xlat12;
        let x_862 : vec4<f32> = u_xlat8;
        let x_864 : vec3<f32> = (vec3<f32>(x_860.z, x_860.y, x_860.w) / vec3<f32>(x_862.x, x_862.y, x_862.z));
        let x_865 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
        let x_867 : vec4<f32> = u_xlat10;
        let x_869 : vec3<f32> = (vec3<f32>(x_867.x, x_867.y, x_867.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_870 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
        let x_872 : vec4<f32> = u_xlat9;
        let x_875 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_877 : vec3<f32> = (vec3<f32>(x_872.y, x_872.x, x_872.z) * vec3<f32>(x_875.x, x_875.x, x_875.x));
        let x_878 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
        let x_880 : vec4<f32> = u_xlat10;
        let x_883 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_885 : vec3<f32> = (vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(x_883.y, x_883.y, x_883.y));
        let x_886 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
        let x_889 : f32 = u_xlat10.x;
        u_xlat9.w = x_889;
        let x_891 : vec4<f32> = u_xlat7;
        let x_894 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_897 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_891.x, x_891.y, x_891.x, x_891.y) * vec4<f32>(x_894.x, x_894.y, x_894.x, x_894.y)) + vec4<f32>(x_897.y, x_897.w, x_897.x, x_897.w));
        let x_900 : vec4<f32> = u_xlat7;
        let x_903 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_906 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_900.x, x_900.y) * vec2<f32>(x_903.x, x_903.y)) + vec2<f32>(x_906.z, x_906.w));
        let x_910 : f32 = u_xlat9.y;
        u_xlat10.w = x_910;
        let x_912 : vec4<f32> = u_xlat10;
        let x_913 : vec2<f32> = vec2<f32>(x_912.y, x_912.z);
        let x_914 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_914.x, x_913.x, x_914.z, x_913.y);
        let x_916 : vec4<f32> = u_xlat7;
        let x_919 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_922 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_916.x, x_916.y, x_916.x, x_916.y) * vec4<f32>(x_919.x, x_919.y, x_919.x, x_919.y)) + vec4<f32>(x_922.x, x_922.y, x_922.z, x_922.y));
        let x_925 : vec4<f32> = u_xlat7;
        let x_928 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_931 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_925.x, x_925.y, x_925.x, x_925.y) * vec4<f32>(x_928.x, x_928.y, x_928.x, x_928.y)) + vec4<f32>(x_931.w, x_931.y, x_931.w, x_931.z));
        let x_934 : vec4<f32> = u_xlat7;
        let x_937 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_940 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_934.x, x_934.y, x_934.x, x_934.y) * vec4<f32>(x_937.x, x_937.y, x_937.x, x_937.y)) + vec4<f32>(x_940.x, x_940.w, x_940.z, x_940.w));
        let x_944 : vec4<f32> = u_xlat8;
        let x_946 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_944.x, x_944.x, x_944.x, x_944.y) * vec4<f32>(x_946.z, x_946.w, x_946.y, x_946.z));
        let x_950 : vec4<f32> = u_xlat8;
        let x_952 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_950.y, x_950.y, x_950.z, x_950.z) * x_952);
        let x_956 : f32 = u_xlat8.z;
        let x_958 : f32 = u_xlat13.y;
        u_xlat80 = (x_956 * x_958);
        let x_961 : vec4<f32> = u_xlat11;
        let x_962 : vec2<f32> = vec2<f32>(x_961.x, x_961.y);
        let x_964 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_962.x, x_962.y, x_964);
        let x_972 : vec3<f32> = txVec4;
        let x_974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_972.xy, x_972.z);
        u_xlat81 = x_974;
        let x_976 : vec4<f32> = u_xlat11;
        let x_977 : vec2<f32> = vec2<f32>(x_976.z, x_976.w);
        let x_979 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_977.x, x_977.y, x_979);
        let x_986 : vec3<f32> = txVec5;
        let x_988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_986.xy, x_986.z);
        u_xlat7.x = x_988;
        let x_991 : f32 = u_xlat7.x;
        let x_993 : f32 = u_xlat14.y;
        u_xlat7.x = (x_991 * x_993);
        let x_997 : f32 = u_xlat14.x;
        let x_998 : f32 = u_xlat81;
        let x_1001 : f32 = u_xlat7.x;
        u_xlat81 = ((x_997 * x_998) + x_1001);
        let x_1004 : vec2<f32> = u_xlat57;
        let x_1006 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1004.x, x_1004.y, x_1006);
        let x_1013 : vec3<f32> = txVec6;
        let x_1015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1013.xy, x_1013.z);
        u_xlat7.x = x_1015;
        let x_1018 : f32 = u_xlat14.z;
        let x_1020 : f32 = u_xlat7.x;
        let x_1022 : f32 = u_xlat81;
        u_xlat81 = ((x_1018 * x_1020) + x_1022);
        let x_1025 : vec4<f32> = u_xlat10;
        let x_1026 : vec2<f32> = vec2<f32>(x_1025.x, x_1025.y);
        let x_1028 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1026.x, x_1026.y, x_1028);
        let x_1035 : vec3<f32> = txVec7;
        let x_1037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1035.xy, x_1035.z);
        u_xlat7.x = x_1037;
        let x_1040 : f32 = u_xlat14.w;
        let x_1042 : f32 = u_xlat7.x;
        let x_1044 : f32 = u_xlat81;
        u_xlat81 = ((x_1040 * x_1042) + x_1044);
        let x_1047 : vec4<f32> = u_xlat12;
        let x_1048 : vec2<f32> = vec2<f32>(x_1047.x, x_1047.y);
        let x_1050 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
        let x_1057 : vec3<f32> = txVec8;
        let x_1059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1057.xy, x_1057.z);
        u_xlat7.x = x_1059;
        let x_1062 : f32 = u_xlat15.x;
        let x_1064 : f32 = u_xlat7.x;
        let x_1066 : f32 = u_xlat81;
        u_xlat81 = ((x_1062 * x_1064) + x_1066);
        let x_1069 : vec4<f32> = u_xlat12;
        let x_1070 : vec2<f32> = vec2<f32>(x_1069.z, x_1069.w);
        let x_1072 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1070.x, x_1070.y, x_1072);
        let x_1079 : vec3<f32> = txVec9;
        let x_1081 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1079.xy, x_1079.z);
        u_xlat7.x = x_1081;
        let x_1084 : f32 = u_xlat15.y;
        let x_1086 : f32 = u_xlat7.x;
        let x_1088 : f32 = u_xlat81;
        u_xlat81 = ((x_1084 * x_1086) + x_1088);
        let x_1091 : vec4<f32> = u_xlat10;
        let x_1092 : vec2<f32> = vec2<f32>(x_1091.z, x_1091.w);
        let x_1094 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1092.x, x_1092.y, x_1094);
        let x_1101 : vec3<f32> = txVec10;
        let x_1103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1101.xy, x_1101.z);
        u_xlat7.x = x_1103;
        let x_1106 : f32 = u_xlat15.z;
        let x_1108 : f32 = u_xlat7.x;
        let x_1110 : f32 = u_xlat81;
        u_xlat81 = ((x_1106 * x_1108) + x_1110);
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1114 : vec2<f32> = vec2<f32>(x_1113.x, x_1113.y);
        let x_1116 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1114.x, x_1114.y, x_1116);
        let x_1123 : vec3<f32> = txVec11;
        let x_1125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1123.xy, x_1123.z);
        u_xlat7.x = x_1125;
        let x_1128 : f32 = u_xlat15.w;
        let x_1130 : f32 = u_xlat7.x;
        let x_1132 : f32 = u_xlat81;
        u_xlat81 = ((x_1128 * x_1130) + x_1132);
        let x_1135 : vec4<f32> = u_xlat9;
        let x_1136 : vec2<f32> = vec2<f32>(x_1135.z, x_1135.w);
        let x_1138 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1136.x, x_1136.y, x_1138);
        let x_1145 : vec3<f32> = txVec12;
        let x_1147 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1145.xy, x_1145.z);
        u_xlat7.x = x_1147;
        let x_1149 : f32 = u_xlat80;
        let x_1151 : f32 = u_xlat7.x;
        let x_1153 : f32 = u_xlat81;
        u_xlat79 = ((x_1149 * x_1151) + x_1153);
      } else {
        let x_1156 : vec4<f32> = u_xlat4;
        let x_1159 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1162 : vec2<f32> = ((vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(x_1159.z, x_1159.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1163 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1163.w);
        let x_1165 : vec4<f32> = u_xlat7;
        let x_1167 : vec2<f32> = floor(vec2<f32>(x_1165.x, x_1165.y));
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1167.x, x_1167.y, x_1168.z, x_1168.w);
        let x_1170 : vec4<f32> = u_xlat4;
        let x_1173 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1176 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1170.x, x_1170.y) * vec2<f32>(x_1173.z, x_1173.w)) + -(vec2<f32>(x_1176.x, x_1176.y)));
        let x_1180 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1180.x, x_1180.x, x_1180.y, x_1180.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1183 : vec4<f32> = u_xlat8;
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1183.x, x_1183.x, x_1183.z, x_1183.z) * vec4<f32>(x_1185.x, x_1185.x, x_1185.z, x_1185.z));
        let x_1188 : vec4<f32> = u_xlat9;
        let x_1192 : vec2<f32> = (vec2<f32>(x_1188.y, x_1188.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1193 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1193.x, x_1192.x, x_1193.z, x_1192.y);
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1198 : vec2<f32> = u_xlat57;
        let x_1200 : vec2<f32> = ((vec2<f32>(x_1195.x, x_1195.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1198));
        let x_1201 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1200.x, x_1201.y, x_1200.y, x_1201.w);
        let x_1203 : vec2<f32> = u_xlat57;
        let x_1205 : vec2<f32> = (-(x_1203) + vec2<f32>(1.0f, 1.0f));
        let x_1206 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
        let x_1208 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1208, vec2<f32>(0.0f, 0.0f));
        let x_1210 : vec2<f32> = u_xlat59;
        let x_1212 : vec2<f32> = u_xlat59;
        let x_1214 : vec4<f32> = u_xlat9;
        let x_1216 : vec2<f32> = ((-(x_1210) * x_1212) + vec2<f32>(x_1214.x, x_1214.y));
        let x_1217 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1216.x, x_1216.y, x_1217.z, x_1217.w);
        let x_1219 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1219, vec2<f32>(0.0f, 0.0f));
        let x_1222 : vec2<f32> = u_xlat59;
        let x_1224 : vec2<f32> = u_xlat59;
        let x_1226 : vec4<f32> = u_xlat8;
        let x_1228 : vec2<f32> = ((-(x_1222) * x_1224) + vec2<f32>(x_1226.y, x_1226.w));
        let x_1229 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1228.x, x_1229.y, x_1228.y);
        let x_1231 : vec4<f32> = u_xlat9;
        let x_1233 : vec2<f32> = (vec2<f32>(x_1231.x, x_1231.y) + vec2<f32>(2.0f, 2.0f));
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1233.x, x_1233.y, x_1234.z, x_1234.w);
        let x_1236 : vec3<f32> = u_xlat33;
        let x_1238 : vec2<f32> = (vec2<f32>(x_1236.x, x_1236.z) + vec2<f32>(2.0f, 2.0f));
        let x_1239 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1239.x, x_1238.x, x_1239.z, x_1238.y);
        let x_1242 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1242 * 0.08163200318813323975f);
        let x_1246 : vec4<f32> = u_xlat8;
        let x_1249 : vec3<f32> = (vec3<f32>(x_1246.z, x_1246.x, x_1246.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1250 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
        let x_1252 : vec4<f32> = u_xlat9;
        let x_1255 : vec2<f32> = (vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1256 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1255.x, x_1255.y, x_1256.z, x_1256.w);
        let x_1259 : f32 = u_xlat12.y;
        u_xlat11.x = x_1259;
        let x_1261 : vec2<f32> = u_xlat57;
        let x_1268 : vec2<f32> = ((vec2<f32>(x_1261.x, x_1261.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1269 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1269.x, x_1268.x, x_1269.z, x_1268.y);
        let x_1271 : vec2<f32> = u_xlat57;
        let x_1275 : vec2<f32> = ((vec2<f32>(x_1271.x, x_1271.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1276 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1275.x, x_1276.y, x_1275.y, x_1276.w);
        let x_1279 : f32 = u_xlat8.x;
        u_xlat9.y = x_1279;
        let x_1282 : f32 = u_xlat10.y;
        u_xlat9.w = x_1282;
        let x_1284 : vec4<f32> = u_xlat9;
        let x_1285 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1284 + x_1285);
        let x_1287 : vec2<f32> = u_xlat57;
        let x_1290 : vec2<f32> = ((vec2<f32>(x_1287.y, x_1287.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1291 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1291.x, x_1290.x, x_1291.z, x_1290.y);
        let x_1293 : vec2<f32> = u_xlat57;
        let x_1296 : vec2<f32> = ((vec2<f32>(x_1293.y, x_1293.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1297 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1296.x, x_1297.y, x_1296.y, x_1297.w);
        let x_1300 : f32 = u_xlat8.y;
        u_xlat10.y = x_1300;
        let x_1302 : vec4<f32> = u_xlat10;
        let x_1303 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1302 + x_1303);
        let x_1305 : vec4<f32> = u_xlat9;
        let x_1306 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1305 / x_1306);
        let x_1308 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1308 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1314 : vec4<f32> = u_xlat10;
        let x_1315 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1314 / x_1315);
        let x_1317 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1317 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1319 : vec4<f32> = u_xlat9;
        let x_1322 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1319.w, x_1319.x, x_1319.y, x_1319.z) * vec4<f32>(x_1322.x, x_1322.x, x_1322.x, x_1322.x));
        let x_1325 : vec4<f32> = u_xlat10;
        let x_1328 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1325.x, x_1325.w, x_1325.y, x_1325.z) * vec4<f32>(x_1328.y, x_1328.y, x_1328.y, x_1328.y));
        let x_1331 : vec4<f32> = u_xlat9;
        let x_1332 : vec3<f32> = vec3<f32>(x_1331.y, x_1331.z, x_1331.w);
        let x_1333 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1332.x, x_1333.y, x_1332.y, x_1332.z);
        let x_1336 : f32 = u_xlat10.x;
        u_xlat12.y = x_1336;
        let x_1338 : vec4<f32> = u_xlat7;
        let x_1341 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1344 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1338.x, x_1338.y, x_1338.x, x_1338.y) * vec4<f32>(x_1341.x, x_1341.y, x_1341.x, x_1341.y)) + vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1344.y));
        let x_1347 : vec4<f32> = u_xlat7;
        let x_1350 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1353 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1347.x, x_1347.y) * vec2<f32>(x_1350.x, x_1350.y)) + vec2<f32>(x_1353.w, x_1353.y));
        let x_1357 : f32 = u_xlat12.y;
        u_xlat9.y = x_1357;
        let x_1360 : f32 = u_xlat10.z;
        u_xlat12.y = x_1360;
        let x_1362 : vec4<f32> = u_xlat7;
        let x_1365 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y) * vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y)) + vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1368.y));
        let x_1371 : vec4<f32> = u_xlat7;
        let x_1374 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat12;
        let x_1379 : vec2<f32> = ((vec2<f32>(x_1371.x, x_1371.y) * vec2<f32>(x_1374.x, x_1374.y)) + vec2<f32>(x_1377.w, x_1377.y));
        let x_1380 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1383 : f32 = u_xlat12.y;
        u_xlat9.z = x_1383;
        let x_1386 : vec4<f32> = u_xlat7;
        let x_1389 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1392 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1386.x, x_1386.y, x_1386.x, x_1386.y) * vec4<f32>(x_1389.x, x_1389.y, x_1389.x, x_1389.y)) + vec4<f32>(x_1392.x, x_1392.y, x_1392.x, x_1392.z));
        let x_1396 : f32 = u_xlat10.w;
        u_xlat12.y = x_1396;
        let x_1399 : vec4<f32> = u_xlat7;
        let x_1402 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1405 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1399.x, x_1399.y, x_1399.x, x_1399.y) * vec4<f32>(x_1402.x, x_1402.y, x_1402.x, x_1402.y)) + vec4<f32>(x_1405.x, x_1405.y, x_1405.z, x_1405.y));
        let x_1409 : vec4<f32> = u_xlat7;
        let x_1412 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1415 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1409.x, x_1409.y) * vec2<f32>(x_1412.x, x_1412.y)) + vec2<f32>(x_1415.w, x_1415.y));
        let x_1419 : f32 = u_xlat12.y;
        u_xlat9.w = x_1419;
        let x_1422 : vec4<f32> = u_xlat7;
        let x_1425 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1428 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1422.x, x_1422.y) * vec2<f32>(x_1425.x, x_1425.y)) + vec2<f32>(x_1428.x, x_1428.w));
        let x_1431 : vec4<f32> = u_xlat12;
        let x_1432 : vec3<f32> = vec3<f32>(x_1431.x, x_1431.z, x_1431.w);
        let x_1433 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1432.x, x_1433.y, x_1432.y, x_1432.z);
        let x_1435 : vec4<f32> = u_xlat7;
        let x_1438 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1441 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1435.x, x_1435.y, x_1435.x, x_1435.y) * vec4<f32>(x_1438.x, x_1438.y, x_1438.x, x_1438.y)) + vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1441.y));
        let x_1445 : vec4<f32> = u_xlat7;
        let x_1448 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1451 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1445.x, x_1445.y) * vec2<f32>(x_1448.x, x_1448.y)) + vec2<f32>(x_1451.w, x_1451.y));
        let x_1455 : f32 = u_xlat9.x;
        u_xlat10.x = x_1455;
        let x_1457 : vec4<f32> = u_xlat7;
        let x_1460 : vec4<f32> = x_271.x_MainLightShadowmapSize;
        let x_1463 : vec4<f32> = u_xlat10;
        let x_1465 : vec2<f32> = ((vec2<f32>(x_1457.x, x_1457.y) * vec2<f32>(x_1460.x, x_1460.y)) + vec2<f32>(x_1463.x, x_1463.y));
        let x_1466 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1465.x, x_1465.y, x_1466.z, x_1466.w);
        let x_1469 : vec4<f32> = u_xlat8;
        let x_1471 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1469.x, x_1469.x, x_1469.x, x_1469.x) * x_1471);
        let x_1474 : vec4<f32> = u_xlat8;
        let x_1476 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1474.y, x_1474.y, x_1474.y, x_1474.y) * x_1476);
        let x_1479 : vec4<f32> = u_xlat8;
        let x_1481 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1479.z, x_1479.z, x_1479.z, x_1479.z) * x_1481);
        let x_1483 : vec4<f32> = u_xlat8;
        let x_1485 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1483.w, x_1483.w, x_1483.w, x_1483.w) * x_1485);
        let x_1488 : vec4<f32> = u_xlat13;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.x, x_1488.y);
        let x_1491 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec13;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1498.xy, x_1498.z);
        u_xlat80 = x_1500;
        let x_1502 : vec4<f32> = u_xlat13;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.z, x_1502.w);
        let x_1505 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec14;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1512.xy, x_1512.z);
        u_xlat81 = x_1514;
        let x_1515 : f32 = u_xlat81;
        let x_1517 : f32 = u_xlat18.y;
        u_xlat81 = (x_1515 * x_1517);
        let x_1520 : f32 = u_xlat18.x;
        let x_1521 : f32 = u_xlat80;
        let x_1523 : f32 = u_xlat81;
        u_xlat80 = ((x_1520 * x_1521) + x_1523);
        let x_1526 : vec2<f32> = u_xlat57;
        let x_1528 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec15;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat81 = x_1537;
        let x_1539 : f32 = u_xlat18.z;
        let x_1540 : f32 = u_xlat81;
        let x_1542 : f32 = u_xlat80;
        u_xlat80 = ((x_1539 * x_1540) + x_1542);
        let x_1545 : vec4<f32> = u_xlat16;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.x, x_1545.y);
        let x_1548 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec16;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat81 = x_1557;
        let x_1559 : f32 = u_xlat18.w;
        let x_1560 : f32 = u_xlat81;
        let x_1562 : f32 = u_xlat80;
        u_xlat80 = ((x_1559 * x_1560) + x_1562);
        let x_1565 : vec4<f32> = u_xlat14;
        let x_1566 : vec2<f32> = vec2<f32>(x_1565.x, x_1565.y);
        let x_1568 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1575 : vec3<f32> = txVec17;
        let x_1577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1575.xy, x_1575.z);
        u_xlat81 = x_1577;
        let x_1579 : f32 = u_xlat19.x;
        let x_1580 : f32 = u_xlat81;
        let x_1582 : f32 = u_xlat80;
        u_xlat80 = ((x_1579 * x_1580) + x_1582);
        let x_1585 : vec4<f32> = u_xlat14;
        let x_1586 : vec2<f32> = vec2<f32>(x_1585.z, x_1585.w);
        let x_1588 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec18;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1595.xy, x_1595.z);
        u_xlat81 = x_1597;
        let x_1599 : f32 = u_xlat19.y;
        let x_1600 : f32 = u_xlat81;
        let x_1602 : f32 = u_xlat80;
        u_xlat80 = ((x_1599 * x_1600) + x_1602);
        let x_1605 : vec4<f32> = u_xlat15;
        let x_1606 : vec2<f32> = vec2<f32>(x_1605.x, x_1605.y);
        let x_1608 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec19;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1615.xy, x_1615.z);
        u_xlat81 = x_1617;
        let x_1619 : f32 = u_xlat19.z;
        let x_1620 : f32 = u_xlat81;
        let x_1622 : f32 = u_xlat80;
        u_xlat80 = ((x_1619 * x_1620) + x_1622);
        let x_1625 : vec4<f32> = u_xlat16;
        let x_1626 : vec2<f32> = vec2<f32>(x_1625.z, x_1625.w);
        let x_1628 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1626.x, x_1626.y, x_1628);
        let x_1635 : vec3<f32> = txVec20;
        let x_1637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1635.xy, x_1635.z);
        u_xlat81 = x_1637;
        let x_1639 : f32 = u_xlat19.w;
        let x_1640 : f32 = u_xlat81;
        let x_1642 : f32 = u_xlat80;
        u_xlat80 = ((x_1639 * x_1640) + x_1642);
        let x_1645 : vec4<f32> = u_xlat17;
        let x_1646 : vec2<f32> = vec2<f32>(x_1645.x, x_1645.y);
        let x_1648 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1646.x, x_1646.y, x_1648);
        let x_1655 : vec3<f32> = txVec21;
        let x_1657 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1655.xy, x_1655.z);
        u_xlat81 = x_1657;
        let x_1659 : f32 = u_xlat20.x;
        let x_1660 : f32 = u_xlat81;
        let x_1662 : f32 = u_xlat80;
        u_xlat80 = ((x_1659 * x_1660) + x_1662);
        let x_1665 : vec4<f32> = u_xlat17;
        let x_1666 : vec2<f32> = vec2<f32>(x_1665.z, x_1665.w);
        let x_1668 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec22;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1675.xy, x_1675.z);
        u_xlat81 = x_1677;
        let x_1679 : f32 = u_xlat20.y;
        let x_1680 : f32 = u_xlat81;
        let x_1682 : f32 = u_xlat80;
        u_xlat80 = ((x_1679 * x_1680) + x_1682);
        let x_1685 : vec2<f32> = u_xlat34;
        let x_1687 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1694 : vec3<f32> = txVec23;
        let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1694.xy, x_1694.z);
        u_xlat81 = x_1696;
        let x_1698 : f32 = u_xlat20.z;
        let x_1699 : f32 = u_xlat81;
        let x_1701 : f32 = u_xlat80;
        u_xlat80 = ((x_1698 * x_1699) + x_1701);
        let x_1704 : vec2<f32> = u_xlat65;
        let x_1706 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1704.x, x_1704.y, x_1706);
        let x_1713 : vec3<f32> = txVec24;
        let x_1715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1713.xy, x_1713.z);
        u_xlat81 = x_1715;
        let x_1717 : f32 = u_xlat20.w;
        let x_1718 : f32 = u_xlat81;
        let x_1720 : f32 = u_xlat80;
        u_xlat80 = ((x_1717 * x_1718) + x_1720);
        let x_1723 : vec4<f32> = u_xlat12;
        let x_1724 : vec2<f32> = vec2<f32>(x_1723.x, x_1723.y);
        let x_1726 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1724.x, x_1724.y, x_1726);
        let x_1733 : vec3<f32> = txVec25;
        let x_1735 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1733.xy, x_1733.z);
        u_xlat81 = x_1735;
        let x_1737 : f32 = u_xlat8.x;
        let x_1738 : f32 = u_xlat81;
        let x_1740 : f32 = u_xlat80;
        u_xlat80 = ((x_1737 * x_1738) + x_1740);
        let x_1743 : vec4<f32> = u_xlat12;
        let x_1744 : vec2<f32> = vec2<f32>(x_1743.z, x_1743.w);
        let x_1746 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1744.x, x_1744.y, x_1746);
        let x_1753 : vec3<f32> = txVec26;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1753.xy, x_1753.z);
        u_xlat81 = x_1755;
        let x_1757 : f32 = u_xlat8.y;
        let x_1758 : f32 = u_xlat81;
        let x_1760 : f32 = u_xlat80;
        u_xlat80 = ((x_1757 * x_1758) + x_1760);
        let x_1763 : vec2<f32> = u_xlat60;
        let x_1765 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec27;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1772.xy, x_1772.z);
        u_xlat81 = x_1774;
        let x_1776 : f32 = u_xlat8.z;
        let x_1777 : f32 = u_xlat81;
        let x_1779 : f32 = u_xlat80;
        u_xlat80 = ((x_1776 * x_1777) + x_1779);
        let x_1782 : vec4<f32> = u_xlat7;
        let x_1783 : vec2<f32> = vec2<f32>(x_1782.x, x_1782.y);
        let x_1785 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1783.x, x_1783.y, x_1785);
        let x_1792 : vec3<f32> = txVec28;
        let x_1794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1792.xy, x_1792.z);
        u_xlat81 = x_1794;
        let x_1796 : f32 = u_xlat8.w;
        let x_1797 : f32 = u_xlat81;
        let x_1799 : f32 = u_xlat80;
        u_xlat79 = ((x_1796 * x_1797) + x_1799);
      }
    }
  } else {
    let x_1803 : vec4<f32> = u_xlat4;
    let x_1804 : vec2<f32> = vec2<f32>(x_1803.x, x_1803.y);
    let x_1806 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1804.x, x_1804.y, x_1806);
    let x_1813 : vec3<f32> = txVec29;
    let x_1815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1813.xy, x_1813.z);
    u_xlat79 = x_1815;
  }
  let x_1817 : f32 = x_271.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1817) + 1.0f);
  let x_1821 : f32 = u_xlat79;
  let x_1823 : f32 = x_271.x_MainLightShadowParams.x;
  let x_1826 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1821 * x_1823) + x_1826);
  let x_1831 : f32 = u_xlat4.z;
  u_xlatb29 = (0.0f >= x_1831);
  let x_1835 : f32 = u_xlat4.z;
  u_xlatb54 = (x_1835 >= 1.0f);
  let x_1837 : bool = u_xlatb54;
  let x_1838 : bool = u_xlatb29;
  u_xlatb29 = (x_1837 | x_1838);
  let x_1840 : bool = u_xlatb29;
  if (x_1840) {
    x_1841 = 1.0f;
  } else {
    let x_1846 : f32 = u_xlat4.x;
    x_1841 = x_1846;
  }
  let x_1847 : f32 = x_1841;
  u_xlat4.x = x_1847;
  let x_1850 : vec3<f32> = vs_TEXCOORD1;
  let x_1852 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat29 = (x_1850 + -(x_1852));
  let x_1855 : vec3<f32> = u_xlat29;
  let x_1856 : vec3<f32> = u_xlat29;
  u_xlat29.x = dot(x_1855, x_1856);
  let x_1861 : f32 = u_xlat29.x;
  let x_1863 : f32 = x_271.x_MainLightShadowParams.z;
  let x_1866 : f32 = x_271.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1861 * x_1863) + x_1866);
  let x_1868 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1868, 0.0f, 1.0f);
  let x_1871 : f32 = u_xlat4.x;
  u_xlat79 = (-(x_1871) + 1.0f);
  let x_1874 : f32 = u_xlat54;
  let x_1875 : f32 = u_xlat79;
  let x_1878 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1874 * x_1875) + x_1878);
  let x_1881 : vec3<f32> = u_xlat5;
  let x_1883 : vec3<f32> = u_xlat28;
  u_xlat54 = dot(-(x_1881), x_1883);
  let x_1885 : f32 = u_xlat54;
  let x_1886 : f32 = u_xlat54;
  u_xlat54 = (x_1885 + x_1886);
  let x_1888 : vec3<f32> = u_xlat28;
  let x_1889 : f32 = u_xlat54;
  let x_1893 : vec3<f32> = u_xlat5;
  let x_1895 : vec3<f32> = ((x_1888 * -(vec3<f32>(x_1889, x_1889, x_1889))) + -(x_1893));
  let x_1896 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1898 : vec3<f32> = u_xlat28;
  let x_1899 : vec3<f32> = u_xlat5;
  u_xlat54 = dot(x_1898, x_1899);
  let x_1901 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1901, 0.0f, 1.0f);
  let x_1903 : f32 = u_xlat54;
  u_xlat54 = (-(x_1903) + 1.0f);
  let x_1906 : f32 = u_xlat54;
  let x_1907 : f32 = u_xlat54;
  u_xlat54 = (x_1906 * x_1907);
  let x_1909 : f32 = u_xlat54;
  let x_1910 : f32 = u_xlat54;
  u_xlat54 = (x_1909 * x_1910);
  let x_1912 : f32 = u_xlat75;
  u_xlat79 = ((-(x_1912) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1918 : f32 = u_xlat75;
  let x_1919 : f32 = u_xlat79;
  u_xlat75 = (x_1918 * x_1919);
  let x_1921 : f32 = u_xlat75;
  u_xlat75 = (x_1921 * 6.0f);
  let x_1932 : vec4<f32> = u_xlat7;
  let x_1934 : f32 = u_xlat75;
  let x_1935 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1932.x, x_1932.y, x_1932.z), x_1934);
  u_xlat7 = x_1935;
  let x_1937 : f32 = u_xlat7.w;
  u_xlat75 = (x_1937 + -1.0f);
  let x_1944 : f32 = x_1942.unity_SpecCube0_HDR.w;
  let x_1945 : f32 = u_xlat75;
  u_xlat75 = ((x_1944 * x_1945) + 1.0f);
  let x_1948 : f32 = u_xlat75;
  u_xlat75 = max(x_1948, 0.0f);
  let x_1950 : f32 = u_xlat75;
  u_xlat75 = log2(x_1950);
  let x_1952 : f32 = u_xlat75;
  let x_1954 : f32 = x_1942.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_1952 * x_1954);
  let x_1956 : f32 = u_xlat75;
  u_xlat75 = exp2(x_1956);
  let x_1958 : f32 = u_xlat75;
  let x_1960 : f32 = x_1942.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_1958 * x_1960);
  let x_1962 : vec4<f32> = u_xlat7;
  let x_1964 : f32 = u_xlat75;
  let x_1966 : vec3<f32> = (vec3<f32>(x_1962.x, x_1962.y, x_1962.z) * vec3<f32>(x_1964, x_1964, x_1964));
  let x_1967 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
  let x_1969 : vec2<f32> = u_xlat1;
  let x_1971 : vec2<f32> = u_xlat1;
  let x_1975 : vec2<f32> = ((vec2<f32>(x_1969.x, x_1969.x) * vec2<f32>(x_1971.x, x_1971.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1976 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1975.x, x_1975.y, x_1976.z, x_1976.w);
  let x_1979 : f32 = u_xlat8.y;
  u_xlat75 = (1.0f / x_1979);
  let x_1981 : vec4<f32> = u_xlat0;
  let x_1984 : vec2<f32> = u_xlat51;
  u_xlat33 = (-(vec3<f32>(x_1981.x, x_1981.y, x_1981.z)) + vec3<f32>(x_1984.x, x_1984.x, x_1984.x));
  let x_1987 : f32 = u_xlat54;
  let x_1989 : vec3<f32> = u_xlat33;
  let x_1991 : vec4<f32> = u_xlat0;
  u_xlat33 = ((vec3<f32>(x_1987, x_1987, x_1987) * x_1989) + vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
  let x_1994 : f32 = u_xlat75;
  let x_1996 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_1994, x_1994, x_1994) * x_1996);
  let x_1998 : vec4<f32> = u_xlat7;
  let x_2000 : vec3<f32> = u_xlat33;
  let x_2001 : vec3<f32> = (vec3<f32>(x_1998.x, x_1998.y, x_1998.z) * x_2000);
  let x_2002 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2001.x, x_2001.y, x_2001.z, x_2002.w);
  let x_2004 : vec4<f32> = u_xlat6;
  let x_2006 : vec3<f32> = u_xlat27;
  let x_2008 : vec4<f32> = u_xlat7;
  let x_2010 : vec3<f32> = ((vec3<f32>(x_2004.x, x_2004.y, x_2004.z) * x_2006) + vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
  let x_2011 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2010.x, x_2010.y, x_2010.z, x_2011.w);
  let x_2014 : f32 = u_xlat4.x;
  let x_2016 : f32 = x_1942.unity_LightData.z;
  u_xlat75 = (x_2014 * x_2016);
  let x_2018 : vec3<f32> = u_xlat28;
  let x_2020 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(x_2018, vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
  let x_2025 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2025, 0.0f, 1.0f);
  let x_2028 : f32 = u_xlat75;
  let x_2030 : f32 = u_xlat1.x;
  u_xlat75 = (x_2028 * x_2030);
  let x_2032 : f32 = u_xlat75;
  let x_2035 : vec4<f32> = x_28.x_MainLightColor;
  let x_2037 : vec3<f32> = (vec3<f32>(x_2032, x_2032, x_2032) * vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
  let x_2038 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2037.x, x_2038.y, x_2037.y, x_2037.z);
  let x_2040 : vec3<f32> = u_xlat5;
  let x_2042 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2044 : vec3<f32> = (x_2040 + vec3<f32>(x_2042.x, x_2042.y, x_2042.z));
  let x_2045 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2044.x, x_2044.y, x_2044.z, x_2045.w);
  let x_2047 : vec4<f32> = u_xlat7;
  let x_2049 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_2047.x, x_2047.y, x_2047.z), vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
  let x_2052 : f32 = u_xlat75;
  u_xlat75 = max(x_2052, 1.17549435e-38f);
  let x_2055 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_2055);
  let x_2057 : f32 = u_xlat75;
  let x_2059 : vec4<f32> = u_xlat7;
  let x_2061 : vec3<f32> = (vec3<f32>(x_2057, x_2057, x_2057) * vec3<f32>(x_2059.x, x_2059.y, x_2059.z));
  let x_2062 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
  let x_2064 : vec3<f32> = u_xlat28;
  let x_2065 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(x_2064, vec3<f32>(x_2065.x, x_2065.y, x_2065.z));
  let x_2068 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2068, 0.0f, 1.0f);
  let x_2071 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2073 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_2071.x, x_2071.y, x_2071.z), vec3<f32>(x_2073.x, x_2073.y, x_2073.z));
  let x_2078 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2078, 0.0f, 1.0f);
  let x_2081 : f32 = u_xlat75;
  let x_2082 : f32 = u_xlat75;
  u_xlat75 = (x_2081 * x_2082);
  let x_2084 : f32 = u_xlat75;
  let x_2086 : f32 = u_xlat8.x;
  u_xlat75 = ((x_2084 * x_2086) + 1.00001001358032226562f);
  let x_2091 : f32 = u_xlat1.x;
  let x_2093 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2091 * x_2093);
  let x_2096 : f32 = u_xlat75;
  let x_2097 : f32 = u_xlat75;
  u_xlat75 = (x_2096 * x_2097);
  let x_2100 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2100, 0.10000000149011611938f);
  let x_2104 : f32 = u_xlat75;
  let x_2106 : f32 = u_xlat1.x;
  u_xlat75 = (x_2104 * x_2106);
  let x_2108 : f32 = u_xlat76;
  let x_2109 : f32 = u_xlat75;
  u_xlat75 = (x_2108 * x_2109);
  let x_2111 : f32 = u_xlat26;
  let x_2112 : f32 = u_xlat75;
  u_xlat75 = (x_2111 / x_2112);
  let x_2114 : vec4<f32> = u_xlat0;
  let x_2116 : f32 = u_xlat75;
  let x_2119 : vec3<f32> = u_xlat27;
  let x_2120 : vec3<f32> = ((vec3<f32>(x_2114.x, x_2114.y, x_2114.z) * vec3<f32>(x_2116, x_2116, x_2116)) + x_2119);
  let x_2121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
  let x_2123 : vec4<f32> = u_xlat4;
  let x_2125 : vec4<f32> = u_xlat7;
  let x_2127 : vec3<f32> = (vec3<f32>(x_2123.x, x_2123.z, x_2123.w) * vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
  let x_2128 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2127.x, x_2128.y, x_2127.y, x_2127.z);
  let x_2131 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2133 : f32 = x_1942.unity_LightData.y;
  u_xlat75 = min(x_2131, x_2133);
  let x_2135 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2135));
  let x_2139 : f32 = u_xlat29.x;
  let x_2142 : f32 = x_271.x_AdditionalShadowFadeParams.x;
  let x_2145 : f32 = x_271.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_2139 * x_2142) + x_2145);
  let x_2149 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2149, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2162 : u32 = u_xlatu_loop_1;
    let x_2163 : u32 = u_xlatu75;
    if ((x_2162 < x_2163)) {
    } else {
      break;
    }
    let x_2166 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_2166 >> 2u);
    let x_2169 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2169 & 3u));
    let x_2172 : u32 = u_xlatu29;
    let x_2175 : vec4<f32> = x_1942.unity_LightIndices[bitcast<i32>(x_2172)];
    let x_2185 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2190 : vec4<u32> = indexable[x_2185];
    u_xlat29.x = dot(x_2175, bitcast<vec4<f32>>(x_2190));
    let x_2196 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_2196);
    let x_2198 : vec3<f32> = vs_TEXCOORD1;
    let x_2209 : i32 = u_xlati29;
    let x_2211 : vec4<f32> = x_2208.x_AdditionalLightsPosition[x_2209];
    let x_2214 : i32 = u_xlati29;
    let x_2216 : vec4<f32> = x_2208.x_AdditionalLightsPosition[x_2214];
    u_xlat33 = ((-(x_2198) * vec3<f32>(x_2211.w, x_2211.w, x_2211.w)) + vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
    let x_2219 : vec3<f32> = u_xlat33;
    let x_2220 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_2219, x_2220);
    let x_2222 : f32 = u_xlat80;
    u_xlat80 = max(x_2222, 0.00006103515625f);
    let x_2225 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2225);
    let x_2227 : f32 = u_xlat81;
    let x_2229 : vec3<f32> = u_xlat33;
    let x_2230 : vec3<f32> = (vec3<f32>(x_2227, x_2227, x_2227) * x_2229);
    let x_2231 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2230.x, x_2230.y, x_2230.z, x_2231.w);
    let x_2234 : f32 = u_xlat80;
    u_xlat82 = (1.0f / x_2234);
    let x_2236 : f32 = u_xlat80;
    let x_2237 : i32 = u_xlati29;
    let x_2239 : f32 = x_2208.x_AdditionalLightsAttenuation[x_2237].x;
    u_xlat80 = (x_2236 * x_2239);
    let x_2241 : f32 = u_xlat80;
    let x_2243 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2241) * x_2243) + 1.0f);
    let x_2246 : f32 = u_xlat80;
    u_xlat80 = max(x_2246, 0.0f);
    let x_2248 : f32 = u_xlat80;
    let x_2249 : f32 = u_xlat80;
    u_xlat80 = (x_2248 * x_2249);
    let x_2251 : f32 = u_xlat80;
    let x_2252 : f32 = u_xlat82;
    u_xlat80 = (x_2251 * x_2252);
    let x_2254 : i32 = u_xlati29;
    let x_2256 : vec4<f32> = x_2208.x_AdditionalLightsSpotDir[x_2254];
    let x_2258 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2256.x, x_2256.y, x_2256.z), vec3<f32>(x_2258.x, x_2258.y, x_2258.z));
    let x_2261 : f32 = u_xlat82;
    let x_2262 : i32 = u_xlati29;
    let x_2264 : f32 = x_2208.x_AdditionalLightsAttenuation[x_2262].z;
    let x_2266 : i32 = u_xlati29;
    let x_2268 : f32 = x_2208.x_AdditionalLightsAttenuation[x_2266].w;
    u_xlat82 = ((x_2261 * x_2264) + x_2268);
    let x_2270 : f32 = u_xlat82;
    u_xlat82 = clamp(x_2270, 0.0f, 1.0f);
    let x_2272 : f32 = u_xlat82;
    let x_2273 : f32 = u_xlat82;
    u_xlat82 = (x_2272 * x_2273);
    let x_2275 : f32 = u_xlat80;
    let x_2276 : f32 = u_xlat82;
    u_xlat80 = (x_2275 * x_2276);
    let x_2280 : i32 = u_xlati29;
    let x_2282 : f32 = x_271.x_AdditionalShadowParams[x_2280].w;
    u_xlati82 = i32(x_2282);
    let x_2285 : i32 = u_xlati82;
    u_xlatb84 = (x_2285 >= 0i);
    let x_2287 : bool = u_xlatb84;
    if (x_2287) {
      let x_2291 : i32 = u_xlati29;
      let x_2293 : f32 = x_271.x_AdditionalShadowParams[x_2291].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2293, x_2293, x_2293, x_2293))));
      let x_2297 : bool = u_xlatb84;
      if (x_2297) {
        let x_2301 : vec4<f32> = u_xlat9;
        let x_2304 : vec4<f32> = u_xlat9;
        let x_2307 : vec4<bool> = (abs(vec4<f32>(x_2301.z, x_2301.z, x_2301.y, x_2301.z)) >= abs(vec4<f32>(x_2304.x, x_2304.y, x_2304.x, x_2304.x)));
        let x_2309 : vec3<bool> = vec3<bool>(x_2307.x, x_2307.y, x_2307.z);
        let x_2310 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2309.x, x_2309.y, x_2309.z, x_2310.w);
        let x_2313 : bool = u_xlatb10.y;
        let x_2315 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2313 & x_2315);
        let x_2317 : vec4<f32> = u_xlat9;
        let x_2320 : vec4<bool> = (-(vec4<f32>(x_2317.z, x_2317.y, x_2317.z, x_2317.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2321 : vec3<bool> = vec3<bool>(x_2320.x, x_2320.y, x_2320.w);
        let x_2322 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2321.x, x_2321.y, x_2322.z, x_2321.z);
        let x_2325 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2325);
        let x_2330 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2330);
        let x_2335 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2335);
        let x_2339 : bool = u_xlatb10.z;
        if (x_2339) {
          let x_2344 : f32 = u_xlat10.y;
          x_2340 = x_2344;
        } else {
          let x_2346 : f32 = u_xlat85;
          x_2340 = x_2346;
        }
        let x_2347 : f32 = x_2340;
        u_xlat35 = x_2347;
        let x_2349 : bool = u_xlatb84;
        if (x_2349) {
          let x_2354 : f32 = u_xlat10.x;
          x_2350 = x_2354;
        } else {
          let x_2356 : f32 = u_xlat35;
          x_2350 = x_2356;
        }
        let x_2357 : f32 = x_2350;
        u_xlat84 = x_2357;
        let x_2358 : i32 = u_xlati29;
        let x_2360 : f32 = x_271.x_AdditionalShadowParams[x_2358].w;
        u_xlat10.x = trunc(x_2360);
        let x_2363 : f32 = u_xlat84;
        let x_2365 : f32 = u_xlat10.x;
        u_xlat84 = (x_2363 + x_2365);
        let x_2367 : f32 = u_xlat84;
        u_xlati82 = i32(x_2367);
      }
      let x_2369 : i32 = u_xlati82;
      u_xlati82 = (x_2369 << bitcast<u32>(2i));
      let x_2371 : vec3<f32> = vs_TEXCOORD1;
      let x_2374 : i32 = u_xlati82;
      let x_2377 : i32 = u_xlati82;
      let x_2381 : vec4<f32> = x_271.x_AdditionalLightsWorldToShadow[((x_2374 + 1i) / 4i)][((x_2377 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2371.y, x_2371.y, x_2371.y, x_2371.y) * x_2381);
      let x_2383 : i32 = u_xlati82;
      let x_2385 : i32 = u_xlati82;
      let x_2388 : vec4<f32> = x_271.x_AdditionalLightsWorldToShadow[(x_2383 / 4i)][(x_2385 % 4i)];
      let x_2389 : vec3<f32> = vs_TEXCOORD1;
      let x_2392 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2388 * vec4<f32>(x_2389.x, x_2389.x, x_2389.x, x_2389.x)) + x_2392);
      let x_2394 : i32 = u_xlati82;
      let x_2397 : i32 = u_xlati82;
      let x_2401 : vec4<f32> = x_271.x_AdditionalLightsWorldToShadow[((x_2394 + 2i) / 4i)][((x_2397 + 2i) % 4i)];
      let x_2402 : vec3<f32> = vs_TEXCOORD1;
      let x_2405 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2401 * vec4<f32>(x_2402.z, x_2402.z, x_2402.z, x_2402.z)) + x_2405);
      let x_2407 : vec4<f32> = u_xlat10;
      let x_2408 : i32 = u_xlati82;
      let x_2411 : i32 = u_xlati82;
      let x_2415 : vec4<f32> = x_271.x_AdditionalLightsWorldToShadow[((x_2408 + 3i) / 4i)][((x_2411 + 3i) % 4i)];
      u_xlat10 = (x_2407 + x_2415);
      let x_2417 : vec4<f32> = u_xlat10;
      let x_2419 : vec4<f32> = u_xlat10;
      let x_2421 : vec3<f32> = (vec3<f32>(x_2417.x, x_2417.y, x_2417.z) / vec3<f32>(x_2419.w, x_2419.w, x_2419.w));
      let x_2422 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2421.x, x_2421.y, x_2421.z, x_2422.w);
      let x_2425 : i32 = u_xlati29;
      let x_2427 : f32 = x_271.x_AdditionalShadowParams[x_2425].y;
      u_xlatb82 = (0.0f < x_2427);
      let x_2429 : bool = u_xlatb82;
      if (x_2429) {
        let x_2432 : i32 = u_xlati29;
        let x_2434 : f32 = x_271.x_AdditionalShadowParams[x_2432].y;
        u_xlatb82 = (1.0f == x_2434);
        let x_2436 : bool = u_xlatb82;
        if (x_2436) {
          let x_2439 : vec4<f32> = u_xlat10;
          let x_2442 : vec4<f32> = x_271.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2439.x, x_2439.y, x_2439.x, x_2439.y) + x_2442);
          let x_2445 : vec4<f32> = u_xlat11;
          let x_2446 : vec2<f32> = vec2<f32>(x_2445.x, x_2445.y);
          let x_2448 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2446.x, x_2446.y, x_2448);
          let x_2456 : vec3<f32> = txVec30;
          let x_2458 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2456.xy, x_2456.z);
          u_xlat12.x = x_2458;
          let x_2461 : vec4<f32> = u_xlat11;
          let x_2462 : vec2<f32> = vec2<f32>(x_2461.z, x_2461.w);
          let x_2464 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2462.x, x_2462.y, x_2464);
          let x_2471 : vec3<f32> = txVec31;
          let x_2473 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2471.xy, x_2471.z);
          u_xlat12.y = x_2473;
          let x_2475 : vec4<f32> = u_xlat10;
          let x_2479 : vec4<f32> = x_271.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2475.x, x_2475.y, x_2475.x, x_2475.y) + x_2479);
          let x_2482 : vec4<f32> = u_xlat11;
          let x_2483 : vec2<f32> = vec2<f32>(x_2482.x, x_2482.y);
          let x_2485 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2483.x, x_2483.y, x_2485);
          let x_2492 : vec3<f32> = txVec32;
          let x_2494 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2492.xy, x_2492.z);
          u_xlat12.z = x_2494;
          let x_2497 : vec4<f32> = u_xlat11;
          let x_2498 : vec2<f32> = vec2<f32>(x_2497.z, x_2497.w);
          let x_2500 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2498.x, x_2498.y, x_2500);
          let x_2507 : vec3<f32> = txVec33;
          let x_2509 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2507.xy, x_2507.z);
          u_xlat12.w = x_2509;
          let x_2511 : vec4<f32> = u_xlat12;
          u_xlat82 = dot(x_2511, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2514 : i32 = u_xlati29;
          let x_2516 : f32 = x_271.x_AdditionalShadowParams[x_2514].y;
          u_xlatb84 = (2.0f == x_2516);
          let x_2518 : bool = u_xlatb84;
          if (x_2518) {
            let x_2521 : vec4<f32> = u_xlat10;
            let x_2525 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_2528 : vec2<f32> = ((vec2<f32>(x_2521.x, x_2521.y) * vec2<f32>(x_2525.z, x_2525.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2529 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2528.x, x_2528.y, x_2529.z, x_2529.w);
            let x_2531 : vec4<f32> = u_xlat11;
            let x_2533 : vec2<f32> = floor(vec2<f32>(x_2531.x, x_2531.y));
            let x_2534 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2533.x, x_2533.y, x_2534.z, x_2534.w);
            let x_2537 : vec4<f32> = u_xlat10;
            let x_2540 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_2543 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2537.x, x_2537.y) * vec2<f32>(x_2540.z, x_2540.w)) + -(vec2<f32>(x_2543.x, x_2543.y)));
            let x_2547 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2547.x, x_2547.x, x_2547.y, x_2547.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2550 : vec4<f32> = u_xlat12;
            let x_2552 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2550.x, x_2550.x, x_2550.z, x_2550.z) * vec4<f32>(x_2552.x, x_2552.x, x_2552.z, x_2552.z));
            let x_2555 : vec4<f32> = u_xlat13;
            let x_2557 : vec2<f32> = (vec2<f32>(x_2555.y, x_2555.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2558 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2557.x, x_2558.y, x_2557.y, x_2558.w);
            let x_2560 : vec4<f32> = u_xlat13;
            let x_2563 : vec2<f32> = u_xlat61;
            let x_2565 : vec2<f32> = ((vec2<f32>(x_2560.x, x_2560.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2563));
            let x_2566 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2565.x, x_2565.y, x_2566.z, x_2566.w);
            let x_2569 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2569) + vec2<f32>(1.0f, 1.0f));
            let x_2572 : vec2<f32> = u_xlat61;
            let x_2573 : vec2<f32> = min(x_2572, vec2<f32>(0.0f, 0.0f));
            let x_2574 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2573.x, x_2573.y, x_2574.z, x_2574.w);
            let x_2576 : vec4<f32> = u_xlat14;
            let x_2579 : vec4<f32> = u_xlat14;
            let x_2582 : vec2<f32> = u_xlat63;
            let x_2583 : vec2<f32> = ((-(vec2<f32>(x_2576.x, x_2576.y)) * vec2<f32>(x_2579.x, x_2579.y)) + x_2582);
            let x_2584 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2583.x, x_2583.y, x_2584.z, x_2584.w);
            let x_2586 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2586, vec2<f32>(0.0f, 0.0f));
            let x_2588 : vec2<f32> = u_xlat61;
            let x_2590 : vec2<f32> = u_xlat61;
            let x_2592 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2588) * x_2590) + vec2<f32>(x_2592.y, x_2592.w));
            let x_2595 : vec4<f32> = u_xlat14;
            let x_2597 : vec2<f32> = (vec2<f32>(x_2595.x, x_2595.y) + vec2<f32>(1.0f, 1.0f));
            let x_2598 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2597.x, x_2597.y, x_2598.z, x_2598.w);
            let x_2600 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2600 + vec2<f32>(1.0f, 1.0f));
            let x_2602 : vec4<f32> = u_xlat13;
            let x_2604 : vec2<f32> = (vec2<f32>(x_2602.x, x_2602.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2605 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2604.x, x_2604.y, x_2605.z, x_2605.w);
            let x_2607 : vec2<f32> = u_xlat63;
            let x_2608 : vec2<f32> = (x_2607 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2609 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2608.x, x_2608.y, x_2609.z, x_2609.w);
            let x_2611 : vec4<f32> = u_xlat14;
            let x_2613 : vec2<f32> = (vec2<f32>(x_2611.x, x_2611.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2614 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2613.x, x_2613.y, x_2614.z, x_2614.w);
            let x_2616 : vec2<f32> = u_xlat61;
            let x_2617 : vec2<f32> = (x_2616 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2618 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2617.x, x_2617.y, x_2618.z, x_2618.w);
            let x_2620 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2620.y, x_2620.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2624 : f32 = u_xlat14.x;
            u_xlat15.z = x_2624;
            let x_2627 : f32 = u_xlat61.x;
            u_xlat15.w = x_2627;
            let x_2630 : f32 = u_xlat16.x;
            u_xlat13.z = x_2630;
            let x_2633 : f32 = u_xlat12.x;
            u_xlat13.w = x_2633;
            let x_2635 : vec4<f32> = u_xlat13;
            let x_2637 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2635.z, x_2635.w, x_2635.x, x_2635.z) + vec4<f32>(x_2637.z, x_2637.w, x_2637.x, x_2637.z));
            let x_2641 : f32 = u_xlat15.y;
            u_xlat14.z = x_2641;
            let x_2644 : f32 = u_xlat61.y;
            u_xlat14.w = x_2644;
            let x_2647 : f32 = u_xlat13.y;
            u_xlat16.z = x_2647;
            let x_2650 : f32 = u_xlat12.z;
            u_xlat16.w = x_2650;
            let x_2652 : vec4<f32> = u_xlat14;
            let x_2654 : vec4<f32> = u_xlat16;
            let x_2656 : vec3<f32> = (vec3<f32>(x_2652.z, x_2652.y, x_2652.w) + vec3<f32>(x_2654.z, x_2654.y, x_2654.w));
            let x_2657 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2656.x, x_2656.y, x_2656.z, x_2657.w);
            let x_2659 : vec4<f32> = u_xlat13;
            let x_2661 : vec4<f32> = u_xlat17;
            let x_2663 : vec3<f32> = (vec3<f32>(x_2659.x, x_2659.z, x_2659.w) / vec3<f32>(x_2661.z, x_2661.w, x_2661.y));
            let x_2664 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2663.x, x_2663.y, x_2663.z, x_2664.w);
            let x_2666 : vec4<f32> = u_xlat13;
            let x_2668 : vec3<f32> = (vec3<f32>(x_2666.x, x_2666.y, x_2666.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2669 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2669.w);
            let x_2671 : vec4<f32> = u_xlat16;
            let x_2673 : vec4<f32> = u_xlat12;
            let x_2675 : vec3<f32> = (vec3<f32>(x_2671.z, x_2671.y, x_2671.w) / vec3<f32>(x_2673.x, x_2673.y, x_2673.z));
            let x_2676 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2675.x, x_2675.y, x_2675.z, x_2676.w);
            let x_2678 : vec4<f32> = u_xlat14;
            let x_2680 : vec3<f32> = (vec3<f32>(x_2678.x, x_2678.y, x_2678.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2681 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
            let x_2683 : vec4<f32> = u_xlat13;
            let x_2686 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_2688 : vec3<f32> = (vec3<f32>(x_2683.y, x_2683.x, x_2683.z) * vec3<f32>(x_2686.x, x_2686.x, x_2686.x));
            let x_2689 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2688.x, x_2688.y, x_2688.z, x_2689.w);
            let x_2691 : vec4<f32> = u_xlat14;
            let x_2694 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_2696 : vec3<f32> = (vec3<f32>(x_2691.x, x_2691.y, x_2691.z) * vec3<f32>(x_2694.y, x_2694.y, x_2694.y));
            let x_2697 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2697.w);
            let x_2700 : f32 = u_xlat14.x;
            u_xlat13.w = x_2700;
            let x_2702 : vec4<f32> = u_xlat11;
            let x_2705 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_2708 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2702.x, x_2702.y, x_2702.x, x_2702.y) * vec4<f32>(x_2705.x, x_2705.y, x_2705.x, x_2705.y)) + vec4<f32>(x_2708.y, x_2708.w, x_2708.x, x_2708.w));
            let x_2711 : vec4<f32> = u_xlat11;
            let x_2714 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_2717 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2711.x, x_2711.y) * vec2<f32>(x_2714.x, x_2714.y)) + vec2<f32>(x_2717.z, x_2717.w));
            let x_2721 : f32 = u_xlat13.y;
            u_xlat14.w = x_2721;
            let x_2723 : vec4<f32> = u_xlat14;
            let x_2724 : vec2<f32> = vec2<f32>(x_2723.y, x_2723.z);
            let x_2725 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2725.x, x_2724.x, x_2725.z, x_2724.y);
            let x_2727 : vec4<f32> = u_xlat11;
            let x_2730 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_2733 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2727.x, x_2727.y, x_2727.x, x_2727.y) * vec4<f32>(x_2730.x, x_2730.y, x_2730.x, x_2730.y)) + vec4<f32>(x_2733.x, x_2733.y, x_2733.z, x_2733.y));
            let x_2736 : vec4<f32> = u_xlat11;
            let x_2739 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_2742 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2736.x, x_2736.y, x_2736.x, x_2736.y) * vec4<f32>(x_2739.x, x_2739.y, x_2739.x, x_2739.y)) + vec4<f32>(x_2742.w, x_2742.y, x_2742.w, x_2742.z));
            let x_2745 : vec4<f32> = u_xlat11;
            let x_2748 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_2751 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2745.x, x_2745.y, x_2745.x, x_2745.y) * vec4<f32>(x_2748.x, x_2748.y, x_2748.x, x_2748.y)) + vec4<f32>(x_2751.x, x_2751.w, x_2751.z, x_2751.w));
            let x_2754 : vec4<f32> = u_xlat12;
            let x_2756 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2754.x, x_2754.x, x_2754.x, x_2754.y) * vec4<f32>(x_2756.z, x_2756.w, x_2756.y, x_2756.z));
            let x_2759 : vec4<f32> = u_xlat12;
            let x_2761 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2759.y, x_2759.y, x_2759.z, x_2759.z) * x_2761);
            let x_2764 : f32 = u_xlat12.z;
            let x_2766 : f32 = u_xlat17.y;
            u_xlat84 = (x_2764 * x_2766);
            let x_2769 : vec4<f32> = u_xlat15;
            let x_2770 : vec2<f32> = vec2<f32>(x_2769.x, x_2769.y);
            let x_2772 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2770.x, x_2770.y, x_2772);
            let x_2779 : vec3<f32> = txVec34;
            let x_2781 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2779.xy, x_2779.z);
            u_xlat85 = x_2781;
            let x_2783 : vec4<f32> = u_xlat15;
            let x_2784 : vec2<f32> = vec2<f32>(x_2783.z, x_2783.w);
            let x_2786 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2784.x, x_2784.y, x_2786);
            let x_2793 : vec3<f32> = txVec35;
            let x_2795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2793.xy, x_2793.z);
            u_xlat11.x = x_2795;
            let x_2798 : f32 = u_xlat11.x;
            let x_2800 : f32 = u_xlat18.y;
            u_xlat11.x = (x_2798 * x_2800);
            let x_2804 : f32 = u_xlat18.x;
            let x_2805 : f32 = u_xlat85;
            let x_2808 : f32 = u_xlat11.x;
            u_xlat85 = ((x_2804 * x_2805) + x_2808);
            let x_2811 : vec2<f32> = u_xlat61;
            let x_2813 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2811.x, x_2811.y, x_2813);
            let x_2820 : vec3<f32> = txVec36;
            let x_2822 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2820.xy, x_2820.z);
            u_xlat11.x = x_2822;
            let x_2825 : f32 = u_xlat18.z;
            let x_2827 : f32 = u_xlat11.x;
            let x_2829 : f32 = u_xlat85;
            u_xlat85 = ((x_2825 * x_2827) + x_2829);
            let x_2832 : vec4<f32> = u_xlat14;
            let x_2833 : vec2<f32> = vec2<f32>(x_2832.x, x_2832.y);
            let x_2835 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2833.x, x_2833.y, x_2835);
            let x_2842 : vec3<f32> = txVec37;
            let x_2844 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2842.xy, x_2842.z);
            u_xlat11.x = x_2844;
            let x_2847 : f32 = u_xlat18.w;
            let x_2849 : f32 = u_xlat11.x;
            let x_2851 : f32 = u_xlat85;
            u_xlat85 = ((x_2847 * x_2849) + x_2851);
            let x_2854 : vec4<f32> = u_xlat16;
            let x_2855 : vec2<f32> = vec2<f32>(x_2854.x, x_2854.y);
            let x_2857 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2855.x, x_2855.y, x_2857);
            let x_2864 : vec3<f32> = txVec38;
            let x_2866 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2864.xy, x_2864.z);
            u_xlat11.x = x_2866;
            let x_2869 : f32 = u_xlat19.x;
            let x_2871 : f32 = u_xlat11.x;
            let x_2873 : f32 = u_xlat85;
            u_xlat85 = ((x_2869 * x_2871) + x_2873);
            let x_2876 : vec4<f32> = u_xlat16;
            let x_2877 : vec2<f32> = vec2<f32>(x_2876.z, x_2876.w);
            let x_2879 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2877.x, x_2877.y, x_2879);
            let x_2886 : vec3<f32> = txVec39;
            let x_2888 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2886.xy, x_2886.z);
            u_xlat11.x = x_2888;
            let x_2891 : f32 = u_xlat19.y;
            let x_2893 : f32 = u_xlat11.x;
            let x_2895 : f32 = u_xlat85;
            u_xlat85 = ((x_2891 * x_2893) + x_2895);
            let x_2898 : vec4<f32> = u_xlat14;
            let x_2899 : vec2<f32> = vec2<f32>(x_2898.z, x_2898.w);
            let x_2901 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2899.x, x_2899.y, x_2901);
            let x_2908 : vec3<f32> = txVec40;
            let x_2910 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2908.xy, x_2908.z);
            u_xlat11.x = x_2910;
            let x_2913 : f32 = u_xlat19.z;
            let x_2915 : f32 = u_xlat11.x;
            let x_2917 : f32 = u_xlat85;
            u_xlat85 = ((x_2913 * x_2915) + x_2917);
            let x_2920 : vec4<f32> = u_xlat13;
            let x_2921 : vec2<f32> = vec2<f32>(x_2920.x, x_2920.y);
            let x_2923 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2921.x, x_2921.y, x_2923);
            let x_2930 : vec3<f32> = txVec41;
            let x_2932 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2930.xy, x_2930.z);
            u_xlat11.x = x_2932;
            let x_2935 : f32 = u_xlat19.w;
            let x_2937 : f32 = u_xlat11.x;
            let x_2939 : f32 = u_xlat85;
            u_xlat85 = ((x_2935 * x_2937) + x_2939);
            let x_2942 : vec4<f32> = u_xlat13;
            let x_2943 : vec2<f32> = vec2<f32>(x_2942.z, x_2942.w);
            let x_2945 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2943.x, x_2943.y, x_2945);
            let x_2952 : vec3<f32> = txVec42;
            let x_2954 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2952.xy, x_2952.z);
            u_xlat11.x = x_2954;
            let x_2956 : f32 = u_xlat84;
            let x_2958 : f32 = u_xlat11.x;
            let x_2960 : f32 = u_xlat85;
            u_xlat82 = ((x_2956 * x_2958) + x_2960);
          } else {
            let x_2963 : vec4<f32> = u_xlat10;
            let x_2966 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_2969 : vec2<f32> = ((vec2<f32>(x_2963.x, x_2963.y) * vec2<f32>(x_2966.z, x_2966.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2970 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2969.x, x_2969.y, x_2970.z, x_2970.w);
            let x_2972 : vec4<f32> = u_xlat11;
            let x_2974 : vec2<f32> = floor(vec2<f32>(x_2972.x, x_2972.y));
            let x_2975 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2974.x, x_2974.y, x_2975.z, x_2975.w);
            let x_2977 : vec4<f32> = u_xlat10;
            let x_2980 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_2983 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2977.x, x_2977.y) * vec2<f32>(x_2980.z, x_2980.w)) + -(vec2<f32>(x_2983.x, x_2983.y)));
            let x_2987 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2987.x, x_2987.x, x_2987.y, x_2987.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2990 : vec4<f32> = u_xlat12;
            let x_2992 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2990.x, x_2990.x, x_2990.z, x_2990.z) * vec4<f32>(x_2992.x, x_2992.x, x_2992.z, x_2992.z));
            let x_2995 : vec4<f32> = u_xlat13;
            let x_2997 : vec2<f32> = (vec2<f32>(x_2995.y, x_2995.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2998 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2998.x, x_2997.x, x_2998.z, x_2997.y);
            let x_3000 : vec4<f32> = u_xlat13;
            let x_3003 : vec2<f32> = u_xlat61;
            let x_3005 : vec2<f32> = ((vec2<f32>(x_3000.x, x_3000.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3003));
            let x_3006 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3005.x, x_3006.y, x_3005.y, x_3006.w);
            let x_3008 : vec2<f32> = u_xlat61;
            let x_3010 : vec2<f32> = (-(x_3008) + vec2<f32>(1.0f, 1.0f));
            let x_3011 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3010.x, x_3010.y, x_3011.z, x_3011.w);
            let x_3013 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3013, vec2<f32>(0.0f, 0.0f));
            let x_3015 : vec2<f32> = u_xlat63;
            let x_3017 : vec2<f32> = u_xlat63;
            let x_3019 : vec4<f32> = u_xlat13;
            let x_3021 : vec2<f32> = ((-(x_3015) * x_3017) + vec2<f32>(x_3019.x, x_3019.y));
            let x_3022 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3021.x, x_3021.y, x_3022.z, x_3022.w);
            let x_3024 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3024, vec2<f32>(0.0f, 0.0f));
            let x_3027 : vec2<f32> = u_xlat63;
            let x_3029 : vec2<f32> = u_xlat63;
            let x_3031 : vec4<f32> = u_xlat12;
            let x_3033 : vec2<f32> = ((-(x_3027) * x_3029) + vec2<f32>(x_3031.y, x_3031.w));
            let x_3034 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3033.x, x_3034.y, x_3033.y);
            let x_3036 : vec4<f32> = u_xlat13;
            let x_3038 : vec2<f32> = (vec2<f32>(x_3036.x, x_3036.y) + vec2<f32>(2.0f, 2.0f));
            let x_3039 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3038.x, x_3038.y, x_3039.z, x_3039.w);
            let x_3041 : vec3<f32> = u_xlat37;
            let x_3043 : vec2<f32> = (vec2<f32>(x_3041.x, x_3041.z) + vec2<f32>(2.0f, 2.0f));
            let x_3044 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3044.x, x_3043.x, x_3044.z, x_3043.y);
            let x_3047 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3047 * 0.08163200318813323975f);
            let x_3050 : vec4<f32> = u_xlat12;
            let x_3052 : vec3<f32> = (vec3<f32>(x_3050.z, x_3050.x, x_3050.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3053 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3052.x, x_3052.y, x_3052.z, x_3053.w);
            let x_3055 : vec4<f32> = u_xlat13;
            let x_3057 : vec2<f32> = (vec2<f32>(x_3055.x, x_3055.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3058 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3057.x, x_3057.y, x_3058.z, x_3058.w);
            let x_3061 : f32 = u_xlat16.y;
            u_xlat15.x = x_3061;
            let x_3063 : vec2<f32> = u_xlat61;
            let x_3066 : vec2<f32> = ((vec2<f32>(x_3063.x, x_3063.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3067 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3067.x, x_3066.x, x_3067.z, x_3066.y);
            let x_3069 : vec2<f32> = u_xlat61;
            let x_3072 : vec2<f32> = ((vec2<f32>(x_3069.x, x_3069.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3073 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3072.x, x_3073.y, x_3072.y, x_3073.w);
            let x_3076 : f32 = u_xlat12.x;
            u_xlat13.y = x_3076;
            let x_3079 : f32 = u_xlat14.y;
            u_xlat13.w = x_3079;
            let x_3081 : vec4<f32> = u_xlat13;
            let x_3082 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3081 + x_3082);
            let x_3084 : vec2<f32> = u_xlat61;
            let x_3087 : vec2<f32> = ((vec2<f32>(x_3084.y, x_3084.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3088 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3088.x, x_3087.x, x_3088.z, x_3087.y);
            let x_3090 : vec2<f32> = u_xlat61;
            let x_3093 : vec2<f32> = ((vec2<f32>(x_3090.y, x_3090.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3094 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3093.x, x_3094.y, x_3093.y, x_3094.w);
            let x_3097 : f32 = u_xlat12.y;
            u_xlat14.y = x_3097;
            let x_3099 : vec4<f32> = u_xlat14;
            let x_3100 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3099 + x_3100);
            let x_3102 : vec4<f32> = u_xlat13;
            let x_3103 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3102 / x_3103);
            let x_3105 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3105 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3107 : vec4<f32> = u_xlat14;
            let x_3108 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3107 / x_3108);
            let x_3110 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3110 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3112 : vec4<f32> = u_xlat13;
            let x_3115 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3112.w, x_3112.x, x_3112.y, x_3112.z) * vec4<f32>(x_3115.x, x_3115.x, x_3115.x, x_3115.x));
            let x_3118 : vec4<f32> = u_xlat14;
            let x_3121 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3118.x, x_3118.w, x_3118.y, x_3118.z) * vec4<f32>(x_3121.y, x_3121.y, x_3121.y, x_3121.y));
            let x_3124 : vec4<f32> = u_xlat13;
            let x_3125 : vec3<f32> = vec3<f32>(x_3124.y, x_3124.z, x_3124.w);
            let x_3126 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3125.x, x_3126.y, x_3125.y, x_3125.z);
            let x_3129 : f32 = u_xlat14.x;
            u_xlat16.y = x_3129;
            let x_3131 : vec4<f32> = u_xlat11;
            let x_3134 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_3137 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3131.x, x_3131.y, x_3131.x, x_3131.y) * vec4<f32>(x_3134.x, x_3134.y, x_3134.x, x_3134.y)) + vec4<f32>(x_3137.x, x_3137.y, x_3137.z, x_3137.y));
            let x_3140 : vec4<f32> = u_xlat11;
            let x_3143 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_3146 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3140.x, x_3140.y) * vec2<f32>(x_3143.x, x_3143.y)) + vec2<f32>(x_3146.w, x_3146.y));
            let x_3150 : f32 = u_xlat16.y;
            u_xlat13.y = x_3150;
            let x_3153 : f32 = u_xlat14.z;
            u_xlat16.y = x_3153;
            let x_3155 : vec4<f32> = u_xlat11;
            let x_3158 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_3161 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3155.x, x_3155.y, x_3155.x, x_3155.y) * vec4<f32>(x_3158.x, x_3158.y, x_3158.x, x_3158.y)) + vec4<f32>(x_3161.x, x_3161.y, x_3161.z, x_3161.y));
            let x_3164 : vec4<f32> = u_xlat11;
            let x_3167 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_3170 : vec4<f32> = u_xlat16;
            let x_3172 : vec2<f32> = ((vec2<f32>(x_3164.x, x_3164.y) * vec2<f32>(x_3167.x, x_3167.y)) + vec2<f32>(x_3170.w, x_3170.y));
            let x_3173 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3172.x, x_3172.y, x_3173.z, x_3173.w);
            let x_3176 : f32 = u_xlat16.y;
            u_xlat13.z = x_3176;
            let x_3178 : vec4<f32> = u_xlat11;
            let x_3181 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_3184 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3178.x, x_3178.y, x_3178.x, x_3178.y) * vec4<f32>(x_3181.x, x_3181.y, x_3181.x, x_3181.y)) + vec4<f32>(x_3184.x, x_3184.y, x_3184.x, x_3184.z));
            let x_3188 : f32 = u_xlat14.w;
            u_xlat16.y = x_3188;
            let x_3191 : vec4<f32> = u_xlat11;
            let x_3194 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_3197 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3191.x, x_3191.y, x_3191.x, x_3191.y) * vec4<f32>(x_3194.x, x_3194.y, x_3194.x, x_3194.y)) + vec4<f32>(x_3197.x, x_3197.y, x_3197.z, x_3197.y));
            let x_3201 : vec4<f32> = u_xlat11;
            let x_3204 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_3207 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3201.x, x_3201.y) * vec2<f32>(x_3204.x, x_3204.y)) + vec2<f32>(x_3207.w, x_3207.y));
            let x_3211 : f32 = u_xlat16.y;
            u_xlat13.w = x_3211;
            let x_3214 : vec4<f32> = u_xlat11;
            let x_3217 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_3220 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3214.x, x_3214.y) * vec2<f32>(x_3217.x, x_3217.y)) + vec2<f32>(x_3220.x, x_3220.w));
            let x_3223 : vec4<f32> = u_xlat16;
            let x_3224 : vec3<f32> = vec3<f32>(x_3223.x, x_3223.z, x_3223.w);
            let x_3225 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3224.x, x_3225.y, x_3224.y, x_3224.z);
            let x_3227 : vec4<f32> = u_xlat11;
            let x_3230 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_3233 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3227.x, x_3227.y, x_3227.x, x_3227.y) * vec4<f32>(x_3230.x, x_3230.y, x_3230.x, x_3230.y)) + vec4<f32>(x_3233.x, x_3233.y, x_3233.z, x_3233.y));
            let x_3237 : vec4<f32> = u_xlat11;
            let x_3240 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_3243 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3237.x, x_3237.y) * vec2<f32>(x_3240.x, x_3240.y)) + vec2<f32>(x_3243.w, x_3243.y));
            let x_3247 : f32 = u_xlat13.x;
            u_xlat14.x = x_3247;
            let x_3249 : vec4<f32> = u_xlat11;
            let x_3252 : vec4<f32> = x_271.x_AdditionalShadowmapSize;
            let x_3255 : vec4<f32> = u_xlat14;
            let x_3257 : vec2<f32> = ((vec2<f32>(x_3249.x, x_3249.y) * vec2<f32>(x_3252.x, x_3252.y)) + vec2<f32>(x_3255.x, x_3255.y));
            let x_3258 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3257.x, x_3257.y, x_3258.z, x_3258.w);
            let x_3261 : vec4<f32> = u_xlat12;
            let x_3263 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3261.x, x_3261.x, x_3261.x, x_3261.x) * x_3263);
            let x_3266 : vec4<f32> = u_xlat12;
            let x_3268 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3266.y, x_3266.y, x_3266.y, x_3266.y) * x_3268);
            let x_3271 : vec4<f32> = u_xlat12;
            let x_3273 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3271.z, x_3271.z, x_3271.z, x_3271.z) * x_3273);
            let x_3275 : vec4<f32> = u_xlat12;
            let x_3277 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3275.w, x_3275.w, x_3275.w, x_3275.w) * x_3277);
            let x_3280 : vec4<f32> = u_xlat17;
            let x_3281 : vec2<f32> = vec2<f32>(x_3280.x, x_3280.y);
            let x_3283 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3281.x, x_3281.y, x_3283);
            let x_3290 : vec3<f32> = txVec43;
            let x_3292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3290.xy, x_3290.z);
            u_xlat84 = x_3292;
            let x_3294 : vec4<f32> = u_xlat17;
            let x_3295 : vec2<f32> = vec2<f32>(x_3294.z, x_3294.w);
            let x_3297 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3295.x, x_3295.y, x_3297);
            let x_3304 : vec3<f32> = txVec44;
            let x_3306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3304.xy, x_3304.z);
            u_xlat85 = x_3306;
            let x_3307 : f32 = u_xlat85;
            let x_3309 : f32 = u_xlat22.y;
            u_xlat85 = (x_3307 * x_3309);
            let x_3312 : f32 = u_xlat22.x;
            let x_3313 : f32 = u_xlat84;
            let x_3315 : f32 = u_xlat85;
            u_xlat84 = ((x_3312 * x_3313) + x_3315);
            let x_3318 : vec2<f32> = u_xlat61;
            let x_3320 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3318.x, x_3318.y, x_3320);
            let x_3327 : vec3<f32> = txVec45;
            let x_3329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3327.xy, x_3327.z);
            u_xlat85 = x_3329;
            let x_3331 : f32 = u_xlat22.z;
            let x_3332 : f32 = u_xlat85;
            let x_3334 : f32 = u_xlat84;
            u_xlat84 = ((x_3331 * x_3332) + x_3334);
            let x_3337 : vec4<f32> = u_xlat20;
            let x_3338 : vec2<f32> = vec2<f32>(x_3337.x, x_3337.y);
            let x_3340 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3338.x, x_3338.y, x_3340);
            let x_3347 : vec3<f32> = txVec46;
            let x_3349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3347.xy, x_3347.z);
            u_xlat85 = x_3349;
            let x_3351 : f32 = u_xlat22.w;
            let x_3352 : f32 = u_xlat85;
            let x_3354 : f32 = u_xlat84;
            u_xlat84 = ((x_3351 * x_3352) + x_3354);
            let x_3357 : vec4<f32> = u_xlat18;
            let x_3358 : vec2<f32> = vec2<f32>(x_3357.x, x_3357.y);
            let x_3360 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3358.x, x_3358.y, x_3360);
            let x_3367 : vec3<f32> = txVec47;
            let x_3369 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3367.xy, x_3367.z);
            u_xlat85 = x_3369;
            let x_3371 : f32 = u_xlat23.x;
            let x_3372 : f32 = u_xlat85;
            let x_3374 : f32 = u_xlat84;
            u_xlat84 = ((x_3371 * x_3372) + x_3374);
            let x_3377 : vec4<f32> = u_xlat18;
            let x_3378 : vec2<f32> = vec2<f32>(x_3377.z, x_3377.w);
            let x_3380 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3378.x, x_3378.y, x_3380);
            let x_3387 : vec3<f32> = txVec48;
            let x_3389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3387.xy, x_3387.z);
            u_xlat85 = x_3389;
            let x_3391 : f32 = u_xlat23.y;
            let x_3392 : f32 = u_xlat85;
            let x_3394 : f32 = u_xlat84;
            u_xlat84 = ((x_3391 * x_3392) + x_3394);
            let x_3397 : vec4<f32> = u_xlat19;
            let x_3398 : vec2<f32> = vec2<f32>(x_3397.x, x_3397.y);
            let x_3400 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3398.x, x_3398.y, x_3400);
            let x_3407 : vec3<f32> = txVec49;
            let x_3409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3407.xy, x_3407.z);
            u_xlat85 = x_3409;
            let x_3411 : f32 = u_xlat23.z;
            let x_3412 : f32 = u_xlat85;
            let x_3414 : f32 = u_xlat84;
            u_xlat84 = ((x_3411 * x_3412) + x_3414);
            let x_3417 : vec4<f32> = u_xlat20;
            let x_3418 : vec2<f32> = vec2<f32>(x_3417.z, x_3417.w);
            let x_3420 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3418.x, x_3418.y, x_3420);
            let x_3427 : vec3<f32> = txVec50;
            let x_3429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3427.xy, x_3427.z);
            u_xlat85 = x_3429;
            let x_3431 : f32 = u_xlat23.w;
            let x_3432 : f32 = u_xlat85;
            let x_3434 : f32 = u_xlat84;
            u_xlat84 = ((x_3431 * x_3432) + x_3434);
            let x_3437 : vec4<f32> = u_xlat21;
            let x_3438 : vec2<f32> = vec2<f32>(x_3437.x, x_3437.y);
            let x_3440 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3438.x, x_3438.y, x_3440);
            let x_3447 : vec3<f32> = txVec51;
            let x_3449 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3447.xy, x_3447.z);
            u_xlat85 = x_3449;
            let x_3451 : f32 = u_xlat24.x;
            let x_3452 : f32 = u_xlat85;
            let x_3454 : f32 = u_xlat84;
            u_xlat84 = ((x_3451 * x_3452) + x_3454);
            let x_3457 : vec4<f32> = u_xlat21;
            let x_3458 : vec2<f32> = vec2<f32>(x_3457.z, x_3457.w);
            let x_3460 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3458.x, x_3458.y, x_3460);
            let x_3467 : vec3<f32> = txVec52;
            let x_3469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3467.xy, x_3467.z);
            u_xlat85 = x_3469;
            let x_3471 : f32 = u_xlat24.y;
            let x_3472 : f32 = u_xlat85;
            let x_3474 : f32 = u_xlat84;
            u_xlat84 = ((x_3471 * x_3472) + x_3474);
            let x_3477 : vec2<f32> = u_xlat38;
            let x_3479 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3477.x, x_3477.y, x_3479);
            let x_3486 : vec3<f32> = txVec53;
            let x_3488 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3486.xy, x_3486.z);
            u_xlat85 = x_3488;
            let x_3490 : f32 = u_xlat24.z;
            let x_3491 : f32 = u_xlat85;
            let x_3493 : f32 = u_xlat84;
            u_xlat84 = ((x_3490 * x_3491) + x_3493);
            let x_3496 : vec2<f32> = u_xlat69;
            let x_3498 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3496.x, x_3496.y, x_3498);
            let x_3505 : vec3<f32> = txVec54;
            let x_3507 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3505.xy, x_3505.z);
            u_xlat85 = x_3507;
            let x_3509 : f32 = u_xlat24.w;
            let x_3510 : f32 = u_xlat85;
            let x_3512 : f32 = u_xlat84;
            u_xlat84 = ((x_3509 * x_3510) + x_3512);
            let x_3515 : vec4<f32> = u_xlat16;
            let x_3516 : vec2<f32> = vec2<f32>(x_3515.x, x_3515.y);
            let x_3518 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3516.x, x_3516.y, x_3518);
            let x_3525 : vec3<f32> = txVec55;
            let x_3527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3525.xy, x_3525.z);
            u_xlat85 = x_3527;
            let x_3529 : f32 = u_xlat12.x;
            let x_3530 : f32 = u_xlat85;
            let x_3532 : f32 = u_xlat84;
            u_xlat84 = ((x_3529 * x_3530) + x_3532);
            let x_3535 : vec4<f32> = u_xlat16;
            let x_3536 : vec2<f32> = vec2<f32>(x_3535.z, x_3535.w);
            let x_3538 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3536.x, x_3536.y, x_3538);
            let x_3545 : vec3<f32> = txVec56;
            let x_3547 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3545.xy, x_3545.z);
            u_xlat85 = x_3547;
            let x_3549 : f32 = u_xlat12.y;
            let x_3550 : f32 = u_xlat85;
            let x_3552 : f32 = u_xlat84;
            u_xlat84 = ((x_3549 * x_3550) + x_3552);
            let x_3555 : vec2<f32> = u_xlat64;
            let x_3557 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3555.x, x_3555.y, x_3557);
            let x_3564 : vec3<f32> = txVec57;
            let x_3566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3564.xy, x_3564.z);
            u_xlat85 = x_3566;
            let x_3568 : f32 = u_xlat12.z;
            let x_3569 : f32 = u_xlat85;
            let x_3571 : f32 = u_xlat84;
            u_xlat84 = ((x_3568 * x_3569) + x_3571);
            let x_3574 : vec4<f32> = u_xlat11;
            let x_3575 : vec2<f32> = vec2<f32>(x_3574.x, x_3574.y);
            let x_3577 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3575.x, x_3575.y, x_3577);
            let x_3584 : vec3<f32> = txVec58;
            let x_3586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3584.xy, x_3584.z);
            u_xlat85 = x_3586;
            let x_3588 : f32 = u_xlat12.w;
            let x_3589 : f32 = u_xlat85;
            let x_3591 : f32 = u_xlat84;
            u_xlat82 = ((x_3588 * x_3589) + x_3591);
          }
        }
      } else {
        let x_3595 : vec4<f32> = u_xlat10;
        let x_3596 : vec2<f32> = vec2<f32>(x_3595.x, x_3595.y);
        let x_3598 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3596.x, x_3596.y, x_3598);
        let x_3605 : vec3<f32> = txVec59;
        let x_3607 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3605.xy, x_3605.z);
        u_xlat82 = x_3607;
      }
      let x_3608 : i32 = u_xlati29;
      let x_3610 : f32 = x_271.x_AdditionalShadowParams[x_3608].x;
      u_xlat84 = (1.0f + -(x_3610));
      let x_3613 : f32 = u_xlat82;
      let x_3614 : i32 = u_xlati29;
      let x_3616 : f32 = x_271.x_AdditionalShadowParams[x_3614].x;
      let x_3618 : f32 = u_xlat84;
      u_xlat82 = ((x_3613 * x_3616) + x_3618);
      let x_3621 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3621);
      let x_3624 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3624 >= 1.0f);
      let x_3627 : bool = u_xlatb84;
      let x_3629 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3627 | x_3629);
      let x_3631 : bool = u_xlatb84;
      let x_3632 : f32 = u_xlat82;
      u_xlat82 = select(x_3632, 1.0f, x_3631);
    } else {
      u_xlat82 = 1.0f;
    }
    let x_3635 : f32 = u_xlat82;
    u_xlat84 = (-(x_3635) + 1.0f);
    let x_3639 : f32 = u_xlat1.x;
    let x_3640 : f32 = u_xlat84;
    let x_3642 : f32 = u_xlat82;
    u_xlat82 = ((x_3639 * x_3640) + x_3642);
    let x_3644 : f32 = u_xlat80;
    let x_3645 : f32 = u_xlat82;
    u_xlat80 = (x_3644 * x_3645);
    let x_3647 : vec3<f32> = u_xlat28;
    let x_3648 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(x_3647, vec3<f32>(x_3648.x, x_3648.y, x_3648.z));
    let x_3651 : f32 = u_xlat82;
    u_xlat82 = clamp(x_3651, 0.0f, 1.0f);
    let x_3653 : f32 = u_xlat80;
    let x_3654 : f32 = u_xlat82;
    u_xlat80 = (x_3653 * x_3654);
    let x_3656 : f32 = u_xlat80;
    let x_3658 : i32 = u_xlati29;
    let x_3660 : vec4<f32> = x_2208.x_AdditionalLightsColor[x_3658];
    let x_3662 : vec3<f32> = (vec3<f32>(x_3656, x_3656, x_3656) * vec3<f32>(x_3660.x, x_3660.y, x_3660.z));
    let x_3663 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3662.x, x_3662.y, x_3662.z, x_3663.w);
    let x_3665 : vec3<f32> = u_xlat33;
    let x_3666 : f32 = u_xlat81;
    let x_3669 : vec3<f32> = u_xlat5;
    u_xlat33 = ((x_3665 * vec3<f32>(x_3666, x_3666, x_3666)) + x_3669);
    let x_3671 : vec3<f32> = u_xlat33;
    let x_3672 : vec3<f32> = u_xlat33;
    u_xlat29.x = dot(x_3671, x_3672);
    let x_3676 : f32 = u_xlat29.x;
    u_xlat29.x = max(x_3676, 1.17549435e-38f);
    let x_3680 : f32 = u_xlat29.x;
    u_xlat29.x = inverseSqrt(x_3680);
    let x_3683 : vec3<f32> = u_xlat29;
    let x_3685 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_3683.x, x_3683.x, x_3683.x) * x_3685);
    let x_3687 : vec3<f32> = u_xlat28;
    let x_3688 : vec3<f32> = u_xlat33;
    u_xlat29.x = dot(x_3687, x_3688);
    let x_3692 : f32 = u_xlat29.x;
    u_xlat29.x = clamp(x_3692, 0.0f, 1.0f);
    let x_3695 : vec4<f32> = u_xlat9;
    let x_3697 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_3695.x, x_3695.y, x_3695.z), x_3697);
    let x_3699 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3699, 0.0f, 1.0f);
    let x_3702 : f32 = u_xlat29.x;
    let x_3704 : f32 = u_xlat29.x;
    u_xlat29.x = (x_3702 * x_3704);
    let x_3708 : f32 = u_xlat29.x;
    let x_3710 : f32 = u_xlat8.x;
    u_xlat29.x = ((x_3708 * x_3710) + 1.00001001358032226562f);
    let x_3714 : f32 = u_xlat80;
    let x_3715 : f32 = u_xlat80;
    u_xlat80 = (x_3714 * x_3715);
    let x_3718 : f32 = u_xlat29.x;
    let x_3720 : f32 = u_xlat29.x;
    u_xlat29.x = (x_3718 * x_3720);
    let x_3723 : f32 = u_xlat80;
    u_xlat80 = max(x_3723, 0.10000000149011611938f);
    let x_3726 : f32 = u_xlat29.x;
    let x_3727 : f32 = u_xlat80;
    u_xlat29.x = (x_3726 * x_3727);
    let x_3730 : f32 = u_xlat76;
    let x_3732 : f32 = u_xlat29.x;
    u_xlat29.x = (x_3730 * x_3732);
    let x_3735 : f32 = u_xlat26;
    let x_3737 : f32 = u_xlat29.x;
    u_xlat29.x = (x_3735 / x_3737);
    let x_3740 : vec4<f32> = u_xlat0;
    let x_3742 : vec3<f32> = u_xlat29;
    let x_3745 : vec3<f32> = u_xlat27;
    u_xlat33 = ((vec3<f32>(x_3740.x, x_3740.y, x_3740.z) * vec3<f32>(x_3742.x, x_3742.x, x_3742.x)) + x_3745);
    let x_3747 : vec3<f32> = u_xlat33;
    let x_3748 : vec4<f32> = u_xlat10;
    let x_3751 : vec4<f32> = u_xlat7;
    let x_3753 : vec3<f32> = ((x_3747 * vec3<f32>(x_3748.x, x_3748.y, x_3748.z)) + vec3<f32>(x_3751.x, x_3751.y, x_3751.z));
    let x_3754 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3753.x, x_3753.y, x_3753.z, x_3754.w);

    continuing {
      let x_3756 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3756 + bitcast<u32>(1i));
    }
  }
  let x_3758 : vec4<f32> = u_xlat6;
  let x_3760 : vec3<f32> = u_xlat3;
  let x_3763 : vec4<f32> = u_xlat4;
  let x_3765 : vec3<f32> = ((vec3<f32>(x_3758.x, x_3758.y, x_3758.z) * vec3<f32>(x_3760.x, x_3760.x, x_3760.x)) + vec3<f32>(x_3763.x, x_3763.z, x_3763.w));
  let x_3766 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3765.x, x_3765.y, x_3765.z, x_3766.w);
  let x_3770 : vec4<f32> = u_xlat7;
  let x_3772 : vec4<f32> = u_xlat0;
  let x_3774 : vec3<f32> = (vec3<f32>(x_3770.x, x_3770.y, x_3770.z) + vec3<f32>(x_3772.x, x_3772.y, x_3772.z));
  let x_3775 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3774.x, x_3774.y, x_3774.z, x_3775.w);
  let x_3779 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_3779 == 1.0f);
  let x_3781 : bool = u_xlatb0;
  if (x_3781) {
    let x_3786 : f32 = u_xlat2.x;
    x_3782 = x_3786;
  } else {
    x_3782 = 1.0f;
  }
  let x_3788 : f32 = x_3782;
  SV_Target0.w = x_3788;
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


