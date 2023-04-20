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
  /* @offset(160) */
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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat75 : f32;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb75 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb30 : bool;

@group(1) @binding(4) var<uniform> x_365 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlatb55 : bool;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2010 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat60 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat85 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb60 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu78 : u32;

var<private> u_xlatb81 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
  var x_162 : f32;
  var x_174 : f32;
  var x_186 : f32;
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
  var x_1670 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2160 : f32;
  var x_2171 : f32;
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
  var x_3503 : f32;
  var x_3662 : f32;
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
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_45.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_82 : vec4<f32> = u_xlat2;
  let x_85 : f32 = x_45.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_82.x, x_82.y), x_85);
  u_xlat75 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_105 : f32 = u_xlat75;
    x_102 = abs(x_105);
  } else {
    let x_108 : f32 = u_xlat75;
    x_102 = -(abs(x_108));
  }
  let x_111 : f32 = x_102;
  u_xlat75 = x_111;
  let x_112 : f32 = u_xlat75;
  let x_115 : f32 = x_95.unity_LODFade.x;
  u_xlat75 = (-(x_112) + x_115);
  let x_118 : f32 = u_xlat75;
  u_xlatb75 = (x_118 < 0.0f);
  let x_120 : bool = u_xlatb75;
  if (((select(0i, 1i, x_120) * -1i) != 0i)) {
    discard;
  }
  let x_131 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb75 = (x_131 == 0.0f);
  let x_135 : vec3<f32> = vs_TEXCOORD1;
  let x_140 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_141 : vec3<f32> = (-(x_135) + x_140);
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_145 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat77 = dot(vec3<f32>(x_145.x, x_145.y, x_145.z), vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : f32 = u_xlat77;
  u_xlat77 = inverseSqrt(x_150);
  let x_152 : f32 = u_xlat77;
  let x_154 : vec4<f32> = u_xlat2;
  let x_156 : vec3<f32> = (vec3<f32>(x_152, x_152, x_152) * vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_161 : bool = u_xlatb75;
  if (x_161) {
    let x_166 : f32 = u_xlat2.x;
    x_162 = x_166;
  } else {
    let x_170 : f32 = x_45.unity_MatrixV[0i].z;
    x_162 = x_170;
  }
  let x_171 : f32 = x_162;
  u_xlat3.x = x_171;
  let x_173 : bool = u_xlatb75;
  if (x_173) {
    let x_179 : f32 = u_xlat2.y;
    x_174 = x_179;
  } else {
    let x_182 : f32 = x_45.unity_MatrixV[1i].z;
    x_174 = x_182;
  }
  let x_183 : f32 = x_174;
  u_xlat3.y = x_183;
  let x_185 : bool = u_xlatb75;
  if (x_185) {
    let x_190 : f32 = u_xlat2.z;
    x_186 = x_190;
  } else {
    let x_193 : f32 = x_45.unity_MatrixV[2i].z;
    x_186 = x_193;
  }
  let x_194 : f32 = x_186;
  u_xlat3.z = x_194;
  let x_197 : vec3<f32> = vs_TEXCOORD2;
  let x_198 : vec3<f32> = vs_TEXCOORD2;
  u_xlat75 = dot(x_197, x_198);
  let x_200 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_200);
  let x_202 : f32 = u_xlat75;
  let x_204 : vec3<f32> = vs_TEXCOORD2;
  let x_205 : vec3<f32> = (vec3<f32>(x_202, x_202, x_202) * x_204);
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  u_xlat2.w = 1.0f;
  let x_212 : vec4<f32> = x_95.unity_SHAr;
  let x_213 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_212, x_213);
  let x_218 : vec4<f32> = x_95.unity_SHAg;
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_218, x_219);
  let x_224 : vec4<f32> = x_95.unity_SHAb;
  let x_225 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_224, x_225);
  let x_229 : vec4<f32> = u_xlat2;
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_229.y, x_229.z, x_229.z, x_229.x) * vec4<f32>(x_231.x, x_231.y, x_231.z, x_231.z));
  let x_237 : vec4<f32> = x_95.unity_SHBr;
  let x_238 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_237, x_238);
  let x_243 : vec4<f32> = x_95.unity_SHBg;
  let x_244 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_243, x_244);
  let x_249 : vec4<f32> = x_95.unity_SHBb;
  let x_250 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_249, x_250);
  let x_254 : f32 = u_xlat2.y;
  let x_256 : f32 = u_xlat2.y;
  u_xlat75 = (x_254 * x_256);
  let x_259 : f32 = u_xlat2.x;
  let x_261 : f32 = u_xlat2.x;
  let x_263 : f32 = u_xlat75;
  u_xlat75 = ((x_259 * x_261) + -(x_263));
  let x_268 : vec4<f32> = x_95.unity_SHC;
  let x_270 : f32 = u_xlat75;
  let x_273 : vec4<f32> = u_xlat6;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270, x_270, x_270)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec3<f32> = u_xlat4;
  let x_279 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_278 + vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_282, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_286 : f32 = x_58.x_Metallic;
  u_xlat75 = ((-(x_286) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_291 : f32 = u_xlat75;
  let x_294 : f32 = x_58.x_Smoothness;
  u_xlat77 = (-(x_291) + x_294);
  let x_297 : f32 = u_xlat75;
  let x_299 : vec4<f32> = u_xlat1;
  u_xlat26 = (vec3<f32>(x_297, x_297, x_297) * vec3<f32>(x_299.y, x_299.z, x_299.w));
  let x_302 : vec4<f32> = u_xlat0;
  let x_305 : vec4<f32> = x_58.x_BaseColor;
  let x_310 : vec3<f32> = ((vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_305.x, x_305.y, x_305.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_311 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_314 : f32 = x_58.x_Metallic;
  let x_316 : f32 = x_58.x_Metallic;
  let x_318 : f32 = x_58.x_Metallic;
  let x_319 : vec3<f32> = vec3<f32>(x_314, x_316, x_318);
  let x_324 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_324.x, x_324.y, x_324.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_333 : f32 = x_58.x_Smoothness;
  u_xlat75 = (-(x_333) + 1.0f);
  let x_337 : f32 = u_xlat75;
  let x_338 : f32 = u_xlat75;
  u_xlat78 = (x_337 * x_338);
  let x_340 : f32 = u_xlat78;
  u_xlat78 = max(x_340, 0.0078125f);
  let x_344 : f32 = u_xlat78;
  let x_345 : f32 = u_xlat78;
  u_xlat79 = (x_344 * x_345);
  let x_347 : f32 = u_xlat77;
  u_xlat77 = (x_347 + 1.0f);
  let x_349 : f32 = u_xlat77;
  u_xlat77 = clamp(x_349, 0.0f, 1.0f);
  let x_351 : f32 = u_xlat78;
  u_xlat5.x = ((x_351 * 4.0f) + 2.0f);
  let x_368 : f32 = x_365.x_MainLightShadowParams.y;
  u_xlatb30 = (0.0f < x_368);
  let x_370 : bool = u_xlatb30;
  if (x_370) {
    let x_374 : f32 = x_365.x_MainLightShadowParams.y;
    u_xlatb30 = (x_374 == 1.0f);
    let x_376 : bool = u_xlatb30;
    if (x_376) {
      let x_380 : vec4<f32> = vs_TEXCOORD6;
      let x_383 : vec4<f32> = x_365.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_380.x, x_380.y, x_380.x, x_380.y) + x_383);
      let x_387 : vec4<f32> = u_xlat6;
      let x_388 : vec2<f32> = vec2<f32>(x_387.x, x_387.y);
      let x_390 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_388.x, x_388.y, x_390);
      let x_403 : vec3<f32> = txVec0;
      let x_405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_403.xy, x_403.z);
      u_xlat7.x = x_405;
      let x_408 : vec4<f32> = u_xlat6;
      let x_409 : vec2<f32> = vec2<f32>(x_408.z, x_408.w);
      let x_411 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_409.x, x_409.y, x_411);
      let x_418 : vec3<f32> = txVec1;
      let x_420 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_418.xy, x_418.z);
      u_xlat7.y = x_420;
      let x_422 : vec4<f32> = vs_TEXCOORD6;
      let x_425 : vec4<f32> = x_365.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_422.x, x_422.y, x_422.x, x_422.y) + x_425);
      let x_428 : vec4<f32> = u_xlat6;
      let x_429 : vec2<f32> = vec2<f32>(x_428.x, x_428.y);
      let x_431 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_429.x, x_429.y, x_431);
      let x_438 : vec3<f32> = txVec2;
      let x_440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_438.xy, x_438.z);
      u_xlat7.z = x_440;
      let x_443 : vec4<f32> = u_xlat6;
      let x_444 : vec2<f32> = vec2<f32>(x_443.z, x_443.w);
      let x_446 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_444.x, x_444.y, x_446);
      let x_453 : vec3<f32> = txVec3;
      let x_455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_453.xy, x_453.z);
      u_xlat7.w = x_455;
      let x_458 : vec4<f32> = u_xlat7;
      u_xlat30.x = dot(x_458, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_466 : f32 = x_365.x_MainLightShadowParams.y;
      u_xlatb55 = (x_466 == 2.0f);
      let x_468 : bool = u_xlatb55;
      if (x_468) {
        let x_473 : vec4<f32> = vs_TEXCOORD6;
        let x_477 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        u_xlat55 = ((vec2<f32>(x_473.x, x_473.y) * vec2<f32>(x_477.z, x_477.w)) + vec2<f32>(0.5f, 0.5f));
        let x_483 : vec2<f32> = u_xlat55;
        u_xlat55 = floor(x_483);
        let x_485 : vec4<f32> = vs_TEXCOORD6;
        let x_488 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_491 : vec2<f32> = u_xlat55;
        let x_493 : vec2<f32> = ((vec2<f32>(x_485.x, x_485.y) * vec2<f32>(x_488.z, x_488.w)) + -(x_491));
        let x_494 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_496 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_496.x, x_496.x, x_496.y, x_496.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_501 : vec4<f32> = u_xlat7;
        let x_503 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_501.x, x_501.x, x_501.z, x_501.z) * vec4<f32>(x_503.x, x_503.x, x_503.z, x_503.z));
        let x_507 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_507.y, x_507.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_512 : vec4<f32> = u_xlat8;
        let x_515 : vec4<f32> = u_xlat6;
        let x_518 : vec2<f32> = ((vec2<f32>(x_512.x, x_512.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_515.x, x_515.y)));
        let x_519 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_518.x, x_519.y, x_518.y, x_519.w);
        let x_521 : vec4<f32> = u_xlat6;
        let x_525 : vec2<f32> = (-(vec2<f32>(x_521.x, x_521.y)) + vec2<f32>(1.0f, 1.0f));
        let x_526 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
        let x_529 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_529.x, x_529.y), vec2<f32>(0.0f, 0.0f));
        let x_533 : vec2<f32> = u_xlat58;
        let x_535 : vec2<f32> = u_xlat58;
        let x_537 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_533) * x_535) + vec2<f32>(x_537.x, x_537.y));
        let x_540 : vec4<f32> = u_xlat6;
        let x_542 : vec2<f32> = max(vec2<f32>(x_540.x, x_540.y), vec2<f32>(0.0f, 0.0f));
        let x_543 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
        let x_545 : vec4<f32> = u_xlat6;
        let x_548 : vec4<f32> = u_xlat6;
        let x_551 : vec4<f32> = u_xlat7;
        let x_553 : vec2<f32> = ((-(vec2<f32>(x_545.x, x_545.y)) * vec2<f32>(x_548.x, x_548.y)) + vec2<f32>(x_551.y, x_551.w));
        let x_554 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
        let x_556 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_556 + vec2<f32>(1.0f, 1.0f));
        let x_558 : vec4<f32> = u_xlat6;
        let x_560 : vec2<f32> = (vec2<f32>(x_558.x, x_558.y) + vec2<f32>(1.0f, 1.0f));
        let x_561 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
        let x_564 : vec4<f32> = u_xlat7;
        let x_568 : vec2<f32> = (vec2<f32>(x_564.x, x_564.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_569 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_568.x, x_568.y, x_569.z, x_569.w);
        let x_572 : vec4<f32> = u_xlat8;
        let x_574 : vec2<f32> = (vec2<f32>(x_572.x, x_572.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_575 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
        let x_577 : vec2<f32> = u_xlat58;
        let x_578 : vec2<f32> = (x_577 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_579 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
        let x_582 : vec4<f32> = u_xlat6;
        let x_584 : vec2<f32> = (vec2<f32>(x_582.x, x_582.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_585 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
        let x_587 : vec4<f32> = u_xlat7;
        let x_589 : vec2<f32> = (vec2<f32>(x_587.y, x_587.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_590 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
        let x_593 : f32 = u_xlat8.x;
        u_xlat9.z = x_593;
        let x_596 : f32 = u_xlat6.x;
        u_xlat9.w = x_596;
        let x_599 : f32 = u_xlat11.x;
        u_xlat10.z = x_599;
        let x_602 : f32 = u_xlat56.x;
        u_xlat10.w = x_602;
        let x_604 : vec4<f32> = u_xlat9;
        let x_606 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_604.z, x_604.w, x_604.x, x_604.z) + vec4<f32>(x_606.z, x_606.w, x_606.x, x_606.z));
        let x_610 : f32 = u_xlat9.y;
        u_xlat8.z = x_610;
        let x_613 : f32 = u_xlat6.y;
        u_xlat8.w = x_613;
        let x_616 : f32 = u_xlat10.y;
        u_xlat11.z = x_616;
        let x_619 : f32 = u_xlat56.y;
        u_xlat11.w = x_619;
        let x_621 : vec4<f32> = u_xlat8;
        let x_623 : vec4<f32> = u_xlat11;
        let x_625 : vec3<f32> = (vec3<f32>(x_621.z, x_621.y, x_621.w) + vec3<f32>(x_623.z, x_623.y, x_623.w));
        let x_626 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_628 : vec4<f32> = u_xlat10;
        let x_630 : vec4<f32> = u_xlat7;
        let x_632 : vec3<f32> = (vec3<f32>(x_628.x, x_628.z, x_628.w) / vec3<f32>(x_630.z, x_630.w, x_630.y));
        let x_633 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat8;
        let x_641 : vec3<f32> = (vec3<f32>(x_635.x, x_635.y, x_635.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
        let x_644 : vec4<f32> = u_xlat11;
        let x_646 : vec4<f32> = u_xlat6;
        let x_648 : vec3<f32> = (vec3<f32>(x_644.z, x_644.y, x_644.w) / vec3<f32>(x_646.x, x_646.y, x_646.z));
        let x_649 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
        let x_651 : vec4<f32> = u_xlat9;
        let x_653 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_654 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
        let x_656 : vec4<f32> = u_xlat8;
        let x_659 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_661 : vec3<f32> = (vec3<f32>(x_656.y, x_656.x, x_656.z) * vec3<f32>(x_659.x, x_659.x, x_659.x));
        let x_662 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat9;
        let x_667 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_669 : vec3<f32> = (vec3<f32>(x_664.x, x_664.y, x_664.z) * vec3<f32>(x_667.y, x_667.y, x_667.y));
        let x_670 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
        let x_673 : f32 = u_xlat9.x;
        u_xlat8.w = x_673;
        let x_675 : vec2<f32> = u_xlat55;
        let x_678 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_681 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y) * vec4<f32>(x_678.x, x_678.y, x_678.x, x_678.y)) + vec4<f32>(x_681.y, x_681.w, x_681.x, x_681.w));
        let x_684 : vec2<f32> = u_xlat55;
        let x_686 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_689 : vec4<f32> = u_xlat8;
        let x_691 : vec2<f32> = ((x_684 * vec2<f32>(x_686.x, x_686.y)) + vec2<f32>(x_689.z, x_689.w));
        let x_692 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
        let x_695 : f32 = u_xlat8.y;
        u_xlat9.w = x_695;
        let x_697 : vec4<f32> = u_xlat9;
        let x_698 : vec2<f32> = vec2<f32>(x_697.y, x_697.z);
        let x_699 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_699.x, x_698.x, x_699.z, x_698.y);
        let x_702 : vec2<f32> = u_xlat55;
        let x_705 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_708 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_702.x, x_702.y, x_702.x, x_702.y) * vec4<f32>(x_705.x, x_705.y, x_705.x, x_705.y)) + vec4<f32>(x_708.x, x_708.y, x_708.z, x_708.y));
        let x_711 : vec2<f32> = u_xlat55;
        let x_714 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_717 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_711.x, x_711.y, x_711.x, x_711.y) * vec4<f32>(x_714.x, x_714.y, x_714.x, x_714.y)) + vec4<f32>(x_717.w, x_717.y, x_717.w, x_717.z));
        let x_720 : vec2<f32> = u_xlat55;
        let x_723 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_726 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_720.x, x_720.y, x_720.x, x_720.y) * vec4<f32>(x_723.x, x_723.y, x_723.x, x_723.y)) + vec4<f32>(x_726.x, x_726.w, x_726.z, x_726.w));
        let x_730 : vec4<f32> = u_xlat6;
        let x_732 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_730.x, x_730.x, x_730.x, x_730.y) * vec4<f32>(x_732.z, x_732.w, x_732.y, x_732.z));
        let x_736 : vec4<f32> = u_xlat6;
        let x_738 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_736.y, x_736.y, x_736.z, x_736.z) * x_738);
        let x_741 : f32 = u_xlat6.z;
        let x_743 : f32 = u_xlat7.y;
        u_xlat55.x = (x_741 * x_743);
        let x_747 : vec4<f32> = u_xlat10;
        let x_748 : vec2<f32> = vec2<f32>(x_747.x, x_747.y);
        let x_750 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_748.x, x_748.y, x_750);
        let x_758 : vec3<f32> = txVec4;
        let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_758.xy, x_758.z);
        u_xlat80 = x_760;
        let x_762 : vec4<f32> = u_xlat10;
        let x_763 : vec2<f32> = vec2<f32>(x_762.z, x_762.w);
        let x_765 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_763.x, x_763.y, x_765);
        let x_772 : vec3<f32> = txVec5;
        let x_774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_772.xy, x_772.z);
        u_xlat6.x = x_774;
        let x_777 : f32 = u_xlat6.x;
        let x_779 : f32 = u_xlat13.y;
        u_xlat6.x = (x_777 * x_779);
        let x_783 : f32 = u_xlat13.x;
        let x_784 : f32 = u_xlat80;
        let x_787 : f32 = u_xlat6.x;
        u_xlat80 = ((x_783 * x_784) + x_787);
        let x_790 : vec4<f32> = u_xlat11;
        let x_791 : vec2<f32> = vec2<f32>(x_790.x, x_790.y);
        let x_793 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_791.x, x_791.y, x_793);
        let x_800 : vec3<f32> = txVec6;
        let x_802 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_800.xy, x_800.z);
        u_xlat6.x = x_802;
        let x_805 : f32 = u_xlat13.z;
        let x_807 : f32 = u_xlat6.x;
        let x_809 : f32 = u_xlat80;
        u_xlat80 = ((x_805 * x_807) + x_809);
        let x_812 : vec4<f32> = u_xlat9;
        let x_813 : vec2<f32> = vec2<f32>(x_812.x, x_812.y);
        let x_815 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_813.x, x_813.y, x_815);
        let x_822 : vec3<f32> = txVec7;
        let x_824 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_822.xy, x_822.z);
        u_xlat6.x = x_824;
        let x_827 : f32 = u_xlat13.w;
        let x_829 : f32 = u_xlat6.x;
        let x_831 : f32 = u_xlat80;
        u_xlat80 = ((x_827 * x_829) + x_831);
        let x_834 : vec4<f32> = u_xlat12;
        let x_835 : vec2<f32> = vec2<f32>(x_834.x, x_834.y);
        let x_837 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_835.x, x_835.y, x_837);
        let x_844 : vec3<f32> = txVec8;
        let x_846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_844.xy, x_844.z);
        u_xlat6.x = x_846;
        let x_849 : f32 = u_xlat14.x;
        let x_851 : f32 = u_xlat6.x;
        let x_853 : f32 = u_xlat80;
        u_xlat80 = ((x_849 * x_851) + x_853);
        let x_856 : vec4<f32> = u_xlat12;
        let x_857 : vec2<f32> = vec2<f32>(x_856.z, x_856.w);
        let x_859 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_857.x, x_857.y, x_859);
        let x_866 : vec3<f32> = txVec9;
        let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_866.xy, x_866.z);
        u_xlat6.x = x_868;
        let x_871 : f32 = u_xlat14.y;
        let x_873 : f32 = u_xlat6.x;
        let x_875 : f32 = u_xlat80;
        u_xlat80 = ((x_871 * x_873) + x_875);
        let x_878 : vec4<f32> = u_xlat9;
        let x_879 : vec2<f32> = vec2<f32>(x_878.z, x_878.w);
        let x_881 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_879.x, x_879.y, x_881);
        let x_888 : vec3<f32> = txVec10;
        let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_888.xy, x_888.z);
        u_xlat6.x = x_890;
        let x_893 : f32 = u_xlat14.z;
        let x_895 : f32 = u_xlat6.x;
        let x_897 : f32 = u_xlat80;
        u_xlat80 = ((x_893 * x_895) + x_897);
        let x_900 : vec4<f32> = u_xlat8;
        let x_901 : vec2<f32> = vec2<f32>(x_900.x, x_900.y);
        let x_903 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec11;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
        u_xlat6.x = x_912;
        let x_915 : f32 = u_xlat14.w;
        let x_917 : f32 = u_xlat6.x;
        let x_919 : f32 = u_xlat80;
        u_xlat80 = ((x_915 * x_917) + x_919);
        let x_922 : vec4<f32> = u_xlat8;
        let x_923 : vec2<f32> = vec2<f32>(x_922.z, x_922.w);
        let x_925 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_923.x, x_923.y, x_925);
        let x_932 : vec3<f32> = txVec12;
        let x_934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_932.xy, x_932.z);
        u_xlat6.x = x_934;
        let x_937 : f32 = u_xlat55.x;
        let x_939 : f32 = u_xlat6.x;
        let x_941 : f32 = u_xlat80;
        u_xlat30.x = ((x_937 * x_939) + x_941);
      } else {
        let x_945 : vec4<f32> = vs_TEXCOORD6;
        let x_948 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        u_xlat55 = ((vec2<f32>(x_945.x, x_945.y) * vec2<f32>(x_948.z, x_948.w)) + vec2<f32>(0.5f, 0.5f));
        let x_952 : vec2<f32> = u_xlat55;
        u_xlat55 = floor(x_952);
        let x_954 : vec4<f32> = vs_TEXCOORD6;
        let x_957 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_960 : vec2<f32> = u_xlat55;
        let x_962 : vec2<f32> = ((vec2<f32>(x_954.x, x_954.y) * vec2<f32>(x_957.z, x_957.w)) + -(x_960));
        let x_963 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_965 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_965.x, x_965.x, x_965.y, x_965.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_968 : vec4<f32> = u_xlat7;
        let x_970 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_968.x, x_968.x, x_968.z, x_968.z) * vec4<f32>(x_970.x, x_970.x, x_970.z, x_970.z));
        let x_973 : vec4<f32> = u_xlat8;
        let x_977 : vec2<f32> = (vec2<f32>(x_973.y, x_973.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_978 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_978.x, x_977.x, x_978.z, x_977.y);
        let x_980 : vec4<f32> = u_xlat8;
        let x_983 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_980.x, x_980.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_983.x, x_983.y)));
        let x_987 : vec4<f32> = u_xlat6;
        let x_990 : vec2<f32> = (-(vec2<f32>(x_987.x, x_987.y)) + vec2<f32>(1.0f, 1.0f));
        let x_991 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_990.x, x_991.y, x_990.y, x_991.w);
        let x_993 : vec4<f32> = u_xlat6;
        let x_995 : vec2<f32> = min(vec2<f32>(x_993.x, x_993.y), vec2<f32>(0.0f, 0.0f));
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat8;
        let x_1001 : vec4<f32> = u_xlat8;
        let x_1004 : vec4<f32> = u_xlat7;
        let x_1006 : vec2<f32> = ((-(vec2<f32>(x_998.x, x_998.y)) * vec2<f32>(x_1001.x, x_1001.y)) + vec2<f32>(x_1004.x, x_1004.z));
        let x_1007 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1006.x, x_1007.y, x_1006.y, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat6;
        let x_1011 : vec2<f32> = max(vec2<f32>(x_1009.x, x_1009.y), vec2<f32>(0.0f, 0.0f));
        let x_1012 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec4<f32> = u_xlat8;
        let x_1017 : vec4<f32> = u_xlat8;
        let x_1020 : vec4<f32> = u_xlat7;
        let x_1022 : vec2<f32> = ((-(vec2<f32>(x_1014.x, x_1014.y)) * vec2<f32>(x_1017.x, x_1017.y)) + vec2<f32>(x_1020.y, x_1020.w));
        let x_1023 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1023.x, x_1022.x, x_1023.z, x_1022.y);
        let x_1025 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1025 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1029 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1029 * 0.08163200318813323975f);
        let x_1033 : vec2<f32> = u_xlat56;
        let x_1036 : vec2<f32> = (vec2<f32>(x_1033.y, x_1033.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1037 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1036.x, x_1036.y, x_1037.z, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1039.x, x_1039.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1043 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1043 * 0.08163200318813323975f);
        let x_1047 : f32 = u_xlat10.y;
        u_xlat8.x = x_1047;
        let x_1049 : vec4<f32> = u_xlat6;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1049.x, x_1049.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1057 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1057.x, x_1056.x, x_1057.z, x_1056.y);
        let x_1059 : vec4<f32> = u_xlat6;
        let x_1063 : vec2<f32> = ((vec2<f32>(x_1059.x, x_1059.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1064 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1063.x, x_1064.y, x_1063.y, x_1064.w);
        let x_1067 : f32 = u_xlat56.x;
        u_xlat7.y = x_1067;
        let x_1070 : f32 = u_xlat9.y;
        u_xlat7.w = x_1070;
        let x_1072 : vec4<f32> = u_xlat7;
        let x_1073 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1072 + x_1073);
        let x_1075 : vec4<f32> = u_xlat6;
        let x_1078 : vec2<f32> = ((vec2<f32>(x_1075.y, x_1075.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1079 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1079.x, x_1078.x, x_1079.z, x_1078.y);
        let x_1081 : vec4<f32> = u_xlat6;
        let x_1084 : vec2<f32> = ((vec2<f32>(x_1081.y, x_1081.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1085 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1084.x, x_1085.y, x_1084.y, x_1085.w);
        let x_1088 : f32 = u_xlat56.y;
        u_xlat9.y = x_1088;
        let x_1090 : vec4<f32> = u_xlat9;
        let x_1091 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1090 + x_1091);
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1094 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1093 / x_1094);
        let x_1096 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1096 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1102 : vec4<f32> = u_xlat9;
        let x_1103 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1102 / x_1103);
        let x_1105 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1105 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1107 : vec4<f32> = u_xlat7;
        let x_1110 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1107.w, x_1107.x, x_1107.y, x_1107.z) * vec4<f32>(x_1110.x, x_1110.x, x_1110.x, x_1110.x));
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1116 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1113.x, x_1113.w, x_1113.y, x_1113.z) * vec4<f32>(x_1116.y, x_1116.y, x_1116.y, x_1116.y));
        let x_1119 : vec4<f32> = u_xlat7;
        let x_1120 : vec3<f32> = vec3<f32>(x_1119.y, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1120.z);
        let x_1124 : f32 = u_xlat9.x;
        u_xlat10.y = x_1124;
        let x_1126 : vec2<f32> = u_xlat55;
        let x_1129 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y) * vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y)) + vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1132.y));
        let x_1135 : vec2<f32> = u_xlat55;
        let x_1137 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat10;
        let x_1142 : vec2<f32> = ((x_1135 * vec2<f32>(x_1137.x, x_1137.y)) + vec2<f32>(x_1140.w, x_1140.y));
        let x_1143 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1146 : f32 = u_xlat10.y;
        u_xlat7.y = x_1146;
        let x_1149 : f32 = u_xlat9.z;
        u_xlat10.y = x_1149;
        let x_1151 : vec2<f32> = u_xlat55;
        let x_1154 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1157 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.y) * vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y)) + vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1157.y));
        let x_1161 : vec2<f32> = u_xlat55;
        let x_1163 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1161 * vec2<f32>(x_1163.x, x_1163.y)) + vec2<f32>(x_1166.w, x_1166.y));
        let x_1170 : f32 = u_xlat10.y;
        u_xlat7.z = x_1170;
        let x_1172 : vec2<f32> = u_xlat55;
        let x_1175 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1178 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y) * vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.y)) + vec4<f32>(x_1178.x, x_1178.y, x_1178.x, x_1178.z));
        let x_1182 : f32 = u_xlat9.w;
        u_xlat10.y = x_1182;
        let x_1185 : vec2<f32> = u_xlat55;
        let x_1188 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1191 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y) * vec4<f32>(x_1188.x, x_1188.y, x_1188.x, x_1188.y)) + vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1191.y));
        let x_1195 : vec2<f32> = u_xlat55;
        let x_1197 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat10;
        let x_1202 : vec2<f32> = ((x_1195 * vec2<f32>(x_1197.x, x_1197.y)) + vec2<f32>(x_1200.w, x_1200.y));
        let x_1203 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1202.x, x_1202.y, x_1203.z);
        let x_1206 : f32 = u_xlat10.y;
        u_xlat7.w = x_1206;
        let x_1209 : vec2<f32> = u_xlat55;
        let x_1211 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat7;
        let x_1216 : vec2<f32> = ((x_1209 * vec2<f32>(x_1211.x, x_1211.y)) + vec2<f32>(x_1214.x, x_1214.w));
        let x_1217 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1216.x, x_1216.y, x_1217.z, x_1217.w);
        let x_1219 : vec4<f32> = u_xlat10;
        let x_1220 : vec3<f32> = vec3<f32>(x_1219.x, x_1219.z, x_1219.w);
        let x_1221 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1220.x, x_1221.y, x_1220.y, x_1220.z);
        let x_1223 : vec2<f32> = u_xlat55;
        let x_1226 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1229 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1223.x, x_1223.y, x_1223.x, x_1223.y) * vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y)) + vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1229.y));
        let x_1233 : vec2<f32> = u_xlat55;
        let x_1235 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat9;
        u_xlat59 = ((x_1233 * vec2<f32>(x_1235.x, x_1235.y)) + vec2<f32>(x_1238.w, x_1238.y));
        let x_1242 : f32 = u_xlat7.x;
        u_xlat9.x = x_1242;
        let x_1244 : vec2<f32> = u_xlat55;
        let x_1246 : vec4<f32> = x_365.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat55 = ((x_1244 * vec2<f32>(x_1246.x, x_1246.y)) + vec2<f32>(x_1249.x, x_1249.y));
        let x_1253 : vec4<f32> = u_xlat6;
        let x_1255 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1253.x, x_1253.x, x_1253.x, x_1253.x) * x_1255);
        let x_1258 : vec4<f32> = u_xlat6;
        let x_1260 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1258.y, x_1258.y, x_1258.y, x_1258.y) * x_1260);
        let x_1263 : vec4<f32> = u_xlat6;
        let x_1265 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1263.z, x_1263.z, x_1263.z, x_1263.z) * x_1265);
        let x_1267 : vec4<f32> = u_xlat6;
        let x_1269 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1267.w, x_1267.w, x_1267.w, x_1267.w) * x_1269);
        let x_1272 : vec4<f32> = u_xlat11;
        let x_1273 : vec2<f32> = vec2<f32>(x_1272.x, x_1272.y);
        let x_1275 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1273.x, x_1273.y, x_1275);
        let x_1282 : vec3<f32> = txVec13;
        let x_1284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1282.xy, x_1282.z);
        u_xlat7.x = x_1284;
        let x_1287 : vec4<f32> = u_xlat11;
        let x_1288 : vec2<f32> = vec2<f32>(x_1287.z, x_1287.w);
        let x_1290 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1288.x, x_1288.y, x_1290);
        let x_1298 : vec3<f32> = txVec14;
        let x_1300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1298.xy, x_1298.z);
        u_xlat82 = x_1300;
        let x_1301 : f32 = u_xlat82;
        let x_1303 : f32 = u_xlat17.y;
        u_xlat82 = (x_1301 * x_1303);
        let x_1306 : f32 = u_xlat17.x;
        let x_1308 : f32 = u_xlat7.x;
        let x_1310 : f32 = u_xlat82;
        u_xlat7.x = ((x_1306 * x_1308) + x_1310);
        let x_1314 : vec4<f32> = u_xlat12;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.x, x_1314.y);
        let x_1317 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec15;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1324.xy, x_1324.z);
        u_xlat82 = x_1326;
        let x_1328 : f32 = u_xlat17.z;
        let x_1329 : f32 = u_xlat82;
        let x_1332 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1328 * x_1329) + x_1332);
        let x_1336 : vec4<f32> = u_xlat14;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.x, x_1336.y);
        let x_1339 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1346 : vec3<f32> = txVec16;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1346.xy, x_1346.z);
        u_xlat82 = x_1348;
        let x_1350 : f32 = u_xlat17.w;
        let x_1351 : f32 = u_xlat82;
        let x_1354 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1350 * x_1351) + x_1354);
        let x_1358 : vec4<f32> = u_xlat13;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.x, x_1358.y);
        let x_1361 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec17;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1368.xy, x_1368.z);
        u_xlat82 = x_1370;
        let x_1372 : f32 = u_xlat18.x;
        let x_1373 : f32 = u_xlat82;
        let x_1376 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1372 * x_1373) + x_1376);
        let x_1380 : vec4<f32> = u_xlat13;
        let x_1381 : vec2<f32> = vec2<f32>(x_1380.z, x_1380.w);
        let x_1383 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1381.x, x_1381.y, x_1383);
        let x_1390 : vec3<f32> = txVec18;
        let x_1392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1390.xy, x_1390.z);
        u_xlat82 = x_1392;
        let x_1394 : f32 = u_xlat18.y;
        let x_1395 : f32 = u_xlat82;
        let x_1398 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1394 * x_1395) + x_1398);
        let x_1402 : vec2<f32> = u_xlat62;
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec19;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
        u_xlat82 = x_1413;
        let x_1415 : f32 = u_xlat18.z;
        let x_1416 : f32 = u_xlat82;
        let x_1419 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1415 * x_1416) + x_1419);
        let x_1423 : vec4<f32> = u_xlat14;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.z, x_1423.w);
        let x_1426 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec20;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat82 = x_1435;
        let x_1437 : f32 = u_xlat18.w;
        let x_1438 : f32 = u_xlat82;
        let x_1441 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1437 * x_1438) + x_1441);
        let x_1445 : vec4<f32> = u_xlat15;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
        let x_1448 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec21;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1455.xy, x_1455.z);
        u_xlat82 = x_1457;
        let x_1459 : f32 = u_xlat19.x;
        let x_1460 : f32 = u_xlat82;
        let x_1463 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1459 * x_1460) + x_1463);
        let x_1467 : vec4<f32> = u_xlat15;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.z, x_1467.w);
        let x_1470 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec22;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1477.xy, x_1477.z);
        u_xlat82 = x_1479;
        let x_1481 : f32 = u_xlat19.y;
        let x_1482 : f32 = u_xlat82;
        let x_1485 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1481 * x_1482) + x_1485);
        let x_1489 : vec3<f32> = u_xlat32;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
        let x_1492 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec23;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1499.xy, x_1499.z);
        u_xlat32.x = x_1501;
        let x_1504 : f32 = u_xlat19.z;
        let x_1506 : f32 = u_xlat32.x;
        let x_1509 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1504 * x_1506) + x_1509);
        let x_1513 : vec4<f32> = u_xlat16;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.x, x_1513.y);
        let x_1516 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec24;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat32.x = x_1525;
        let x_1528 : f32 = u_xlat19.w;
        let x_1530 : f32 = u_xlat32.x;
        let x_1533 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1528 * x_1530) + x_1533);
        let x_1537 : vec4<f32> = u_xlat10;
        let x_1538 : vec2<f32> = vec2<f32>(x_1537.x, x_1537.y);
        let x_1540 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1538.x, x_1538.y, x_1540);
        let x_1547 : vec3<f32> = txVec25;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1547.xy, x_1547.z);
        u_xlat32.x = x_1549;
        let x_1552 : f32 = u_xlat6.x;
        let x_1554 : f32 = u_xlat32.x;
        let x_1557 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1552 * x_1554) + x_1557);
        let x_1561 : vec4<f32> = u_xlat10;
        let x_1562 : vec2<f32> = vec2<f32>(x_1561.z, x_1561.w);
        let x_1564 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec26;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1571.xy, x_1571.z);
        u_xlat7.x = x_1573;
        let x_1576 : f32 = u_xlat6.y;
        let x_1578 : f32 = u_xlat7.x;
        let x_1581 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1576 * x_1578) + x_1581);
        let x_1585 : vec2<f32> = u_xlat59;
        let x_1587 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1595 : vec3<f32> = txVec27;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1595.xy, x_1595.z);
        u_xlat31 = x_1597;
        let x_1599 : f32 = u_xlat6.z;
        let x_1600 : f32 = u_xlat31;
        let x_1603 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1599 * x_1600) + x_1603);
        let x_1607 : vec2<f32> = u_xlat55;
        let x_1609 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1607.x, x_1607.y, x_1609);
        let x_1616 : vec3<f32> = txVec28;
        let x_1618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1616.xy, x_1616.z);
        u_xlat55.x = x_1618;
        let x_1621 : f32 = u_xlat6.w;
        let x_1623 : f32 = u_xlat55.x;
        let x_1626 : f32 = u_xlat6.x;
        u_xlat30.x = ((x_1621 * x_1623) + x_1626);
      }
    }
  } else {
    let x_1631 : vec4<f32> = vs_TEXCOORD6;
    let x_1632 : vec2<f32> = vec2<f32>(x_1631.x, x_1631.y);
    let x_1634 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
    let x_1641 : vec3<f32> = txVec29;
    let x_1643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1641.xy, x_1641.z);
    u_xlat30.x = x_1643;
  }
  let x_1646 : f32 = x_365.x_MainLightShadowParams.x;
  u_xlat55.x = (-(x_1646) + 1.0f);
  let x_1651 : f32 = u_xlat30.x;
  let x_1653 : f32 = x_365.x_MainLightShadowParams.x;
  let x_1656 : f32 = u_xlat55.x;
  u_xlat30.x = ((x_1651 * x_1653) + x_1656);
  let x_1660 : f32 = vs_TEXCOORD6.z;
  u_xlatb55 = (0.0f >= x_1660);
  let x_1664 : f32 = vs_TEXCOORD6.z;
  u_xlatb80 = (x_1664 >= 1.0f);
  let x_1666 : bool = u_xlatb80;
  let x_1667 : bool = u_xlatb55;
  u_xlatb55 = (x_1666 | x_1667);
  let x_1669 : bool = u_xlatb55;
  if (x_1669) {
    x_1670 = 1.0f;
  } else {
    let x_1675 : f32 = u_xlat30.x;
    x_1670 = x_1675;
  }
  let x_1676 : f32 = x_1670;
  u_xlat30.x = x_1676;
  let x_1678 : vec3<f32> = vs_TEXCOORD1;
  let x_1680 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1682 : vec3<f32> = (x_1678 + -(x_1680));
  let x_1683 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1682.x, x_1682.y, x_1682.z, x_1683.w);
  let x_1685 : vec4<f32> = u_xlat6;
  let x_1687 : vec4<f32> = u_xlat6;
  u_xlat55.x = dot(vec3<f32>(x_1685.x, x_1685.y, x_1685.z), vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
  let x_1692 : f32 = u_xlat55.x;
  let x_1694 : f32 = x_365.x_MainLightShadowParams.z;
  let x_1697 : f32 = x_365.x_MainLightShadowParams.w;
  u_xlat80 = ((x_1692 * x_1694) + x_1697);
  let x_1699 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1699, 0.0f, 1.0f);
  let x_1702 : f32 = u_xlat30.x;
  u_xlat6.x = (-(x_1702) + 1.0f);
  let x_1706 : f32 = u_xlat80;
  let x_1708 : f32 = u_xlat6.x;
  let x_1711 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1706 * x_1708) + x_1711);
  let x_1714 : vec3<f32> = u_xlat3;
  let x_1716 : vec4<f32> = u_xlat2;
  u_xlat80 = dot(-(x_1714), vec3<f32>(x_1716.x, x_1716.y, x_1716.z));
  let x_1719 : f32 = u_xlat80;
  let x_1720 : f32 = u_xlat80;
  u_xlat80 = (x_1719 + x_1720);
  let x_1722 : vec4<f32> = u_xlat2;
  let x_1724 : f32 = u_xlat80;
  let x_1728 : vec3<f32> = u_xlat3;
  let x_1730 : vec3<f32> = ((vec3<f32>(x_1722.x, x_1722.y, x_1722.z) * -(vec3<f32>(x_1724, x_1724, x_1724))) + -(x_1728));
  let x_1731 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
  let x_1733 : vec4<f32> = u_xlat2;
  let x_1735 : vec3<f32> = u_xlat3;
  u_xlat80 = dot(vec3<f32>(x_1733.x, x_1733.y, x_1733.z), x_1735);
  let x_1737 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1737, 0.0f, 1.0f);
  let x_1739 : f32 = u_xlat80;
  u_xlat80 = (-(x_1739) + 1.0f);
  let x_1742 : f32 = u_xlat80;
  let x_1743 : f32 = u_xlat80;
  u_xlat80 = (x_1742 * x_1743);
  let x_1745 : f32 = u_xlat80;
  let x_1746 : f32 = u_xlat80;
  u_xlat80 = (x_1745 * x_1746);
  let x_1749 : f32 = u_xlat75;
  u_xlat81 = ((-(x_1749) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1755 : f32 = u_xlat75;
  let x_1756 : f32 = u_xlat81;
  u_xlat75 = (x_1755 * x_1756);
  let x_1758 : f32 = u_xlat75;
  u_xlat75 = (x_1758 * 6.0f);
  let x_1769 : vec4<f32> = u_xlat6;
  let x_1771 : f32 = u_xlat75;
  let x_1772 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1769.x, x_1769.y, x_1769.z), x_1771);
  u_xlat6 = x_1772;
  let x_1774 : f32 = u_xlat6.w;
  u_xlat75 = (x_1774 + -1.0f);
  let x_1778 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_1779 : f32 = u_xlat75;
  u_xlat75 = ((x_1778 * x_1779) + 1.0f);
  let x_1782 : f32 = u_xlat75;
  u_xlat75 = max(x_1782, 0.0f);
  let x_1784 : f32 = u_xlat75;
  u_xlat75 = log2(x_1784);
  let x_1786 : f32 = u_xlat75;
  let x_1788 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_1786 * x_1788);
  let x_1790 : f32 = u_xlat75;
  u_xlat75 = exp2(x_1790);
  let x_1792 : f32 = u_xlat75;
  let x_1794 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_1792 * x_1794);
  let x_1796 : vec4<f32> = u_xlat6;
  let x_1798 : f32 = u_xlat75;
  let x_1800 : vec3<f32> = (vec3<f32>(x_1796.x, x_1796.y, x_1796.z) * vec3<f32>(x_1798, x_1798, x_1798));
  let x_1801 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1801.w);
  let x_1803 : f32 = u_xlat78;
  let x_1805 : f32 = u_xlat78;
  let x_1809 : vec2<f32> = ((vec2<f32>(x_1803, x_1803) * vec2<f32>(x_1805, x_1805)) + vec2<f32>(-1.0f, 1.0f));
  let x_1810 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1809.x, x_1809.y, x_1810.z, x_1810.w);
  let x_1813 : f32 = u_xlat7.y;
  u_xlat75 = (1.0f / x_1813);
  let x_1815 : vec4<f32> = u_xlat0;
  let x_1818 : f32 = u_xlat77;
  u_xlat32 = (-(vec3<f32>(x_1815.x, x_1815.y, x_1815.z)) + vec3<f32>(x_1818, x_1818, x_1818));
  let x_1821 : f32 = u_xlat80;
  let x_1823 : vec3<f32> = u_xlat32;
  let x_1825 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1821, x_1821, x_1821) * x_1823) + vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
  let x_1828 : f32 = u_xlat75;
  let x_1830 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1828, x_1828, x_1828) * x_1830);
  let x_1832 : vec4<f32> = u_xlat6;
  let x_1834 : vec3<f32> = u_xlat32;
  let x_1835 : vec3<f32> = (vec3<f32>(x_1832.x, x_1832.y, x_1832.z) * x_1834);
  let x_1836 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1836.w);
  let x_1838 : vec3<f32> = u_xlat4;
  let x_1839 : vec3<f32> = u_xlat26;
  let x_1841 : vec4<f32> = u_xlat6;
  u_xlat4 = ((x_1838 * x_1839) + vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
  let x_1845 : f32 = u_xlat30.x;
  let x_1847 : f32 = x_95.unity_LightData.z;
  u_xlat75 = (x_1845 * x_1847);
  let x_1849 : vec4<f32> = u_xlat2;
  let x_1852 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_1849.x, x_1849.y, x_1849.z), vec3<f32>(x_1852.x, x_1852.y, x_1852.z));
  let x_1855 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1855, 0.0f, 1.0f);
  let x_1857 : f32 = u_xlat75;
  let x_1858 : f32 = u_xlat77;
  u_xlat75 = (x_1857 * x_1858);
  let x_1860 : f32 = u_xlat75;
  let x_1863 : vec4<f32> = x_45.x_MainLightColor;
  let x_1865 : vec3<f32> = (vec3<f32>(x_1860, x_1860, x_1860) * vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
  let x_1866 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
  let x_1868 : vec3<f32> = u_xlat3;
  let x_1870 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat32 = (x_1868 + vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
  let x_1873 : vec3<f32> = u_xlat32;
  let x_1874 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1873, x_1874);
  let x_1876 : f32 = u_xlat75;
  u_xlat75 = max(x_1876, 1.17549435e-38f);
  let x_1879 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1879);
  let x_1881 : f32 = u_xlat75;
  let x_1883 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1881, x_1881, x_1881) * x_1883);
  let x_1885 : vec4<f32> = u_xlat2;
  let x_1887 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(vec3<f32>(x_1885.x, x_1885.y, x_1885.z), x_1887);
  let x_1889 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1889, 0.0f, 1.0f);
  let x_1892 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1894 : vec3<f32> = u_xlat32;
  u_xlat77 = dot(vec3<f32>(x_1892.x, x_1892.y, x_1892.z), x_1894);
  let x_1896 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1896, 0.0f, 1.0f);
  let x_1898 : f32 = u_xlat75;
  let x_1899 : f32 = u_xlat75;
  u_xlat75 = (x_1898 * x_1899);
  let x_1901 : f32 = u_xlat75;
  let x_1903 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1901 * x_1903) + 1.00001001358032226562f);
  let x_1907 : f32 = u_xlat77;
  let x_1908 : f32 = u_xlat77;
  u_xlat77 = (x_1907 * x_1908);
  let x_1910 : f32 = u_xlat75;
  let x_1911 : f32 = u_xlat75;
  u_xlat75 = (x_1910 * x_1911);
  let x_1913 : f32 = u_xlat77;
  u_xlat77 = max(x_1913, 0.10000000149011611938f);
  let x_1916 : f32 = u_xlat75;
  let x_1917 : f32 = u_xlat77;
  u_xlat75 = (x_1916 * x_1917);
  let x_1920 : f32 = u_xlat5.x;
  let x_1921 : f32 = u_xlat75;
  u_xlat75 = (x_1920 * x_1921);
  let x_1923 : f32 = u_xlat79;
  let x_1924 : f32 = u_xlat75;
  u_xlat75 = (x_1923 / x_1924);
  let x_1926 : vec4<f32> = u_xlat0;
  let x_1928 : f32 = u_xlat75;
  let x_1931 : vec3<f32> = u_xlat26;
  u_xlat32 = ((vec3<f32>(x_1926.x, x_1926.y, x_1926.z) * vec3<f32>(x_1928, x_1928, x_1928)) + x_1931);
  let x_1935 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1937 : f32 = x_95.unity_LightData.y;
  u_xlat75 = min(x_1935, x_1937);
  let x_1941 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1941));
  let x_1945 : f32 = u_xlat55.x;
  let x_1948 : f32 = x_365.x_AdditionalShadowFadeParams.x;
  let x_1951 : f32 = x_365.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_1945 * x_1948) + x_1951);
  let x_1953 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1953, 0.0f, 1.0f);
  u_xlat30.x = 0.0f;
  u_xlat30.y = 0.0f;
  u_xlat30.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1965 : u32 = u_xlatu_loop_1;
    let x_1966 : u32 = u_xlatu75;
    if ((x_1965 < x_1966)) {
    } else {
      break;
    }
    let x_1969 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_1969 >> 2u);
    let x_1973 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1973 & 3u));
    let x_1976 : u32 = u_xlatu81;
    let x_1979 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1976)];
    let x_1989 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1994 : vec4<u32> = indexable[x_1989];
    u_xlat81 = dot(x_1979, bitcast<vec4<f32>>(x_1994));
    let x_1998 : f32 = u_xlat81;
    u_xlati81 = i32(x_1998);
    let x_2000 : vec3<f32> = vs_TEXCOORD1;
    let x_2011 : i32 = u_xlati81;
    let x_2013 : vec4<f32> = x_2010.x_AdditionalLightsPosition[x_2011];
    let x_2016 : i32 = u_xlati81;
    let x_2018 : vec4<f32> = x_2010.x_AdditionalLightsPosition[x_2016];
    let x_2020 : vec3<f32> = ((-(x_2000) * vec3<f32>(x_2013.w, x_2013.w, x_2013.w)) + vec3<f32>(x_2018.x, x_2018.y, x_2018.z));
    let x_2021 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2020.x, x_2020.y, x_2020.z, x_2021.w);
    let x_2024 : vec4<f32> = u_xlat8;
    let x_2026 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_2024.x, x_2024.y, x_2024.z), vec3<f32>(x_2026.x, x_2026.y, x_2026.z));
    let x_2029 : f32 = u_xlat83;
    u_xlat83 = max(x_2029, 0.00006103515625f);
    let x_2032 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_2032);
    let x_2036 : vec4<f32> = u_xlat8;
    let x_2038 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_2036.x, x_2036.y, x_2036.z) * vec3<f32>(x_2038.x, x_2038.x, x_2038.x));
    let x_2041 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_2041);
    let x_2044 : f32 = u_xlat83;
    let x_2045 : i32 = u_xlati81;
    let x_2047 : f32 = x_2010.x_AdditionalLightsAttenuation[x_2045].x;
    u_xlat83 = (x_2044 * x_2047);
    let x_2049 : f32 = u_xlat83;
    let x_2051 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2049) * x_2051) + 1.0f);
    let x_2054 : f32 = u_xlat83;
    u_xlat83 = max(x_2054, 0.0f);
    let x_2056 : f32 = u_xlat83;
    let x_2057 : f32 = u_xlat83;
    u_xlat83 = (x_2056 * x_2057);
    let x_2059 : f32 = u_xlat83;
    let x_2061 : f32 = u_xlat10.x;
    u_xlat83 = (x_2059 * x_2061);
    let x_2063 : i32 = u_xlati81;
    let x_2065 : vec4<f32> = x_2010.x_AdditionalLightsSpotDir[x_2063];
    let x_2067 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2065.x, x_2065.y, x_2065.z), x_2067);
    let x_2071 : f32 = u_xlat10.x;
    let x_2072 : i32 = u_xlati81;
    let x_2074 : f32 = x_2010.x_AdditionalLightsAttenuation[x_2072].z;
    let x_2076 : i32 = u_xlati81;
    let x_2078 : f32 = x_2010.x_AdditionalLightsAttenuation[x_2076].w;
    u_xlat10.x = ((x_2071 * x_2074) + x_2078);
    let x_2082 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2082, 0.0f, 1.0f);
    let x_2086 : f32 = u_xlat10.x;
    let x_2088 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2086 * x_2088);
    let x_2091 : f32 = u_xlat83;
    let x_2093 : f32 = u_xlat10.x;
    u_xlat83 = (x_2091 * x_2093);
    let x_2097 : i32 = u_xlati81;
    let x_2099 : f32 = x_365.x_AdditionalShadowParams[x_2097].w;
    u_xlati10 = i32(x_2099);
    let x_2104 : i32 = u_xlati10;
    u_xlatb35.x = (x_2104 >= 0i);
    let x_2108 : bool = u_xlatb35.x;
    if (x_2108) {
      let x_2112 : i32 = u_xlati81;
      let x_2114 : f32 = x_365.x_AdditionalShadowParams[x_2112].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2114, x_2114, x_2114, x_2114))));
      let x_2121 : bool = u_xlatb35.x;
      if (x_2121) {
        let x_2124 : vec3<f32> = u_xlat34;
        let x_2127 : vec3<f32> = u_xlat34;
        let x_2130 : vec4<bool> = (abs(vec4<f32>(x_2124.z, x_2124.z, x_2124.y, x_2124.y)) >= abs(vec4<f32>(x_2127.x, x_2127.y, x_2127.x, x_2127.x)));
        u_xlatb35 = vec3<bool>(x_2130.x, x_2130.y, x_2130.z);
        let x_2133 : bool = u_xlatb35.y;
        let x_2135 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2133 & x_2135);
        let x_2139 : vec3<f32> = u_xlat34;
        let x_2142 : vec4<bool> = (-(vec4<f32>(x_2139.z, x_2139.y, x_2139.x, x_2139.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2142.x, x_2142.y, x_2142.z);
        let x_2145 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2145);
        let x_2150 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2150);
        let x_2156 : bool = u_xlatb11.z;
        u_xlat60 = select(0.0f, 1.0f, x_2156);
        let x_2159 : bool = u_xlatb35.z;
        if (x_2159) {
          let x_2164 : f32 = u_xlat11.y;
          x_2160 = x_2164;
        } else {
          let x_2166 : f32 = u_xlat60;
          x_2160 = x_2166;
        }
        let x_2167 : f32 = x_2160;
        u_xlat60 = x_2167;
        let x_2170 : bool = u_xlatb35.x;
        if (x_2170) {
          let x_2175 : f32 = u_xlat11.x;
          x_2171 = x_2175;
        } else {
          let x_2177 : f32 = u_xlat60;
          x_2171 = x_2177;
        }
        let x_2178 : f32 = x_2171;
        u_xlat35 = x_2178;
        let x_2179 : i32 = u_xlati81;
        let x_2181 : f32 = x_365.x_AdditionalShadowParams[x_2179].w;
        u_xlat60 = trunc(x_2181);
        let x_2183 : f32 = u_xlat35;
        let x_2184 : f32 = u_xlat60;
        u_xlat35 = (x_2183 + x_2184);
        let x_2186 : f32 = u_xlat35;
        u_xlati10 = i32(x_2186);
      }
      let x_2188 : i32 = u_xlati10;
      u_xlati10 = (x_2188 << bitcast<u32>(2i));
      let x_2190 : vec3<f32> = vs_TEXCOORD1;
      let x_2193 : i32 = u_xlati10;
      let x_2196 : i32 = u_xlati10;
      let x_2200 : vec4<f32> = x_365.x_AdditionalLightsWorldToShadow[((x_2193 + 1i) / 4i)][((x_2196 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2190.y, x_2190.y, x_2190.y, x_2190.y) * x_2200);
      let x_2202 : i32 = u_xlati10;
      let x_2204 : i32 = u_xlati10;
      let x_2207 : vec4<f32> = x_365.x_AdditionalLightsWorldToShadow[(x_2202 / 4i)][(x_2204 % 4i)];
      let x_2208 : vec3<f32> = vs_TEXCOORD1;
      let x_2211 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2207 * vec4<f32>(x_2208.x, x_2208.x, x_2208.x, x_2208.x)) + x_2211);
      let x_2213 : i32 = u_xlati10;
      let x_2216 : i32 = u_xlati10;
      let x_2220 : vec4<f32> = x_365.x_AdditionalLightsWorldToShadow[((x_2213 + 2i) / 4i)][((x_2216 + 2i) % 4i)];
      let x_2221 : vec3<f32> = vs_TEXCOORD1;
      let x_2224 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2220 * vec4<f32>(x_2221.z, x_2221.z, x_2221.z, x_2221.z)) + x_2224);
      let x_2226 : vec4<f32> = u_xlat11;
      let x_2227 : i32 = u_xlati10;
      let x_2230 : i32 = u_xlati10;
      let x_2234 : vec4<f32> = x_365.x_AdditionalLightsWorldToShadow[((x_2227 + 3i) / 4i)][((x_2230 + 3i) % 4i)];
      u_xlat10 = (x_2226 + x_2234);
      let x_2236 : vec4<f32> = u_xlat10;
      let x_2238 : vec4<f32> = u_xlat10;
      let x_2240 : vec3<f32> = (vec3<f32>(x_2236.x, x_2236.y, x_2236.z) / vec3<f32>(x_2238.w, x_2238.w, x_2238.w));
      let x_2241 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
      let x_2244 : i32 = u_xlati81;
      let x_2246 : f32 = x_365.x_AdditionalShadowParams[x_2244].y;
      u_xlatb85 = (0.0f < x_2246);
      let x_2248 : bool = u_xlatb85;
      if (x_2248) {
        let x_2251 : i32 = u_xlati81;
        let x_2253 : f32 = x_365.x_AdditionalShadowParams[x_2251].y;
        u_xlatb85 = (1.0f == x_2253);
        let x_2255 : bool = u_xlatb85;
        if (x_2255) {
          let x_2258 : vec4<f32> = u_xlat10;
          let x_2262 : vec4<f32> = x_365.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2258.x, x_2258.y, x_2258.x, x_2258.y) + x_2262);
          let x_2265 : vec4<f32> = u_xlat11;
          let x_2266 : vec2<f32> = vec2<f32>(x_2265.x, x_2265.y);
          let x_2268 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2266.x, x_2266.y, x_2268);
          let x_2276 : vec3<f32> = txVec30;
          let x_2278 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2276.xy, x_2276.z);
          u_xlat12.x = x_2278;
          let x_2281 : vec4<f32> = u_xlat11;
          let x_2282 : vec2<f32> = vec2<f32>(x_2281.z, x_2281.w);
          let x_2284 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2282.x, x_2282.y, x_2284);
          let x_2291 : vec3<f32> = txVec31;
          let x_2293 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2291.xy, x_2291.z);
          u_xlat12.y = x_2293;
          let x_2295 : vec4<f32> = u_xlat10;
          let x_2299 : vec4<f32> = x_365.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2295.x, x_2295.y, x_2295.x, x_2295.y) + x_2299);
          let x_2302 : vec4<f32> = u_xlat11;
          let x_2303 : vec2<f32> = vec2<f32>(x_2302.x, x_2302.y);
          let x_2305 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2303.x, x_2303.y, x_2305);
          let x_2312 : vec3<f32> = txVec32;
          let x_2314 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2312.xy, x_2312.z);
          u_xlat12.z = x_2314;
          let x_2317 : vec4<f32> = u_xlat11;
          let x_2318 : vec2<f32> = vec2<f32>(x_2317.z, x_2317.w);
          let x_2320 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2318.x, x_2318.y, x_2320);
          let x_2327 : vec3<f32> = txVec33;
          let x_2329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2327.xy, x_2327.z);
          u_xlat12.w = x_2329;
          let x_2332 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2332, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2335 : i32 = u_xlati81;
          let x_2337 : f32 = x_365.x_AdditionalShadowParams[x_2335].y;
          u_xlatb11.x = (2.0f == x_2337);
          let x_2341 : bool = u_xlatb11.x;
          if (x_2341) {
            let x_2344 : vec4<f32> = u_xlat10;
            let x_2348 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2351 : vec2<f32> = ((vec2<f32>(x_2344.x, x_2344.y) * vec2<f32>(x_2348.z, x_2348.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2352 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2351.x, x_2351.y, x_2352.z, x_2352.w);
            let x_2354 : vec4<f32> = u_xlat11;
            let x_2356 : vec2<f32> = floor(vec2<f32>(x_2354.x, x_2354.y));
            let x_2357 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2356.x, x_2356.y, x_2357.z, x_2357.w);
            let x_2360 : vec4<f32> = u_xlat10;
            let x_2363 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2366 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2360.x, x_2360.y) * vec2<f32>(x_2363.z, x_2363.w)) + -(vec2<f32>(x_2366.x, x_2366.y)));
            let x_2370 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2370.x, x_2370.x, x_2370.y, x_2370.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2373 : vec4<f32> = u_xlat12;
            let x_2375 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2373.x, x_2373.x, x_2373.z, x_2373.z) * vec4<f32>(x_2375.x, x_2375.x, x_2375.z, x_2375.z));
            let x_2378 : vec4<f32> = u_xlat13;
            let x_2380 : vec2<f32> = (vec2<f32>(x_2378.y, x_2378.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2381 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2380.x, x_2381.y, x_2380.y, x_2381.w);
            let x_2383 : vec4<f32> = u_xlat13;
            let x_2386 : vec2<f32> = u_xlat61;
            let x_2388 : vec2<f32> = ((vec2<f32>(x_2383.x, x_2383.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2386));
            let x_2389 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2388.x, x_2388.y, x_2389.z, x_2389.w);
            let x_2392 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2392) + vec2<f32>(1.0f, 1.0f));
            let x_2395 : vec2<f32> = u_xlat61;
            let x_2396 : vec2<f32> = min(x_2395, vec2<f32>(0.0f, 0.0f));
            let x_2397 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2396.x, x_2396.y, x_2397.z, x_2397.w);
            let x_2399 : vec4<f32> = u_xlat14;
            let x_2402 : vec4<f32> = u_xlat14;
            let x_2405 : vec2<f32> = u_xlat63;
            let x_2406 : vec2<f32> = ((-(vec2<f32>(x_2399.x, x_2399.y)) * vec2<f32>(x_2402.x, x_2402.y)) + x_2405);
            let x_2407 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2406.x, x_2406.y, x_2407.z, x_2407.w);
            let x_2409 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2409, vec2<f32>(0.0f, 0.0f));
            let x_2411 : vec2<f32> = u_xlat61;
            let x_2413 : vec2<f32> = u_xlat61;
            let x_2415 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2411) * x_2413) + vec2<f32>(x_2415.y, x_2415.w));
            let x_2418 : vec4<f32> = u_xlat14;
            let x_2420 : vec2<f32> = (vec2<f32>(x_2418.x, x_2418.y) + vec2<f32>(1.0f, 1.0f));
            let x_2421 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2420.x, x_2420.y, x_2421.z, x_2421.w);
            let x_2423 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2423 + vec2<f32>(1.0f, 1.0f));
            let x_2425 : vec4<f32> = u_xlat13;
            let x_2427 : vec2<f32> = (vec2<f32>(x_2425.x, x_2425.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2428 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2427.x, x_2427.y, x_2428.z, x_2428.w);
            let x_2430 : vec2<f32> = u_xlat63;
            let x_2431 : vec2<f32> = (x_2430 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2432 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2431.x, x_2431.y, x_2432.z, x_2432.w);
            let x_2434 : vec4<f32> = u_xlat14;
            let x_2436 : vec2<f32> = (vec2<f32>(x_2434.x, x_2434.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2437 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2436.x, x_2436.y, x_2437.z, x_2437.w);
            let x_2439 : vec2<f32> = u_xlat61;
            let x_2440 : vec2<f32> = (x_2439 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2441 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2440.x, x_2440.y, x_2441.z, x_2441.w);
            let x_2443 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2443.y, x_2443.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2447 : f32 = u_xlat14.x;
            u_xlat15.z = x_2447;
            let x_2450 : f32 = u_xlat61.x;
            u_xlat15.w = x_2450;
            let x_2453 : f32 = u_xlat16.x;
            u_xlat13.z = x_2453;
            let x_2456 : f32 = u_xlat12.x;
            u_xlat13.w = x_2456;
            let x_2458 : vec4<f32> = u_xlat13;
            let x_2460 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2458.z, x_2458.w, x_2458.x, x_2458.z) + vec4<f32>(x_2460.z, x_2460.w, x_2460.x, x_2460.z));
            let x_2464 : f32 = u_xlat15.y;
            u_xlat14.z = x_2464;
            let x_2467 : f32 = u_xlat61.y;
            u_xlat14.w = x_2467;
            let x_2470 : f32 = u_xlat13.y;
            u_xlat16.z = x_2470;
            let x_2473 : f32 = u_xlat12.z;
            u_xlat16.w = x_2473;
            let x_2475 : vec4<f32> = u_xlat14;
            let x_2477 : vec4<f32> = u_xlat16;
            let x_2479 : vec3<f32> = (vec3<f32>(x_2475.z, x_2475.y, x_2475.w) + vec3<f32>(x_2477.z, x_2477.y, x_2477.w));
            let x_2480 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2479.x, x_2479.y, x_2479.z, x_2480.w);
            let x_2482 : vec4<f32> = u_xlat13;
            let x_2484 : vec4<f32> = u_xlat17;
            let x_2486 : vec3<f32> = (vec3<f32>(x_2482.x, x_2482.z, x_2482.w) / vec3<f32>(x_2484.z, x_2484.w, x_2484.y));
            let x_2487 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
            let x_2489 : vec4<f32> = u_xlat13;
            let x_2491 : vec3<f32> = (vec3<f32>(x_2489.x, x_2489.y, x_2489.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2492 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2491.x, x_2491.y, x_2491.z, x_2492.w);
            let x_2494 : vec4<f32> = u_xlat16;
            let x_2496 : vec4<f32> = u_xlat12;
            let x_2498 : vec3<f32> = (vec3<f32>(x_2494.z, x_2494.y, x_2494.w) / vec3<f32>(x_2496.x, x_2496.y, x_2496.z));
            let x_2499 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
            let x_2501 : vec4<f32> = u_xlat14;
            let x_2503 : vec3<f32> = (vec3<f32>(x_2501.x, x_2501.y, x_2501.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2504 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2503.x, x_2503.y, x_2503.z, x_2504.w);
            let x_2506 : vec4<f32> = u_xlat13;
            let x_2509 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2511 : vec3<f32> = (vec3<f32>(x_2506.y, x_2506.x, x_2506.z) * vec3<f32>(x_2509.x, x_2509.x, x_2509.x));
            let x_2512 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2511.x, x_2511.y, x_2511.z, x_2512.w);
            let x_2514 : vec4<f32> = u_xlat14;
            let x_2517 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2519 : vec3<f32> = (vec3<f32>(x_2514.x, x_2514.y, x_2514.z) * vec3<f32>(x_2517.y, x_2517.y, x_2517.y));
            let x_2520 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2519.x, x_2519.y, x_2519.z, x_2520.w);
            let x_2523 : f32 = u_xlat14.x;
            u_xlat13.w = x_2523;
            let x_2525 : vec4<f32> = u_xlat11;
            let x_2528 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2531 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2525.x, x_2525.y, x_2525.x, x_2525.y) * vec4<f32>(x_2528.x, x_2528.y, x_2528.x, x_2528.y)) + vec4<f32>(x_2531.y, x_2531.w, x_2531.x, x_2531.w));
            let x_2534 : vec4<f32> = u_xlat11;
            let x_2537 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2540 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2534.x, x_2534.y) * vec2<f32>(x_2537.x, x_2537.y)) + vec2<f32>(x_2540.z, x_2540.w));
            let x_2544 : f32 = u_xlat13.y;
            u_xlat14.w = x_2544;
            let x_2546 : vec4<f32> = u_xlat14;
            let x_2547 : vec2<f32> = vec2<f32>(x_2546.y, x_2546.z);
            let x_2548 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2548.x, x_2547.x, x_2548.z, x_2547.y);
            let x_2550 : vec4<f32> = u_xlat11;
            let x_2553 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2556 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2550.x, x_2550.y, x_2550.x, x_2550.y) * vec4<f32>(x_2553.x, x_2553.y, x_2553.x, x_2553.y)) + vec4<f32>(x_2556.x, x_2556.y, x_2556.z, x_2556.y));
            let x_2559 : vec4<f32> = u_xlat11;
            let x_2562 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2565 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2559.x, x_2559.y, x_2559.x, x_2559.y) * vec4<f32>(x_2562.x, x_2562.y, x_2562.x, x_2562.y)) + vec4<f32>(x_2565.w, x_2565.y, x_2565.w, x_2565.z));
            let x_2568 : vec4<f32> = u_xlat11;
            let x_2571 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2574 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2568.x, x_2568.y, x_2568.x, x_2568.y) * vec4<f32>(x_2571.x, x_2571.y, x_2571.x, x_2571.y)) + vec4<f32>(x_2574.x, x_2574.w, x_2574.z, x_2574.w));
            let x_2577 : vec4<f32> = u_xlat12;
            let x_2579 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2577.x, x_2577.x, x_2577.x, x_2577.y) * vec4<f32>(x_2579.z, x_2579.w, x_2579.y, x_2579.z));
            let x_2582 : vec4<f32> = u_xlat12;
            let x_2584 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2582.y, x_2582.y, x_2582.z, x_2582.z) * x_2584);
            let x_2587 : f32 = u_xlat12.z;
            let x_2589 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2587 * x_2589);
            let x_2593 : vec4<f32> = u_xlat15;
            let x_2594 : vec2<f32> = vec2<f32>(x_2593.x, x_2593.y);
            let x_2596 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2594.x, x_2594.y, x_2596);
            let x_2604 : vec3<f32> = txVec34;
            let x_2606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2604.xy, x_2604.z);
            u_xlat36 = x_2606;
            let x_2608 : vec4<f32> = u_xlat15;
            let x_2609 : vec2<f32> = vec2<f32>(x_2608.z, x_2608.w);
            let x_2611 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2609.x, x_2609.y, x_2611);
            let x_2618 : vec3<f32> = txVec35;
            let x_2620 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2618.xy, x_2618.z);
            u_xlat12.x = x_2620;
            let x_2623 : f32 = u_xlat12.x;
            let x_2625 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2623 * x_2625);
            let x_2629 : f32 = u_xlat18.x;
            let x_2630 : f32 = u_xlat36;
            let x_2633 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2629 * x_2630) + x_2633);
            let x_2636 : vec2<f32> = u_xlat61;
            let x_2638 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2636.x, x_2636.y, x_2638);
            let x_2645 : vec3<f32> = txVec36;
            let x_2647 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2645.xy, x_2645.z);
            u_xlat61.x = x_2647;
            let x_2650 : f32 = u_xlat18.z;
            let x_2652 : f32 = u_xlat61.x;
            let x_2654 : f32 = u_xlat36;
            u_xlat36 = ((x_2650 * x_2652) + x_2654);
            let x_2657 : vec4<f32> = u_xlat14;
            let x_2658 : vec2<f32> = vec2<f32>(x_2657.x, x_2657.y);
            let x_2660 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2658.x, x_2658.y, x_2660);
            let x_2667 : vec3<f32> = txVec37;
            let x_2669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2667.xy, x_2667.z);
            u_xlat61.x = x_2669;
            let x_2672 : f32 = u_xlat18.w;
            let x_2674 : f32 = u_xlat61.x;
            let x_2676 : f32 = u_xlat36;
            u_xlat36 = ((x_2672 * x_2674) + x_2676);
            let x_2679 : vec4<f32> = u_xlat16;
            let x_2680 : vec2<f32> = vec2<f32>(x_2679.x, x_2679.y);
            let x_2682 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2680.x, x_2680.y, x_2682);
            let x_2689 : vec3<f32> = txVec38;
            let x_2691 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2689.xy, x_2689.z);
            u_xlat61.x = x_2691;
            let x_2694 : f32 = u_xlat19.x;
            let x_2696 : f32 = u_xlat61.x;
            let x_2698 : f32 = u_xlat36;
            u_xlat36 = ((x_2694 * x_2696) + x_2698);
            let x_2701 : vec4<f32> = u_xlat16;
            let x_2702 : vec2<f32> = vec2<f32>(x_2701.z, x_2701.w);
            let x_2704 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2702.x, x_2702.y, x_2704);
            let x_2711 : vec3<f32> = txVec39;
            let x_2713 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2711.xy, x_2711.z);
            u_xlat61.x = x_2713;
            let x_2716 : f32 = u_xlat19.y;
            let x_2718 : f32 = u_xlat61.x;
            let x_2720 : f32 = u_xlat36;
            u_xlat36 = ((x_2716 * x_2718) + x_2720);
            let x_2723 : vec4<f32> = u_xlat14;
            let x_2724 : vec2<f32> = vec2<f32>(x_2723.z, x_2723.w);
            let x_2726 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2724.x, x_2724.y, x_2726);
            let x_2733 : vec3<f32> = txVec40;
            let x_2735 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2733.xy, x_2733.z);
            u_xlat61.x = x_2735;
            let x_2738 : f32 = u_xlat19.z;
            let x_2740 : f32 = u_xlat61.x;
            let x_2742 : f32 = u_xlat36;
            u_xlat36 = ((x_2738 * x_2740) + x_2742);
            let x_2745 : vec4<f32> = u_xlat13;
            let x_2746 : vec2<f32> = vec2<f32>(x_2745.x, x_2745.y);
            let x_2748 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2746.x, x_2746.y, x_2748);
            let x_2755 : vec3<f32> = txVec41;
            let x_2757 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2755.xy, x_2755.z);
            u_xlat61.x = x_2757;
            let x_2760 : f32 = u_xlat19.w;
            let x_2762 : f32 = u_xlat61.x;
            let x_2764 : f32 = u_xlat36;
            u_xlat36 = ((x_2760 * x_2762) + x_2764);
            let x_2767 : vec4<f32> = u_xlat13;
            let x_2768 : vec2<f32> = vec2<f32>(x_2767.z, x_2767.w);
            let x_2770 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2768.x, x_2768.y, x_2770);
            let x_2777 : vec3<f32> = txVec42;
            let x_2779 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2777.xy, x_2777.z);
            u_xlat61.x = x_2779;
            let x_2782 : f32 = u_xlat11.x;
            let x_2784 : f32 = u_xlat61.x;
            let x_2786 : f32 = u_xlat36;
            u_xlat85 = ((x_2782 * x_2784) + x_2786);
          } else {
            let x_2789 : vec4<f32> = u_xlat10;
            let x_2792 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2795 : vec2<f32> = ((vec2<f32>(x_2789.x, x_2789.y) * vec2<f32>(x_2792.z, x_2792.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2796 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2795.x, x_2795.y, x_2796.z, x_2796.w);
            let x_2798 : vec4<f32> = u_xlat11;
            let x_2800 : vec2<f32> = floor(vec2<f32>(x_2798.x, x_2798.y));
            let x_2801 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2800.x, x_2800.y, x_2801.z, x_2801.w);
            let x_2803 : vec4<f32> = u_xlat10;
            let x_2806 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2809 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2803.x, x_2803.y) * vec2<f32>(x_2806.z, x_2806.w)) + -(vec2<f32>(x_2809.x, x_2809.y)));
            let x_2813 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2813.x, x_2813.x, x_2813.y, x_2813.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2816 : vec4<f32> = u_xlat12;
            let x_2818 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2816.x, x_2816.x, x_2816.z, x_2816.z) * vec4<f32>(x_2818.x, x_2818.x, x_2818.z, x_2818.z));
            let x_2821 : vec4<f32> = u_xlat13;
            let x_2823 : vec2<f32> = (vec2<f32>(x_2821.y, x_2821.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2824 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2824.x, x_2823.x, x_2824.z, x_2823.y);
            let x_2826 : vec4<f32> = u_xlat13;
            let x_2829 : vec2<f32> = u_xlat61;
            let x_2831 : vec2<f32> = ((vec2<f32>(x_2826.x, x_2826.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2829));
            let x_2832 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2831.x, x_2832.y, x_2831.y, x_2832.w);
            let x_2834 : vec2<f32> = u_xlat61;
            let x_2836 : vec2<f32> = (-(x_2834) + vec2<f32>(1.0f, 1.0f));
            let x_2837 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2836.x, x_2836.y, x_2837.z, x_2837.w);
            let x_2839 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2839, vec2<f32>(0.0f, 0.0f));
            let x_2841 : vec2<f32> = u_xlat63;
            let x_2843 : vec2<f32> = u_xlat63;
            let x_2845 : vec4<f32> = u_xlat13;
            let x_2847 : vec2<f32> = ((-(x_2841) * x_2843) + vec2<f32>(x_2845.x, x_2845.y));
            let x_2848 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2847.x, x_2847.y, x_2848.z, x_2848.w);
            let x_2850 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2850, vec2<f32>(0.0f, 0.0f));
            let x_2853 : vec2<f32> = u_xlat63;
            let x_2855 : vec2<f32> = u_xlat63;
            let x_2857 : vec4<f32> = u_xlat12;
            let x_2859 : vec2<f32> = ((-(x_2853) * x_2855) + vec2<f32>(x_2857.y, x_2857.w));
            let x_2860 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2859.x, x_2860.y, x_2859.y);
            let x_2862 : vec4<f32> = u_xlat13;
            let x_2865 : vec2<f32> = (vec2<f32>(x_2862.x, x_2862.y) + vec2<f32>(2.0f, 2.0f));
            let x_2866 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2865.x, x_2865.y, x_2866.z, x_2866.w);
            let x_2868 : vec3<f32> = u_xlat37;
            let x_2870 : vec2<f32> = (vec2<f32>(x_2868.x, x_2868.z) + vec2<f32>(2.0f, 2.0f));
            let x_2871 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2871.x, x_2870.x, x_2871.z, x_2870.y);
            let x_2874 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2874 * 0.08163200318813323975f);
            let x_2877 : vec4<f32> = u_xlat12;
            let x_2880 : vec3<f32> = (vec3<f32>(x_2877.z, x_2877.x, x_2877.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2881 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2880.x, x_2880.y, x_2880.z, x_2881.w);
            let x_2883 : vec4<f32> = u_xlat13;
            let x_2885 : vec2<f32> = (vec2<f32>(x_2883.x, x_2883.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2886 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2885.x, x_2885.y, x_2886.z, x_2886.w);
            let x_2889 : f32 = u_xlat16.y;
            u_xlat15.x = x_2889;
            let x_2891 : vec2<f32> = u_xlat61;
            let x_2894 : vec2<f32> = ((vec2<f32>(x_2891.x, x_2891.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2895 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2895.x, x_2894.x, x_2895.z, x_2894.y);
            let x_2897 : vec2<f32> = u_xlat61;
            let x_2900 : vec2<f32> = ((vec2<f32>(x_2897.x, x_2897.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2901 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2900.x, x_2901.y, x_2900.y, x_2901.w);
            let x_2904 : f32 = u_xlat12.x;
            u_xlat13.y = x_2904;
            let x_2907 : f32 = u_xlat14.y;
            u_xlat13.w = x_2907;
            let x_2909 : vec4<f32> = u_xlat13;
            let x_2910 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2909 + x_2910);
            let x_2912 : vec2<f32> = u_xlat61;
            let x_2915 : vec2<f32> = ((vec2<f32>(x_2912.y, x_2912.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2916 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2916.x, x_2915.x, x_2916.z, x_2915.y);
            let x_2918 : vec2<f32> = u_xlat61;
            let x_2921 : vec2<f32> = ((vec2<f32>(x_2918.y, x_2918.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2922 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2921.x, x_2922.y, x_2921.y, x_2922.w);
            let x_2925 : f32 = u_xlat12.y;
            u_xlat14.y = x_2925;
            let x_2927 : vec4<f32> = u_xlat14;
            let x_2928 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2927 + x_2928);
            let x_2930 : vec4<f32> = u_xlat13;
            let x_2931 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2930 / x_2931);
            let x_2933 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2933 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2935 : vec4<f32> = u_xlat14;
            let x_2936 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2935 / x_2936);
            let x_2938 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2938 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2940 : vec4<f32> = u_xlat13;
            let x_2943 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2940.w, x_2940.x, x_2940.y, x_2940.z) * vec4<f32>(x_2943.x, x_2943.x, x_2943.x, x_2943.x));
            let x_2946 : vec4<f32> = u_xlat14;
            let x_2949 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2946.x, x_2946.w, x_2946.y, x_2946.z) * vec4<f32>(x_2949.y, x_2949.y, x_2949.y, x_2949.y));
            let x_2952 : vec4<f32> = u_xlat13;
            let x_2953 : vec3<f32> = vec3<f32>(x_2952.y, x_2952.z, x_2952.w);
            let x_2954 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2953.x, x_2954.y, x_2953.y, x_2953.z);
            let x_2957 : f32 = u_xlat14.x;
            u_xlat16.y = x_2957;
            let x_2959 : vec4<f32> = u_xlat11;
            let x_2962 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2965 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2959.x, x_2959.y, x_2959.x, x_2959.y) * vec4<f32>(x_2962.x, x_2962.y, x_2962.x, x_2962.y)) + vec4<f32>(x_2965.x, x_2965.y, x_2965.z, x_2965.y));
            let x_2968 : vec4<f32> = u_xlat11;
            let x_2971 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2974 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2968.x, x_2968.y) * vec2<f32>(x_2971.x, x_2971.y)) + vec2<f32>(x_2974.w, x_2974.y));
            let x_2978 : f32 = u_xlat16.y;
            u_xlat13.y = x_2978;
            let x_2981 : f32 = u_xlat14.z;
            u_xlat16.y = x_2981;
            let x_2983 : vec4<f32> = u_xlat11;
            let x_2986 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2989 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2983.x, x_2983.y, x_2983.x, x_2983.y) * vec4<f32>(x_2986.x, x_2986.y, x_2986.x, x_2986.y)) + vec4<f32>(x_2989.x, x_2989.y, x_2989.z, x_2989.y));
            let x_2992 : vec4<f32> = u_xlat11;
            let x_2995 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_2998 : vec4<f32> = u_xlat16;
            let x_3000 : vec2<f32> = ((vec2<f32>(x_2992.x, x_2992.y) * vec2<f32>(x_2995.x, x_2995.y)) + vec2<f32>(x_2998.w, x_2998.y));
            let x_3001 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3000.x, x_3000.y, x_3001.z, x_3001.w);
            let x_3004 : f32 = u_xlat16.y;
            u_xlat13.z = x_3004;
            let x_3007 : vec4<f32> = u_xlat11;
            let x_3010 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_3013 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3007.x, x_3007.y, x_3007.x, x_3007.y) * vec4<f32>(x_3010.x, x_3010.y, x_3010.x, x_3010.y)) + vec4<f32>(x_3013.x, x_3013.y, x_3013.x, x_3013.z));
            let x_3017 : f32 = u_xlat14.w;
            u_xlat16.y = x_3017;
            let x_3020 : vec4<f32> = u_xlat11;
            let x_3023 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_3026 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3020.x, x_3020.y, x_3020.x, x_3020.y) * vec4<f32>(x_3023.x, x_3023.y, x_3023.x, x_3023.y)) + vec4<f32>(x_3026.x, x_3026.y, x_3026.z, x_3026.y));
            let x_3030 : vec4<f32> = u_xlat11;
            let x_3033 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_3036 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3030.x, x_3030.y) * vec2<f32>(x_3033.x, x_3033.y)) + vec2<f32>(x_3036.w, x_3036.y));
            let x_3040 : f32 = u_xlat16.y;
            u_xlat13.w = x_3040;
            let x_3043 : vec4<f32> = u_xlat11;
            let x_3046 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_3049 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3043.x, x_3043.y) * vec2<f32>(x_3046.x, x_3046.y)) + vec2<f32>(x_3049.x, x_3049.w));
            let x_3052 : vec4<f32> = u_xlat16;
            let x_3053 : vec3<f32> = vec3<f32>(x_3052.x, x_3052.z, x_3052.w);
            let x_3054 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3053.x, x_3054.y, x_3053.y, x_3053.z);
            let x_3056 : vec4<f32> = u_xlat11;
            let x_3059 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_3062 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3056.x, x_3056.y, x_3056.x, x_3056.y) * vec4<f32>(x_3059.x, x_3059.y, x_3059.x, x_3059.y)) + vec4<f32>(x_3062.x, x_3062.y, x_3062.z, x_3062.y));
            let x_3066 : vec4<f32> = u_xlat11;
            let x_3069 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_3072 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3066.x, x_3066.y) * vec2<f32>(x_3069.x, x_3069.y)) + vec2<f32>(x_3072.w, x_3072.y));
            let x_3076 : f32 = u_xlat13.x;
            u_xlat14.x = x_3076;
            let x_3078 : vec4<f32> = u_xlat11;
            let x_3081 : vec4<f32> = x_365.x_AdditionalShadowmapSize;
            let x_3084 : vec4<f32> = u_xlat14;
            let x_3086 : vec2<f32> = ((vec2<f32>(x_3078.x, x_3078.y) * vec2<f32>(x_3081.x, x_3081.y)) + vec2<f32>(x_3084.x, x_3084.y));
            let x_3087 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3086.x, x_3086.y, x_3087.z, x_3087.w);
            let x_3090 : vec4<f32> = u_xlat12;
            let x_3092 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3090.x, x_3090.x, x_3090.x, x_3090.x) * x_3092);
            let x_3095 : vec4<f32> = u_xlat12;
            let x_3097 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3095.y, x_3095.y, x_3095.y, x_3095.y) * x_3097);
            let x_3100 : vec4<f32> = u_xlat12;
            let x_3102 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3100.z, x_3100.z, x_3100.z, x_3100.z) * x_3102);
            let x_3104 : vec4<f32> = u_xlat12;
            let x_3106 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3104.w, x_3104.w, x_3104.w, x_3104.w) * x_3106);
            let x_3109 : vec4<f32> = u_xlat17;
            let x_3110 : vec2<f32> = vec2<f32>(x_3109.x, x_3109.y);
            let x_3112 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3110.x, x_3110.y, x_3112);
            let x_3119 : vec3<f32> = txVec43;
            let x_3121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3119.xy, x_3119.z);
            u_xlat13.x = x_3121;
            let x_3124 : vec4<f32> = u_xlat17;
            let x_3125 : vec2<f32> = vec2<f32>(x_3124.z, x_3124.w);
            let x_3127 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3125.x, x_3125.y, x_3127);
            let x_3135 : vec3<f32> = txVec44;
            let x_3137 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3135.xy, x_3135.z);
            u_xlat88 = x_3137;
            let x_3138 : f32 = u_xlat88;
            let x_3140 : f32 = u_xlat22.y;
            u_xlat88 = (x_3138 * x_3140);
            let x_3143 : f32 = u_xlat22.x;
            let x_3145 : f32 = u_xlat13.x;
            let x_3147 : f32 = u_xlat88;
            u_xlat13.x = ((x_3143 * x_3145) + x_3147);
            let x_3151 : vec2<f32> = u_xlat61;
            let x_3153 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3151.x, x_3151.y, x_3153);
            let x_3160 : vec3<f32> = txVec45;
            let x_3162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3160.xy, x_3160.z);
            u_xlat61.x = x_3162;
            let x_3165 : f32 = u_xlat22.z;
            let x_3167 : f32 = u_xlat61.x;
            let x_3170 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3165 * x_3167) + x_3170);
            let x_3174 : vec4<f32> = u_xlat20;
            let x_3175 : vec2<f32> = vec2<f32>(x_3174.x, x_3174.y);
            let x_3177 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3175.x, x_3175.y, x_3177);
            let x_3185 : vec3<f32> = txVec46;
            let x_3187 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3185.xy, x_3185.z);
            u_xlat86 = x_3187;
            let x_3189 : f32 = u_xlat22.w;
            let x_3190 : f32 = u_xlat86;
            let x_3193 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3189 * x_3190) + x_3193);
            let x_3197 : vec4<f32> = u_xlat18;
            let x_3198 : vec2<f32> = vec2<f32>(x_3197.x, x_3197.y);
            let x_3200 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3198.x, x_3198.y, x_3200);
            let x_3207 : vec3<f32> = txVec47;
            let x_3209 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3207.xy, x_3207.z);
            u_xlat86 = x_3209;
            let x_3211 : f32 = u_xlat23.x;
            let x_3212 : f32 = u_xlat86;
            let x_3215 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3211 * x_3212) + x_3215);
            let x_3219 : vec4<f32> = u_xlat18;
            let x_3220 : vec2<f32> = vec2<f32>(x_3219.z, x_3219.w);
            let x_3222 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3220.x, x_3220.y, x_3222);
            let x_3229 : vec3<f32> = txVec48;
            let x_3231 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3229.xy, x_3229.z);
            u_xlat86 = x_3231;
            let x_3233 : f32 = u_xlat23.y;
            let x_3234 : f32 = u_xlat86;
            let x_3237 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3233 * x_3234) + x_3237);
            let x_3241 : vec4<f32> = u_xlat19;
            let x_3242 : vec2<f32> = vec2<f32>(x_3241.x, x_3241.y);
            let x_3244 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3242.x, x_3242.y, x_3244);
            let x_3251 : vec3<f32> = txVec49;
            let x_3253 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3251.xy, x_3251.z);
            u_xlat86 = x_3253;
            let x_3255 : f32 = u_xlat23.z;
            let x_3256 : f32 = u_xlat86;
            let x_3259 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3255 * x_3256) + x_3259);
            let x_3263 : vec4<f32> = u_xlat20;
            let x_3264 : vec2<f32> = vec2<f32>(x_3263.z, x_3263.w);
            let x_3266 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3264.x, x_3264.y, x_3266);
            let x_3273 : vec3<f32> = txVec50;
            let x_3275 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3273.xy, x_3273.z);
            u_xlat86 = x_3275;
            let x_3277 : f32 = u_xlat23.w;
            let x_3278 : f32 = u_xlat86;
            let x_3281 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3277 * x_3278) + x_3281);
            let x_3285 : vec4<f32> = u_xlat21;
            let x_3286 : vec2<f32> = vec2<f32>(x_3285.x, x_3285.y);
            let x_3288 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3286.x, x_3286.y, x_3288);
            let x_3295 : vec3<f32> = txVec51;
            let x_3297 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3295.xy, x_3295.z);
            u_xlat86 = x_3297;
            let x_3299 : f32 = u_xlat24.x;
            let x_3300 : f32 = u_xlat86;
            let x_3303 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3299 * x_3300) + x_3303);
            let x_3307 : vec4<f32> = u_xlat21;
            let x_3308 : vec2<f32> = vec2<f32>(x_3307.z, x_3307.w);
            let x_3310 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3308.x, x_3308.y, x_3310);
            let x_3317 : vec3<f32> = txVec52;
            let x_3319 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3317.xy, x_3317.z);
            u_xlat86 = x_3319;
            let x_3321 : f32 = u_xlat24.y;
            let x_3322 : f32 = u_xlat86;
            let x_3325 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3321 * x_3322) + x_3325);
            let x_3329 : vec2<f32> = u_xlat38;
            let x_3331 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3329.x, x_3329.y, x_3331);
            let x_3338 : vec3<f32> = txVec53;
            let x_3340 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3338.xy, x_3338.z);
            u_xlat86 = x_3340;
            let x_3342 : f32 = u_xlat24.z;
            let x_3343 : f32 = u_xlat86;
            let x_3346 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3342 * x_3343) + x_3346);
            let x_3350 : vec2<f32> = u_xlat69;
            let x_3352 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3350.x, x_3350.y, x_3352);
            let x_3359 : vec3<f32> = txVec54;
            let x_3361 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3359.xy, x_3359.z);
            u_xlat86 = x_3361;
            let x_3363 : f32 = u_xlat24.w;
            let x_3364 : f32 = u_xlat86;
            let x_3367 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3363 * x_3364) + x_3367);
            let x_3371 : vec4<f32> = u_xlat16;
            let x_3372 : vec2<f32> = vec2<f32>(x_3371.x, x_3371.y);
            let x_3374 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3372.x, x_3372.y, x_3374);
            let x_3381 : vec3<f32> = txVec55;
            let x_3383 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3381.xy, x_3381.z);
            u_xlat86 = x_3383;
            let x_3385 : f32 = u_xlat12.x;
            let x_3386 : f32 = u_xlat86;
            let x_3389 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3385 * x_3386) + x_3389);
            let x_3393 : vec4<f32> = u_xlat16;
            let x_3394 : vec2<f32> = vec2<f32>(x_3393.z, x_3393.w);
            let x_3396 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3394.x, x_3394.y, x_3396);
            let x_3403 : vec3<f32> = txVec56;
            let x_3405 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3403.xy, x_3403.z);
            u_xlat86 = x_3405;
            let x_3407 : f32 = u_xlat12.y;
            let x_3408 : f32 = u_xlat86;
            let x_3411 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3407 * x_3408) + x_3411);
            let x_3415 : vec2<f32> = u_xlat64;
            let x_3417 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3415.x, x_3415.y, x_3417);
            let x_3424 : vec3<f32> = txVec57;
            let x_3426 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3424.xy, x_3424.z);
            u_xlat86 = x_3426;
            let x_3428 : f32 = u_xlat12.z;
            let x_3429 : f32 = u_xlat86;
            let x_3432 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3428 * x_3429) + x_3432);
            let x_3436 : vec4<f32> = u_xlat11;
            let x_3437 : vec2<f32> = vec2<f32>(x_3436.x, x_3436.y);
            let x_3439 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3437.x, x_3437.y, x_3439);
            let x_3446 : vec3<f32> = txVec58;
            let x_3448 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3446.xy, x_3446.z);
            u_xlat11.x = x_3448;
            let x_3451 : f32 = u_xlat12.w;
            let x_3453 : f32 = u_xlat11.x;
            let x_3456 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3451 * x_3453) + x_3456);
          }
        }
      } else {
        let x_3460 : vec4<f32> = u_xlat10;
        let x_3461 : vec2<f32> = vec2<f32>(x_3460.x, x_3460.y);
        let x_3463 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3461.x, x_3461.y, x_3463);
        let x_3470 : vec3<f32> = txVec59;
        let x_3472 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3470.xy, x_3470.z);
        u_xlat85 = x_3472;
      }
      let x_3473 : i32 = u_xlati81;
      let x_3475 : f32 = x_365.x_AdditionalShadowParams[x_3473].x;
      u_xlat10.x = (1.0f + -(x_3475));
      let x_3479 : f32 = u_xlat85;
      let x_3480 : i32 = u_xlati81;
      let x_3482 : f32 = x_365.x_AdditionalShadowParams[x_3480].x;
      let x_3485 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3479 * x_3482) + x_3485);
      let x_3489 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3489);
      let x_3494 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3494 >= 1.0f);
      let x_3496 : bool = u_xlatb60;
      let x_3498 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3496 | x_3498);
      let x_3502 : bool = u_xlatb35.x;
      if (x_3502) {
        x_3503 = 1.0f;
      } else {
        let x_3508 : f32 = u_xlat10.x;
        x_3503 = x_3508;
      }
      let x_3509 : f32 = x_3503;
      u_xlat10.x = x_3509;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3514 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3514) + 1.0f);
    let x_3517 : f32 = u_xlat77;
    let x_3518 : f32 = u_xlat35;
    let x_3521 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3517 * x_3518) + x_3521);
    let x_3524 : f32 = u_xlat83;
    let x_3526 : f32 = u_xlat10.x;
    u_xlat83 = (x_3524 * x_3526);
    let x_3528 : vec4<f32> = u_xlat2;
    let x_3530 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_3528.x, x_3528.y, x_3528.z), x_3530);
    let x_3534 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3534, 0.0f, 1.0f);
    let x_3537 : f32 = u_xlat83;
    let x_3539 : f32 = u_xlat10.x;
    u_xlat83 = (x_3537 * x_3539);
    let x_3541 : f32 = u_xlat83;
    let x_3543 : i32 = u_xlati81;
    let x_3545 : vec4<f32> = x_2010.x_AdditionalLightsColor[x_3543];
    let x_3547 : vec3<f32> = (vec3<f32>(x_3541, x_3541, x_3541) * vec3<f32>(x_3545.x, x_3545.y, x_3545.z));
    let x_3548 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3547.x, x_3547.y, x_3547.z, x_3548.w);
    let x_3550 : vec4<f32> = u_xlat8;
    let x_3552 : vec4<f32> = u_xlat9;
    let x_3555 : vec3<f32> = u_xlat3;
    let x_3556 : vec3<f32> = ((vec3<f32>(x_3550.x, x_3550.y, x_3550.z) * vec3<f32>(x_3552.x, x_3552.x, x_3552.x)) + x_3555);
    let x_3557 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3556.x, x_3556.y, x_3556.z, x_3557.w);
    let x_3559 : vec4<f32> = u_xlat8;
    let x_3561 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3559.x, x_3559.y, x_3559.z), vec3<f32>(x_3561.x, x_3561.y, x_3561.z));
    let x_3564 : f32 = u_xlat81;
    u_xlat81 = max(x_3564, 1.17549435e-38f);
    let x_3566 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3566);
    let x_3568 : f32 = u_xlat81;
    let x_3570 : vec4<f32> = u_xlat8;
    let x_3572 : vec3<f32> = (vec3<f32>(x_3568, x_3568, x_3568) * vec3<f32>(x_3570.x, x_3570.y, x_3570.z));
    let x_3573 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3572.x, x_3572.y, x_3572.z, x_3573.w);
    let x_3575 : vec4<f32> = u_xlat2;
    let x_3577 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3575.x, x_3575.y, x_3575.z), vec3<f32>(x_3577.x, x_3577.y, x_3577.z));
    let x_3580 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3580, 0.0f, 1.0f);
    let x_3582 : vec3<f32> = u_xlat34;
    let x_3583 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3582, vec3<f32>(x_3583.x, x_3583.y, x_3583.z));
    let x_3588 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3588, 0.0f, 1.0f);
    let x_3591 : f32 = u_xlat81;
    let x_3592 : f32 = u_xlat81;
    u_xlat81 = (x_3591 * x_3592);
    let x_3594 : f32 = u_xlat81;
    let x_3596 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3594 * x_3596) + 1.00001001358032226562f);
    let x_3600 : f32 = u_xlat8.x;
    let x_3602 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3600 * x_3602);
    let x_3605 : f32 = u_xlat81;
    let x_3606 : f32 = u_xlat81;
    u_xlat81 = (x_3605 * x_3606);
    let x_3609 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3609, 0.10000000149011611938f);
    let x_3612 : f32 = u_xlat81;
    let x_3614 : f32 = u_xlat8.x;
    u_xlat81 = (x_3612 * x_3614);
    let x_3617 : f32 = u_xlat5.x;
    let x_3618 : f32 = u_xlat81;
    u_xlat81 = (x_3617 * x_3618);
    let x_3620 : f32 = u_xlat79;
    let x_3621 : f32 = u_xlat81;
    u_xlat81 = (x_3620 / x_3621);
    let x_3623 : vec4<f32> = u_xlat0;
    let x_3625 : f32 = u_xlat81;
    let x_3628 : vec3<f32> = u_xlat26;
    let x_3629 : vec3<f32> = ((vec3<f32>(x_3623.x, x_3623.y, x_3623.z) * vec3<f32>(x_3625, x_3625, x_3625)) + x_3628);
    let x_3630 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3629.x, x_3629.y, x_3629.z, x_3630.w);
    let x_3632 : vec4<f32> = u_xlat8;
    let x_3634 : vec4<f32> = u_xlat10;
    let x_3637 : vec3<f32> = u_xlat30;
    u_xlat30 = ((vec3<f32>(x_3632.x, x_3632.y, x_3632.z) * vec3<f32>(x_3634.x, x_3634.y, x_3634.z)) + x_3637);

    continuing {
      let x_3639 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3639 + bitcast<u32>(1i));
    }
  }
  let x_3641 : vec3<f32> = u_xlat32;
  let x_3642 : vec4<f32> = u_xlat6;
  let x_3645 : vec3<f32> = u_xlat4;
  let x_3646 : vec3<f32> = ((x_3641 * vec3<f32>(x_3642.x, x_3642.y, x_3642.z)) + x_3645);
  let x_3647 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3646.x, x_3646.y, x_3646.z, x_3647.w);
  let x_3651 : vec3<f32> = u_xlat30;
  let x_3652 : vec4<f32> = u_xlat0;
  let x_3654 : vec3<f32> = (x_3651 + vec3<f32>(x_3652.x, x_3652.y, x_3652.z));
  let x_3655 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3654.x, x_3654.y, x_3654.z, x_3655.w);
  let x_3659 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_3659 == 1.0f);
  let x_3661 : bool = u_xlatb0;
  if (x_3661) {
    let x_3666 : f32 = u_xlat1.x;
    x_3662 = x_3666;
  } else {
    x_3662 = 1.0f;
  }
  let x_3668 : f32 = x_3662;
  SV_Target0.w = x_3668;
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


