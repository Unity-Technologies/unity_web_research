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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb79 : bool;

@group(1) @binding(4) var<uniform> x_407 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

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

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1789 : UnityPerDraw;

var<private> u_xlatu75 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_2043 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlati83 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2183 : f32;
  var x_2193 : f32;
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
  var x_3612 : f32;
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
  let x_269 : vec2<f32> = vs_TEXCOORD8;
  let x_271 : f32 = x_28.x_GlobalMipBias.x;
  let x_272 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_269, x_271);
  u_xlat4 = x_272;
  let x_278 : vec2<f32> = vs_TEXCOORD8;
  let x_280 : f32 = x_28.x_GlobalMipBias.x;
  let x_281 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_278, x_280);
  let x_282 : vec3<f32> = vec3<f32>(x_281.x, x_281.y, x_281.z);
  let x_283 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat4;
  let x_289 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec3<f32> = u_xlat28;
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat75 = dot(x_292, vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : f32 = u_xlat75;
  u_xlat75 = (x_296 + 0.5f);
  let x_299 : f32 = u_xlat75;
  let x_301 : vec4<f32> = u_xlat6;
  let x_303 : vec3<f32> = (vec3<f32>(x_299, x_299, x_299) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : f32 = u_xlat4.w;
  u_xlat75 = max(x_307, 0.00009999999747378752f);
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : f32 = u_xlat75;
  let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) / vec3<f32>(x_312, x_312, x_312));
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_318 : f32 = u_xlat1.x;
  u_xlat75 = ((-(x_318) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_324 : f32 = u_xlat1.y;
  let x_326 : f32 = x_54.x_Smoothness;
  let x_328 : f32 = u_xlat75;
  u_xlat51.x = ((x_324 * x_326) + -(x_328));
  let x_333 : f32 = u_xlat75;
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat27 = (vec3<f32>(x_333, x_333, x_333) * vec3<f32>(x_335.y, x_335.z, x_335.w));
  let x_338 : vec4<f32> = u_xlat0;
  let x_341 : vec4<f32> = x_54.x_BaseColor;
  let x_346 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_347 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec2<f32> = u_xlat1;
  let x_351 : vec4<f32> = u_xlat0;
  let x_356 : vec3<f32> = ((vec3<f32>(x_349.x, x_349.x, x_349.x) * vec3<f32>(x_351.x, x_351.y, x_351.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_357 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : f32 = u_xlat1.y;
  let x_363 : f32 = x_54.x_Smoothness;
  u_xlat75 = ((-(x_360) * x_363) + 1.0f);
  let x_366 : f32 = u_xlat75;
  let x_367 : f32 = u_xlat75;
  u_xlat1.x = (x_366 * x_367);
  let x_371 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_371, 0.0078125f);
  let x_377 : f32 = u_xlat1.x;
  let x_379 : f32 = u_xlat1.x;
  u_xlat26 = (x_377 * x_379);
  let x_382 : f32 = u_xlat51.x;
  u_xlat51.x = (x_382 + 1.0f);
  let x_386 : f32 = u_xlat51.x;
  u_xlat51.x = clamp(x_386, 0.0f, 1.0f);
  let x_391 : f32 = u_xlat1.x;
  u_xlat76 = ((x_391 * 4.0f) + 2.0f);
  let x_396 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_396, 1.0f);
  let x_409 : f32 = x_407.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_409);
  let x_411 : bool = u_xlatb79;
  if (x_411) {
    let x_415 : f32 = x_407.x_MainLightShadowParams.y;
    u_xlatb79 = (x_415 == 1.0f);
    let x_417 : bool = u_xlatb79;
    if (x_417) {
      let x_421 : vec4<f32> = vs_TEXCOORD6;
      let x_424 : vec4<f32> = x_407.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_421.x, x_421.y, x_421.x, x_421.y) + x_424);
      let x_428 : vec4<f32> = u_xlat6;
      let x_429 : vec2<f32> = vec2<f32>(x_428.x, x_428.y);
      let x_432 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_429.x, x_429.y, x_432);
      let x_445 : vec3<f32> = txVec0;
      let x_447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_445.xy, x_445.z);
      u_xlat7.x = x_447;
      let x_450 : vec4<f32> = u_xlat6;
      let x_451 : vec2<f32> = vec2<f32>(x_450.z, x_450.w);
      let x_453 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_451.x, x_451.y, x_453);
      let x_460 : vec3<f32> = txVec1;
      let x_462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_460.xy, x_460.z);
      u_xlat7.y = x_462;
      let x_464 : vec4<f32> = vs_TEXCOORD6;
      let x_468 : vec4<f32> = x_407.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_464.x, x_464.y, x_464.x, x_464.y) + x_468);
      let x_471 : vec4<f32> = u_xlat6;
      let x_472 : vec2<f32> = vec2<f32>(x_471.x, x_471.y);
      let x_474 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_472.x, x_472.y, x_474);
      let x_481 : vec3<f32> = txVec2;
      let x_483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_481.xy, x_481.z);
      u_xlat7.z = x_483;
      let x_486 : vec4<f32> = u_xlat6;
      let x_487 : vec2<f32> = vec2<f32>(x_486.z, x_486.w);
      let x_489 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_487.x, x_487.y, x_489);
      let x_496 : vec3<f32> = txVec3;
      let x_498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_496.xy, x_496.z);
      u_xlat7.w = x_498;
      let x_501 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_501, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_508 : f32 = x_407.x_MainLightShadowParams.y;
      u_xlatb80 = (x_508 == 2.0f);
      let x_510 : bool = u_xlatb80;
      if (x_510) {
        let x_513 : vec4<f32> = vs_TEXCOORD6;
        let x_517 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_521 : vec2<f32> = ((vec2<f32>(x_513.x, x_513.y) * vec2<f32>(x_517.z, x_517.w)) + vec2<f32>(0.5f, 0.5f));
        let x_522 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
        let x_524 : vec4<f32> = u_xlat6;
        let x_526 : vec2<f32> = floor(vec2<f32>(x_524.x, x_524.y));
        let x_527 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
        let x_530 : vec4<f32> = vs_TEXCOORD6;
        let x_533 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_536 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_530.x, x_530.y) * vec2<f32>(x_533.z, x_533.w)) + -(vec2<f32>(x_536.x, x_536.y)));
        let x_540 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_540.x, x_540.x, x_540.y, x_540.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_545 : vec4<f32> = u_xlat7;
        let x_547 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_545.x, x_545.x, x_545.z, x_545.z) * vec4<f32>(x_547.x, x_547.x, x_547.z, x_547.z));
        let x_550 : vec4<f32> = u_xlat8;
        let x_554 : vec2<f32> = (vec2<f32>(x_550.y, x_550.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_555 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_554.x, x_555.y, x_554.y, x_555.w);
        let x_557 : vec4<f32> = u_xlat8;
        let x_560 : vec2<f32> = u_xlat56;
        let x_562 : vec2<f32> = ((vec2<f32>(x_557.x, x_557.z) * vec2<f32>(0.5f, 0.5f)) + -(x_560));
        let x_563 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_562.x, x_562.y, x_563.z, x_563.w);
        let x_566 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_566) + vec2<f32>(1.0f, 1.0f));
        let x_571 : vec2<f32> = u_xlat56;
        let x_573 : vec2<f32> = min(x_571, vec2<f32>(0.0f, 0.0f));
        let x_574 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_573.x, x_573.y, x_574.z, x_574.w);
        let x_576 : vec4<f32> = u_xlat9;
        let x_579 : vec4<f32> = u_xlat9;
        let x_582 : vec2<f32> = u_xlat58;
        let x_583 : vec2<f32> = ((-(vec2<f32>(x_576.x, x_576.y)) * vec2<f32>(x_579.x, x_579.y)) + x_582);
        let x_584 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_586 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_586, vec2<f32>(0.0f, 0.0f));
        let x_588 : vec2<f32> = u_xlat56;
        let x_590 : vec2<f32> = u_xlat56;
        let x_592 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_588) * x_590) + vec2<f32>(x_592.y, x_592.w));
        let x_595 : vec4<f32> = u_xlat9;
        let x_597 : vec2<f32> = (vec2<f32>(x_595.x, x_595.y) + vec2<f32>(1.0f, 1.0f));
        let x_598 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
        let x_600 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_600 + vec2<f32>(1.0f, 1.0f));
        let x_603 : vec4<f32> = u_xlat8;
        let x_607 : vec2<f32> = (vec2<f32>(x_603.x, x_603.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_608 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
        let x_610 : vec2<f32> = u_xlat58;
        let x_611 : vec2<f32> = (x_610 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_612 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
        let x_614 : vec4<f32> = u_xlat9;
        let x_616 : vec2<f32> = (vec2<f32>(x_614.x, x_614.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_617 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_620 : vec2<f32> = u_xlat56;
        let x_621 : vec2<f32> = (x_620 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_622 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
        let x_624 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_624.y, x_624.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_628 : f32 = u_xlat9.x;
        u_xlat10.z = x_628;
        let x_631 : f32 = u_xlat56.x;
        u_xlat10.w = x_631;
        let x_634 : f32 = u_xlat11.x;
        u_xlat8.z = x_634;
        let x_637 : f32 = u_xlat7.x;
        u_xlat8.w = x_637;
        let x_640 : vec4<f32> = u_xlat8;
        let x_642 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_640.z, x_640.w, x_640.x, x_640.z) + vec4<f32>(x_642.z, x_642.w, x_642.x, x_642.z));
        let x_646 : f32 = u_xlat10.y;
        u_xlat9.z = x_646;
        let x_649 : f32 = u_xlat56.y;
        u_xlat9.w = x_649;
        let x_652 : f32 = u_xlat8.y;
        u_xlat11.z = x_652;
        let x_655 : f32 = u_xlat7.z;
        u_xlat11.w = x_655;
        let x_657 : vec4<f32> = u_xlat9;
        let x_659 : vec4<f32> = u_xlat11;
        let x_661 : vec3<f32> = (vec3<f32>(x_657.z, x_657.y, x_657.w) + vec3<f32>(x_659.z, x_659.y, x_659.w));
        let x_662 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat8;
        let x_666 : vec4<f32> = u_xlat12;
        let x_668 : vec3<f32> = (vec3<f32>(x_664.x, x_664.z, x_664.w) / vec3<f32>(x_666.z, x_666.w, x_666.y));
        let x_669 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat8;
        let x_676 : vec3<f32> = (vec3<f32>(x_671.x, x_671.y, x_671.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_677 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
        let x_679 : vec4<f32> = u_xlat11;
        let x_681 : vec4<f32> = u_xlat7;
        let x_683 : vec3<f32> = (vec3<f32>(x_679.z, x_679.y, x_679.w) / vec3<f32>(x_681.x, x_681.y, x_681.z));
        let x_684 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
        let x_686 : vec4<f32> = u_xlat9;
        let x_688 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_689 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat8;
        let x_694 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_696 : vec3<f32> = (vec3<f32>(x_691.y, x_691.x, x_691.z) * vec3<f32>(x_694.x, x_694.x, x_694.x));
        let x_697 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
        let x_699 : vec4<f32> = u_xlat9;
        let x_702 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_704 : vec3<f32> = (vec3<f32>(x_699.x, x_699.y, x_699.z) * vec3<f32>(x_702.y, x_702.y, x_702.y));
        let x_705 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
        let x_708 : f32 = u_xlat9.x;
        u_xlat8.w = x_708;
        let x_710 : vec4<f32> = u_xlat6;
        let x_713 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_716 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_710.x, x_710.y, x_710.x, x_710.y) * vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y)) + vec4<f32>(x_716.y, x_716.w, x_716.x, x_716.w));
        let x_719 : vec4<f32> = u_xlat6;
        let x_722 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_725 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_719.x, x_719.y) * vec2<f32>(x_722.x, x_722.y)) + vec2<f32>(x_725.z, x_725.w));
        let x_729 : f32 = u_xlat8.y;
        u_xlat9.w = x_729;
        let x_731 : vec4<f32> = u_xlat9;
        let x_732 : vec2<f32> = vec2<f32>(x_731.y, x_731.z);
        let x_733 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_733.x, x_732.x, x_733.z, x_732.y);
        let x_735 : vec4<f32> = u_xlat6;
        let x_738 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_741 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_735.x, x_735.y, x_735.x, x_735.y) * vec4<f32>(x_738.x, x_738.y, x_738.x, x_738.y)) + vec4<f32>(x_741.x, x_741.y, x_741.z, x_741.y));
        let x_744 : vec4<f32> = u_xlat6;
        let x_747 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_750 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.y) * vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y)) + vec4<f32>(x_750.w, x_750.y, x_750.w, x_750.z));
        let x_753 : vec4<f32> = u_xlat6;
        let x_756 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_753.x, x_753.y, x_753.x, x_753.y) * vec4<f32>(x_756.x, x_756.y, x_756.x, x_756.y)) + vec4<f32>(x_759.x, x_759.w, x_759.z, x_759.w));
        let x_763 : vec4<f32> = u_xlat7;
        let x_765 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_763.x, x_763.x, x_763.x, x_763.y) * vec4<f32>(x_765.z, x_765.w, x_765.y, x_765.z));
        let x_769 : vec4<f32> = u_xlat7;
        let x_771 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_769.y, x_769.y, x_769.z, x_769.z) * x_771);
        let x_775 : f32 = u_xlat7.z;
        let x_777 : f32 = u_xlat12.y;
        u_xlat80 = (x_775 * x_777);
        let x_780 : vec4<f32> = u_xlat10;
        let x_781 : vec2<f32> = vec2<f32>(x_780.x, x_780.y);
        let x_783 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_781.x, x_781.y, x_783);
        let x_790 : vec3<f32> = txVec4;
        let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_790.xy, x_790.z);
        u_xlat6.x = x_792;
        let x_795 : vec4<f32> = u_xlat10;
        let x_796 : vec2<f32> = vec2<f32>(x_795.z, x_795.w);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_806 : vec3<f32> = txVec5;
        let x_808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_806.xy, x_806.z);
        u_xlat31 = x_808;
        let x_809 : f32 = u_xlat31;
        let x_811 : f32 = u_xlat13.y;
        u_xlat31 = (x_809 * x_811);
        let x_814 : f32 = u_xlat13.x;
        let x_816 : f32 = u_xlat6.x;
        let x_818 : f32 = u_xlat31;
        u_xlat6.x = ((x_814 * x_816) + x_818);
        let x_822 : vec2<f32> = u_xlat56;
        let x_824 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_831 : vec3<f32> = txVec6;
        let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_831.xy, x_831.z);
        u_xlat31 = x_833;
        let x_835 : f32 = u_xlat13.z;
        let x_836 : f32 = u_xlat31;
        let x_839 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_835 * x_836) + x_839);
        let x_843 : vec4<f32> = u_xlat9;
        let x_844 : vec2<f32> = vec2<f32>(x_843.x, x_843.y);
        let x_846 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_844.x, x_844.y, x_846);
        let x_853 : vec3<f32> = txVec7;
        let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_853.xy, x_853.z);
        u_xlat31 = x_855;
        let x_857 : f32 = u_xlat13.w;
        let x_858 : f32 = u_xlat31;
        let x_861 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_857 * x_858) + x_861);
        let x_865 : vec4<f32> = u_xlat11;
        let x_866 : vec2<f32> = vec2<f32>(x_865.x, x_865.y);
        let x_868 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_875 : vec3<f32> = txVec8;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_875.xy, x_875.z);
        u_xlat31 = x_877;
        let x_879 : f32 = u_xlat14.x;
        let x_880 : f32 = u_xlat31;
        let x_883 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_879 * x_880) + x_883);
        let x_887 : vec4<f32> = u_xlat11;
        let x_888 : vec2<f32> = vec2<f32>(x_887.z, x_887.w);
        let x_890 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec9;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat31 = x_899;
        let x_901 : f32 = u_xlat14.y;
        let x_902 : f32 = u_xlat31;
        let x_905 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_901 * x_902) + x_905);
        let x_909 : vec4<f32> = u_xlat9;
        let x_910 : vec2<f32> = vec2<f32>(x_909.z, x_909.w);
        let x_912 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_910.x, x_910.y, x_912);
        let x_919 : vec3<f32> = txVec10;
        let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_919.xy, x_919.z);
        u_xlat31 = x_921;
        let x_923 : f32 = u_xlat14.z;
        let x_924 : f32 = u_xlat31;
        let x_927 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_923 * x_924) + x_927);
        let x_931 : vec4<f32> = u_xlat8;
        let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
        let x_934 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_941 : vec3<f32> = txVec11;
        let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_941.xy, x_941.z);
        u_xlat31 = x_943;
        let x_945 : f32 = u_xlat14.w;
        let x_946 : f32 = u_xlat31;
        let x_949 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_945 * x_946) + x_949);
        let x_953 : vec4<f32> = u_xlat8;
        let x_954 : vec2<f32> = vec2<f32>(x_953.z, x_953.w);
        let x_956 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_954.x, x_954.y, x_956);
        let x_963 : vec3<f32> = txVec12;
        let x_965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_963.xy, x_963.z);
        u_xlat31 = x_965;
        let x_966 : f32 = u_xlat80;
        let x_967 : f32 = u_xlat31;
        let x_970 : f32 = u_xlat6.x;
        u_xlat79 = ((x_966 * x_967) + x_970);
      } else {
        let x_973 : vec4<f32> = vs_TEXCOORD6;
        let x_976 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_979 : vec2<f32> = ((vec2<f32>(x_973.x, x_973.y) * vec2<f32>(x_976.z, x_976.w)) + vec2<f32>(0.5f, 0.5f));
        let x_980 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat6;
        let x_984 : vec2<f32> = floor(vec2<f32>(x_982.x, x_982.y));
        let x_985 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec4<f32> = vs_TEXCOORD6;
        let x_990 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_993 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_987.x, x_987.y) * vec2<f32>(x_990.z, x_990.w)) + -(vec2<f32>(x_993.x, x_993.y)));
        let x_997 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_997.x, x_997.x, x_997.y, x_997.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1000 : vec4<f32> = u_xlat7;
        let x_1002 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1000.x, x_1000.x, x_1000.z, x_1000.z) * vec4<f32>(x_1002.x, x_1002.x, x_1002.z, x_1002.z));
        let x_1005 : vec4<f32> = u_xlat8;
        let x_1009 : vec2<f32> = (vec2<f32>(x_1005.y, x_1005.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1010 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1010.x, x_1009.x, x_1010.z, x_1009.y);
        let x_1012 : vec4<f32> = u_xlat8;
        let x_1015 : vec2<f32> = u_xlat56;
        let x_1017 : vec2<f32> = ((vec2<f32>(x_1012.x, x_1012.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1015));
        let x_1018 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1017.x, x_1018.y, x_1017.y, x_1018.w);
        let x_1020 : vec2<f32> = u_xlat56;
        let x_1022 : vec2<f32> = (-(x_1020) + vec2<f32>(1.0f, 1.0f));
        let x_1023 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1022.x, x_1022.y, x_1023.z, x_1023.w);
        let x_1025 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1025, vec2<f32>(0.0f, 0.0f));
        let x_1027 : vec2<f32> = u_xlat58;
        let x_1029 : vec2<f32> = u_xlat58;
        let x_1031 : vec4<f32> = u_xlat8;
        let x_1033 : vec2<f32> = ((-(x_1027) * x_1029) + vec2<f32>(x_1031.x, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1036, vec2<f32>(0.0f, 0.0f));
        let x_1039 : vec2<f32> = u_xlat58;
        let x_1041 : vec2<f32> = u_xlat58;
        let x_1043 : vec4<f32> = u_xlat7;
        let x_1045 : vec2<f32> = ((-(x_1039) * x_1041) + vec2<f32>(x_1043.y, x_1043.w));
        let x_1046 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1045.x, x_1046.y, x_1045.y);
        let x_1048 : vec4<f32> = u_xlat8;
        let x_1050 : vec2<f32> = (vec2<f32>(x_1048.x, x_1048.y) + vec2<f32>(2.0f, 2.0f));
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1050.x, x_1050.y, x_1051.z, x_1051.w);
        let x_1053 : vec3<f32> = u_xlat32;
        let x_1055 : vec2<f32> = (vec2<f32>(x_1053.x, x_1053.z) + vec2<f32>(2.0f, 2.0f));
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1056.x, x_1055.x, x_1056.z, x_1055.y);
        let x_1059 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1059 * 0.08163200318813323975f);
        let x_1063 : vec4<f32> = u_xlat7;
        let x_1066 : vec3<f32> = (vec3<f32>(x_1063.z, x_1063.x, x_1063.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1067 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
        let x_1069 : vec4<f32> = u_xlat8;
        let x_1072 : vec2<f32> = (vec2<f32>(x_1069.x, x_1069.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1073 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1076 : f32 = u_xlat11.y;
        u_xlat10.x = x_1076;
        let x_1078 : vec2<f32> = u_xlat56;
        let x_1085 : vec2<f32> = ((vec2<f32>(x_1078.x, x_1078.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1086.x, x_1085.x, x_1086.z, x_1085.y);
        let x_1088 : vec2<f32> = u_xlat56;
        let x_1092 : vec2<f32> = ((vec2<f32>(x_1088.x, x_1088.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1093 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1092.x, x_1093.y, x_1092.y, x_1093.w);
        let x_1096 : f32 = u_xlat7.x;
        u_xlat8.y = x_1096;
        let x_1099 : f32 = u_xlat9.y;
        u_xlat8.w = x_1099;
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1102 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1101 + x_1102);
        let x_1104 : vec2<f32> = u_xlat56;
        let x_1107 : vec2<f32> = ((vec2<f32>(x_1104.y, x_1104.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1108 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1108.x, x_1107.x, x_1108.z, x_1107.y);
        let x_1110 : vec2<f32> = u_xlat56;
        let x_1113 : vec2<f32> = ((vec2<f32>(x_1110.y, x_1110.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1114 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1113.x, x_1114.y, x_1113.y, x_1114.w);
        let x_1117 : f32 = u_xlat7.y;
        u_xlat9.y = x_1117;
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1120 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1119 + x_1120);
        let x_1122 : vec4<f32> = u_xlat8;
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1122 / x_1123);
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1125 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1131 : vec4<f32> = u_xlat9;
        let x_1132 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1131 / x_1132);
        let x_1134 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1134 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1136 : vec4<f32> = u_xlat8;
        let x_1139 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1136.w, x_1136.x, x_1136.y, x_1136.z) * vec4<f32>(x_1139.x, x_1139.x, x_1139.x, x_1139.x));
        let x_1142 : vec4<f32> = u_xlat9;
        let x_1145 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1142.x, x_1142.w, x_1142.y, x_1142.z) * vec4<f32>(x_1145.y, x_1145.y, x_1145.y, x_1145.y));
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1149 : vec3<f32> = vec3<f32>(x_1148.y, x_1148.z, x_1148.w);
        let x_1150 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1149.x, x_1150.y, x_1149.y, x_1149.z);
        let x_1153 : f32 = u_xlat9.x;
        u_xlat11.y = x_1153;
        let x_1155 : vec4<f32> = u_xlat6;
        let x_1158 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y) * vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y)) + vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1161.y));
        let x_1164 : vec4<f32> = u_xlat6;
        let x_1167 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.w, x_1170.y));
        let x_1174 : f32 = u_xlat11.y;
        u_xlat8.y = x_1174;
        let x_1177 : f32 = u_xlat9.z;
        u_xlat11.y = x_1177;
        let x_1179 : vec4<f32> = u_xlat6;
        let x_1182 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1179.x, x_1179.y, x_1179.x, x_1179.y) * vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y)) + vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1185.y));
        let x_1188 : vec4<f32> = u_xlat6;
        let x_1191 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1194 : vec4<f32> = u_xlat11;
        let x_1196 : vec2<f32> = ((vec2<f32>(x_1188.x, x_1188.y) * vec2<f32>(x_1191.x, x_1191.y)) + vec2<f32>(x_1194.w, x_1194.y));
        let x_1197 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1200 : f32 = u_xlat11.y;
        u_xlat8.z = x_1200;
        let x_1203 : vec4<f32> = u_xlat6;
        let x_1206 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1209 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1203.x, x_1203.y, x_1203.x, x_1203.y) * vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y)) + vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.z));
        let x_1213 : f32 = u_xlat9.w;
        u_xlat11.y = x_1213;
        let x_1216 : vec4<f32> = u_xlat6;
        let x_1219 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1216.x, x_1216.y, x_1216.x, x_1216.y) * vec4<f32>(x_1219.x, x_1219.y, x_1219.x, x_1219.y)) + vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1222.y));
        let x_1226 : vec4<f32> = u_xlat6;
        let x_1229 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1226.x, x_1226.y) * vec2<f32>(x_1229.x, x_1229.y)) + vec2<f32>(x_1232.w, x_1232.y));
        let x_1236 : f32 = u_xlat11.y;
        u_xlat8.w = x_1236;
        let x_1239 : vec4<f32> = u_xlat6;
        let x_1242 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1239.x, x_1239.y) * vec2<f32>(x_1242.x, x_1242.y)) + vec2<f32>(x_1245.x, x_1245.w));
        let x_1248 : vec4<f32> = u_xlat11;
        let x_1249 : vec3<f32> = vec3<f32>(x_1248.x, x_1248.z, x_1248.w);
        let x_1250 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1249.x, x_1250.y, x_1249.y, x_1249.z);
        let x_1252 : vec4<f32> = u_xlat6;
        let x_1255 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) * vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y)) + vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1258.y));
        let x_1262 : vec4<f32> = u_xlat6;
        let x_1265 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(x_1265.x, x_1265.y)) + vec2<f32>(x_1268.w, x_1268.y));
        let x_1272 : f32 = u_xlat8.x;
        u_xlat9.x = x_1272;
        let x_1274 : vec4<f32> = u_xlat6;
        let x_1277 : vec4<f32> = x_407.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat9;
        let x_1282 : vec2<f32> = ((vec2<f32>(x_1274.x, x_1274.y) * vec2<f32>(x_1277.x, x_1277.y)) + vec2<f32>(x_1280.x, x_1280.y));
        let x_1283 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1283.w);
        let x_1286 : vec4<f32> = u_xlat7;
        let x_1288 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1286.x, x_1286.x, x_1286.x, x_1286.x) * x_1288);
        let x_1291 : vec4<f32> = u_xlat7;
        let x_1293 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1291.y, x_1291.y, x_1291.y, x_1291.y) * x_1293);
        let x_1296 : vec4<f32> = u_xlat7;
        let x_1298 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1296.z, x_1296.z, x_1296.z, x_1296.z) * x_1298);
        let x_1300 : vec4<f32> = u_xlat7;
        let x_1302 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1300.w, x_1300.w, x_1300.w, x_1300.w) * x_1302);
        let x_1305 : vec4<f32> = u_xlat12;
        let x_1306 : vec2<f32> = vec2<f32>(x_1305.x, x_1305.y);
        let x_1308 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec13;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1315.xy, x_1315.z);
        u_xlat80 = x_1317;
        let x_1319 : vec4<f32> = u_xlat12;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.z, x_1319.w);
        let x_1322 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec14;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1329.xy, x_1329.z);
        u_xlat8.x = x_1331;
        let x_1334 : f32 = u_xlat8.x;
        let x_1336 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1334 * x_1336);
        let x_1340 : f32 = u_xlat17.x;
        let x_1341 : f32 = u_xlat80;
        let x_1344 : f32 = u_xlat8.x;
        u_xlat80 = ((x_1340 * x_1341) + x_1344);
        let x_1347 : vec2<f32> = u_xlat56;
        let x_1349 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec15;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1356.xy, x_1356.z);
        u_xlat56.x = x_1358;
        let x_1361 : f32 = u_xlat17.z;
        let x_1363 : f32 = u_xlat56.x;
        let x_1365 : f32 = u_xlat80;
        u_xlat80 = ((x_1361 * x_1363) + x_1365);
        let x_1368 : vec4<f32> = u_xlat15;
        let x_1369 : vec2<f32> = vec2<f32>(x_1368.x, x_1368.y);
        let x_1371 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec16;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1378.xy, x_1378.z);
        u_xlat56.x = x_1380;
        let x_1383 : f32 = u_xlat17.w;
        let x_1385 : f32 = u_xlat56.x;
        let x_1387 : f32 = u_xlat80;
        u_xlat80 = ((x_1383 * x_1385) + x_1387);
        let x_1390 : vec4<f32> = u_xlat13;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.x, x_1390.y);
        let x_1393 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec17;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1400.xy, x_1400.z);
        u_xlat56.x = x_1402;
        let x_1405 : f32 = u_xlat18.x;
        let x_1407 : f32 = u_xlat56.x;
        let x_1409 : f32 = u_xlat80;
        u_xlat80 = ((x_1405 * x_1407) + x_1409);
        let x_1412 : vec4<f32> = u_xlat13;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.z, x_1412.w);
        let x_1415 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec18;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1422.xy, x_1422.z);
        u_xlat56.x = x_1424;
        let x_1427 : f32 = u_xlat18.y;
        let x_1429 : f32 = u_xlat56.x;
        let x_1431 : f32 = u_xlat80;
        u_xlat80 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat14;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.x, x_1434.y);
        let x_1437 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec19;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1444.xy, x_1444.z);
        u_xlat56.x = x_1446;
        let x_1449 : f32 = u_xlat18.z;
        let x_1451 : f32 = u_xlat56.x;
        let x_1453 : f32 = u_xlat80;
        u_xlat80 = ((x_1449 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat15;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.z, x_1456.w);
        let x_1459 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec20;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1466.xy, x_1466.z);
        u_xlat56.x = x_1468;
        let x_1471 : f32 = u_xlat18.w;
        let x_1473 : f32 = u_xlat56.x;
        let x_1475 : f32 = u_xlat80;
        u_xlat80 = ((x_1471 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat16;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.x, x_1478.y);
        let x_1481 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec21;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1488.xy, x_1488.z);
        u_xlat56.x = x_1490;
        let x_1493 : f32 = u_xlat19.x;
        let x_1495 : f32 = u_xlat56.x;
        let x_1497 : f32 = u_xlat80;
        u_xlat80 = ((x_1493 * x_1495) + x_1497);
        let x_1500 : vec4<f32> = u_xlat16;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.z, x_1500.w);
        let x_1503 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec22;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1510.xy, x_1510.z);
        u_xlat56.x = x_1512;
        let x_1515 : f32 = u_xlat19.y;
        let x_1517 : f32 = u_xlat56.x;
        let x_1519 : f32 = u_xlat80;
        u_xlat80 = ((x_1515 * x_1517) + x_1519);
        let x_1522 : vec2<f32> = u_xlat33;
        let x_1524 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec23;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat56.x = x_1533;
        let x_1536 : f32 = u_xlat19.z;
        let x_1538 : f32 = u_xlat56.x;
        let x_1540 : f32 = u_xlat80;
        u_xlat80 = ((x_1536 * x_1538) + x_1540);
        let x_1543 : vec2<f32> = u_xlat64;
        let x_1545 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec24;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1552.xy, x_1552.z);
        u_xlat56.x = x_1554;
        let x_1557 : f32 = u_xlat19.w;
        let x_1559 : f32 = u_xlat56.x;
        let x_1561 : f32 = u_xlat80;
        u_xlat80 = ((x_1557 * x_1559) + x_1561);
        let x_1564 : vec4<f32> = u_xlat11;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.x, x_1564.y);
        let x_1567 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec25;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1574.xy, x_1574.z);
        u_xlat56.x = x_1576;
        let x_1579 : f32 = u_xlat7.x;
        let x_1581 : f32 = u_xlat56.x;
        let x_1583 : f32 = u_xlat80;
        u_xlat80 = ((x_1579 * x_1581) + x_1583);
        let x_1586 : vec4<f32> = u_xlat11;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.z, x_1586.w);
        let x_1589 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec26;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat56.x = x_1598;
        let x_1601 : f32 = u_xlat7.y;
        let x_1603 : f32 = u_xlat56.x;
        let x_1605 : f32 = u_xlat80;
        u_xlat80 = ((x_1601 * x_1603) + x_1605);
        let x_1608 : vec2<f32> = u_xlat59;
        let x_1610 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec27;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1617.xy, x_1617.z);
        u_xlat56.x = x_1619;
        let x_1622 : f32 = u_xlat7.z;
        let x_1624 : f32 = u_xlat56.x;
        let x_1626 : f32 = u_xlat80;
        u_xlat80 = ((x_1622 * x_1624) + x_1626);
        let x_1629 : vec4<f32> = u_xlat6;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.x, x_1629.y);
        let x_1632 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec28;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1639.xy, x_1639.z);
        u_xlat6.x = x_1641;
        let x_1644 : f32 = u_xlat7.w;
        let x_1646 : f32 = u_xlat6.x;
        let x_1648 : f32 = u_xlat80;
        u_xlat79 = ((x_1644 * x_1646) + x_1648);
      }
    }
  } else {
    let x_1652 : vec4<f32> = vs_TEXCOORD6;
    let x_1653 : vec2<f32> = vec2<f32>(x_1652.x, x_1652.y);
    let x_1655 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1653.x, x_1653.y, x_1655);
    let x_1662 : vec3<f32> = txVec29;
    let x_1664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1662.xy, x_1662.z);
    u_xlat79 = x_1664;
  }
  let x_1666 : f32 = x_407.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1666) + 1.0f);
  let x_1669 : f32 = u_xlat79;
  let x_1671 : f32 = x_407.x_MainLightShadowParams.x;
  let x_1673 : f32 = u_xlat80;
  u_xlat79 = ((x_1669 * x_1671) + x_1673);
  let x_1676 : f32 = vs_TEXCOORD6.z;
  u_xlatb80 = (0.0f >= x_1676);
  let x_1680 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_1680 >= 1.0f);
  let x_1682 : bool = u_xlatb80;
  let x_1683 : bool = u_xlatb6;
  u_xlatb80 = (x_1682 | x_1683);
  let x_1685 : bool = u_xlatb80;
  let x_1686 : f32 = u_xlat79;
  u_xlat79 = select(x_1686, 1.0f, x_1685);
  let x_1688 : vec3<f32> = vs_TEXCOORD1;
  let x_1690 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1692 : vec3<f32> = (x_1688 + -(x_1690));
  let x_1693 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  let x_1695 : vec4<f32> = u_xlat6;
  let x_1697 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_1695.x, x_1695.y, x_1695.z), vec3<f32>(x_1697.x, x_1697.y, x_1697.z));
  let x_1700 : f32 = u_xlat80;
  let x_1702 : f32 = x_407.x_MainLightShadowParams.z;
  let x_1705 : f32 = x_407.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1700 * x_1702) + x_1705);
  let x_1709 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1709, 0.0f, 1.0f);
  let x_1712 : f32 = u_xlat79;
  u_xlat31 = (-(x_1712) + 1.0f);
  let x_1716 : f32 = u_xlat6.x;
  let x_1717 : f32 = u_xlat31;
  let x_1719 : f32 = u_xlat79;
  u_xlat79 = ((x_1716 * x_1717) + x_1719);
  let x_1721 : vec3<f32> = u_xlat5;
  let x_1723 : vec3<f32> = u_xlat28;
  u_xlat6.x = dot(-(x_1721), x_1723);
  let x_1727 : f32 = u_xlat6.x;
  let x_1729 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1727 + x_1729);
  let x_1732 : vec3<f32> = u_xlat28;
  let x_1733 : vec4<f32> = u_xlat6;
  let x_1737 : vec3<f32> = u_xlat5;
  let x_1739 : vec3<f32> = ((x_1732 * -(vec3<f32>(x_1733.x, x_1733.x, x_1733.x))) + -(x_1737));
  let x_1740 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
  let x_1743 : vec3<f32> = u_xlat28;
  let x_1744 : vec3<f32> = u_xlat5;
  u_xlat81 = dot(x_1743, x_1744);
  let x_1746 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1746, 0.0f, 1.0f);
  let x_1748 : f32 = u_xlat81;
  u_xlat81 = (-(x_1748) + 1.0f);
  let x_1751 : f32 = u_xlat81;
  let x_1752 : f32 = u_xlat81;
  u_xlat81 = (x_1751 * x_1752);
  let x_1754 : f32 = u_xlat81;
  let x_1755 : f32 = u_xlat81;
  u_xlat81 = (x_1754 * x_1755);
  let x_1757 : f32 = u_xlat75;
  u_xlat7.x = ((-(x_1757) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1764 : f32 = u_xlat75;
  let x_1766 : f32 = u_xlat7.x;
  u_xlat75 = (x_1764 * x_1766);
  let x_1768 : f32 = u_xlat75;
  u_xlat75 = (x_1768 * 6.0f);
  let x_1779 : vec4<f32> = u_xlat6;
  let x_1781 : f32 = u_xlat75;
  let x_1782 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1779.x, x_1779.y, x_1779.z), x_1781);
  u_xlat7 = x_1782;
  let x_1784 : f32 = u_xlat7.w;
  u_xlat75 = (x_1784 + -1.0f);
  let x_1791 : f32 = x_1789.unity_SpecCube0_HDR.w;
  let x_1792 : f32 = u_xlat75;
  u_xlat75 = ((x_1791 * x_1792) + 1.0f);
  let x_1795 : f32 = u_xlat75;
  u_xlat75 = max(x_1795, 0.0f);
  let x_1797 : f32 = u_xlat75;
  u_xlat75 = log2(x_1797);
  let x_1799 : f32 = u_xlat75;
  let x_1801 : f32 = x_1789.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_1799 * x_1801);
  let x_1803 : f32 = u_xlat75;
  u_xlat75 = exp2(x_1803);
  let x_1805 : f32 = u_xlat75;
  let x_1807 : f32 = x_1789.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_1805 * x_1807);
  let x_1809 : vec4<f32> = u_xlat7;
  let x_1811 : f32 = u_xlat75;
  let x_1813 : vec3<f32> = (vec3<f32>(x_1809.x, x_1809.y, x_1809.z) * vec3<f32>(x_1811, x_1811, x_1811));
  let x_1814 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
  let x_1816 : vec2<f32> = u_xlat1;
  let x_1818 : vec2<f32> = u_xlat1;
  let x_1822 : vec2<f32> = ((vec2<f32>(x_1816.x, x_1816.x) * vec2<f32>(x_1818.x, x_1818.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1823 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1822.x, x_1822.y, x_1823.z, x_1823.w);
  let x_1826 : f32 = u_xlat7.y;
  u_xlat75 = (1.0f / x_1826);
  let x_1828 : vec4<f32> = u_xlat0;
  let x_1831 : vec2<f32> = u_xlat51;
  u_xlat32 = (-(vec3<f32>(x_1828.x, x_1828.y, x_1828.z)) + vec3<f32>(x_1831.x, x_1831.x, x_1831.x));
  let x_1834 : f32 = u_xlat81;
  let x_1836 : vec3<f32> = u_xlat32;
  let x_1838 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1834, x_1834, x_1834) * x_1836) + vec3<f32>(x_1838.x, x_1838.y, x_1838.z));
  let x_1841 : f32 = u_xlat75;
  let x_1843 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1841, x_1841, x_1841) * x_1843);
  let x_1845 : vec4<f32> = u_xlat6;
  let x_1847 : vec3<f32> = u_xlat32;
  let x_1848 : vec3<f32> = (vec3<f32>(x_1845.x, x_1845.y, x_1845.z) * x_1847);
  let x_1849 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
  let x_1851 : vec4<f32> = u_xlat4;
  let x_1853 : vec3<f32> = u_xlat27;
  let x_1855 : vec4<f32> = u_xlat6;
  let x_1857 : vec3<f32> = ((vec3<f32>(x_1851.x, x_1851.y, x_1851.z) * x_1853) + vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
  let x_1858 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);
  let x_1860 : f32 = u_xlat79;
  let x_1862 : f32 = x_1789.unity_LightData.z;
  u_xlat75 = (x_1860 * x_1862);
  let x_1864 : vec3<f32> = u_xlat28;
  let x_1866 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(x_1864, vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
  let x_1871 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1871, 0.0f, 1.0f);
  let x_1874 : f32 = u_xlat75;
  let x_1876 : f32 = u_xlat1.x;
  u_xlat75 = (x_1874 * x_1876);
  let x_1878 : f32 = u_xlat75;
  let x_1881 : vec4<f32> = x_28.x_MainLightColor;
  let x_1883 : vec3<f32> = (vec3<f32>(x_1878, x_1878, x_1878) * vec3<f32>(x_1881.x, x_1881.y, x_1881.z));
  let x_1884 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1884.w);
  let x_1886 : vec3<f32> = u_xlat5;
  let x_1888 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat32 = (x_1886 + vec3<f32>(x_1888.x, x_1888.y, x_1888.z));
  let x_1891 : vec3<f32> = u_xlat32;
  let x_1892 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1891, x_1892);
  let x_1894 : f32 = u_xlat75;
  u_xlat75 = max(x_1894, 1.17549435e-38f);
  let x_1897 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1897);
  let x_1899 : f32 = u_xlat75;
  let x_1901 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1899, x_1899, x_1899) * x_1901);
  let x_1903 : vec3<f32> = u_xlat28;
  let x_1904 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1903, x_1904);
  let x_1906 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1906, 0.0f, 1.0f);
  let x_1909 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1911 : vec3<f32> = u_xlat32;
  u_xlat1.x = dot(vec3<f32>(x_1909.x, x_1909.y, x_1909.z), x_1911);
  let x_1915 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1915, 0.0f, 1.0f);
  let x_1918 : f32 = u_xlat75;
  let x_1919 : f32 = u_xlat75;
  u_xlat75 = (x_1918 * x_1919);
  let x_1921 : f32 = u_xlat75;
  let x_1923 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1921 * x_1923) + 1.00001001358032226562f);
  let x_1928 : f32 = u_xlat1.x;
  let x_1930 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1928 * x_1930);
  let x_1933 : f32 = u_xlat75;
  let x_1934 : f32 = u_xlat75;
  u_xlat75 = (x_1933 * x_1934);
  let x_1937 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1937, 0.10000000149011611938f);
  let x_1941 : f32 = u_xlat75;
  let x_1943 : f32 = u_xlat1.x;
  u_xlat75 = (x_1941 * x_1943);
  let x_1945 : f32 = u_xlat76;
  let x_1946 : f32 = u_xlat75;
  u_xlat75 = (x_1945 * x_1946);
  let x_1948 : f32 = u_xlat26;
  let x_1949 : f32 = u_xlat75;
  u_xlat75 = (x_1948 / x_1949);
  let x_1951 : vec4<f32> = u_xlat0;
  let x_1953 : f32 = u_xlat75;
  let x_1956 : vec3<f32> = u_xlat27;
  u_xlat32 = ((vec3<f32>(x_1951.x, x_1951.y, x_1951.z) * vec3<f32>(x_1953, x_1953, x_1953)) + x_1956);
  let x_1958 : vec4<f32> = u_xlat6;
  let x_1960 : vec3<f32> = u_xlat32;
  let x_1961 : vec3<f32> = (vec3<f32>(x_1958.x, x_1958.y, x_1958.z) * x_1960);
  let x_1962 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1961.x, x_1961.y, x_1961.z, x_1962.w);
  let x_1966 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1968 : f32 = x_1789.unity_LightData.y;
  u_xlat75 = min(x_1966, x_1968);
  let x_1972 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1972));
  let x_1975 : f32 = u_xlat80;
  let x_1978 : f32 = x_407.x_AdditionalShadowFadeParams.x;
  let x_1981 : f32 = x_407.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1975 * x_1978) + x_1981);
  let x_1985 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1985, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1998 : u32 = u_xlatu_loop_1;
    let x_1999 : u32 = u_xlatu75;
    if ((x_1998 < x_1999)) {
    } else {
      break;
    }
    let x_2002 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_2002 >> 2u);
    let x_2006 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2006 & 3u));
    let x_2009 : u32 = u_xlatu79;
    let x_2012 : vec4<f32> = x_1789.unity_LightIndices[bitcast<i32>(x_2009)];
    let x_2022 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2027 : vec4<u32> = indexable[x_2022];
    u_xlat79 = dot(x_2012, bitcast<vec4<f32>>(x_2027));
    let x_2031 : f32 = u_xlat79;
    u_xlati79 = i32(x_2031);
    let x_2033 : vec3<f32> = vs_TEXCOORD1;
    let x_2044 : i32 = u_xlati79;
    let x_2046 : vec4<f32> = x_2043.x_AdditionalLightsPosition[x_2044];
    let x_2049 : i32 = u_xlati79;
    let x_2051 : vec4<f32> = x_2043.x_AdditionalLightsPosition[x_2049];
    let x_2053 : vec3<f32> = ((-(x_2033) * vec3<f32>(x_2046.w, x_2046.w, x_2046.w)) + vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
    let x_2054 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2053.x, x_2053.y, x_2053.z, x_2054.w);
    let x_2056 : vec4<f32> = u_xlat8;
    let x_2058 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_2056.x, x_2056.y, x_2056.z), vec3<f32>(x_2058.x, x_2058.y, x_2058.z));
    let x_2061 : f32 = u_xlat80;
    u_xlat80 = max(x_2061, 0.00006103515625f);
    let x_2064 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2064);
    let x_2066 : f32 = u_xlat81;
    let x_2068 : vec4<f32> = u_xlat8;
    let x_2070 : vec3<f32> = (vec3<f32>(x_2066, x_2066, x_2066) * vec3<f32>(x_2068.x, x_2068.y, x_2068.z));
    let x_2071 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
    let x_2074 : f32 = u_xlat80;
    u_xlat83 = (1.0f / x_2074);
    let x_2076 : f32 = u_xlat80;
    let x_2077 : i32 = u_xlati79;
    let x_2079 : f32 = x_2043.x_AdditionalLightsAttenuation[x_2077].x;
    u_xlat80 = (x_2076 * x_2079);
    let x_2081 : f32 = u_xlat80;
    let x_2083 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2081) * x_2083) + 1.0f);
    let x_2086 : f32 = u_xlat80;
    u_xlat80 = max(x_2086, 0.0f);
    let x_2088 : f32 = u_xlat80;
    let x_2089 : f32 = u_xlat80;
    u_xlat80 = (x_2088 * x_2089);
    let x_2091 : f32 = u_xlat80;
    let x_2092 : f32 = u_xlat83;
    u_xlat80 = (x_2091 * x_2092);
    let x_2094 : i32 = u_xlati79;
    let x_2096 : vec4<f32> = x_2043.x_AdditionalLightsSpotDir[x_2094];
    let x_2098 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2096.x, x_2096.y, x_2096.z), vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
    let x_2101 : f32 = u_xlat83;
    let x_2102 : i32 = u_xlati79;
    let x_2104 : f32 = x_2043.x_AdditionalLightsAttenuation[x_2102].z;
    let x_2106 : i32 = u_xlati79;
    let x_2108 : f32 = x_2043.x_AdditionalLightsAttenuation[x_2106].w;
    u_xlat83 = ((x_2101 * x_2104) + x_2108);
    let x_2110 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2110, 0.0f, 1.0f);
    let x_2112 : f32 = u_xlat83;
    let x_2113 : f32 = u_xlat83;
    u_xlat83 = (x_2112 * x_2113);
    let x_2115 : f32 = u_xlat80;
    let x_2116 : f32 = u_xlat83;
    u_xlat80 = (x_2115 * x_2116);
    let x_2120 : i32 = u_xlati79;
    let x_2122 : f32 = x_407.x_AdditionalShadowParams[x_2120].w;
    u_xlati83 = i32(x_2122);
    let x_2125 : i32 = u_xlati83;
    u_xlatb84 = (x_2125 >= 0i);
    let x_2127 : bool = u_xlatb84;
    if (x_2127) {
      let x_2131 : i32 = u_xlati79;
      let x_2133 : f32 = x_407.x_AdditionalShadowParams[x_2131].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2133, x_2133, x_2133, x_2133))));
      let x_2138 : bool = u_xlatb84;
      if (x_2138) {
        let x_2143 : vec4<f32> = u_xlat9;
        let x_2146 : vec4<f32> = u_xlat9;
        let x_2149 : vec4<bool> = (abs(vec4<f32>(x_2143.z, x_2143.z, x_2143.y, x_2143.z)) >= abs(vec4<f32>(x_2146.x, x_2146.y, x_2146.x, x_2146.x)));
        let x_2151 : vec3<bool> = vec3<bool>(x_2149.x, x_2149.y, x_2149.z);
        let x_2152 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
        let x_2155 : bool = u_xlatb10.y;
        let x_2157 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2155 & x_2157);
        let x_2159 : vec4<f32> = u_xlat9;
        let x_2162 : vec4<bool> = (-(vec4<f32>(x_2159.z, x_2159.y, x_2159.z, x_2159.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2163 : vec3<bool> = vec3<bool>(x_2162.x, x_2162.y, x_2162.w);
        let x_2164 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2163.x, x_2163.y, x_2164.z, x_2163.z);
        let x_2167 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2167);
        let x_2172 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2172);
        let x_2178 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2178);
        let x_2182 : bool = u_xlatb10.z;
        if (x_2182) {
          let x_2187 : f32 = u_xlat10.y;
          x_2183 = x_2187;
        } else {
          let x_2189 : f32 = u_xlat85;
          x_2183 = x_2189;
        }
        let x_2190 : f32 = x_2183;
        u_xlat35 = x_2190;
        let x_2192 : bool = u_xlatb84;
        if (x_2192) {
          let x_2197 : f32 = u_xlat10.x;
          x_2193 = x_2197;
        } else {
          let x_2199 : f32 = u_xlat35;
          x_2193 = x_2199;
        }
        let x_2200 : f32 = x_2193;
        u_xlat84 = x_2200;
        let x_2201 : i32 = u_xlati79;
        let x_2203 : f32 = x_407.x_AdditionalShadowParams[x_2201].w;
        u_xlat10.x = trunc(x_2203);
        let x_2206 : f32 = u_xlat84;
        let x_2208 : f32 = u_xlat10.x;
        u_xlat84 = (x_2206 + x_2208);
        let x_2210 : f32 = u_xlat84;
        u_xlati83 = i32(x_2210);
      }
      let x_2212 : i32 = u_xlati83;
      u_xlati83 = (x_2212 << bitcast<u32>(2i));
      let x_2214 : vec3<f32> = vs_TEXCOORD1;
      let x_2217 : i32 = u_xlati83;
      let x_2220 : i32 = u_xlati83;
      let x_2224 : vec4<f32> = x_407.x_AdditionalLightsWorldToShadow[((x_2217 + 1i) / 4i)][((x_2220 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2214.y, x_2214.y, x_2214.y, x_2214.y) * x_2224);
      let x_2226 : i32 = u_xlati83;
      let x_2228 : i32 = u_xlati83;
      let x_2231 : vec4<f32> = x_407.x_AdditionalLightsWorldToShadow[(x_2226 / 4i)][(x_2228 % 4i)];
      let x_2232 : vec3<f32> = vs_TEXCOORD1;
      let x_2235 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2231 * vec4<f32>(x_2232.x, x_2232.x, x_2232.x, x_2232.x)) + x_2235);
      let x_2237 : i32 = u_xlati83;
      let x_2240 : i32 = u_xlati83;
      let x_2244 : vec4<f32> = x_407.x_AdditionalLightsWorldToShadow[((x_2237 + 2i) / 4i)][((x_2240 + 2i) % 4i)];
      let x_2245 : vec3<f32> = vs_TEXCOORD1;
      let x_2248 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2244 * vec4<f32>(x_2245.z, x_2245.z, x_2245.z, x_2245.z)) + x_2248);
      let x_2250 : vec4<f32> = u_xlat10;
      let x_2251 : i32 = u_xlati83;
      let x_2254 : i32 = u_xlati83;
      let x_2258 : vec4<f32> = x_407.x_AdditionalLightsWorldToShadow[((x_2251 + 3i) / 4i)][((x_2254 + 3i) % 4i)];
      u_xlat10 = (x_2250 + x_2258);
      let x_2260 : vec4<f32> = u_xlat10;
      let x_2262 : vec4<f32> = u_xlat10;
      let x_2264 : vec3<f32> = (vec3<f32>(x_2260.x, x_2260.y, x_2260.z) / vec3<f32>(x_2262.w, x_2262.w, x_2262.w));
      let x_2265 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
      let x_2268 : i32 = u_xlati79;
      let x_2270 : f32 = x_407.x_AdditionalShadowParams[x_2268].y;
      u_xlatb83 = (0.0f < x_2270);
      let x_2272 : bool = u_xlatb83;
      if (x_2272) {
        let x_2275 : i32 = u_xlati79;
        let x_2277 : f32 = x_407.x_AdditionalShadowParams[x_2275].y;
        u_xlatb83 = (1.0f == x_2277);
        let x_2279 : bool = u_xlatb83;
        if (x_2279) {
          let x_2282 : vec4<f32> = u_xlat10;
          let x_2285 : vec4<f32> = x_407.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2282.x, x_2282.y, x_2282.x, x_2282.y) + x_2285);
          let x_2288 : vec4<f32> = u_xlat11;
          let x_2289 : vec2<f32> = vec2<f32>(x_2288.x, x_2288.y);
          let x_2291 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2289.x, x_2289.y, x_2291);
          let x_2299 : vec3<f32> = txVec30;
          let x_2301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2299.xy, x_2299.z);
          u_xlat12.x = x_2301;
          let x_2304 : vec4<f32> = u_xlat11;
          let x_2305 : vec2<f32> = vec2<f32>(x_2304.z, x_2304.w);
          let x_2307 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2305.x, x_2305.y, x_2307);
          let x_2314 : vec3<f32> = txVec31;
          let x_2316 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2314.xy, x_2314.z);
          u_xlat12.y = x_2316;
          let x_2318 : vec4<f32> = u_xlat10;
          let x_2322 : vec4<f32> = x_407.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2318.x, x_2318.y, x_2318.x, x_2318.y) + x_2322);
          let x_2325 : vec4<f32> = u_xlat11;
          let x_2326 : vec2<f32> = vec2<f32>(x_2325.x, x_2325.y);
          let x_2328 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2326.x, x_2326.y, x_2328);
          let x_2335 : vec3<f32> = txVec32;
          let x_2337 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2335.xy, x_2335.z);
          u_xlat12.z = x_2337;
          let x_2340 : vec4<f32> = u_xlat11;
          let x_2341 : vec2<f32> = vec2<f32>(x_2340.z, x_2340.w);
          let x_2343 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2341.x, x_2341.y, x_2343);
          let x_2350 : vec3<f32> = txVec33;
          let x_2352 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2350.xy, x_2350.z);
          u_xlat12.w = x_2352;
          let x_2354 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2354, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2357 : i32 = u_xlati79;
          let x_2359 : f32 = x_407.x_AdditionalShadowParams[x_2357].y;
          u_xlatb84 = (2.0f == x_2359);
          let x_2361 : bool = u_xlatb84;
          if (x_2361) {
            let x_2364 : vec4<f32> = u_xlat10;
            let x_2368 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2371 : vec2<f32> = ((vec2<f32>(x_2364.x, x_2364.y) * vec2<f32>(x_2368.z, x_2368.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2372 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2371.x, x_2371.y, x_2372.z, x_2372.w);
            let x_2374 : vec4<f32> = u_xlat11;
            let x_2376 : vec2<f32> = floor(vec2<f32>(x_2374.x, x_2374.y));
            let x_2377 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2376.x, x_2376.y, x_2377.z, x_2377.w);
            let x_2380 : vec4<f32> = u_xlat10;
            let x_2383 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2386 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2380.x, x_2380.y) * vec2<f32>(x_2383.z, x_2383.w)) + -(vec2<f32>(x_2386.x, x_2386.y)));
            let x_2390 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2390.x, x_2390.x, x_2390.y, x_2390.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2393 : vec4<f32> = u_xlat12;
            let x_2395 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2393.x, x_2393.x, x_2393.z, x_2393.z) * vec4<f32>(x_2395.x, x_2395.x, x_2395.z, x_2395.z));
            let x_2398 : vec4<f32> = u_xlat13;
            let x_2400 : vec2<f32> = (vec2<f32>(x_2398.y, x_2398.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2401 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2400.x, x_2401.y, x_2400.y, x_2401.w);
            let x_2403 : vec4<f32> = u_xlat13;
            let x_2406 : vec2<f32> = u_xlat61;
            let x_2408 : vec2<f32> = ((vec2<f32>(x_2403.x, x_2403.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2406));
            let x_2409 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2408.x, x_2408.y, x_2409.z, x_2409.w);
            let x_2412 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2412) + vec2<f32>(1.0f, 1.0f));
            let x_2415 : vec2<f32> = u_xlat61;
            let x_2416 : vec2<f32> = min(x_2415, vec2<f32>(0.0f, 0.0f));
            let x_2417 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2416.x, x_2416.y, x_2417.z, x_2417.w);
            let x_2419 : vec4<f32> = u_xlat14;
            let x_2422 : vec4<f32> = u_xlat14;
            let x_2425 : vec2<f32> = u_xlat63;
            let x_2426 : vec2<f32> = ((-(vec2<f32>(x_2419.x, x_2419.y)) * vec2<f32>(x_2422.x, x_2422.y)) + x_2425);
            let x_2427 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2426.x, x_2426.y, x_2427.z, x_2427.w);
            let x_2429 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2429, vec2<f32>(0.0f, 0.0f));
            let x_2431 : vec2<f32> = u_xlat61;
            let x_2433 : vec2<f32> = u_xlat61;
            let x_2435 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2431) * x_2433) + vec2<f32>(x_2435.y, x_2435.w));
            let x_2438 : vec4<f32> = u_xlat14;
            let x_2440 : vec2<f32> = (vec2<f32>(x_2438.x, x_2438.y) + vec2<f32>(1.0f, 1.0f));
            let x_2441 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2440.x, x_2440.y, x_2441.z, x_2441.w);
            let x_2443 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2443 + vec2<f32>(1.0f, 1.0f));
            let x_2445 : vec4<f32> = u_xlat13;
            let x_2447 : vec2<f32> = (vec2<f32>(x_2445.x, x_2445.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2448 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2447.x, x_2447.y, x_2448.z, x_2448.w);
            let x_2450 : vec2<f32> = u_xlat63;
            let x_2451 : vec2<f32> = (x_2450 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2452 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2451.x, x_2451.y, x_2452.z, x_2452.w);
            let x_2454 : vec4<f32> = u_xlat14;
            let x_2456 : vec2<f32> = (vec2<f32>(x_2454.x, x_2454.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2457 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2456.x, x_2456.y, x_2457.z, x_2457.w);
            let x_2459 : vec2<f32> = u_xlat61;
            let x_2460 : vec2<f32> = (x_2459 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2461 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2460.x, x_2460.y, x_2461.z, x_2461.w);
            let x_2463 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2463.y, x_2463.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2467 : f32 = u_xlat14.x;
            u_xlat15.z = x_2467;
            let x_2470 : f32 = u_xlat61.x;
            u_xlat15.w = x_2470;
            let x_2473 : f32 = u_xlat16.x;
            u_xlat13.z = x_2473;
            let x_2476 : f32 = u_xlat12.x;
            u_xlat13.w = x_2476;
            let x_2478 : vec4<f32> = u_xlat13;
            let x_2480 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2478.z, x_2478.w, x_2478.x, x_2478.z) + vec4<f32>(x_2480.z, x_2480.w, x_2480.x, x_2480.z));
            let x_2484 : f32 = u_xlat15.y;
            u_xlat14.z = x_2484;
            let x_2487 : f32 = u_xlat61.y;
            u_xlat14.w = x_2487;
            let x_2490 : f32 = u_xlat13.y;
            u_xlat16.z = x_2490;
            let x_2493 : f32 = u_xlat12.z;
            u_xlat16.w = x_2493;
            let x_2495 : vec4<f32> = u_xlat14;
            let x_2497 : vec4<f32> = u_xlat16;
            let x_2499 : vec3<f32> = (vec3<f32>(x_2495.z, x_2495.y, x_2495.w) + vec3<f32>(x_2497.z, x_2497.y, x_2497.w));
            let x_2500 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2500.w);
            let x_2502 : vec4<f32> = u_xlat13;
            let x_2504 : vec4<f32> = u_xlat17;
            let x_2506 : vec3<f32> = (vec3<f32>(x_2502.x, x_2502.z, x_2502.w) / vec3<f32>(x_2504.z, x_2504.w, x_2504.y));
            let x_2507 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
            let x_2509 : vec4<f32> = u_xlat13;
            let x_2511 : vec3<f32> = (vec3<f32>(x_2509.x, x_2509.y, x_2509.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2512 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2511.x, x_2511.y, x_2511.z, x_2512.w);
            let x_2514 : vec4<f32> = u_xlat16;
            let x_2516 : vec4<f32> = u_xlat12;
            let x_2518 : vec3<f32> = (vec3<f32>(x_2514.z, x_2514.y, x_2514.w) / vec3<f32>(x_2516.x, x_2516.y, x_2516.z));
            let x_2519 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2518.x, x_2518.y, x_2518.z, x_2519.w);
            let x_2521 : vec4<f32> = u_xlat14;
            let x_2523 : vec3<f32> = (vec3<f32>(x_2521.x, x_2521.y, x_2521.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2524 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2523.x, x_2523.y, x_2523.z, x_2524.w);
            let x_2526 : vec4<f32> = u_xlat13;
            let x_2529 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2531 : vec3<f32> = (vec3<f32>(x_2526.y, x_2526.x, x_2526.z) * vec3<f32>(x_2529.x, x_2529.x, x_2529.x));
            let x_2532 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2531.x, x_2531.y, x_2531.z, x_2532.w);
            let x_2534 : vec4<f32> = u_xlat14;
            let x_2537 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2539 : vec3<f32> = (vec3<f32>(x_2534.x, x_2534.y, x_2534.z) * vec3<f32>(x_2537.y, x_2537.y, x_2537.y));
            let x_2540 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2540.w);
            let x_2543 : f32 = u_xlat14.x;
            u_xlat13.w = x_2543;
            let x_2545 : vec4<f32> = u_xlat11;
            let x_2548 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2551 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2545.x, x_2545.y, x_2545.x, x_2545.y) * vec4<f32>(x_2548.x, x_2548.y, x_2548.x, x_2548.y)) + vec4<f32>(x_2551.y, x_2551.w, x_2551.x, x_2551.w));
            let x_2554 : vec4<f32> = u_xlat11;
            let x_2557 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2560 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2554.x, x_2554.y) * vec2<f32>(x_2557.x, x_2557.y)) + vec2<f32>(x_2560.z, x_2560.w));
            let x_2564 : f32 = u_xlat13.y;
            u_xlat14.w = x_2564;
            let x_2566 : vec4<f32> = u_xlat14;
            let x_2567 : vec2<f32> = vec2<f32>(x_2566.y, x_2566.z);
            let x_2568 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2568.x, x_2567.x, x_2568.z, x_2567.y);
            let x_2570 : vec4<f32> = u_xlat11;
            let x_2573 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2576 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2570.x, x_2570.y, x_2570.x, x_2570.y) * vec4<f32>(x_2573.x, x_2573.y, x_2573.x, x_2573.y)) + vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2576.y));
            let x_2579 : vec4<f32> = u_xlat11;
            let x_2582 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2585 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2579.x, x_2579.y, x_2579.x, x_2579.y) * vec4<f32>(x_2582.x, x_2582.y, x_2582.x, x_2582.y)) + vec4<f32>(x_2585.w, x_2585.y, x_2585.w, x_2585.z));
            let x_2588 : vec4<f32> = u_xlat11;
            let x_2591 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2594 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2588.x, x_2588.y, x_2588.x, x_2588.y) * vec4<f32>(x_2591.x, x_2591.y, x_2591.x, x_2591.y)) + vec4<f32>(x_2594.x, x_2594.w, x_2594.z, x_2594.w));
            let x_2597 : vec4<f32> = u_xlat12;
            let x_2599 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2597.x, x_2597.x, x_2597.x, x_2597.y) * vec4<f32>(x_2599.z, x_2599.w, x_2599.y, x_2599.z));
            let x_2602 : vec4<f32> = u_xlat12;
            let x_2604 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2602.y, x_2602.y, x_2602.z, x_2602.z) * x_2604);
            let x_2607 : f32 = u_xlat12.z;
            let x_2609 : f32 = u_xlat17.y;
            u_xlat84 = (x_2607 * x_2609);
            let x_2612 : vec4<f32> = u_xlat15;
            let x_2613 : vec2<f32> = vec2<f32>(x_2612.x, x_2612.y);
            let x_2615 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2613.x, x_2613.y, x_2615);
            let x_2622 : vec3<f32> = txVec34;
            let x_2624 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2622.xy, x_2622.z);
            u_xlat85 = x_2624;
            let x_2626 : vec4<f32> = u_xlat15;
            let x_2627 : vec2<f32> = vec2<f32>(x_2626.z, x_2626.w);
            let x_2629 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2627.x, x_2627.y, x_2629);
            let x_2636 : vec3<f32> = txVec35;
            let x_2638 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2636.xy, x_2636.z);
            u_xlat11.x = x_2638;
            let x_2641 : f32 = u_xlat11.x;
            let x_2643 : f32 = u_xlat18.y;
            u_xlat11.x = (x_2641 * x_2643);
            let x_2647 : f32 = u_xlat18.x;
            let x_2648 : f32 = u_xlat85;
            let x_2651 : f32 = u_xlat11.x;
            u_xlat85 = ((x_2647 * x_2648) + x_2651);
            let x_2654 : vec2<f32> = u_xlat61;
            let x_2656 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2654.x, x_2654.y, x_2656);
            let x_2663 : vec3<f32> = txVec36;
            let x_2665 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2663.xy, x_2663.z);
            u_xlat11.x = x_2665;
            let x_2668 : f32 = u_xlat18.z;
            let x_2670 : f32 = u_xlat11.x;
            let x_2672 : f32 = u_xlat85;
            u_xlat85 = ((x_2668 * x_2670) + x_2672);
            let x_2675 : vec4<f32> = u_xlat14;
            let x_2676 : vec2<f32> = vec2<f32>(x_2675.x, x_2675.y);
            let x_2678 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2676.x, x_2676.y, x_2678);
            let x_2685 : vec3<f32> = txVec37;
            let x_2687 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2685.xy, x_2685.z);
            u_xlat11.x = x_2687;
            let x_2690 : f32 = u_xlat18.w;
            let x_2692 : f32 = u_xlat11.x;
            let x_2694 : f32 = u_xlat85;
            u_xlat85 = ((x_2690 * x_2692) + x_2694);
            let x_2697 : vec4<f32> = u_xlat16;
            let x_2698 : vec2<f32> = vec2<f32>(x_2697.x, x_2697.y);
            let x_2700 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2698.x, x_2698.y, x_2700);
            let x_2707 : vec3<f32> = txVec38;
            let x_2709 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2707.xy, x_2707.z);
            u_xlat11.x = x_2709;
            let x_2712 : f32 = u_xlat19.x;
            let x_2714 : f32 = u_xlat11.x;
            let x_2716 : f32 = u_xlat85;
            u_xlat85 = ((x_2712 * x_2714) + x_2716);
            let x_2719 : vec4<f32> = u_xlat16;
            let x_2720 : vec2<f32> = vec2<f32>(x_2719.z, x_2719.w);
            let x_2722 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2720.x, x_2720.y, x_2722);
            let x_2729 : vec3<f32> = txVec39;
            let x_2731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2729.xy, x_2729.z);
            u_xlat11.x = x_2731;
            let x_2734 : f32 = u_xlat19.y;
            let x_2736 : f32 = u_xlat11.x;
            let x_2738 : f32 = u_xlat85;
            u_xlat85 = ((x_2734 * x_2736) + x_2738);
            let x_2741 : vec4<f32> = u_xlat14;
            let x_2742 : vec2<f32> = vec2<f32>(x_2741.z, x_2741.w);
            let x_2744 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2742.x, x_2742.y, x_2744);
            let x_2751 : vec3<f32> = txVec40;
            let x_2753 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2751.xy, x_2751.z);
            u_xlat11.x = x_2753;
            let x_2756 : f32 = u_xlat19.z;
            let x_2758 : f32 = u_xlat11.x;
            let x_2760 : f32 = u_xlat85;
            u_xlat85 = ((x_2756 * x_2758) + x_2760);
            let x_2763 : vec4<f32> = u_xlat13;
            let x_2764 : vec2<f32> = vec2<f32>(x_2763.x, x_2763.y);
            let x_2766 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2764.x, x_2764.y, x_2766);
            let x_2773 : vec3<f32> = txVec41;
            let x_2775 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2773.xy, x_2773.z);
            u_xlat11.x = x_2775;
            let x_2778 : f32 = u_xlat19.w;
            let x_2780 : f32 = u_xlat11.x;
            let x_2782 : f32 = u_xlat85;
            u_xlat85 = ((x_2778 * x_2780) + x_2782);
            let x_2785 : vec4<f32> = u_xlat13;
            let x_2786 : vec2<f32> = vec2<f32>(x_2785.z, x_2785.w);
            let x_2788 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2786.x, x_2786.y, x_2788);
            let x_2795 : vec3<f32> = txVec42;
            let x_2797 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2795.xy, x_2795.z);
            u_xlat11.x = x_2797;
            let x_2799 : f32 = u_xlat84;
            let x_2801 : f32 = u_xlat11.x;
            let x_2803 : f32 = u_xlat85;
            u_xlat83 = ((x_2799 * x_2801) + x_2803);
          } else {
            let x_2806 : vec4<f32> = u_xlat10;
            let x_2809 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2812 : vec2<f32> = ((vec2<f32>(x_2806.x, x_2806.y) * vec2<f32>(x_2809.z, x_2809.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2813 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2812.x, x_2812.y, x_2813.z, x_2813.w);
            let x_2815 : vec4<f32> = u_xlat11;
            let x_2817 : vec2<f32> = floor(vec2<f32>(x_2815.x, x_2815.y));
            let x_2818 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2817.x, x_2817.y, x_2818.z, x_2818.w);
            let x_2820 : vec4<f32> = u_xlat10;
            let x_2823 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2826 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2820.x, x_2820.y) * vec2<f32>(x_2823.z, x_2823.w)) + -(vec2<f32>(x_2826.x, x_2826.y)));
            let x_2830 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2830.x, x_2830.x, x_2830.y, x_2830.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2833 : vec4<f32> = u_xlat12;
            let x_2835 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2833.x, x_2833.x, x_2833.z, x_2833.z) * vec4<f32>(x_2835.x, x_2835.x, x_2835.z, x_2835.z));
            let x_2838 : vec4<f32> = u_xlat13;
            let x_2840 : vec2<f32> = (vec2<f32>(x_2838.y, x_2838.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2841 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2841.x, x_2840.x, x_2841.z, x_2840.y);
            let x_2843 : vec4<f32> = u_xlat13;
            let x_2846 : vec2<f32> = u_xlat61;
            let x_2848 : vec2<f32> = ((vec2<f32>(x_2843.x, x_2843.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2846));
            let x_2849 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2848.x, x_2849.y, x_2848.y, x_2849.w);
            let x_2851 : vec2<f32> = u_xlat61;
            let x_2853 : vec2<f32> = (-(x_2851) + vec2<f32>(1.0f, 1.0f));
            let x_2854 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2853.x, x_2853.y, x_2854.z, x_2854.w);
            let x_2856 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2856, vec2<f32>(0.0f, 0.0f));
            let x_2858 : vec2<f32> = u_xlat63;
            let x_2860 : vec2<f32> = u_xlat63;
            let x_2862 : vec4<f32> = u_xlat13;
            let x_2864 : vec2<f32> = ((-(x_2858) * x_2860) + vec2<f32>(x_2862.x, x_2862.y));
            let x_2865 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2864.x, x_2864.y, x_2865.z, x_2865.w);
            let x_2867 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2867, vec2<f32>(0.0f, 0.0f));
            let x_2870 : vec2<f32> = u_xlat63;
            let x_2872 : vec2<f32> = u_xlat63;
            let x_2874 : vec4<f32> = u_xlat12;
            let x_2876 : vec2<f32> = ((-(x_2870) * x_2872) + vec2<f32>(x_2874.y, x_2874.w));
            let x_2877 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2876.x, x_2877.y, x_2876.y);
            let x_2879 : vec4<f32> = u_xlat13;
            let x_2881 : vec2<f32> = (vec2<f32>(x_2879.x, x_2879.y) + vec2<f32>(2.0f, 2.0f));
            let x_2882 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2881.x, x_2881.y, x_2882.z, x_2882.w);
            let x_2884 : vec3<f32> = u_xlat37;
            let x_2886 : vec2<f32> = (vec2<f32>(x_2884.x, x_2884.z) + vec2<f32>(2.0f, 2.0f));
            let x_2887 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2887.x, x_2886.x, x_2887.z, x_2886.y);
            let x_2890 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2890 * 0.08163200318813323975f);
            let x_2893 : vec4<f32> = u_xlat12;
            let x_2895 : vec3<f32> = (vec3<f32>(x_2893.z, x_2893.x, x_2893.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2896 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2895.x, x_2895.y, x_2895.z, x_2896.w);
            let x_2898 : vec4<f32> = u_xlat13;
            let x_2900 : vec2<f32> = (vec2<f32>(x_2898.x, x_2898.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2901 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2900.x, x_2900.y, x_2901.z, x_2901.w);
            let x_2904 : f32 = u_xlat16.y;
            u_xlat15.x = x_2904;
            let x_2906 : vec2<f32> = u_xlat61;
            let x_2909 : vec2<f32> = ((vec2<f32>(x_2906.x, x_2906.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2910 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2910.x, x_2909.x, x_2910.z, x_2909.y);
            let x_2912 : vec2<f32> = u_xlat61;
            let x_2915 : vec2<f32> = ((vec2<f32>(x_2912.x, x_2912.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2916 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2915.x, x_2916.y, x_2915.y, x_2916.w);
            let x_2919 : f32 = u_xlat12.x;
            u_xlat13.y = x_2919;
            let x_2922 : f32 = u_xlat14.y;
            u_xlat13.w = x_2922;
            let x_2924 : vec4<f32> = u_xlat13;
            let x_2925 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2924 + x_2925);
            let x_2927 : vec2<f32> = u_xlat61;
            let x_2930 : vec2<f32> = ((vec2<f32>(x_2927.y, x_2927.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2931 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2931.x, x_2930.x, x_2931.z, x_2930.y);
            let x_2933 : vec2<f32> = u_xlat61;
            let x_2936 : vec2<f32> = ((vec2<f32>(x_2933.y, x_2933.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2937 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2936.x, x_2937.y, x_2936.y, x_2937.w);
            let x_2940 : f32 = u_xlat12.y;
            u_xlat14.y = x_2940;
            let x_2942 : vec4<f32> = u_xlat14;
            let x_2943 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2942 + x_2943);
            let x_2945 : vec4<f32> = u_xlat13;
            let x_2946 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2945 / x_2946);
            let x_2948 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2948 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2950 : vec4<f32> = u_xlat14;
            let x_2951 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2950 / x_2951);
            let x_2953 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2953 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2955 : vec4<f32> = u_xlat13;
            let x_2958 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2955.w, x_2955.x, x_2955.y, x_2955.z) * vec4<f32>(x_2958.x, x_2958.x, x_2958.x, x_2958.x));
            let x_2961 : vec4<f32> = u_xlat14;
            let x_2964 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2961.x, x_2961.w, x_2961.y, x_2961.z) * vec4<f32>(x_2964.y, x_2964.y, x_2964.y, x_2964.y));
            let x_2967 : vec4<f32> = u_xlat13;
            let x_2968 : vec3<f32> = vec3<f32>(x_2967.y, x_2967.z, x_2967.w);
            let x_2969 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2968.x, x_2969.y, x_2968.y, x_2968.z);
            let x_2972 : f32 = u_xlat14.x;
            u_xlat16.y = x_2972;
            let x_2974 : vec4<f32> = u_xlat11;
            let x_2977 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2980 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2974.x, x_2974.y, x_2974.x, x_2974.y) * vec4<f32>(x_2977.x, x_2977.y, x_2977.x, x_2977.y)) + vec4<f32>(x_2980.x, x_2980.y, x_2980.z, x_2980.y));
            let x_2983 : vec4<f32> = u_xlat11;
            let x_2986 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_2989 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2983.x, x_2983.y) * vec2<f32>(x_2986.x, x_2986.y)) + vec2<f32>(x_2989.w, x_2989.y));
            let x_2993 : f32 = u_xlat16.y;
            u_xlat13.y = x_2993;
            let x_2996 : f32 = u_xlat14.z;
            u_xlat16.y = x_2996;
            let x_2998 : vec4<f32> = u_xlat11;
            let x_3001 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3004 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2998.x, x_2998.y, x_2998.x, x_2998.y) * vec4<f32>(x_3001.x, x_3001.y, x_3001.x, x_3001.y)) + vec4<f32>(x_3004.x, x_3004.y, x_3004.z, x_3004.y));
            let x_3007 : vec4<f32> = u_xlat11;
            let x_3010 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3013 : vec4<f32> = u_xlat16;
            let x_3015 : vec2<f32> = ((vec2<f32>(x_3007.x, x_3007.y) * vec2<f32>(x_3010.x, x_3010.y)) + vec2<f32>(x_3013.w, x_3013.y));
            let x_3016 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3015.x, x_3015.y, x_3016.z, x_3016.w);
            let x_3019 : f32 = u_xlat16.y;
            u_xlat13.z = x_3019;
            let x_3022 : vec4<f32> = u_xlat11;
            let x_3025 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3028 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3022.x, x_3022.y, x_3022.x, x_3022.y) * vec4<f32>(x_3025.x, x_3025.y, x_3025.x, x_3025.y)) + vec4<f32>(x_3028.x, x_3028.y, x_3028.x, x_3028.z));
            let x_3032 : f32 = u_xlat14.w;
            u_xlat16.y = x_3032;
            let x_3035 : vec4<f32> = u_xlat11;
            let x_3038 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3041 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3035.x, x_3035.y, x_3035.x, x_3035.y) * vec4<f32>(x_3038.x, x_3038.y, x_3038.x, x_3038.y)) + vec4<f32>(x_3041.x, x_3041.y, x_3041.z, x_3041.y));
            let x_3045 : vec4<f32> = u_xlat11;
            let x_3048 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3051 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3045.x, x_3045.y) * vec2<f32>(x_3048.x, x_3048.y)) + vec2<f32>(x_3051.w, x_3051.y));
            let x_3055 : f32 = u_xlat16.y;
            u_xlat13.w = x_3055;
            let x_3058 : vec4<f32> = u_xlat11;
            let x_3061 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3064 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3058.x, x_3058.y) * vec2<f32>(x_3061.x, x_3061.y)) + vec2<f32>(x_3064.x, x_3064.w));
            let x_3067 : vec4<f32> = u_xlat16;
            let x_3068 : vec3<f32> = vec3<f32>(x_3067.x, x_3067.z, x_3067.w);
            let x_3069 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3068.x, x_3069.y, x_3068.y, x_3068.z);
            let x_3071 : vec4<f32> = u_xlat11;
            let x_3074 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3077 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3071.x, x_3071.y, x_3071.x, x_3071.y) * vec4<f32>(x_3074.x, x_3074.y, x_3074.x, x_3074.y)) + vec4<f32>(x_3077.x, x_3077.y, x_3077.z, x_3077.y));
            let x_3080 : vec4<f32> = u_xlat11;
            let x_3083 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3086 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3080.x, x_3080.y) * vec2<f32>(x_3083.x, x_3083.y)) + vec2<f32>(x_3086.w, x_3086.y));
            let x_3090 : f32 = u_xlat13.x;
            u_xlat14.x = x_3090;
            let x_3092 : vec4<f32> = u_xlat11;
            let x_3095 : vec4<f32> = x_407.x_AdditionalShadowmapSize;
            let x_3098 : vec4<f32> = u_xlat14;
            let x_3100 : vec2<f32> = ((vec2<f32>(x_3092.x, x_3092.y) * vec2<f32>(x_3095.x, x_3095.y)) + vec2<f32>(x_3098.x, x_3098.y));
            let x_3101 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3100.x, x_3100.y, x_3101.z, x_3101.w);
            let x_3104 : vec4<f32> = u_xlat12;
            let x_3106 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3104.x, x_3104.x, x_3104.x, x_3104.x) * x_3106);
            let x_3109 : vec4<f32> = u_xlat12;
            let x_3111 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3109.y, x_3109.y, x_3109.y, x_3109.y) * x_3111);
            let x_3114 : vec4<f32> = u_xlat12;
            let x_3116 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3114.z, x_3114.z, x_3114.z, x_3114.z) * x_3116);
            let x_3118 : vec4<f32> = u_xlat12;
            let x_3120 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3118.w, x_3118.w, x_3118.w, x_3118.w) * x_3120);
            let x_3123 : vec4<f32> = u_xlat17;
            let x_3124 : vec2<f32> = vec2<f32>(x_3123.x, x_3123.y);
            let x_3126 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
            let x_3133 : vec3<f32> = txVec43;
            let x_3135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3133.xy, x_3133.z);
            u_xlat84 = x_3135;
            let x_3137 : vec4<f32> = u_xlat17;
            let x_3138 : vec2<f32> = vec2<f32>(x_3137.z, x_3137.w);
            let x_3140 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
            let x_3147 : vec3<f32> = txVec44;
            let x_3149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
            u_xlat85 = x_3149;
            let x_3150 : f32 = u_xlat85;
            let x_3152 : f32 = u_xlat22.y;
            u_xlat85 = (x_3150 * x_3152);
            let x_3155 : f32 = u_xlat22.x;
            let x_3156 : f32 = u_xlat84;
            let x_3158 : f32 = u_xlat85;
            u_xlat84 = ((x_3155 * x_3156) + x_3158);
            let x_3161 : vec2<f32> = u_xlat61;
            let x_3163 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3161.x, x_3161.y, x_3163);
            let x_3170 : vec3<f32> = txVec45;
            let x_3172 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3170.xy, x_3170.z);
            u_xlat85 = x_3172;
            let x_3174 : f32 = u_xlat22.z;
            let x_3175 : f32 = u_xlat85;
            let x_3177 : f32 = u_xlat84;
            u_xlat84 = ((x_3174 * x_3175) + x_3177);
            let x_3180 : vec4<f32> = u_xlat20;
            let x_3181 : vec2<f32> = vec2<f32>(x_3180.x, x_3180.y);
            let x_3183 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
            let x_3190 : vec3<f32> = txVec46;
            let x_3192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
            u_xlat85 = x_3192;
            let x_3194 : f32 = u_xlat22.w;
            let x_3195 : f32 = u_xlat85;
            let x_3197 : f32 = u_xlat84;
            u_xlat84 = ((x_3194 * x_3195) + x_3197);
            let x_3200 : vec4<f32> = u_xlat18;
            let x_3201 : vec2<f32> = vec2<f32>(x_3200.x, x_3200.y);
            let x_3203 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3201.x, x_3201.y, x_3203);
            let x_3210 : vec3<f32> = txVec47;
            let x_3212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3210.xy, x_3210.z);
            u_xlat85 = x_3212;
            let x_3214 : f32 = u_xlat23.x;
            let x_3215 : f32 = u_xlat85;
            let x_3217 : f32 = u_xlat84;
            u_xlat84 = ((x_3214 * x_3215) + x_3217);
            let x_3220 : vec4<f32> = u_xlat18;
            let x_3221 : vec2<f32> = vec2<f32>(x_3220.z, x_3220.w);
            let x_3223 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec48;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat85 = x_3232;
            let x_3234 : f32 = u_xlat23.y;
            let x_3235 : f32 = u_xlat85;
            let x_3237 : f32 = u_xlat84;
            u_xlat84 = ((x_3234 * x_3235) + x_3237);
            let x_3240 : vec4<f32> = u_xlat19;
            let x_3241 : vec2<f32> = vec2<f32>(x_3240.x, x_3240.y);
            let x_3243 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3241.x, x_3241.y, x_3243);
            let x_3250 : vec3<f32> = txVec49;
            let x_3252 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3250.xy, x_3250.z);
            u_xlat85 = x_3252;
            let x_3254 : f32 = u_xlat23.z;
            let x_3255 : f32 = u_xlat85;
            let x_3257 : f32 = u_xlat84;
            u_xlat84 = ((x_3254 * x_3255) + x_3257);
            let x_3260 : vec4<f32> = u_xlat20;
            let x_3261 : vec2<f32> = vec2<f32>(x_3260.z, x_3260.w);
            let x_3263 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3261.x, x_3261.y, x_3263);
            let x_3270 : vec3<f32> = txVec50;
            let x_3272 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3270.xy, x_3270.z);
            u_xlat85 = x_3272;
            let x_3274 : f32 = u_xlat23.w;
            let x_3275 : f32 = u_xlat85;
            let x_3277 : f32 = u_xlat84;
            u_xlat84 = ((x_3274 * x_3275) + x_3277);
            let x_3280 : vec4<f32> = u_xlat21;
            let x_3281 : vec2<f32> = vec2<f32>(x_3280.x, x_3280.y);
            let x_3283 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3281.x, x_3281.y, x_3283);
            let x_3290 : vec3<f32> = txVec51;
            let x_3292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3290.xy, x_3290.z);
            u_xlat85 = x_3292;
            let x_3294 : f32 = u_xlat24.x;
            let x_3295 : f32 = u_xlat85;
            let x_3297 : f32 = u_xlat84;
            u_xlat84 = ((x_3294 * x_3295) + x_3297);
            let x_3300 : vec4<f32> = u_xlat21;
            let x_3301 : vec2<f32> = vec2<f32>(x_3300.z, x_3300.w);
            let x_3303 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3301.x, x_3301.y, x_3303);
            let x_3310 : vec3<f32> = txVec52;
            let x_3312 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3310.xy, x_3310.z);
            u_xlat85 = x_3312;
            let x_3314 : f32 = u_xlat24.y;
            let x_3315 : f32 = u_xlat85;
            let x_3317 : f32 = u_xlat84;
            u_xlat84 = ((x_3314 * x_3315) + x_3317);
            let x_3320 : vec2<f32> = u_xlat38;
            let x_3322 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3320.x, x_3320.y, x_3322);
            let x_3329 : vec3<f32> = txVec53;
            let x_3331 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3329.xy, x_3329.z);
            u_xlat85 = x_3331;
            let x_3333 : f32 = u_xlat24.z;
            let x_3334 : f32 = u_xlat85;
            let x_3336 : f32 = u_xlat84;
            u_xlat84 = ((x_3333 * x_3334) + x_3336);
            let x_3339 : vec2<f32> = u_xlat69;
            let x_3341 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3339.x, x_3339.y, x_3341);
            let x_3348 : vec3<f32> = txVec54;
            let x_3350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3348.xy, x_3348.z);
            u_xlat85 = x_3350;
            let x_3352 : f32 = u_xlat24.w;
            let x_3353 : f32 = u_xlat85;
            let x_3355 : f32 = u_xlat84;
            u_xlat84 = ((x_3352 * x_3353) + x_3355);
            let x_3358 : vec4<f32> = u_xlat16;
            let x_3359 : vec2<f32> = vec2<f32>(x_3358.x, x_3358.y);
            let x_3361 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3359.x, x_3359.y, x_3361);
            let x_3368 : vec3<f32> = txVec55;
            let x_3370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3368.xy, x_3368.z);
            u_xlat85 = x_3370;
            let x_3372 : f32 = u_xlat12.x;
            let x_3373 : f32 = u_xlat85;
            let x_3375 : f32 = u_xlat84;
            u_xlat84 = ((x_3372 * x_3373) + x_3375);
            let x_3378 : vec4<f32> = u_xlat16;
            let x_3379 : vec2<f32> = vec2<f32>(x_3378.z, x_3378.w);
            let x_3381 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3379.x, x_3379.y, x_3381);
            let x_3388 : vec3<f32> = txVec56;
            let x_3390 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3388.xy, x_3388.z);
            u_xlat85 = x_3390;
            let x_3392 : f32 = u_xlat12.y;
            let x_3393 : f32 = u_xlat85;
            let x_3395 : f32 = u_xlat84;
            u_xlat84 = ((x_3392 * x_3393) + x_3395);
            let x_3398 : vec2<f32> = u_xlat64;
            let x_3400 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3398.x, x_3398.y, x_3400);
            let x_3407 : vec3<f32> = txVec57;
            let x_3409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3407.xy, x_3407.z);
            u_xlat85 = x_3409;
            let x_3411 : f32 = u_xlat12.z;
            let x_3412 : f32 = u_xlat85;
            let x_3414 : f32 = u_xlat84;
            u_xlat84 = ((x_3411 * x_3412) + x_3414);
            let x_3417 : vec4<f32> = u_xlat11;
            let x_3418 : vec2<f32> = vec2<f32>(x_3417.x, x_3417.y);
            let x_3420 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3418.x, x_3418.y, x_3420);
            let x_3427 : vec3<f32> = txVec58;
            let x_3429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3427.xy, x_3427.z);
            u_xlat85 = x_3429;
            let x_3431 : f32 = u_xlat12.w;
            let x_3432 : f32 = u_xlat85;
            let x_3434 : f32 = u_xlat84;
            u_xlat83 = ((x_3431 * x_3432) + x_3434);
          }
        }
      } else {
        let x_3438 : vec4<f32> = u_xlat10;
        let x_3439 : vec2<f32> = vec2<f32>(x_3438.x, x_3438.y);
        let x_3441 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3439.x, x_3439.y, x_3441);
        let x_3448 : vec3<f32> = txVec59;
        let x_3450 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3448.xy, x_3448.z);
        u_xlat83 = x_3450;
      }
      let x_3451 : i32 = u_xlati79;
      let x_3453 : f32 = x_407.x_AdditionalShadowParams[x_3451].x;
      u_xlat84 = (1.0f + -(x_3453));
      let x_3456 : f32 = u_xlat83;
      let x_3457 : i32 = u_xlati79;
      let x_3459 : f32 = x_407.x_AdditionalShadowParams[x_3457].x;
      let x_3461 : f32 = u_xlat84;
      u_xlat83 = ((x_3456 * x_3459) + x_3461);
      let x_3464 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3464);
      let x_3467 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3467 >= 1.0f);
      let x_3470 : bool = u_xlatb84;
      let x_3472 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3470 | x_3472);
      let x_3474 : bool = u_xlatb84;
      let x_3475 : f32 = u_xlat83;
      u_xlat83 = select(x_3475, 1.0f, x_3474);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_3478 : f32 = u_xlat83;
    u_xlat84 = (-(x_3478) + 1.0f);
    let x_3482 : f32 = u_xlat1.x;
    let x_3483 : f32 = u_xlat84;
    let x_3485 : f32 = u_xlat83;
    u_xlat83 = ((x_3482 * x_3483) + x_3485);
    let x_3487 : f32 = u_xlat80;
    let x_3488 : f32 = u_xlat83;
    u_xlat80 = (x_3487 * x_3488);
    let x_3490 : vec3<f32> = u_xlat28;
    let x_3491 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(x_3490, vec3<f32>(x_3491.x, x_3491.y, x_3491.z));
    let x_3494 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3494, 0.0f, 1.0f);
    let x_3496 : f32 = u_xlat80;
    let x_3497 : f32 = u_xlat83;
    u_xlat80 = (x_3496 * x_3497);
    let x_3499 : f32 = u_xlat80;
    let x_3501 : i32 = u_xlati79;
    let x_3503 : vec4<f32> = x_2043.x_AdditionalLightsColor[x_3501];
    let x_3505 : vec3<f32> = (vec3<f32>(x_3499, x_3499, x_3499) * vec3<f32>(x_3503.x, x_3503.y, x_3503.z));
    let x_3506 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3505.x, x_3505.y, x_3505.z, x_3506.w);
    let x_3508 : vec4<f32> = u_xlat8;
    let x_3510 : f32 = u_xlat81;
    let x_3513 : vec3<f32> = u_xlat5;
    let x_3514 : vec3<f32> = ((vec3<f32>(x_3508.x, x_3508.y, x_3508.z) * vec3<f32>(x_3510, x_3510, x_3510)) + x_3513);
    let x_3515 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3514.x, x_3514.y, x_3514.z, x_3515.w);
    let x_3517 : vec4<f32> = u_xlat8;
    let x_3519 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3517.x, x_3517.y, x_3517.z), vec3<f32>(x_3519.x, x_3519.y, x_3519.z));
    let x_3522 : f32 = u_xlat79;
    u_xlat79 = max(x_3522, 1.17549435e-38f);
    let x_3524 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_3524);
    let x_3526 : f32 = u_xlat79;
    let x_3528 : vec4<f32> = u_xlat8;
    let x_3530 : vec3<f32> = (vec3<f32>(x_3526, x_3526, x_3526) * vec3<f32>(x_3528.x, x_3528.y, x_3528.z));
    let x_3531 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3530.x, x_3530.y, x_3530.z, x_3531.w);
    let x_3533 : vec3<f32> = u_xlat28;
    let x_3534 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(x_3533, vec3<f32>(x_3534.x, x_3534.y, x_3534.z));
    let x_3537 : f32 = u_xlat79;
    u_xlat79 = clamp(x_3537, 0.0f, 1.0f);
    let x_3539 : vec4<f32> = u_xlat9;
    let x_3541 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3539.x, x_3539.y, x_3539.z), vec3<f32>(x_3541.x, x_3541.y, x_3541.z));
    let x_3544 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3544, 0.0f, 1.0f);
    let x_3546 : f32 = u_xlat79;
    let x_3547 : f32 = u_xlat79;
    u_xlat79 = (x_3546 * x_3547);
    let x_3549 : f32 = u_xlat79;
    let x_3551 : f32 = u_xlat7.x;
    u_xlat79 = ((x_3549 * x_3551) + 1.00001001358032226562f);
    let x_3554 : f32 = u_xlat80;
    let x_3555 : f32 = u_xlat80;
    u_xlat80 = (x_3554 * x_3555);
    let x_3557 : f32 = u_xlat79;
    let x_3558 : f32 = u_xlat79;
    u_xlat79 = (x_3557 * x_3558);
    let x_3560 : f32 = u_xlat80;
    u_xlat80 = max(x_3560, 0.10000000149011611938f);
    let x_3562 : f32 = u_xlat79;
    let x_3563 : f32 = u_xlat80;
    u_xlat79 = (x_3562 * x_3563);
    let x_3565 : f32 = u_xlat76;
    let x_3566 : f32 = u_xlat79;
    u_xlat79 = (x_3565 * x_3566);
    let x_3568 : f32 = u_xlat26;
    let x_3569 : f32 = u_xlat79;
    u_xlat79 = (x_3568 / x_3569);
    let x_3571 : vec4<f32> = u_xlat0;
    let x_3573 : f32 = u_xlat79;
    let x_3576 : vec3<f32> = u_xlat27;
    let x_3577 : vec3<f32> = ((vec3<f32>(x_3571.x, x_3571.y, x_3571.z) * vec3<f32>(x_3573, x_3573, x_3573)) + x_3576);
    let x_3578 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3577.x, x_3577.y, x_3577.z, x_3578.w);
    let x_3580 : vec4<f32> = u_xlat8;
    let x_3582 : vec4<f32> = u_xlat10;
    let x_3585 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3580.x, x_3580.y, x_3580.z) * vec3<f32>(x_3582.x, x_3582.y, x_3582.z)) + x_3585);

    continuing {
      let x_3587 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3587 + bitcast<u32>(1i));
    }
  }
  let x_3589 : vec4<f32> = u_xlat4;
  let x_3591 : vec3<f32> = u_xlat3;
  let x_3594 : vec4<f32> = u_xlat6;
  let x_3596 : vec3<f32> = ((vec3<f32>(x_3589.x, x_3589.y, x_3589.z) * vec3<f32>(x_3591.x, x_3591.x, x_3591.x)) + vec3<f32>(x_3594.x, x_3594.y, x_3594.z));
  let x_3597 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3596.x, x_3596.y, x_3596.z, x_3597.w);
  let x_3601 : vec3<f32> = u_xlat32;
  let x_3602 : vec4<f32> = u_xlat0;
  let x_3604 : vec3<f32> = (x_3601 + vec3<f32>(x_3602.x, x_3602.y, x_3602.z));
  let x_3605 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3604.x, x_3604.y, x_3604.z, x_3605.w);
  let x_3609 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_3609 == 1.0f);
  let x_3611 : bool = u_xlatb0;
  if (x_3611) {
    let x_3616 : f32 = u_xlat2.x;
    x_3612 = x_3616;
  } else {
    x_3612 = 1.0f;
  }
  let x_3618 : f32 = x_3612;
  SV_Target0.w = x_3618;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


