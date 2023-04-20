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

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat75 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlatb28 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_270 : UnityPerDraw;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb79 : bool;

@group(1) @binding(4) var<uniform> x_434 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_2068 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlati83 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2208 : f32;
  var x_2218 : f32;
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
  var x_3638 : f32;
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
  let x_262 : vec3<f32> = (vec3<f32>(x_259, x_259, x_259) * x_261);
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  u_xlat4.w = 1.0f;
  let x_273 : vec4<f32> = x_270.unity_SHAr;
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_273, x_274);
  let x_279 : vec4<f32> = x_270.unity_SHAg;
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_279, x_280);
  let x_285 : vec4<f32> = x_270.unity_SHAb;
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_285, x_286);
  let x_290 : vec4<f32> = u_xlat4;
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_290.y, x_290.z, x_290.z, x_290.x) * vec4<f32>(x_292.x, x_292.y, x_292.z, x_292.z));
  let x_298 : vec4<f32> = x_270.unity_SHBr;
  let x_299 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_298, x_299);
  let x_304 : vec4<f32> = x_270.unity_SHBg;
  let x_305 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_304, x_305);
  let x_310 : vec4<f32> = x_270.unity_SHBb;
  let x_311 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_310, x_311);
  let x_315 : f32 = u_xlat4.y;
  let x_317 : f32 = u_xlat4.y;
  u_xlat75 = (x_315 * x_317);
  let x_320 : f32 = u_xlat4.x;
  let x_322 : f32 = u_xlat4.x;
  let x_324 : f32 = u_xlat75;
  u_xlat75 = ((x_320 * x_322) + -(x_324));
  let x_329 : vec4<f32> = x_270.unity_SHC;
  let x_331 : f32 = u_xlat75;
  let x_334 : vec4<f32> = u_xlat8;
  u_xlat28 = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331, x_331, x_331)) + vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec3<f32> = u_xlat28;
  let x_338 : vec4<f32> = u_xlat6;
  u_xlat28 = (x_337 + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec3<f32> = u_xlat28;
  u_xlat28 = max(x_341, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_345 : f32 = u_xlat1.x;
  u_xlat75 = ((-(x_345) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_351 : f32 = u_xlat1.y;
  let x_353 : f32 = x_54.x_Smoothness;
  let x_355 : f32 = u_xlat75;
  u_xlat51.x = ((x_351 * x_353) + -(x_355));
  let x_360 : f32 = u_xlat75;
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat27 = (vec3<f32>(x_360, x_360, x_360) * vec3<f32>(x_362.y, x_362.z, x_362.w));
  let x_365 : vec4<f32> = u_xlat0;
  let x_368 : vec4<f32> = x_54.x_BaseColor;
  let x_373 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_368.x, x_368.y, x_368.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_374 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec2<f32> = u_xlat1;
  let x_378 : vec4<f32> = u_xlat0;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.x, x_376.x) * vec3<f32>(x_378.x, x_378.y, x_378.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_387 : f32 = u_xlat1.y;
  let x_390 : f32 = x_54.x_Smoothness;
  u_xlat75 = ((-(x_387) * x_390) + 1.0f);
  let x_393 : f32 = u_xlat75;
  let x_394 : f32 = u_xlat75;
  u_xlat1.x = (x_393 * x_394);
  let x_398 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_398, 0.0078125f);
  let x_404 : f32 = u_xlat1.x;
  let x_406 : f32 = u_xlat1.x;
  u_xlat26 = (x_404 * x_406);
  let x_409 : f32 = u_xlat51.x;
  u_xlat51.x = (x_409 + 1.0f);
  let x_413 : f32 = u_xlat51.x;
  u_xlat51.x = clamp(x_413, 0.0f, 1.0f);
  let x_418 : f32 = u_xlat1.x;
  u_xlat76 = ((x_418 * 4.0f) + 2.0f);
  let x_423 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_423, 1.0f);
  let x_436 : f32 = x_434.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_436);
  let x_438 : bool = u_xlatb79;
  if (x_438) {
    let x_442 : f32 = x_434.x_MainLightShadowParams.y;
    u_xlatb79 = (x_442 == 1.0f);
    let x_444 : bool = u_xlatb79;
    if (x_444) {
      let x_448 : vec4<f32> = vs_TEXCOORD6;
      let x_451 : vec4<f32> = x_434.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_448.x, x_448.y, x_448.x, x_448.y) + x_451);
      let x_455 : vec4<f32> = u_xlat6;
      let x_456 : vec2<f32> = vec2<f32>(x_455.x, x_455.y);
      let x_459 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_456.x, x_456.y, x_459);
      let x_471 : vec3<f32> = txVec0;
      let x_473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_471.xy, x_471.z);
      u_xlat7.x = x_473;
      let x_476 : vec4<f32> = u_xlat6;
      let x_477 : vec2<f32> = vec2<f32>(x_476.z, x_476.w);
      let x_479 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_477.x, x_477.y, x_479);
      let x_486 : vec3<f32> = txVec1;
      let x_488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_486.xy, x_486.z);
      u_xlat7.y = x_488;
      let x_490 : vec4<f32> = vs_TEXCOORD6;
      let x_494 : vec4<f32> = x_434.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_490.x, x_490.y, x_490.x, x_490.y) + x_494);
      let x_497 : vec4<f32> = u_xlat6;
      let x_498 : vec2<f32> = vec2<f32>(x_497.x, x_497.y);
      let x_500 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_498.x, x_498.y, x_500);
      let x_507 : vec3<f32> = txVec2;
      let x_509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_507.xy, x_507.z);
      u_xlat7.z = x_509;
      let x_512 : vec4<f32> = u_xlat6;
      let x_513 : vec2<f32> = vec2<f32>(x_512.z, x_512.w);
      let x_515 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_513.x, x_513.y, x_515);
      let x_522 : vec3<f32> = txVec3;
      let x_524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_522.xy, x_522.z);
      u_xlat7.w = x_524;
      let x_527 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_527, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_534 : f32 = x_434.x_MainLightShadowParams.y;
      u_xlatb80 = (x_534 == 2.0f);
      let x_536 : bool = u_xlatb80;
      if (x_536) {
        let x_539 : vec4<f32> = vs_TEXCOORD6;
        let x_543 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_548 : vec2<f32> = ((vec2<f32>(x_539.x, x_539.y) * vec2<f32>(x_543.z, x_543.w)) + vec2<f32>(0.5f, 0.5f));
        let x_549 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
        let x_551 : vec4<f32> = u_xlat6;
        let x_553 : vec2<f32> = floor(vec2<f32>(x_551.x, x_551.y));
        let x_554 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
        let x_557 : vec4<f32> = vs_TEXCOORD6;
        let x_560 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_563 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_557.x, x_557.y) * vec2<f32>(x_560.z, x_560.w)) + -(vec2<f32>(x_563.x, x_563.y)));
        let x_567 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_567.x, x_567.x, x_567.y, x_567.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_571 : vec4<f32> = u_xlat7;
        let x_573 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_571.x, x_571.x, x_571.z, x_571.z) * vec4<f32>(x_573.x, x_573.x, x_573.z, x_573.z));
        let x_576 : vec4<f32> = u_xlat8;
        let x_580 : vec2<f32> = (vec2<f32>(x_576.y, x_576.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_581 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_580.x, x_581.y, x_580.y, x_581.w);
        let x_583 : vec4<f32> = u_xlat8;
        let x_586 : vec2<f32> = u_xlat56;
        let x_588 : vec2<f32> = ((vec2<f32>(x_583.x, x_583.z) * vec2<f32>(0.5f, 0.5f)) + -(x_586));
        let x_589 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_592 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_592) + vec2<f32>(1.0f, 1.0f));
        let x_597 : vec2<f32> = u_xlat56;
        let x_599 : vec2<f32> = min(x_597, vec2<f32>(0.0f, 0.0f));
        let x_600 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_602 : vec4<f32> = u_xlat9;
        let x_605 : vec4<f32> = u_xlat9;
        let x_608 : vec2<f32> = u_xlat58;
        let x_609 : vec2<f32> = ((-(vec2<f32>(x_602.x, x_602.y)) * vec2<f32>(x_605.x, x_605.y)) + x_608);
        let x_610 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
        let x_612 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_612, vec2<f32>(0.0f, 0.0f));
        let x_614 : vec2<f32> = u_xlat56;
        let x_616 : vec2<f32> = u_xlat56;
        let x_618 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_614) * x_616) + vec2<f32>(x_618.y, x_618.w));
        let x_621 : vec4<f32> = u_xlat9;
        let x_623 : vec2<f32> = (vec2<f32>(x_621.x, x_621.y) + vec2<f32>(1.0f, 1.0f));
        let x_624 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_626 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_626 + vec2<f32>(1.0f, 1.0f));
        let x_629 : vec4<f32> = u_xlat8;
        let x_633 : vec2<f32> = (vec2<f32>(x_629.x, x_629.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_634 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_636 : vec2<f32> = u_xlat58;
        let x_637 : vec2<f32> = (x_636 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_638 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_640 : vec4<f32> = u_xlat9;
        let x_642 : vec2<f32> = (vec2<f32>(x_640.x, x_640.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_643 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
        let x_646 : vec2<f32> = u_xlat56;
        let x_647 : vec2<f32> = (x_646 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_648 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
        let x_650 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_650.y, x_650.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_654 : f32 = u_xlat9.x;
        u_xlat10.z = x_654;
        let x_657 : f32 = u_xlat56.x;
        u_xlat10.w = x_657;
        let x_660 : f32 = u_xlat11.x;
        u_xlat8.z = x_660;
        let x_663 : f32 = u_xlat7.x;
        u_xlat8.w = x_663;
        let x_666 : vec4<f32> = u_xlat8;
        let x_668 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_666.z, x_666.w, x_666.x, x_666.z) + vec4<f32>(x_668.z, x_668.w, x_668.x, x_668.z));
        let x_672 : f32 = u_xlat10.y;
        u_xlat9.z = x_672;
        let x_675 : f32 = u_xlat56.y;
        u_xlat9.w = x_675;
        let x_678 : f32 = u_xlat8.y;
        u_xlat11.z = x_678;
        let x_681 : f32 = u_xlat7.z;
        u_xlat11.w = x_681;
        let x_683 : vec4<f32> = u_xlat9;
        let x_685 : vec4<f32> = u_xlat11;
        let x_687 : vec3<f32> = (vec3<f32>(x_683.z, x_683.y, x_683.w) + vec3<f32>(x_685.z, x_685.y, x_685.w));
        let x_688 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
        let x_690 : vec4<f32> = u_xlat8;
        let x_692 : vec4<f32> = u_xlat12;
        let x_694 : vec3<f32> = (vec3<f32>(x_690.x, x_690.z, x_690.w) / vec3<f32>(x_692.z, x_692.w, x_692.y));
        let x_695 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
        let x_697 : vec4<f32> = u_xlat8;
        let x_703 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_704 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
        let x_706 : vec4<f32> = u_xlat11;
        let x_708 : vec4<f32> = u_xlat7;
        let x_710 : vec3<f32> = (vec3<f32>(x_706.z, x_706.y, x_706.w) / vec3<f32>(x_708.x, x_708.y, x_708.z));
        let x_711 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
        let x_713 : vec4<f32> = u_xlat9;
        let x_715 : vec3<f32> = (vec3<f32>(x_713.x, x_713.y, x_713.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_716 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat8;
        let x_721 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_723 : vec3<f32> = (vec3<f32>(x_718.y, x_718.x, x_718.z) * vec3<f32>(x_721.x, x_721.x, x_721.x));
        let x_724 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat9;
        let x_729 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_731 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(x_729.y, x_729.y, x_729.y));
        let x_732 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
        let x_735 : f32 = u_xlat9.x;
        u_xlat8.w = x_735;
        let x_737 : vec4<f32> = u_xlat6;
        let x_740 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_743 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_737.x, x_737.y, x_737.x, x_737.y) * vec4<f32>(x_740.x, x_740.y, x_740.x, x_740.y)) + vec4<f32>(x_743.y, x_743.w, x_743.x, x_743.w));
        let x_746 : vec4<f32> = u_xlat6;
        let x_749 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_752 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_746.x, x_746.y) * vec2<f32>(x_749.x, x_749.y)) + vec2<f32>(x_752.z, x_752.w));
        let x_756 : f32 = u_xlat8.y;
        u_xlat9.w = x_756;
        let x_758 : vec4<f32> = u_xlat9;
        let x_759 : vec2<f32> = vec2<f32>(x_758.y, x_758.z);
        let x_760 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_760.x, x_759.x, x_760.z, x_759.y);
        let x_762 : vec4<f32> = u_xlat6;
        let x_765 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_768 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_762.x, x_762.y, x_762.x, x_762.y) * vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y)) + vec4<f32>(x_768.x, x_768.y, x_768.z, x_768.y));
        let x_771 : vec4<f32> = u_xlat6;
        let x_774 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_777 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_771.x, x_771.y, x_771.x, x_771.y) * vec4<f32>(x_774.x, x_774.y, x_774.x, x_774.y)) + vec4<f32>(x_777.w, x_777.y, x_777.w, x_777.z));
        let x_780 : vec4<f32> = u_xlat6;
        let x_783 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_786 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_780.x, x_780.y, x_780.x, x_780.y) * vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y)) + vec4<f32>(x_786.x, x_786.w, x_786.z, x_786.w));
        let x_790 : vec4<f32> = u_xlat7;
        let x_792 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_790.x, x_790.x, x_790.x, x_790.y) * vec4<f32>(x_792.z, x_792.w, x_792.y, x_792.z));
        let x_796 : vec4<f32> = u_xlat7;
        let x_798 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_796.y, x_796.y, x_796.z, x_796.z) * x_798);
        let x_802 : f32 = u_xlat7.z;
        let x_804 : f32 = u_xlat12.y;
        u_xlat80 = (x_802 * x_804);
        let x_807 : vec4<f32> = u_xlat10;
        let x_808 : vec2<f32> = vec2<f32>(x_807.x, x_807.y);
        let x_810 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_808.x, x_808.y, x_810);
        let x_817 : vec3<f32> = txVec4;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_817.xy, x_817.z);
        u_xlat6.x = x_819;
        let x_822 : vec4<f32> = u_xlat10;
        let x_823 : vec2<f32> = vec2<f32>(x_822.z, x_822.w);
        let x_825 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_823.x, x_823.y, x_825);
        let x_833 : vec3<f32> = txVec5;
        let x_835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_833.xy, x_833.z);
        u_xlat31 = x_835;
        let x_836 : f32 = u_xlat31;
        let x_838 : f32 = u_xlat13.y;
        u_xlat31 = (x_836 * x_838);
        let x_841 : f32 = u_xlat13.x;
        let x_843 : f32 = u_xlat6.x;
        let x_845 : f32 = u_xlat31;
        u_xlat6.x = ((x_841 * x_843) + x_845);
        let x_849 : vec2<f32> = u_xlat56;
        let x_851 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_858 : vec3<f32> = txVec6;
        let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_858.xy, x_858.z);
        u_xlat31 = x_860;
        let x_862 : f32 = u_xlat13.z;
        let x_863 : f32 = u_xlat31;
        let x_866 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_862 * x_863) + x_866);
        let x_870 : vec4<f32> = u_xlat9;
        let x_871 : vec2<f32> = vec2<f32>(x_870.x, x_870.y);
        let x_873 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_871.x, x_871.y, x_873);
        let x_880 : vec3<f32> = txVec7;
        let x_882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_880.xy, x_880.z);
        u_xlat31 = x_882;
        let x_884 : f32 = u_xlat13.w;
        let x_885 : f32 = u_xlat31;
        let x_888 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_884 * x_885) + x_888);
        let x_892 : vec4<f32> = u_xlat11;
        let x_893 : vec2<f32> = vec2<f32>(x_892.x, x_892.y);
        let x_895 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_893.x, x_893.y, x_895);
        let x_902 : vec3<f32> = txVec8;
        let x_904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_902.xy, x_902.z);
        u_xlat31 = x_904;
        let x_906 : f32 = u_xlat14.x;
        let x_907 : f32 = u_xlat31;
        let x_910 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_906 * x_907) + x_910);
        let x_914 : vec4<f32> = u_xlat11;
        let x_915 : vec2<f32> = vec2<f32>(x_914.z, x_914.w);
        let x_917 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_915.x, x_915.y, x_917);
        let x_924 : vec3<f32> = txVec9;
        let x_926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_924.xy, x_924.z);
        u_xlat31 = x_926;
        let x_928 : f32 = u_xlat14.y;
        let x_929 : f32 = u_xlat31;
        let x_932 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_928 * x_929) + x_932);
        let x_936 : vec4<f32> = u_xlat9;
        let x_937 : vec2<f32> = vec2<f32>(x_936.z, x_936.w);
        let x_939 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_937.x, x_937.y, x_939);
        let x_946 : vec3<f32> = txVec10;
        let x_948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_946.xy, x_946.z);
        u_xlat31 = x_948;
        let x_950 : f32 = u_xlat14.z;
        let x_951 : f32 = u_xlat31;
        let x_954 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_950 * x_951) + x_954);
        let x_958 : vec4<f32> = u_xlat8;
        let x_959 : vec2<f32> = vec2<f32>(x_958.x, x_958.y);
        let x_961 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_959.x, x_959.y, x_961);
        let x_968 : vec3<f32> = txVec11;
        let x_970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_968.xy, x_968.z);
        u_xlat31 = x_970;
        let x_972 : f32 = u_xlat14.w;
        let x_973 : f32 = u_xlat31;
        let x_976 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_972 * x_973) + x_976);
        let x_980 : vec4<f32> = u_xlat8;
        let x_981 : vec2<f32> = vec2<f32>(x_980.z, x_980.w);
        let x_983 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_981.x, x_981.y, x_983);
        let x_990 : vec3<f32> = txVec12;
        let x_992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_990.xy, x_990.z);
        u_xlat31 = x_992;
        let x_993 : f32 = u_xlat80;
        let x_994 : f32 = u_xlat31;
        let x_997 : f32 = u_xlat6.x;
        u_xlat79 = ((x_993 * x_994) + x_997);
      } else {
        let x_1000 : vec4<f32> = vs_TEXCOORD6;
        let x_1003 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.z, x_1003.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1007 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat6;
        let x_1011 : vec2<f32> = floor(vec2<f32>(x_1009.x, x_1009.y));
        let x_1012 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec4<f32> = vs_TEXCOORD6;
        let x_1017 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1020 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1014.x, x_1014.y) * vec2<f32>(x_1017.z, x_1017.w)) + -(vec2<f32>(x_1020.x, x_1020.y)));
        let x_1024 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1024.x, x_1024.x, x_1024.y, x_1024.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1027 : vec4<f32> = u_xlat7;
        let x_1029 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1027.x, x_1027.x, x_1027.z, x_1027.z) * vec4<f32>(x_1029.x, x_1029.x, x_1029.z, x_1029.z));
        let x_1032 : vec4<f32> = u_xlat8;
        let x_1036 : vec2<f32> = (vec2<f32>(x_1032.y, x_1032.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1037 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1037.x, x_1036.x, x_1037.z, x_1036.y);
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1042 : vec2<f32> = u_xlat56;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1042));
        let x_1045 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1044.x, x_1045.y, x_1044.y, x_1045.w);
        let x_1047 : vec2<f32> = u_xlat56;
        let x_1049 : vec2<f32> = (-(x_1047) + vec2<f32>(1.0f, 1.0f));
        let x_1050 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1052, vec2<f32>(0.0f, 0.0f));
        let x_1054 : vec2<f32> = u_xlat58;
        let x_1056 : vec2<f32> = u_xlat58;
        let x_1058 : vec4<f32> = u_xlat8;
        let x_1060 : vec2<f32> = ((-(x_1054) * x_1056) + vec2<f32>(x_1058.x, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1063, vec2<f32>(0.0f, 0.0f));
        let x_1066 : vec2<f32> = u_xlat58;
        let x_1068 : vec2<f32> = u_xlat58;
        let x_1070 : vec4<f32> = u_xlat7;
        let x_1072 : vec2<f32> = ((-(x_1066) * x_1068) + vec2<f32>(x_1070.y, x_1070.w));
        let x_1073 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1072.x, x_1073.y, x_1072.y);
        let x_1075 : vec4<f32> = u_xlat8;
        let x_1077 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.y) + vec2<f32>(2.0f, 2.0f));
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        let x_1080 : vec3<f32> = u_xlat32;
        let x_1082 : vec2<f32> = (vec2<f32>(x_1080.x, x_1080.z) + vec2<f32>(2.0f, 2.0f));
        let x_1083 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1083.x, x_1082.x, x_1083.z, x_1082.y);
        let x_1086 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1086 * 0.08163200318813323975f);
        let x_1090 : vec4<f32> = u_xlat7;
        let x_1093 : vec3<f32> = (vec3<f32>(x_1090.z, x_1090.x, x_1090.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1094 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
        let x_1096 : vec4<f32> = u_xlat8;
        let x_1099 : vec2<f32> = (vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1100 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1099.x, x_1099.y, x_1100.z, x_1100.w);
        let x_1103 : f32 = u_xlat11.y;
        u_xlat10.x = x_1103;
        let x_1105 : vec2<f32> = u_xlat56;
        let x_1112 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1113 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1113.x, x_1112.x, x_1113.z, x_1112.y);
        let x_1115 : vec2<f32> = u_xlat56;
        let x_1119 : vec2<f32> = ((vec2<f32>(x_1115.x, x_1115.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1120 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1119.x, x_1120.y, x_1119.y, x_1120.w);
        let x_1123 : f32 = u_xlat7.x;
        u_xlat8.y = x_1123;
        let x_1126 : f32 = u_xlat9.y;
        u_xlat8.w = x_1126;
        let x_1128 : vec4<f32> = u_xlat8;
        let x_1129 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1128 + x_1129);
        let x_1131 : vec2<f32> = u_xlat56;
        let x_1134 : vec2<f32> = ((vec2<f32>(x_1131.y, x_1131.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1135 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1135.x, x_1134.x, x_1135.z, x_1134.y);
        let x_1137 : vec2<f32> = u_xlat56;
        let x_1140 : vec2<f32> = ((vec2<f32>(x_1137.y, x_1137.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1140.x, x_1141.y, x_1140.y, x_1141.w);
        let x_1144 : f32 = u_xlat7.y;
        u_xlat9.y = x_1144;
        let x_1146 : vec4<f32> = u_xlat9;
        let x_1147 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1146 + x_1147);
        let x_1149 : vec4<f32> = u_xlat8;
        let x_1150 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1149 / x_1150);
        let x_1152 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1152 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1158 / x_1159);
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1161 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1163 : vec4<f32> = u_xlat8;
        let x_1166 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1163.w, x_1163.x, x_1163.y, x_1163.z) * vec4<f32>(x_1166.x, x_1166.x, x_1166.x, x_1166.x));
        let x_1169 : vec4<f32> = u_xlat9;
        let x_1172 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1169.x, x_1169.w, x_1169.y, x_1169.z) * vec4<f32>(x_1172.y, x_1172.y, x_1172.y, x_1172.y));
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1176 : vec3<f32> = vec3<f32>(x_1175.y, x_1175.z, x_1175.w);
        let x_1177 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1176.x, x_1177.y, x_1176.y, x_1176.z);
        let x_1180 : f32 = u_xlat9.x;
        u_xlat11.y = x_1180;
        let x_1182 : vec4<f32> = u_xlat6;
        let x_1185 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y) * vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y)) + vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1188.y));
        let x_1191 : vec4<f32> = u_xlat6;
        let x_1194 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1194.x, x_1194.y)) + vec2<f32>(x_1197.w, x_1197.y));
        let x_1201 : f32 = u_xlat11.y;
        u_xlat8.y = x_1201;
        let x_1204 : f32 = u_xlat9.z;
        u_xlat11.y = x_1204;
        let x_1206 : vec4<f32> = u_xlat6;
        let x_1209 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1212 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y) * vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.y)) + vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1212.y));
        let x_1215 : vec4<f32> = u_xlat6;
        let x_1218 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat11;
        let x_1223 : vec2<f32> = ((vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(x_1218.x, x_1218.y)) + vec2<f32>(x_1221.w, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
        let x_1227 : f32 = u_xlat11.y;
        u_xlat8.z = x_1227;
        let x_1230 : vec4<f32> = u_xlat6;
        let x_1233 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y) * vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y)) + vec4<f32>(x_1236.x, x_1236.y, x_1236.x, x_1236.z));
        let x_1240 : f32 = u_xlat9.w;
        u_xlat11.y = x_1240;
        let x_1243 : vec4<f32> = u_xlat6;
        let x_1246 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1249.y));
        let x_1253 : vec4<f32> = u_xlat6;
        let x_1256 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.w, x_1259.y));
        let x_1263 : f32 = u_xlat11.y;
        u_xlat8.w = x_1263;
        let x_1266 : vec4<f32> = u_xlat6;
        let x_1269 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.x, x_1272.w));
        let x_1275 : vec4<f32> = u_xlat11;
        let x_1276 : vec3<f32> = vec3<f32>(x_1275.x, x_1275.z, x_1275.w);
        let x_1277 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1276.x, x_1277.y, x_1276.y, x_1276.z);
        let x_1279 : vec4<f32> = u_xlat6;
        let x_1282 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y) * vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y)) + vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1285.y));
        let x_1289 : vec4<f32> = u_xlat6;
        let x_1292 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1289.x, x_1289.y) * vec2<f32>(x_1292.x, x_1292.y)) + vec2<f32>(x_1295.w, x_1295.y));
        let x_1299 : f32 = u_xlat8.x;
        u_xlat9.x = x_1299;
        let x_1301 : vec4<f32> = u_xlat6;
        let x_1304 : vec4<f32> = x_434.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat9;
        let x_1309 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.x, x_1307.y));
        let x_1310 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
        let x_1313 : vec4<f32> = u_xlat7;
        let x_1315 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1313.x, x_1313.x, x_1313.x, x_1313.x) * x_1315);
        let x_1318 : vec4<f32> = u_xlat7;
        let x_1320 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1318.y, x_1318.y, x_1318.y, x_1318.y) * x_1320);
        let x_1323 : vec4<f32> = u_xlat7;
        let x_1325 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1323.z, x_1323.z, x_1323.z, x_1323.z) * x_1325);
        let x_1327 : vec4<f32> = u_xlat7;
        let x_1329 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1327.w, x_1327.w, x_1327.w, x_1327.w) * x_1329);
        let x_1332 : vec4<f32> = u_xlat12;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.x, x_1332.y);
        let x_1335 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec13;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1342.xy, x_1342.z);
        u_xlat80 = x_1344;
        let x_1346 : vec4<f32> = u_xlat12;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.z, x_1346.w);
        let x_1349 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec14;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1356.xy, x_1356.z);
        u_xlat8.x = x_1358;
        let x_1361 : f32 = u_xlat8.x;
        let x_1363 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1361 * x_1363);
        let x_1367 : f32 = u_xlat17.x;
        let x_1368 : f32 = u_xlat80;
        let x_1371 : f32 = u_xlat8.x;
        u_xlat80 = ((x_1367 * x_1368) + x_1371);
        let x_1374 : vec2<f32> = u_xlat56;
        let x_1376 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec15;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat56.x = x_1385;
        let x_1388 : f32 = u_xlat17.z;
        let x_1390 : f32 = u_xlat56.x;
        let x_1392 : f32 = u_xlat80;
        u_xlat80 = ((x_1388 * x_1390) + x_1392);
        let x_1395 : vec4<f32> = u_xlat15;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.x, x_1395.y);
        let x_1398 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec16;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
        u_xlat56.x = x_1407;
        let x_1410 : f32 = u_xlat17.w;
        let x_1412 : f32 = u_xlat56.x;
        let x_1414 : f32 = u_xlat80;
        u_xlat80 = ((x_1410 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat13;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec17;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat56.x = x_1429;
        let x_1432 : f32 = u_xlat18.x;
        let x_1434 : f32 = u_xlat56.x;
        let x_1436 : f32 = u_xlat80;
        u_xlat80 = ((x_1432 * x_1434) + x_1436);
        let x_1439 : vec4<f32> = u_xlat13;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.z, x_1439.w);
        let x_1442 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec18;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat56.x = x_1451;
        let x_1454 : f32 = u_xlat18.y;
        let x_1456 : f32 = u_xlat56.x;
        let x_1458 : f32 = u_xlat80;
        u_xlat80 = ((x_1454 * x_1456) + x_1458);
        let x_1461 : vec4<f32> = u_xlat14;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
        let x_1464 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec19;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat56.x = x_1473;
        let x_1476 : f32 = u_xlat18.z;
        let x_1478 : f32 = u_xlat56.x;
        let x_1480 : f32 = u_xlat80;
        u_xlat80 = ((x_1476 * x_1478) + x_1480);
        let x_1483 : vec4<f32> = u_xlat15;
        let x_1484 : vec2<f32> = vec2<f32>(x_1483.z, x_1483.w);
        let x_1486 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec20;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat56.x = x_1495;
        let x_1498 : f32 = u_xlat18.w;
        let x_1500 : f32 = u_xlat56.x;
        let x_1502 : f32 = u_xlat80;
        u_xlat80 = ((x_1498 * x_1500) + x_1502);
        let x_1505 : vec4<f32> = u_xlat16;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
        let x_1508 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec21;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat56.x = x_1517;
        let x_1520 : f32 = u_xlat19.x;
        let x_1522 : f32 = u_xlat56.x;
        let x_1524 : f32 = u_xlat80;
        u_xlat80 = ((x_1520 * x_1522) + x_1524);
        let x_1527 : vec4<f32> = u_xlat16;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.z, x_1527.w);
        let x_1530 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec22;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat56.x = x_1539;
        let x_1542 : f32 = u_xlat19.y;
        let x_1544 : f32 = u_xlat56.x;
        let x_1546 : f32 = u_xlat80;
        u_xlat80 = ((x_1542 * x_1544) + x_1546);
        let x_1549 : vec2<f32> = u_xlat33;
        let x_1551 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec23;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat56.x = x_1560;
        let x_1563 : f32 = u_xlat19.z;
        let x_1565 : f32 = u_xlat56.x;
        let x_1567 : f32 = u_xlat80;
        u_xlat80 = ((x_1563 * x_1565) + x_1567);
        let x_1570 : vec2<f32> = u_xlat64;
        let x_1572 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec24;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1579.xy, x_1579.z);
        u_xlat56.x = x_1581;
        let x_1584 : f32 = u_xlat19.w;
        let x_1586 : f32 = u_xlat56.x;
        let x_1588 : f32 = u_xlat80;
        u_xlat80 = ((x_1584 * x_1586) + x_1588);
        let x_1591 : vec4<f32> = u_xlat11;
        let x_1592 : vec2<f32> = vec2<f32>(x_1591.x, x_1591.y);
        let x_1594 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec25;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1601.xy, x_1601.z);
        u_xlat56.x = x_1603;
        let x_1606 : f32 = u_xlat7.x;
        let x_1608 : f32 = u_xlat56.x;
        let x_1610 : f32 = u_xlat80;
        u_xlat80 = ((x_1606 * x_1608) + x_1610);
        let x_1613 : vec4<f32> = u_xlat11;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.z, x_1613.w);
        let x_1616 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec26;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1623.xy, x_1623.z);
        u_xlat56.x = x_1625;
        let x_1628 : f32 = u_xlat7.y;
        let x_1630 : f32 = u_xlat56.x;
        let x_1632 : f32 = u_xlat80;
        u_xlat80 = ((x_1628 * x_1630) + x_1632);
        let x_1635 : vec2<f32> = u_xlat59;
        let x_1637 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec27;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat56.x = x_1646;
        let x_1649 : f32 = u_xlat7.z;
        let x_1651 : f32 = u_xlat56.x;
        let x_1653 : f32 = u_xlat80;
        u_xlat80 = ((x_1649 * x_1651) + x_1653);
        let x_1656 : vec4<f32> = u_xlat6;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.x, x_1656.y);
        let x_1659 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec28;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
        u_xlat6.x = x_1668;
        let x_1671 : f32 = u_xlat7.w;
        let x_1673 : f32 = u_xlat6.x;
        let x_1675 : f32 = u_xlat80;
        u_xlat79 = ((x_1671 * x_1673) + x_1675);
      }
    }
  } else {
    let x_1679 : vec4<f32> = vs_TEXCOORD6;
    let x_1680 : vec2<f32> = vec2<f32>(x_1679.x, x_1679.y);
    let x_1682 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
    let x_1689 : vec3<f32> = txVec29;
    let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1689.xy, x_1689.z);
    u_xlat79 = x_1691;
  }
  let x_1693 : f32 = x_434.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1693) + 1.0f);
  let x_1696 : f32 = u_xlat79;
  let x_1698 : f32 = x_434.x_MainLightShadowParams.x;
  let x_1700 : f32 = u_xlat80;
  u_xlat79 = ((x_1696 * x_1698) + x_1700);
  let x_1703 : f32 = vs_TEXCOORD6.z;
  u_xlatb80 = (0.0f >= x_1703);
  let x_1707 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_1707 >= 1.0f);
  let x_1709 : bool = u_xlatb80;
  let x_1710 : bool = u_xlatb6;
  u_xlatb80 = (x_1709 | x_1710);
  let x_1712 : bool = u_xlatb80;
  let x_1713 : f32 = u_xlat79;
  u_xlat79 = select(x_1713, 1.0f, x_1712);
  let x_1715 : vec3<f32> = vs_TEXCOORD1;
  let x_1717 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1719 : vec3<f32> = (x_1715 + -(x_1717));
  let x_1720 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
  let x_1722 : vec4<f32> = u_xlat6;
  let x_1724 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_1722.x, x_1722.y, x_1722.z), vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
  let x_1727 : f32 = u_xlat80;
  let x_1729 : f32 = x_434.x_MainLightShadowParams.z;
  let x_1732 : f32 = x_434.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1727 * x_1729) + x_1732);
  let x_1736 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1736, 0.0f, 1.0f);
  let x_1739 : f32 = u_xlat79;
  u_xlat31 = (-(x_1739) + 1.0f);
  let x_1743 : f32 = u_xlat6.x;
  let x_1744 : f32 = u_xlat31;
  let x_1746 : f32 = u_xlat79;
  u_xlat79 = ((x_1743 * x_1744) + x_1746);
  let x_1748 : vec3<f32> = u_xlat5;
  let x_1750 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(-(x_1748), vec3<f32>(x_1750.x, x_1750.y, x_1750.z));
  let x_1755 : f32 = u_xlat6.x;
  let x_1757 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1755 + x_1757);
  let x_1760 : vec4<f32> = u_xlat4;
  let x_1762 : vec4<f32> = u_xlat6;
  let x_1766 : vec3<f32> = u_xlat5;
  let x_1768 : vec3<f32> = ((vec3<f32>(x_1760.x, x_1760.y, x_1760.z) * -(vec3<f32>(x_1762.x, x_1762.x, x_1762.x))) + -(x_1766));
  let x_1769 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
  let x_1772 : vec4<f32> = u_xlat4;
  let x_1774 : vec3<f32> = u_xlat5;
  u_xlat81 = dot(vec3<f32>(x_1772.x, x_1772.y, x_1772.z), x_1774);
  let x_1776 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1776, 0.0f, 1.0f);
  let x_1778 : f32 = u_xlat81;
  u_xlat81 = (-(x_1778) + 1.0f);
  let x_1781 : f32 = u_xlat81;
  let x_1782 : f32 = u_xlat81;
  u_xlat81 = (x_1781 * x_1782);
  let x_1784 : f32 = u_xlat81;
  let x_1785 : f32 = u_xlat81;
  u_xlat81 = (x_1784 * x_1785);
  let x_1787 : f32 = u_xlat75;
  u_xlat7.x = ((-(x_1787) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1794 : f32 = u_xlat75;
  let x_1796 : f32 = u_xlat7.x;
  u_xlat75 = (x_1794 * x_1796);
  let x_1798 : f32 = u_xlat75;
  u_xlat75 = (x_1798 * 6.0f);
  let x_1809 : vec4<f32> = u_xlat6;
  let x_1811 : f32 = u_xlat75;
  let x_1812 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1809.x, x_1809.y, x_1809.z), x_1811);
  u_xlat7 = x_1812;
  let x_1814 : f32 = u_xlat7.w;
  u_xlat75 = (x_1814 + -1.0f);
  let x_1817 : f32 = x_270.unity_SpecCube0_HDR.w;
  let x_1818 : f32 = u_xlat75;
  u_xlat75 = ((x_1817 * x_1818) + 1.0f);
  let x_1821 : f32 = u_xlat75;
  u_xlat75 = max(x_1821, 0.0f);
  let x_1823 : f32 = u_xlat75;
  u_xlat75 = log2(x_1823);
  let x_1825 : f32 = u_xlat75;
  let x_1827 : f32 = x_270.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_1825 * x_1827);
  let x_1829 : f32 = u_xlat75;
  u_xlat75 = exp2(x_1829);
  let x_1831 : f32 = u_xlat75;
  let x_1833 : f32 = x_270.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_1831 * x_1833);
  let x_1835 : vec4<f32> = u_xlat7;
  let x_1837 : f32 = u_xlat75;
  let x_1839 : vec3<f32> = (vec3<f32>(x_1835.x, x_1835.y, x_1835.z) * vec3<f32>(x_1837, x_1837, x_1837));
  let x_1840 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1839.x, x_1839.y, x_1839.z, x_1840.w);
  let x_1842 : vec2<f32> = u_xlat1;
  let x_1844 : vec2<f32> = u_xlat1;
  let x_1848 : vec2<f32> = ((vec2<f32>(x_1842.x, x_1842.x) * vec2<f32>(x_1844.x, x_1844.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1849 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1848.x, x_1848.y, x_1849.z, x_1849.w);
  let x_1852 : f32 = u_xlat7.y;
  u_xlat75 = (1.0f / x_1852);
  let x_1854 : vec4<f32> = u_xlat0;
  let x_1857 : vec2<f32> = u_xlat51;
  u_xlat32 = (-(vec3<f32>(x_1854.x, x_1854.y, x_1854.z)) + vec3<f32>(x_1857.x, x_1857.x, x_1857.x));
  let x_1860 : f32 = u_xlat81;
  let x_1862 : vec3<f32> = u_xlat32;
  let x_1864 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1860, x_1860, x_1860) * x_1862) + vec3<f32>(x_1864.x, x_1864.y, x_1864.z));
  let x_1867 : f32 = u_xlat75;
  let x_1869 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1867, x_1867, x_1867) * x_1869);
  let x_1871 : vec4<f32> = u_xlat6;
  let x_1873 : vec3<f32> = u_xlat32;
  let x_1874 : vec3<f32> = (vec3<f32>(x_1871.x, x_1871.y, x_1871.z) * x_1873);
  let x_1875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1875.w);
  let x_1877 : vec3<f32> = u_xlat28;
  let x_1878 : vec3<f32> = u_xlat27;
  let x_1880 : vec4<f32> = u_xlat6;
  u_xlat28 = ((x_1877 * x_1878) + vec3<f32>(x_1880.x, x_1880.y, x_1880.z));
  let x_1883 : f32 = u_xlat79;
  let x_1885 : f32 = x_270.unity_LightData.z;
  u_xlat75 = (x_1883 * x_1885);
  let x_1887 : vec4<f32> = u_xlat4;
  let x_1890 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_1887.x, x_1887.y, x_1887.z), vec3<f32>(x_1890.x, x_1890.y, x_1890.z));
  let x_1895 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1895, 0.0f, 1.0f);
  let x_1898 : f32 = u_xlat75;
  let x_1900 : f32 = u_xlat1.x;
  u_xlat75 = (x_1898 * x_1900);
  let x_1902 : f32 = u_xlat75;
  let x_1905 : vec4<f32> = x_28.x_MainLightColor;
  let x_1907 : vec3<f32> = (vec3<f32>(x_1902, x_1902, x_1902) * vec3<f32>(x_1905.x, x_1905.y, x_1905.z));
  let x_1908 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
  let x_1910 : vec3<f32> = u_xlat5;
  let x_1912 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat32 = (x_1910 + vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
  let x_1915 : vec3<f32> = u_xlat32;
  let x_1916 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1915, x_1916);
  let x_1918 : f32 = u_xlat75;
  u_xlat75 = max(x_1918, 1.17549435e-38f);
  let x_1921 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1921);
  let x_1923 : f32 = u_xlat75;
  let x_1925 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1923, x_1923, x_1923) * x_1925);
  let x_1927 : vec4<f32> = u_xlat4;
  let x_1929 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(vec3<f32>(x_1927.x, x_1927.y, x_1927.z), x_1929);
  let x_1931 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1931, 0.0f, 1.0f);
  let x_1934 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1936 : vec3<f32> = u_xlat32;
  u_xlat1.x = dot(vec3<f32>(x_1934.x, x_1934.y, x_1934.z), x_1936);
  let x_1940 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1940, 0.0f, 1.0f);
  let x_1943 : f32 = u_xlat75;
  let x_1944 : f32 = u_xlat75;
  u_xlat75 = (x_1943 * x_1944);
  let x_1946 : f32 = u_xlat75;
  let x_1948 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1946 * x_1948) + 1.00001001358032226562f);
  let x_1953 : f32 = u_xlat1.x;
  let x_1955 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1953 * x_1955);
  let x_1958 : f32 = u_xlat75;
  let x_1959 : f32 = u_xlat75;
  u_xlat75 = (x_1958 * x_1959);
  let x_1962 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1962, 0.10000000149011611938f);
  let x_1966 : f32 = u_xlat75;
  let x_1968 : f32 = u_xlat1.x;
  u_xlat75 = (x_1966 * x_1968);
  let x_1970 : f32 = u_xlat76;
  let x_1971 : f32 = u_xlat75;
  u_xlat75 = (x_1970 * x_1971);
  let x_1973 : f32 = u_xlat26;
  let x_1974 : f32 = u_xlat75;
  u_xlat75 = (x_1973 / x_1974);
  let x_1976 : vec4<f32> = u_xlat0;
  let x_1978 : f32 = u_xlat75;
  let x_1981 : vec3<f32> = u_xlat27;
  u_xlat32 = ((vec3<f32>(x_1976.x, x_1976.y, x_1976.z) * vec3<f32>(x_1978, x_1978, x_1978)) + x_1981);
  let x_1983 : vec4<f32> = u_xlat6;
  let x_1985 : vec3<f32> = u_xlat32;
  let x_1986 : vec3<f32> = (vec3<f32>(x_1983.x, x_1983.y, x_1983.z) * x_1985);
  let x_1987 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
  let x_1991 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1993 : f32 = x_270.unity_LightData.y;
  u_xlat75 = min(x_1991, x_1993);
  let x_1997 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1997));
  let x_2000 : f32 = u_xlat80;
  let x_2003 : f32 = x_434.x_AdditionalShadowFadeParams.x;
  let x_2006 : f32 = x_434.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_2000 * x_2003) + x_2006);
  let x_2010 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2010, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2023 : u32 = u_xlatu_loop_1;
    let x_2024 : u32 = u_xlatu75;
    if ((x_2023 < x_2024)) {
    } else {
      break;
    }
    let x_2027 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_2027 >> 2u);
    let x_2031 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2031 & 3u));
    let x_2034 : u32 = u_xlatu79;
    let x_2037 : vec4<f32> = x_270.unity_LightIndices[bitcast<i32>(x_2034)];
    let x_2047 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2052 : vec4<u32> = indexable[x_2047];
    u_xlat79 = dot(x_2037, bitcast<vec4<f32>>(x_2052));
    let x_2056 : f32 = u_xlat79;
    u_xlati79 = i32(x_2056);
    let x_2058 : vec3<f32> = vs_TEXCOORD1;
    let x_2069 : i32 = u_xlati79;
    let x_2071 : vec4<f32> = x_2068.x_AdditionalLightsPosition[x_2069];
    let x_2074 : i32 = u_xlati79;
    let x_2076 : vec4<f32> = x_2068.x_AdditionalLightsPosition[x_2074];
    let x_2078 : vec3<f32> = ((-(x_2058) * vec3<f32>(x_2071.w, x_2071.w, x_2071.w)) + vec3<f32>(x_2076.x, x_2076.y, x_2076.z));
    let x_2079 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
    let x_2081 : vec4<f32> = u_xlat8;
    let x_2083 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_2081.x, x_2081.y, x_2081.z), vec3<f32>(x_2083.x, x_2083.y, x_2083.z));
    let x_2086 : f32 = u_xlat80;
    u_xlat80 = max(x_2086, 0.00006103515625f);
    let x_2089 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2089);
    let x_2091 : f32 = u_xlat81;
    let x_2093 : vec4<f32> = u_xlat8;
    let x_2095 : vec3<f32> = (vec3<f32>(x_2091, x_2091, x_2091) * vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
    let x_2096 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);
    let x_2099 : f32 = u_xlat80;
    u_xlat83 = (1.0f / x_2099);
    let x_2101 : f32 = u_xlat80;
    let x_2102 : i32 = u_xlati79;
    let x_2104 : f32 = x_2068.x_AdditionalLightsAttenuation[x_2102].x;
    u_xlat80 = (x_2101 * x_2104);
    let x_2106 : f32 = u_xlat80;
    let x_2108 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2106) * x_2108) + 1.0f);
    let x_2111 : f32 = u_xlat80;
    u_xlat80 = max(x_2111, 0.0f);
    let x_2113 : f32 = u_xlat80;
    let x_2114 : f32 = u_xlat80;
    u_xlat80 = (x_2113 * x_2114);
    let x_2116 : f32 = u_xlat80;
    let x_2117 : f32 = u_xlat83;
    u_xlat80 = (x_2116 * x_2117);
    let x_2119 : i32 = u_xlati79;
    let x_2121 : vec4<f32> = x_2068.x_AdditionalLightsSpotDir[x_2119];
    let x_2123 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2121.x, x_2121.y, x_2121.z), vec3<f32>(x_2123.x, x_2123.y, x_2123.z));
    let x_2126 : f32 = u_xlat83;
    let x_2127 : i32 = u_xlati79;
    let x_2129 : f32 = x_2068.x_AdditionalLightsAttenuation[x_2127].z;
    let x_2131 : i32 = u_xlati79;
    let x_2133 : f32 = x_2068.x_AdditionalLightsAttenuation[x_2131].w;
    u_xlat83 = ((x_2126 * x_2129) + x_2133);
    let x_2135 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2135, 0.0f, 1.0f);
    let x_2137 : f32 = u_xlat83;
    let x_2138 : f32 = u_xlat83;
    u_xlat83 = (x_2137 * x_2138);
    let x_2140 : f32 = u_xlat80;
    let x_2141 : f32 = u_xlat83;
    u_xlat80 = (x_2140 * x_2141);
    let x_2145 : i32 = u_xlati79;
    let x_2147 : f32 = x_434.x_AdditionalShadowParams[x_2145].w;
    u_xlati83 = i32(x_2147);
    let x_2150 : i32 = u_xlati83;
    u_xlatb84 = (x_2150 >= 0i);
    let x_2152 : bool = u_xlatb84;
    if (x_2152) {
      let x_2156 : i32 = u_xlati79;
      let x_2158 : f32 = x_434.x_AdditionalShadowParams[x_2156].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2158, x_2158, x_2158, x_2158))));
      let x_2163 : bool = u_xlatb84;
      if (x_2163) {
        let x_2168 : vec4<f32> = u_xlat9;
        let x_2171 : vec4<f32> = u_xlat9;
        let x_2174 : vec4<bool> = (abs(vec4<f32>(x_2168.z, x_2168.z, x_2168.y, x_2168.z)) >= abs(vec4<f32>(x_2171.x, x_2171.y, x_2171.x, x_2171.x)));
        let x_2176 : vec3<bool> = vec3<bool>(x_2174.x, x_2174.y, x_2174.z);
        let x_2177 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
        let x_2180 : bool = u_xlatb10.y;
        let x_2182 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2180 & x_2182);
        let x_2184 : vec4<f32> = u_xlat9;
        let x_2187 : vec4<bool> = (-(vec4<f32>(x_2184.z, x_2184.y, x_2184.z, x_2184.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2188 : vec3<bool> = vec3<bool>(x_2187.x, x_2187.y, x_2187.w);
        let x_2189 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2188.x, x_2188.y, x_2189.z, x_2188.z);
        let x_2192 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2192);
        let x_2197 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2197);
        let x_2203 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2203);
        let x_2207 : bool = u_xlatb10.z;
        if (x_2207) {
          let x_2212 : f32 = u_xlat10.y;
          x_2208 = x_2212;
        } else {
          let x_2214 : f32 = u_xlat85;
          x_2208 = x_2214;
        }
        let x_2215 : f32 = x_2208;
        u_xlat35 = x_2215;
        let x_2217 : bool = u_xlatb84;
        if (x_2217) {
          let x_2222 : f32 = u_xlat10.x;
          x_2218 = x_2222;
        } else {
          let x_2224 : f32 = u_xlat35;
          x_2218 = x_2224;
        }
        let x_2225 : f32 = x_2218;
        u_xlat84 = x_2225;
        let x_2226 : i32 = u_xlati79;
        let x_2228 : f32 = x_434.x_AdditionalShadowParams[x_2226].w;
        u_xlat10.x = trunc(x_2228);
        let x_2231 : f32 = u_xlat84;
        let x_2233 : f32 = u_xlat10.x;
        u_xlat84 = (x_2231 + x_2233);
        let x_2235 : f32 = u_xlat84;
        u_xlati83 = i32(x_2235);
      }
      let x_2237 : i32 = u_xlati83;
      u_xlati83 = (x_2237 << bitcast<u32>(2i));
      let x_2239 : vec3<f32> = vs_TEXCOORD1;
      let x_2242 : i32 = u_xlati83;
      let x_2245 : i32 = u_xlati83;
      let x_2249 : vec4<f32> = x_434.x_AdditionalLightsWorldToShadow[((x_2242 + 1i) / 4i)][((x_2245 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2239.y, x_2239.y, x_2239.y, x_2239.y) * x_2249);
      let x_2251 : i32 = u_xlati83;
      let x_2253 : i32 = u_xlati83;
      let x_2256 : vec4<f32> = x_434.x_AdditionalLightsWorldToShadow[(x_2251 / 4i)][(x_2253 % 4i)];
      let x_2257 : vec3<f32> = vs_TEXCOORD1;
      let x_2260 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2256 * vec4<f32>(x_2257.x, x_2257.x, x_2257.x, x_2257.x)) + x_2260);
      let x_2262 : i32 = u_xlati83;
      let x_2265 : i32 = u_xlati83;
      let x_2269 : vec4<f32> = x_434.x_AdditionalLightsWorldToShadow[((x_2262 + 2i) / 4i)][((x_2265 + 2i) % 4i)];
      let x_2270 : vec3<f32> = vs_TEXCOORD1;
      let x_2273 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2269 * vec4<f32>(x_2270.z, x_2270.z, x_2270.z, x_2270.z)) + x_2273);
      let x_2275 : vec4<f32> = u_xlat10;
      let x_2276 : i32 = u_xlati83;
      let x_2279 : i32 = u_xlati83;
      let x_2283 : vec4<f32> = x_434.x_AdditionalLightsWorldToShadow[((x_2276 + 3i) / 4i)][((x_2279 + 3i) % 4i)];
      u_xlat10 = (x_2275 + x_2283);
      let x_2285 : vec4<f32> = u_xlat10;
      let x_2287 : vec4<f32> = u_xlat10;
      let x_2289 : vec3<f32> = (vec3<f32>(x_2285.x, x_2285.y, x_2285.z) / vec3<f32>(x_2287.w, x_2287.w, x_2287.w));
      let x_2290 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2289.x, x_2289.y, x_2289.z, x_2290.w);
      let x_2293 : i32 = u_xlati79;
      let x_2295 : f32 = x_434.x_AdditionalShadowParams[x_2293].y;
      u_xlatb83 = (0.0f < x_2295);
      let x_2297 : bool = u_xlatb83;
      if (x_2297) {
        let x_2300 : i32 = u_xlati79;
        let x_2302 : f32 = x_434.x_AdditionalShadowParams[x_2300].y;
        u_xlatb83 = (1.0f == x_2302);
        let x_2304 : bool = u_xlatb83;
        if (x_2304) {
          let x_2307 : vec4<f32> = u_xlat10;
          let x_2310 : vec4<f32> = x_434.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2307.x, x_2307.y, x_2307.x, x_2307.y) + x_2310);
          let x_2313 : vec4<f32> = u_xlat11;
          let x_2314 : vec2<f32> = vec2<f32>(x_2313.x, x_2313.y);
          let x_2316 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2314.x, x_2314.y, x_2316);
          let x_2324 : vec3<f32> = txVec30;
          let x_2326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2324.xy, x_2324.z);
          u_xlat12.x = x_2326;
          let x_2329 : vec4<f32> = u_xlat11;
          let x_2330 : vec2<f32> = vec2<f32>(x_2329.z, x_2329.w);
          let x_2332 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2330.x, x_2330.y, x_2332);
          let x_2339 : vec3<f32> = txVec31;
          let x_2341 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2339.xy, x_2339.z);
          u_xlat12.y = x_2341;
          let x_2343 : vec4<f32> = u_xlat10;
          let x_2347 : vec4<f32> = x_434.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2343.x, x_2343.y, x_2343.x, x_2343.y) + x_2347);
          let x_2350 : vec4<f32> = u_xlat11;
          let x_2351 : vec2<f32> = vec2<f32>(x_2350.x, x_2350.y);
          let x_2353 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2351.x, x_2351.y, x_2353);
          let x_2360 : vec3<f32> = txVec32;
          let x_2362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2360.xy, x_2360.z);
          u_xlat12.z = x_2362;
          let x_2365 : vec4<f32> = u_xlat11;
          let x_2366 : vec2<f32> = vec2<f32>(x_2365.z, x_2365.w);
          let x_2368 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2366.x, x_2366.y, x_2368);
          let x_2375 : vec3<f32> = txVec33;
          let x_2377 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2375.xy, x_2375.z);
          u_xlat12.w = x_2377;
          let x_2379 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2379, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2382 : i32 = u_xlati79;
          let x_2384 : f32 = x_434.x_AdditionalShadowParams[x_2382].y;
          u_xlatb84 = (2.0f == x_2384);
          let x_2386 : bool = u_xlatb84;
          if (x_2386) {
            let x_2389 : vec4<f32> = u_xlat10;
            let x_2393 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2396 : vec2<f32> = ((vec2<f32>(x_2389.x, x_2389.y) * vec2<f32>(x_2393.z, x_2393.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2397 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2396.x, x_2396.y, x_2397.z, x_2397.w);
            let x_2399 : vec4<f32> = u_xlat11;
            let x_2401 : vec2<f32> = floor(vec2<f32>(x_2399.x, x_2399.y));
            let x_2402 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2401.x, x_2401.y, x_2402.z, x_2402.w);
            let x_2405 : vec4<f32> = u_xlat10;
            let x_2408 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2411 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2405.x, x_2405.y) * vec2<f32>(x_2408.z, x_2408.w)) + -(vec2<f32>(x_2411.x, x_2411.y)));
            let x_2415 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2415.x, x_2415.x, x_2415.y, x_2415.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2418 : vec4<f32> = u_xlat12;
            let x_2420 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2418.x, x_2418.x, x_2418.z, x_2418.z) * vec4<f32>(x_2420.x, x_2420.x, x_2420.z, x_2420.z));
            let x_2423 : vec4<f32> = u_xlat13;
            let x_2425 : vec2<f32> = (vec2<f32>(x_2423.y, x_2423.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2426 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2425.x, x_2426.y, x_2425.y, x_2426.w);
            let x_2428 : vec4<f32> = u_xlat13;
            let x_2431 : vec2<f32> = u_xlat61;
            let x_2433 : vec2<f32> = ((vec2<f32>(x_2428.x, x_2428.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2431));
            let x_2434 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2433.x, x_2433.y, x_2434.z, x_2434.w);
            let x_2437 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2437) + vec2<f32>(1.0f, 1.0f));
            let x_2440 : vec2<f32> = u_xlat61;
            let x_2441 : vec2<f32> = min(x_2440, vec2<f32>(0.0f, 0.0f));
            let x_2442 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2441.x, x_2441.y, x_2442.z, x_2442.w);
            let x_2444 : vec4<f32> = u_xlat14;
            let x_2447 : vec4<f32> = u_xlat14;
            let x_2450 : vec2<f32> = u_xlat63;
            let x_2451 : vec2<f32> = ((-(vec2<f32>(x_2444.x, x_2444.y)) * vec2<f32>(x_2447.x, x_2447.y)) + x_2450);
            let x_2452 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2451.x, x_2451.y, x_2452.z, x_2452.w);
            let x_2454 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2454, vec2<f32>(0.0f, 0.0f));
            let x_2456 : vec2<f32> = u_xlat61;
            let x_2458 : vec2<f32> = u_xlat61;
            let x_2460 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2456) * x_2458) + vec2<f32>(x_2460.y, x_2460.w));
            let x_2463 : vec4<f32> = u_xlat14;
            let x_2465 : vec2<f32> = (vec2<f32>(x_2463.x, x_2463.y) + vec2<f32>(1.0f, 1.0f));
            let x_2466 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2465.x, x_2465.y, x_2466.z, x_2466.w);
            let x_2468 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2468 + vec2<f32>(1.0f, 1.0f));
            let x_2470 : vec4<f32> = u_xlat13;
            let x_2472 : vec2<f32> = (vec2<f32>(x_2470.x, x_2470.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2473 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2472.x, x_2472.y, x_2473.z, x_2473.w);
            let x_2475 : vec2<f32> = u_xlat63;
            let x_2476 : vec2<f32> = (x_2475 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2477 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2476.x, x_2476.y, x_2477.z, x_2477.w);
            let x_2479 : vec4<f32> = u_xlat14;
            let x_2481 : vec2<f32> = (vec2<f32>(x_2479.x, x_2479.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2482 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2481.x, x_2481.y, x_2482.z, x_2482.w);
            let x_2484 : vec2<f32> = u_xlat61;
            let x_2485 : vec2<f32> = (x_2484 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2486 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2485.x, x_2485.y, x_2486.z, x_2486.w);
            let x_2488 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2488.y, x_2488.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2492 : f32 = u_xlat14.x;
            u_xlat15.z = x_2492;
            let x_2495 : f32 = u_xlat61.x;
            u_xlat15.w = x_2495;
            let x_2498 : f32 = u_xlat16.x;
            u_xlat13.z = x_2498;
            let x_2501 : f32 = u_xlat12.x;
            u_xlat13.w = x_2501;
            let x_2503 : vec4<f32> = u_xlat13;
            let x_2505 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2503.z, x_2503.w, x_2503.x, x_2503.z) + vec4<f32>(x_2505.z, x_2505.w, x_2505.x, x_2505.z));
            let x_2509 : f32 = u_xlat15.y;
            u_xlat14.z = x_2509;
            let x_2512 : f32 = u_xlat61.y;
            u_xlat14.w = x_2512;
            let x_2515 : f32 = u_xlat13.y;
            u_xlat16.z = x_2515;
            let x_2518 : f32 = u_xlat12.z;
            u_xlat16.w = x_2518;
            let x_2520 : vec4<f32> = u_xlat14;
            let x_2522 : vec4<f32> = u_xlat16;
            let x_2524 : vec3<f32> = (vec3<f32>(x_2520.z, x_2520.y, x_2520.w) + vec3<f32>(x_2522.z, x_2522.y, x_2522.w));
            let x_2525 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2524.x, x_2524.y, x_2524.z, x_2525.w);
            let x_2527 : vec4<f32> = u_xlat13;
            let x_2529 : vec4<f32> = u_xlat17;
            let x_2531 : vec3<f32> = (vec3<f32>(x_2527.x, x_2527.z, x_2527.w) / vec3<f32>(x_2529.z, x_2529.w, x_2529.y));
            let x_2532 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2531.x, x_2531.y, x_2531.z, x_2532.w);
            let x_2534 : vec4<f32> = u_xlat13;
            let x_2536 : vec3<f32> = (vec3<f32>(x_2534.x, x_2534.y, x_2534.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2537 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2536.x, x_2536.y, x_2536.z, x_2537.w);
            let x_2539 : vec4<f32> = u_xlat16;
            let x_2541 : vec4<f32> = u_xlat12;
            let x_2543 : vec3<f32> = (vec3<f32>(x_2539.z, x_2539.y, x_2539.w) / vec3<f32>(x_2541.x, x_2541.y, x_2541.z));
            let x_2544 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2544.w);
            let x_2546 : vec4<f32> = u_xlat14;
            let x_2548 : vec3<f32> = (vec3<f32>(x_2546.x, x_2546.y, x_2546.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2549 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2548.x, x_2548.y, x_2548.z, x_2549.w);
            let x_2551 : vec4<f32> = u_xlat13;
            let x_2554 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2556 : vec3<f32> = (vec3<f32>(x_2551.y, x_2551.x, x_2551.z) * vec3<f32>(x_2554.x, x_2554.x, x_2554.x));
            let x_2557 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2556.x, x_2556.y, x_2556.z, x_2557.w);
            let x_2559 : vec4<f32> = u_xlat14;
            let x_2562 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2564 : vec3<f32> = (vec3<f32>(x_2559.x, x_2559.y, x_2559.z) * vec3<f32>(x_2562.y, x_2562.y, x_2562.y));
            let x_2565 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
            let x_2568 : f32 = u_xlat14.x;
            u_xlat13.w = x_2568;
            let x_2570 : vec4<f32> = u_xlat11;
            let x_2573 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2576 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2570.x, x_2570.y, x_2570.x, x_2570.y) * vec4<f32>(x_2573.x, x_2573.y, x_2573.x, x_2573.y)) + vec4<f32>(x_2576.y, x_2576.w, x_2576.x, x_2576.w));
            let x_2579 : vec4<f32> = u_xlat11;
            let x_2582 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2585 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2579.x, x_2579.y) * vec2<f32>(x_2582.x, x_2582.y)) + vec2<f32>(x_2585.z, x_2585.w));
            let x_2589 : f32 = u_xlat13.y;
            u_xlat14.w = x_2589;
            let x_2591 : vec4<f32> = u_xlat14;
            let x_2592 : vec2<f32> = vec2<f32>(x_2591.y, x_2591.z);
            let x_2593 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2593.x, x_2592.x, x_2593.z, x_2592.y);
            let x_2595 : vec4<f32> = u_xlat11;
            let x_2598 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2601 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2595.x, x_2595.y, x_2595.x, x_2595.y) * vec4<f32>(x_2598.x, x_2598.y, x_2598.x, x_2598.y)) + vec4<f32>(x_2601.x, x_2601.y, x_2601.z, x_2601.y));
            let x_2604 : vec4<f32> = u_xlat11;
            let x_2607 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2610 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2604.x, x_2604.y, x_2604.x, x_2604.y) * vec4<f32>(x_2607.x, x_2607.y, x_2607.x, x_2607.y)) + vec4<f32>(x_2610.w, x_2610.y, x_2610.w, x_2610.z));
            let x_2613 : vec4<f32> = u_xlat11;
            let x_2616 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2619 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2613.x, x_2613.y, x_2613.x, x_2613.y) * vec4<f32>(x_2616.x, x_2616.y, x_2616.x, x_2616.y)) + vec4<f32>(x_2619.x, x_2619.w, x_2619.z, x_2619.w));
            let x_2622 : vec4<f32> = u_xlat12;
            let x_2624 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2622.x, x_2622.x, x_2622.x, x_2622.y) * vec4<f32>(x_2624.z, x_2624.w, x_2624.y, x_2624.z));
            let x_2627 : vec4<f32> = u_xlat12;
            let x_2629 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2627.y, x_2627.y, x_2627.z, x_2627.z) * x_2629);
            let x_2632 : f32 = u_xlat12.z;
            let x_2634 : f32 = u_xlat17.y;
            u_xlat84 = (x_2632 * x_2634);
            let x_2637 : vec4<f32> = u_xlat15;
            let x_2638 : vec2<f32> = vec2<f32>(x_2637.x, x_2637.y);
            let x_2640 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2638.x, x_2638.y, x_2640);
            let x_2647 : vec3<f32> = txVec34;
            let x_2649 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2647.xy, x_2647.z);
            u_xlat85 = x_2649;
            let x_2651 : vec4<f32> = u_xlat15;
            let x_2652 : vec2<f32> = vec2<f32>(x_2651.z, x_2651.w);
            let x_2654 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2652.x, x_2652.y, x_2654);
            let x_2661 : vec3<f32> = txVec35;
            let x_2663 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2661.xy, x_2661.z);
            u_xlat11.x = x_2663;
            let x_2666 : f32 = u_xlat11.x;
            let x_2668 : f32 = u_xlat18.y;
            u_xlat11.x = (x_2666 * x_2668);
            let x_2672 : f32 = u_xlat18.x;
            let x_2673 : f32 = u_xlat85;
            let x_2676 : f32 = u_xlat11.x;
            u_xlat85 = ((x_2672 * x_2673) + x_2676);
            let x_2679 : vec2<f32> = u_xlat61;
            let x_2681 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2679.x, x_2679.y, x_2681);
            let x_2688 : vec3<f32> = txVec36;
            let x_2690 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2688.xy, x_2688.z);
            u_xlat11.x = x_2690;
            let x_2693 : f32 = u_xlat18.z;
            let x_2695 : f32 = u_xlat11.x;
            let x_2697 : f32 = u_xlat85;
            u_xlat85 = ((x_2693 * x_2695) + x_2697);
            let x_2700 : vec4<f32> = u_xlat14;
            let x_2701 : vec2<f32> = vec2<f32>(x_2700.x, x_2700.y);
            let x_2703 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2701.x, x_2701.y, x_2703);
            let x_2710 : vec3<f32> = txVec37;
            let x_2712 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2710.xy, x_2710.z);
            u_xlat11.x = x_2712;
            let x_2715 : f32 = u_xlat18.w;
            let x_2717 : f32 = u_xlat11.x;
            let x_2719 : f32 = u_xlat85;
            u_xlat85 = ((x_2715 * x_2717) + x_2719);
            let x_2722 : vec4<f32> = u_xlat16;
            let x_2723 : vec2<f32> = vec2<f32>(x_2722.x, x_2722.y);
            let x_2725 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2723.x, x_2723.y, x_2725);
            let x_2732 : vec3<f32> = txVec38;
            let x_2734 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2732.xy, x_2732.z);
            u_xlat11.x = x_2734;
            let x_2737 : f32 = u_xlat19.x;
            let x_2739 : f32 = u_xlat11.x;
            let x_2741 : f32 = u_xlat85;
            u_xlat85 = ((x_2737 * x_2739) + x_2741);
            let x_2744 : vec4<f32> = u_xlat16;
            let x_2745 : vec2<f32> = vec2<f32>(x_2744.z, x_2744.w);
            let x_2747 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2745.x, x_2745.y, x_2747);
            let x_2754 : vec3<f32> = txVec39;
            let x_2756 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2754.xy, x_2754.z);
            u_xlat11.x = x_2756;
            let x_2759 : f32 = u_xlat19.y;
            let x_2761 : f32 = u_xlat11.x;
            let x_2763 : f32 = u_xlat85;
            u_xlat85 = ((x_2759 * x_2761) + x_2763);
            let x_2766 : vec4<f32> = u_xlat14;
            let x_2767 : vec2<f32> = vec2<f32>(x_2766.z, x_2766.w);
            let x_2769 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2767.x, x_2767.y, x_2769);
            let x_2776 : vec3<f32> = txVec40;
            let x_2778 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2776.xy, x_2776.z);
            u_xlat11.x = x_2778;
            let x_2781 : f32 = u_xlat19.z;
            let x_2783 : f32 = u_xlat11.x;
            let x_2785 : f32 = u_xlat85;
            u_xlat85 = ((x_2781 * x_2783) + x_2785);
            let x_2788 : vec4<f32> = u_xlat13;
            let x_2789 : vec2<f32> = vec2<f32>(x_2788.x, x_2788.y);
            let x_2791 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2789.x, x_2789.y, x_2791);
            let x_2798 : vec3<f32> = txVec41;
            let x_2800 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2798.xy, x_2798.z);
            u_xlat11.x = x_2800;
            let x_2803 : f32 = u_xlat19.w;
            let x_2805 : f32 = u_xlat11.x;
            let x_2807 : f32 = u_xlat85;
            u_xlat85 = ((x_2803 * x_2805) + x_2807);
            let x_2810 : vec4<f32> = u_xlat13;
            let x_2811 : vec2<f32> = vec2<f32>(x_2810.z, x_2810.w);
            let x_2813 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2811.x, x_2811.y, x_2813);
            let x_2820 : vec3<f32> = txVec42;
            let x_2822 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2820.xy, x_2820.z);
            u_xlat11.x = x_2822;
            let x_2824 : f32 = u_xlat84;
            let x_2826 : f32 = u_xlat11.x;
            let x_2828 : f32 = u_xlat85;
            u_xlat83 = ((x_2824 * x_2826) + x_2828);
          } else {
            let x_2831 : vec4<f32> = u_xlat10;
            let x_2834 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2837 : vec2<f32> = ((vec2<f32>(x_2831.x, x_2831.y) * vec2<f32>(x_2834.z, x_2834.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2838 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2837.x, x_2837.y, x_2838.z, x_2838.w);
            let x_2840 : vec4<f32> = u_xlat11;
            let x_2842 : vec2<f32> = floor(vec2<f32>(x_2840.x, x_2840.y));
            let x_2843 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2842.x, x_2842.y, x_2843.z, x_2843.w);
            let x_2845 : vec4<f32> = u_xlat10;
            let x_2848 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_2851 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2845.x, x_2845.y) * vec2<f32>(x_2848.z, x_2848.w)) + -(vec2<f32>(x_2851.x, x_2851.y)));
            let x_2855 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2855.x, x_2855.x, x_2855.y, x_2855.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2858 : vec4<f32> = u_xlat12;
            let x_2860 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2858.x, x_2858.x, x_2858.z, x_2858.z) * vec4<f32>(x_2860.x, x_2860.x, x_2860.z, x_2860.z));
            let x_2863 : vec4<f32> = u_xlat13;
            let x_2865 : vec2<f32> = (vec2<f32>(x_2863.y, x_2863.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2866 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2866.x, x_2865.x, x_2866.z, x_2865.y);
            let x_2868 : vec4<f32> = u_xlat13;
            let x_2871 : vec2<f32> = u_xlat61;
            let x_2873 : vec2<f32> = ((vec2<f32>(x_2868.x, x_2868.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2871));
            let x_2874 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2873.x, x_2874.y, x_2873.y, x_2874.w);
            let x_2876 : vec2<f32> = u_xlat61;
            let x_2878 : vec2<f32> = (-(x_2876) + vec2<f32>(1.0f, 1.0f));
            let x_2879 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2878.x, x_2878.y, x_2879.z, x_2879.w);
            let x_2881 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2881, vec2<f32>(0.0f, 0.0f));
            let x_2883 : vec2<f32> = u_xlat63;
            let x_2885 : vec2<f32> = u_xlat63;
            let x_2887 : vec4<f32> = u_xlat13;
            let x_2889 : vec2<f32> = ((-(x_2883) * x_2885) + vec2<f32>(x_2887.x, x_2887.y));
            let x_2890 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2889.x, x_2889.y, x_2890.z, x_2890.w);
            let x_2892 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2892, vec2<f32>(0.0f, 0.0f));
            let x_2895 : vec2<f32> = u_xlat63;
            let x_2897 : vec2<f32> = u_xlat63;
            let x_2899 : vec4<f32> = u_xlat12;
            let x_2901 : vec2<f32> = ((-(x_2895) * x_2897) + vec2<f32>(x_2899.y, x_2899.w));
            let x_2902 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2901.x, x_2902.y, x_2901.y);
            let x_2904 : vec4<f32> = u_xlat13;
            let x_2906 : vec2<f32> = (vec2<f32>(x_2904.x, x_2904.y) + vec2<f32>(2.0f, 2.0f));
            let x_2907 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2906.x, x_2906.y, x_2907.z, x_2907.w);
            let x_2909 : vec3<f32> = u_xlat37;
            let x_2911 : vec2<f32> = (vec2<f32>(x_2909.x, x_2909.z) + vec2<f32>(2.0f, 2.0f));
            let x_2912 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2912.x, x_2911.x, x_2912.z, x_2911.y);
            let x_2915 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2915 * 0.08163200318813323975f);
            let x_2918 : vec4<f32> = u_xlat12;
            let x_2920 : vec3<f32> = (vec3<f32>(x_2918.z, x_2918.x, x_2918.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2921 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2920.x, x_2920.y, x_2920.z, x_2921.w);
            let x_2923 : vec4<f32> = u_xlat13;
            let x_2925 : vec2<f32> = (vec2<f32>(x_2923.x, x_2923.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2926 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2925.x, x_2925.y, x_2926.z, x_2926.w);
            let x_2929 : f32 = u_xlat16.y;
            u_xlat15.x = x_2929;
            let x_2931 : vec2<f32> = u_xlat61;
            let x_2934 : vec2<f32> = ((vec2<f32>(x_2931.x, x_2931.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2935 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2935.x, x_2934.x, x_2935.z, x_2934.y);
            let x_2937 : vec2<f32> = u_xlat61;
            let x_2940 : vec2<f32> = ((vec2<f32>(x_2937.x, x_2937.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2941 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2940.x, x_2941.y, x_2940.y, x_2941.w);
            let x_2944 : f32 = u_xlat12.x;
            u_xlat13.y = x_2944;
            let x_2947 : f32 = u_xlat14.y;
            u_xlat13.w = x_2947;
            let x_2949 : vec4<f32> = u_xlat13;
            let x_2950 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2949 + x_2950);
            let x_2952 : vec2<f32> = u_xlat61;
            let x_2955 : vec2<f32> = ((vec2<f32>(x_2952.y, x_2952.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2956 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2956.x, x_2955.x, x_2956.z, x_2955.y);
            let x_2958 : vec2<f32> = u_xlat61;
            let x_2961 : vec2<f32> = ((vec2<f32>(x_2958.y, x_2958.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2962 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2961.x, x_2962.y, x_2961.y, x_2962.w);
            let x_2965 : f32 = u_xlat12.y;
            u_xlat14.y = x_2965;
            let x_2967 : vec4<f32> = u_xlat14;
            let x_2968 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2967 + x_2968);
            let x_2970 : vec4<f32> = u_xlat13;
            let x_2971 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2970 / x_2971);
            let x_2973 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2973 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2975 : vec4<f32> = u_xlat14;
            let x_2976 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2975 / x_2976);
            let x_2978 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2978 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2980 : vec4<f32> = u_xlat13;
            let x_2983 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2980.w, x_2980.x, x_2980.y, x_2980.z) * vec4<f32>(x_2983.x, x_2983.x, x_2983.x, x_2983.x));
            let x_2986 : vec4<f32> = u_xlat14;
            let x_2989 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2986.x, x_2986.w, x_2986.y, x_2986.z) * vec4<f32>(x_2989.y, x_2989.y, x_2989.y, x_2989.y));
            let x_2992 : vec4<f32> = u_xlat13;
            let x_2993 : vec3<f32> = vec3<f32>(x_2992.y, x_2992.z, x_2992.w);
            let x_2994 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2993.x, x_2994.y, x_2993.y, x_2993.z);
            let x_2997 : f32 = u_xlat14.x;
            u_xlat16.y = x_2997;
            let x_2999 : vec4<f32> = u_xlat11;
            let x_3002 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3005 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2999.x, x_2999.y, x_2999.x, x_2999.y) * vec4<f32>(x_3002.x, x_3002.y, x_3002.x, x_3002.y)) + vec4<f32>(x_3005.x, x_3005.y, x_3005.z, x_3005.y));
            let x_3008 : vec4<f32> = u_xlat11;
            let x_3011 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3014 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3008.x, x_3008.y) * vec2<f32>(x_3011.x, x_3011.y)) + vec2<f32>(x_3014.w, x_3014.y));
            let x_3018 : f32 = u_xlat16.y;
            u_xlat13.y = x_3018;
            let x_3021 : f32 = u_xlat14.z;
            u_xlat16.y = x_3021;
            let x_3023 : vec4<f32> = u_xlat11;
            let x_3026 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3029 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3023.x, x_3023.y, x_3023.x, x_3023.y) * vec4<f32>(x_3026.x, x_3026.y, x_3026.x, x_3026.y)) + vec4<f32>(x_3029.x, x_3029.y, x_3029.z, x_3029.y));
            let x_3032 : vec4<f32> = u_xlat11;
            let x_3035 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3038 : vec4<f32> = u_xlat16;
            let x_3040 : vec2<f32> = ((vec2<f32>(x_3032.x, x_3032.y) * vec2<f32>(x_3035.x, x_3035.y)) + vec2<f32>(x_3038.w, x_3038.y));
            let x_3041 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3040.x, x_3040.y, x_3041.z, x_3041.w);
            let x_3044 : f32 = u_xlat16.y;
            u_xlat13.z = x_3044;
            let x_3047 : vec4<f32> = u_xlat11;
            let x_3050 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3053 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3047.x, x_3047.y, x_3047.x, x_3047.y) * vec4<f32>(x_3050.x, x_3050.y, x_3050.x, x_3050.y)) + vec4<f32>(x_3053.x, x_3053.y, x_3053.x, x_3053.z));
            let x_3057 : f32 = u_xlat14.w;
            u_xlat16.y = x_3057;
            let x_3060 : vec4<f32> = u_xlat11;
            let x_3063 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3066 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3060.x, x_3060.y, x_3060.x, x_3060.y) * vec4<f32>(x_3063.x, x_3063.y, x_3063.x, x_3063.y)) + vec4<f32>(x_3066.x, x_3066.y, x_3066.z, x_3066.y));
            let x_3070 : vec4<f32> = u_xlat11;
            let x_3073 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3076 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3070.x, x_3070.y) * vec2<f32>(x_3073.x, x_3073.y)) + vec2<f32>(x_3076.w, x_3076.y));
            let x_3080 : f32 = u_xlat16.y;
            u_xlat13.w = x_3080;
            let x_3083 : vec4<f32> = u_xlat11;
            let x_3086 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3089 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3083.x, x_3083.y) * vec2<f32>(x_3086.x, x_3086.y)) + vec2<f32>(x_3089.x, x_3089.w));
            let x_3092 : vec4<f32> = u_xlat16;
            let x_3093 : vec3<f32> = vec3<f32>(x_3092.x, x_3092.z, x_3092.w);
            let x_3094 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3093.x, x_3094.y, x_3093.y, x_3093.z);
            let x_3096 : vec4<f32> = u_xlat11;
            let x_3099 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3102 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3096.x, x_3096.y, x_3096.x, x_3096.y) * vec4<f32>(x_3099.x, x_3099.y, x_3099.x, x_3099.y)) + vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3102.y));
            let x_3105 : vec4<f32> = u_xlat11;
            let x_3108 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3111 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3105.x, x_3105.y) * vec2<f32>(x_3108.x, x_3108.y)) + vec2<f32>(x_3111.w, x_3111.y));
            let x_3115 : f32 = u_xlat13.x;
            u_xlat14.x = x_3115;
            let x_3117 : vec4<f32> = u_xlat11;
            let x_3120 : vec4<f32> = x_434.x_AdditionalShadowmapSize;
            let x_3123 : vec4<f32> = u_xlat14;
            let x_3125 : vec2<f32> = ((vec2<f32>(x_3117.x, x_3117.y) * vec2<f32>(x_3120.x, x_3120.y)) + vec2<f32>(x_3123.x, x_3123.y));
            let x_3126 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3125.x, x_3125.y, x_3126.z, x_3126.w);
            let x_3129 : vec4<f32> = u_xlat12;
            let x_3131 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3129.x, x_3129.x, x_3129.x, x_3129.x) * x_3131);
            let x_3134 : vec4<f32> = u_xlat12;
            let x_3136 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3134.y, x_3134.y, x_3134.y, x_3134.y) * x_3136);
            let x_3139 : vec4<f32> = u_xlat12;
            let x_3141 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3139.z, x_3139.z, x_3139.z, x_3139.z) * x_3141);
            let x_3143 : vec4<f32> = u_xlat12;
            let x_3145 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3143.w, x_3143.w, x_3143.w, x_3143.w) * x_3145);
            let x_3148 : vec4<f32> = u_xlat17;
            let x_3149 : vec2<f32> = vec2<f32>(x_3148.x, x_3148.y);
            let x_3151 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3149.x, x_3149.y, x_3151);
            let x_3158 : vec3<f32> = txVec43;
            let x_3160 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3158.xy, x_3158.z);
            u_xlat84 = x_3160;
            let x_3162 : vec4<f32> = u_xlat17;
            let x_3163 : vec2<f32> = vec2<f32>(x_3162.z, x_3162.w);
            let x_3165 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3163.x, x_3163.y, x_3165);
            let x_3172 : vec3<f32> = txVec44;
            let x_3174 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3172.xy, x_3172.z);
            u_xlat85 = x_3174;
            let x_3175 : f32 = u_xlat85;
            let x_3177 : f32 = u_xlat22.y;
            u_xlat85 = (x_3175 * x_3177);
            let x_3180 : f32 = u_xlat22.x;
            let x_3181 : f32 = u_xlat84;
            let x_3183 : f32 = u_xlat85;
            u_xlat84 = ((x_3180 * x_3181) + x_3183);
            let x_3186 : vec2<f32> = u_xlat61;
            let x_3188 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3186.x, x_3186.y, x_3188);
            let x_3195 : vec3<f32> = txVec45;
            let x_3197 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3195.xy, x_3195.z);
            u_xlat85 = x_3197;
            let x_3199 : f32 = u_xlat22.z;
            let x_3200 : f32 = u_xlat85;
            let x_3202 : f32 = u_xlat84;
            u_xlat84 = ((x_3199 * x_3200) + x_3202);
            let x_3205 : vec4<f32> = u_xlat20;
            let x_3206 : vec2<f32> = vec2<f32>(x_3205.x, x_3205.y);
            let x_3208 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3206.x, x_3206.y, x_3208);
            let x_3215 : vec3<f32> = txVec46;
            let x_3217 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3215.xy, x_3215.z);
            u_xlat85 = x_3217;
            let x_3219 : f32 = u_xlat22.w;
            let x_3220 : f32 = u_xlat85;
            let x_3222 : f32 = u_xlat84;
            u_xlat84 = ((x_3219 * x_3220) + x_3222);
            let x_3225 : vec4<f32> = u_xlat18;
            let x_3226 : vec2<f32> = vec2<f32>(x_3225.x, x_3225.y);
            let x_3228 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3226.x, x_3226.y, x_3228);
            let x_3235 : vec3<f32> = txVec47;
            let x_3237 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3235.xy, x_3235.z);
            u_xlat85 = x_3237;
            let x_3239 : f32 = u_xlat23.x;
            let x_3240 : f32 = u_xlat85;
            let x_3242 : f32 = u_xlat84;
            u_xlat84 = ((x_3239 * x_3240) + x_3242);
            let x_3245 : vec4<f32> = u_xlat18;
            let x_3246 : vec2<f32> = vec2<f32>(x_3245.z, x_3245.w);
            let x_3248 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3246.x, x_3246.y, x_3248);
            let x_3255 : vec3<f32> = txVec48;
            let x_3257 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3255.xy, x_3255.z);
            u_xlat85 = x_3257;
            let x_3259 : f32 = u_xlat23.y;
            let x_3260 : f32 = u_xlat85;
            let x_3262 : f32 = u_xlat84;
            u_xlat84 = ((x_3259 * x_3260) + x_3262);
            let x_3265 : vec4<f32> = u_xlat19;
            let x_3266 : vec2<f32> = vec2<f32>(x_3265.x, x_3265.y);
            let x_3268 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3266.x, x_3266.y, x_3268);
            let x_3275 : vec3<f32> = txVec49;
            let x_3277 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3275.xy, x_3275.z);
            u_xlat85 = x_3277;
            let x_3279 : f32 = u_xlat23.z;
            let x_3280 : f32 = u_xlat85;
            let x_3282 : f32 = u_xlat84;
            u_xlat84 = ((x_3279 * x_3280) + x_3282);
            let x_3285 : vec4<f32> = u_xlat20;
            let x_3286 : vec2<f32> = vec2<f32>(x_3285.z, x_3285.w);
            let x_3288 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3286.x, x_3286.y, x_3288);
            let x_3295 : vec3<f32> = txVec50;
            let x_3297 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3295.xy, x_3295.z);
            u_xlat85 = x_3297;
            let x_3299 : f32 = u_xlat23.w;
            let x_3300 : f32 = u_xlat85;
            let x_3302 : f32 = u_xlat84;
            u_xlat84 = ((x_3299 * x_3300) + x_3302);
            let x_3305 : vec4<f32> = u_xlat21;
            let x_3306 : vec2<f32> = vec2<f32>(x_3305.x, x_3305.y);
            let x_3308 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3306.x, x_3306.y, x_3308);
            let x_3315 : vec3<f32> = txVec51;
            let x_3317 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3315.xy, x_3315.z);
            u_xlat85 = x_3317;
            let x_3319 : f32 = u_xlat24.x;
            let x_3320 : f32 = u_xlat85;
            let x_3322 : f32 = u_xlat84;
            u_xlat84 = ((x_3319 * x_3320) + x_3322);
            let x_3325 : vec4<f32> = u_xlat21;
            let x_3326 : vec2<f32> = vec2<f32>(x_3325.z, x_3325.w);
            let x_3328 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3326.x, x_3326.y, x_3328);
            let x_3335 : vec3<f32> = txVec52;
            let x_3337 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3335.xy, x_3335.z);
            u_xlat85 = x_3337;
            let x_3339 : f32 = u_xlat24.y;
            let x_3340 : f32 = u_xlat85;
            let x_3342 : f32 = u_xlat84;
            u_xlat84 = ((x_3339 * x_3340) + x_3342);
            let x_3345 : vec2<f32> = u_xlat38;
            let x_3347 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3345.x, x_3345.y, x_3347);
            let x_3354 : vec3<f32> = txVec53;
            let x_3356 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3354.xy, x_3354.z);
            u_xlat85 = x_3356;
            let x_3358 : f32 = u_xlat24.z;
            let x_3359 : f32 = u_xlat85;
            let x_3361 : f32 = u_xlat84;
            u_xlat84 = ((x_3358 * x_3359) + x_3361);
            let x_3364 : vec2<f32> = u_xlat69;
            let x_3366 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3364.x, x_3364.y, x_3366);
            let x_3373 : vec3<f32> = txVec54;
            let x_3375 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3373.xy, x_3373.z);
            u_xlat85 = x_3375;
            let x_3377 : f32 = u_xlat24.w;
            let x_3378 : f32 = u_xlat85;
            let x_3380 : f32 = u_xlat84;
            u_xlat84 = ((x_3377 * x_3378) + x_3380);
            let x_3383 : vec4<f32> = u_xlat16;
            let x_3384 : vec2<f32> = vec2<f32>(x_3383.x, x_3383.y);
            let x_3386 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3384.x, x_3384.y, x_3386);
            let x_3393 : vec3<f32> = txVec55;
            let x_3395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3393.xy, x_3393.z);
            u_xlat85 = x_3395;
            let x_3397 : f32 = u_xlat12.x;
            let x_3398 : f32 = u_xlat85;
            let x_3400 : f32 = u_xlat84;
            u_xlat84 = ((x_3397 * x_3398) + x_3400);
            let x_3403 : vec4<f32> = u_xlat16;
            let x_3404 : vec2<f32> = vec2<f32>(x_3403.z, x_3403.w);
            let x_3406 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3404.x, x_3404.y, x_3406);
            let x_3413 : vec3<f32> = txVec56;
            let x_3415 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3413.xy, x_3413.z);
            u_xlat85 = x_3415;
            let x_3417 : f32 = u_xlat12.y;
            let x_3418 : f32 = u_xlat85;
            let x_3420 : f32 = u_xlat84;
            u_xlat84 = ((x_3417 * x_3418) + x_3420);
            let x_3423 : vec2<f32> = u_xlat64;
            let x_3425 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3423.x, x_3423.y, x_3425);
            let x_3432 : vec3<f32> = txVec57;
            let x_3434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3432.xy, x_3432.z);
            u_xlat85 = x_3434;
            let x_3436 : f32 = u_xlat12.z;
            let x_3437 : f32 = u_xlat85;
            let x_3439 : f32 = u_xlat84;
            u_xlat84 = ((x_3436 * x_3437) + x_3439);
            let x_3442 : vec4<f32> = u_xlat11;
            let x_3443 : vec2<f32> = vec2<f32>(x_3442.x, x_3442.y);
            let x_3445 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3443.x, x_3443.y, x_3445);
            let x_3452 : vec3<f32> = txVec58;
            let x_3454 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3452.xy, x_3452.z);
            u_xlat85 = x_3454;
            let x_3456 : f32 = u_xlat12.w;
            let x_3457 : f32 = u_xlat85;
            let x_3459 : f32 = u_xlat84;
            u_xlat83 = ((x_3456 * x_3457) + x_3459);
          }
        }
      } else {
        let x_3463 : vec4<f32> = u_xlat10;
        let x_3464 : vec2<f32> = vec2<f32>(x_3463.x, x_3463.y);
        let x_3466 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3464.x, x_3464.y, x_3466);
        let x_3473 : vec3<f32> = txVec59;
        let x_3475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3473.xy, x_3473.z);
        u_xlat83 = x_3475;
      }
      let x_3476 : i32 = u_xlati79;
      let x_3478 : f32 = x_434.x_AdditionalShadowParams[x_3476].x;
      u_xlat84 = (1.0f + -(x_3478));
      let x_3481 : f32 = u_xlat83;
      let x_3482 : i32 = u_xlati79;
      let x_3484 : f32 = x_434.x_AdditionalShadowParams[x_3482].x;
      let x_3486 : f32 = u_xlat84;
      u_xlat83 = ((x_3481 * x_3484) + x_3486);
      let x_3489 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3489);
      let x_3492 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3492 >= 1.0f);
      let x_3495 : bool = u_xlatb84;
      let x_3497 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3495 | x_3497);
      let x_3499 : bool = u_xlatb84;
      let x_3500 : f32 = u_xlat83;
      u_xlat83 = select(x_3500, 1.0f, x_3499);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_3503 : f32 = u_xlat83;
    u_xlat84 = (-(x_3503) + 1.0f);
    let x_3507 : f32 = u_xlat1.x;
    let x_3508 : f32 = u_xlat84;
    let x_3510 : f32 = u_xlat83;
    u_xlat83 = ((x_3507 * x_3508) + x_3510);
    let x_3512 : f32 = u_xlat80;
    let x_3513 : f32 = u_xlat83;
    u_xlat80 = (x_3512 * x_3513);
    let x_3515 : vec4<f32> = u_xlat4;
    let x_3517 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3515.x, x_3515.y, x_3515.z), vec3<f32>(x_3517.x, x_3517.y, x_3517.z));
    let x_3520 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3520, 0.0f, 1.0f);
    let x_3522 : f32 = u_xlat80;
    let x_3523 : f32 = u_xlat83;
    u_xlat80 = (x_3522 * x_3523);
    let x_3525 : f32 = u_xlat80;
    let x_3527 : i32 = u_xlati79;
    let x_3529 : vec4<f32> = x_2068.x_AdditionalLightsColor[x_3527];
    let x_3531 : vec3<f32> = (vec3<f32>(x_3525, x_3525, x_3525) * vec3<f32>(x_3529.x, x_3529.y, x_3529.z));
    let x_3532 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3531.x, x_3531.y, x_3531.z, x_3532.w);
    let x_3534 : vec4<f32> = u_xlat8;
    let x_3536 : f32 = u_xlat81;
    let x_3539 : vec3<f32> = u_xlat5;
    let x_3540 : vec3<f32> = ((vec3<f32>(x_3534.x, x_3534.y, x_3534.z) * vec3<f32>(x_3536, x_3536, x_3536)) + x_3539);
    let x_3541 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3540.x, x_3540.y, x_3540.z, x_3541.w);
    let x_3543 : vec4<f32> = u_xlat8;
    let x_3545 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3543.x, x_3543.y, x_3543.z), vec3<f32>(x_3545.x, x_3545.y, x_3545.z));
    let x_3548 : f32 = u_xlat79;
    u_xlat79 = max(x_3548, 1.17549435e-38f);
    let x_3550 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_3550);
    let x_3552 : f32 = u_xlat79;
    let x_3554 : vec4<f32> = u_xlat8;
    let x_3556 : vec3<f32> = (vec3<f32>(x_3552, x_3552, x_3552) * vec3<f32>(x_3554.x, x_3554.y, x_3554.z));
    let x_3557 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3556.x, x_3556.y, x_3556.z, x_3557.w);
    let x_3559 : vec4<f32> = u_xlat4;
    let x_3561 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3559.x, x_3559.y, x_3559.z), vec3<f32>(x_3561.x, x_3561.y, x_3561.z));
    let x_3564 : f32 = u_xlat79;
    u_xlat79 = clamp(x_3564, 0.0f, 1.0f);
    let x_3566 : vec4<f32> = u_xlat9;
    let x_3568 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3566.x, x_3566.y, x_3566.z), vec3<f32>(x_3568.x, x_3568.y, x_3568.z));
    let x_3571 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3571, 0.0f, 1.0f);
    let x_3573 : f32 = u_xlat79;
    let x_3574 : f32 = u_xlat79;
    u_xlat79 = (x_3573 * x_3574);
    let x_3576 : f32 = u_xlat79;
    let x_3578 : f32 = u_xlat7.x;
    u_xlat79 = ((x_3576 * x_3578) + 1.00001001358032226562f);
    let x_3581 : f32 = u_xlat80;
    let x_3582 : f32 = u_xlat80;
    u_xlat80 = (x_3581 * x_3582);
    let x_3584 : f32 = u_xlat79;
    let x_3585 : f32 = u_xlat79;
    u_xlat79 = (x_3584 * x_3585);
    let x_3587 : f32 = u_xlat80;
    u_xlat80 = max(x_3587, 0.10000000149011611938f);
    let x_3589 : f32 = u_xlat79;
    let x_3590 : f32 = u_xlat80;
    u_xlat79 = (x_3589 * x_3590);
    let x_3592 : f32 = u_xlat76;
    let x_3593 : f32 = u_xlat79;
    u_xlat79 = (x_3592 * x_3593);
    let x_3595 : f32 = u_xlat26;
    let x_3596 : f32 = u_xlat79;
    u_xlat79 = (x_3595 / x_3596);
    let x_3598 : vec4<f32> = u_xlat0;
    let x_3600 : f32 = u_xlat79;
    let x_3603 : vec3<f32> = u_xlat27;
    let x_3604 : vec3<f32> = ((vec3<f32>(x_3598.x, x_3598.y, x_3598.z) * vec3<f32>(x_3600, x_3600, x_3600)) + x_3603);
    let x_3605 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3604.x, x_3604.y, x_3604.z, x_3605.w);
    let x_3607 : vec4<f32> = u_xlat8;
    let x_3609 : vec4<f32> = u_xlat10;
    let x_3612 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3607.x, x_3607.y, x_3607.z) * vec3<f32>(x_3609.x, x_3609.y, x_3609.z)) + x_3612);

    continuing {
      let x_3614 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3614 + bitcast<u32>(1i));
    }
  }
  let x_3616 : vec3<f32> = u_xlat28;
  let x_3617 : vec3<f32> = u_xlat3;
  let x_3620 : vec4<f32> = u_xlat6;
  let x_3622 : vec3<f32> = ((x_3616 * vec3<f32>(x_3617.x, x_3617.x, x_3617.x)) + vec3<f32>(x_3620.x, x_3620.y, x_3620.z));
  let x_3623 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3622.x, x_3622.y, x_3622.z, x_3623.w);
  let x_3627 : vec3<f32> = u_xlat32;
  let x_3628 : vec4<f32> = u_xlat0;
  let x_3630 : vec3<f32> = (x_3627 + vec3<f32>(x_3628.x, x_3628.y, x_3628.z));
  let x_3631 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3630.x, x_3630.y, x_3630.z, x_3631.w);
  let x_3635 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_3635 == 1.0f);
  let x_3637 : bool = u_xlatb0;
  if (x_3637) {
    let x_3642 : f32 = u_xlat2.x;
    x_3638 = x_3642;
  } else {
    x_3638 = 1.0f;
  }
  let x_3644 : f32 = x_3638;
  SV_Target0.w = x_3644;
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


