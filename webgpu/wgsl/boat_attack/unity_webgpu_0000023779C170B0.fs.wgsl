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

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb75 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat75 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_145 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb30 : bool;

@group(1) @binding(4) var<uniform> x_302 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_1949 : AdditionalLights;

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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb81 : bool;

fn main_1() {
  var x_90 : f32;
  var x_103 : f32;
  var x_116 : f32;
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
  var x_1609 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2099 : f32;
  var x_2110 : f32;
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
  var x_3442 : f32;
  var x_3601 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_55 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb75 = (x_55 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_67 : vec3<f32> = (-(x_61) + x_66);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat77 = dot(vec3<f32>(x_72.x, x_72.y, x_72.z), vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : f32 = u_xlat77;
  u_xlat77 = inverseSqrt(x_77);
  let x_79 : f32 = u_xlat77;
  let x_81 : vec4<f32> = u_xlat2;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : bool = u_xlatb75;
  if (x_88) {
    let x_94 : f32 = u_xlat2.x;
    x_90 = x_94;
  } else {
    let x_99 : f32 = x_28.unity_MatrixV[0i].z;
    x_90 = x_99;
  }
  let x_100 : f32 = x_90;
  u_xlat3.x = x_100;
  let x_102 : bool = u_xlatb75;
  if (x_102) {
    let x_108 : f32 = u_xlat2.y;
    x_103 = x_108;
  } else {
    let x_112 : f32 = x_28.unity_MatrixV[1i].z;
    x_103 = x_112;
  }
  let x_113 : f32 = x_103;
  u_xlat3.y = x_113;
  let x_115 : bool = u_xlatb75;
  if (x_115) {
    let x_120 : f32 = u_xlat2.z;
    x_116 = x_120;
  } else {
    let x_123 : f32 = x_28.unity_MatrixV[2i].z;
    x_116 = x_123;
  }
  let x_124 : f32 = x_116;
  u_xlat3.z = x_124;
  let x_128 : vec3<f32> = vs_TEXCOORD2;
  let x_129 : vec3<f32> = vs_TEXCOORD2;
  u_xlat75 = dot(x_128, x_129);
  let x_131 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_131);
  let x_133 : f32 = u_xlat75;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = (vec3<f32>(x_133, x_133, x_133) * x_135);
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  u_xlat2.w = 1.0f;
  let x_148 : vec4<f32> = x_145.unity_SHAr;
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_148, x_149);
  let x_154 : vec4<f32> = x_145.unity_SHAg;
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_154, x_155);
  let x_160 : vec4<f32> = x_145.unity_SHAb;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_160, x_161);
  let x_165 : vec4<f32> = u_xlat2;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_165.y, x_165.z, x_165.z, x_165.x) * vec4<f32>(x_167.x, x_167.y, x_167.z, x_167.z));
  let x_173 : vec4<f32> = x_145.unity_SHBr;
  let x_174 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_173, x_174);
  let x_179 : vec4<f32> = x_145.unity_SHBg;
  let x_180 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_145.unity_SHBb;
  let x_186 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_185, x_186);
  let x_190 : f32 = u_xlat2.y;
  let x_192 : f32 = u_xlat2.y;
  u_xlat75 = (x_190 * x_192);
  let x_195 : f32 = u_xlat2.x;
  let x_197 : f32 = u_xlat2.x;
  let x_199 : f32 = u_xlat75;
  u_xlat75 = ((x_195 * x_197) + -(x_199));
  let x_204 : vec4<f32> = x_145.unity_SHC;
  let x_206 : f32 = u_xlat75;
  let x_209 : vec4<f32> = u_xlat6;
  let x_211 : vec3<f32> = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206, x_206, x_206)) + vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : vec3<f32> = u_xlat4;
  let x_215 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_214 + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_218, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_223 : f32 = x_42.x_Metallic;
  u_xlat75 = ((-(x_223) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_228 : f32 = u_xlat75;
  let x_231 : f32 = x_42.x_Smoothness;
  u_xlat77 = (-(x_228) + x_231);
  let x_234 : f32 = u_xlat75;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat26 = (vec3<f32>(x_234, x_234, x_234) * vec3<f32>(x_236.y, x_236.z, x_236.w));
  let x_239 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = x_42.x_BaseColor;
  let x_247 : vec3<f32> = ((vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_242.x, x_242.y, x_242.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_248 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_251 : f32 = x_42.x_Metallic;
  let x_253 : f32 = x_42.x_Metallic;
  let x_255 : f32 = x_42.x_Metallic;
  let x_256 : vec3<f32> = vec3<f32>(x_251, x_253, x_255);
  let x_261 : vec4<f32> = u_xlat0;
  let x_266 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_261.x, x_261.y, x_261.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : f32 = x_42.x_Smoothness;
  u_xlat75 = (-(x_270) + 1.0f);
  let x_274 : f32 = u_xlat75;
  let x_275 : f32 = u_xlat75;
  u_xlat78 = (x_274 * x_275);
  let x_277 : f32 = u_xlat78;
  u_xlat78 = max(x_277, 0.0078125f);
  let x_281 : f32 = u_xlat78;
  let x_282 : f32 = u_xlat78;
  u_xlat79 = (x_281 * x_282);
  let x_284 : f32 = u_xlat77;
  u_xlat77 = (x_284 + 1.0f);
  let x_286 : f32 = u_xlat77;
  u_xlat77 = clamp(x_286, 0.0f, 1.0f);
  let x_288 : f32 = u_xlat78;
  u_xlat5.x = ((x_288 * 4.0f) + 2.0f);
  let x_305 : f32 = x_302.x_MainLightShadowParams.y;
  u_xlatb30 = (0.0f < x_305);
  let x_307 : bool = u_xlatb30;
  if (x_307) {
    let x_311 : f32 = x_302.x_MainLightShadowParams.y;
    u_xlatb30 = (x_311 == 1.0f);
    let x_313 : bool = u_xlatb30;
    if (x_313) {
      let x_318 : vec4<f32> = vs_TEXCOORD6;
      let x_321 : vec4<f32> = x_302.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_318.x, x_318.y, x_318.x, x_318.y) + x_321);
      let x_325 : vec4<f32> = u_xlat6;
      let x_326 : vec2<f32> = vec2<f32>(x_325.x, x_325.y);
      let x_329 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_326.x, x_326.y, x_329);
      let x_342 : vec3<f32> = txVec0;
      let x_344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_342.xy, x_342.z);
      u_xlat7.x = x_344;
      let x_347 : vec4<f32> = u_xlat6;
      let x_348 : vec2<f32> = vec2<f32>(x_347.z, x_347.w);
      let x_350 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_348.x, x_348.y, x_350);
      let x_357 : vec3<f32> = txVec1;
      let x_359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_357.xy, x_357.z);
      u_xlat7.y = x_359;
      let x_361 : vec4<f32> = vs_TEXCOORD6;
      let x_364 : vec4<f32> = x_302.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_361.x, x_361.y, x_361.x, x_361.y) + x_364);
      let x_367 : vec4<f32> = u_xlat6;
      let x_368 : vec2<f32> = vec2<f32>(x_367.x, x_367.y);
      let x_370 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_368.x, x_368.y, x_370);
      let x_377 : vec3<f32> = txVec2;
      let x_379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_377.xy, x_377.z);
      u_xlat7.z = x_379;
      let x_382 : vec4<f32> = u_xlat6;
      let x_383 : vec2<f32> = vec2<f32>(x_382.z, x_382.w);
      let x_385 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_383.x, x_383.y, x_385);
      let x_392 : vec3<f32> = txVec3;
      let x_394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_392.xy, x_392.z);
      u_xlat7.w = x_394;
      let x_397 : vec4<f32> = u_xlat7;
      u_xlat30.x = dot(x_397, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_405 : f32 = x_302.x_MainLightShadowParams.y;
      u_xlatb55 = (x_405 == 2.0f);
      let x_407 : bool = u_xlatb55;
      if (x_407) {
        let x_412 : vec4<f32> = vs_TEXCOORD6;
        let x_416 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        u_xlat55 = ((vec2<f32>(x_412.x, x_412.y) * vec2<f32>(x_416.z, x_416.w)) + vec2<f32>(0.5f, 0.5f));
        let x_422 : vec2<f32> = u_xlat55;
        u_xlat55 = floor(x_422);
        let x_424 : vec4<f32> = vs_TEXCOORD6;
        let x_427 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_430 : vec2<f32> = u_xlat55;
        let x_432 : vec2<f32> = ((vec2<f32>(x_424.x, x_424.y) * vec2<f32>(x_427.z, x_427.w)) + -(x_430));
        let x_433 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_432.x, x_432.y, x_433.z, x_433.w);
        let x_435 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_435.x, x_435.x, x_435.y, x_435.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_440 : vec4<f32> = u_xlat7;
        let x_442 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_440.x, x_440.x, x_440.z, x_440.z) * vec4<f32>(x_442.x, x_442.x, x_442.z, x_442.z));
        let x_446 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_446.y, x_446.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_451 : vec4<f32> = u_xlat8;
        let x_454 : vec4<f32> = u_xlat6;
        let x_457 : vec2<f32> = ((vec2<f32>(x_451.x, x_451.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_454.x, x_454.y)));
        let x_458 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_457.x, x_458.y, x_457.y, x_458.w);
        let x_460 : vec4<f32> = u_xlat6;
        let x_464 : vec2<f32> = (-(vec2<f32>(x_460.x, x_460.y)) + vec2<f32>(1.0f, 1.0f));
        let x_465 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
        let x_468 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_468.x, x_468.y), vec2<f32>(0.0f, 0.0f));
        let x_472 : vec2<f32> = u_xlat58;
        let x_474 : vec2<f32> = u_xlat58;
        let x_476 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_472) * x_474) + vec2<f32>(x_476.x, x_476.y));
        let x_479 : vec4<f32> = u_xlat6;
        let x_481 : vec2<f32> = max(vec2<f32>(x_479.x, x_479.y), vec2<f32>(0.0f, 0.0f));
        let x_482 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_484 : vec4<f32> = u_xlat6;
        let x_487 : vec4<f32> = u_xlat6;
        let x_490 : vec4<f32> = u_xlat7;
        let x_492 : vec2<f32> = ((-(vec2<f32>(x_484.x, x_484.y)) * vec2<f32>(x_487.x, x_487.y)) + vec2<f32>(x_490.y, x_490.w));
        let x_493 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_495 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_495 + vec2<f32>(1.0f, 1.0f));
        let x_497 : vec4<f32> = u_xlat6;
        let x_499 : vec2<f32> = (vec2<f32>(x_497.x, x_497.y) + vec2<f32>(1.0f, 1.0f));
        let x_500 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
        let x_503 : vec4<f32> = u_xlat7;
        let x_507 : vec2<f32> = (vec2<f32>(x_503.x, x_503.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_508 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
        let x_511 : vec4<f32> = u_xlat8;
        let x_513 : vec2<f32> = (vec2<f32>(x_511.x, x_511.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_514 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
        let x_516 : vec2<f32> = u_xlat58;
        let x_517 : vec2<f32> = (x_516 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_518 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_521 : vec4<f32> = u_xlat6;
        let x_523 : vec2<f32> = (vec2<f32>(x_521.x, x_521.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_524 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
        let x_526 : vec4<f32> = u_xlat7;
        let x_528 : vec2<f32> = (vec2<f32>(x_526.y, x_526.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_529 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_532 : f32 = u_xlat8.x;
        u_xlat9.z = x_532;
        let x_535 : f32 = u_xlat6.x;
        u_xlat9.w = x_535;
        let x_538 : f32 = u_xlat11.x;
        u_xlat10.z = x_538;
        let x_541 : f32 = u_xlat56.x;
        u_xlat10.w = x_541;
        let x_543 : vec4<f32> = u_xlat9;
        let x_545 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_543.z, x_543.w, x_543.x, x_543.z) + vec4<f32>(x_545.z, x_545.w, x_545.x, x_545.z));
        let x_549 : f32 = u_xlat9.y;
        u_xlat8.z = x_549;
        let x_552 : f32 = u_xlat6.y;
        u_xlat8.w = x_552;
        let x_555 : f32 = u_xlat10.y;
        u_xlat11.z = x_555;
        let x_558 : f32 = u_xlat56.y;
        u_xlat11.w = x_558;
        let x_560 : vec4<f32> = u_xlat8;
        let x_562 : vec4<f32> = u_xlat11;
        let x_564 : vec3<f32> = (vec3<f32>(x_560.z, x_560.y, x_560.w) + vec3<f32>(x_562.z, x_562.y, x_562.w));
        let x_565 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat10;
        let x_569 : vec4<f32> = u_xlat7;
        let x_571 : vec3<f32> = (vec3<f32>(x_567.x, x_567.z, x_567.w) / vec3<f32>(x_569.z, x_569.w, x_569.y));
        let x_572 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
        let x_574 : vec4<f32> = u_xlat8;
        let x_580 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_581 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat11;
        let x_585 : vec4<f32> = u_xlat6;
        let x_587 : vec3<f32> = (vec3<f32>(x_583.z, x_583.y, x_583.w) / vec3<f32>(x_585.x, x_585.y, x_585.z));
        let x_588 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
        let x_590 : vec4<f32> = u_xlat9;
        let x_592 : vec3<f32> = (vec3<f32>(x_590.x, x_590.y, x_590.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_593 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
        let x_595 : vec4<f32> = u_xlat8;
        let x_598 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_600 : vec3<f32> = (vec3<f32>(x_595.y, x_595.x, x_595.z) * vec3<f32>(x_598.x, x_598.x, x_598.x));
        let x_601 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
        let x_603 : vec4<f32> = u_xlat9;
        let x_606 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_608 : vec3<f32> = (vec3<f32>(x_603.x, x_603.y, x_603.z) * vec3<f32>(x_606.y, x_606.y, x_606.y));
        let x_609 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
        let x_612 : f32 = u_xlat9.x;
        u_xlat8.w = x_612;
        let x_614 : vec2<f32> = u_xlat55;
        let x_617 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_620 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y) * vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y)) + vec4<f32>(x_620.y, x_620.w, x_620.x, x_620.w));
        let x_623 : vec2<f32> = u_xlat55;
        let x_625 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_628 : vec4<f32> = u_xlat8;
        let x_630 : vec2<f32> = ((x_623 * vec2<f32>(x_625.x, x_625.y)) + vec2<f32>(x_628.z, x_628.w));
        let x_631 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
        let x_634 : f32 = u_xlat8.y;
        u_xlat9.w = x_634;
        let x_636 : vec4<f32> = u_xlat9;
        let x_637 : vec2<f32> = vec2<f32>(x_636.y, x_636.z);
        let x_638 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_638.x, x_637.x, x_638.z, x_637.y);
        let x_641 : vec2<f32> = u_xlat55;
        let x_644 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_647 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_641.x, x_641.y, x_641.x, x_641.y) * vec4<f32>(x_644.x, x_644.y, x_644.x, x_644.y)) + vec4<f32>(x_647.x, x_647.y, x_647.z, x_647.y));
        let x_650 : vec2<f32> = u_xlat55;
        let x_653 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_656 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_650.x, x_650.y, x_650.x, x_650.y) * vec4<f32>(x_653.x, x_653.y, x_653.x, x_653.y)) + vec4<f32>(x_656.w, x_656.y, x_656.w, x_656.z));
        let x_659 : vec2<f32> = u_xlat55;
        let x_662 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_665 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_659.x, x_659.y, x_659.x, x_659.y) * vec4<f32>(x_662.x, x_662.y, x_662.x, x_662.y)) + vec4<f32>(x_665.x, x_665.w, x_665.z, x_665.w));
        let x_669 : vec4<f32> = u_xlat6;
        let x_671 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_669.x, x_669.x, x_669.x, x_669.y) * vec4<f32>(x_671.z, x_671.w, x_671.y, x_671.z));
        let x_675 : vec4<f32> = u_xlat6;
        let x_677 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_675.y, x_675.y, x_675.z, x_675.z) * x_677);
        let x_680 : f32 = u_xlat6.z;
        let x_682 : f32 = u_xlat7.y;
        u_xlat55.x = (x_680 * x_682);
        let x_686 : vec4<f32> = u_xlat10;
        let x_687 : vec2<f32> = vec2<f32>(x_686.x, x_686.y);
        let x_689 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_687.x, x_687.y, x_689);
        let x_697 : vec3<f32> = txVec4;
        let x_699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_697.xy, x_697.z);
        u_xlat80 = x_699;
        let x_701 : vec4<f32> = u_xlat10;
        let x_702 : vec2<f32> = vec2<f32>(x_701.z, x_701.w);
        let x_704 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_702.x, x_702.y, x_704);
        let x_711 : vec3<f32> = txVec5;
        let x_713 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_711.xy, x_711.z);
        u_xlat6.x = x_713;
        let x_716 : f32 = u_xlat6.x;
        let x_718 : f32 = u_xlat13.y;
        u_xlat6.x = (x_716 * x_718);
        let x_722 : f32 = u_xlat13.x;
        let x_723 : f32 = u_xlat80;
        let x_726 : f32 = u_xlat6.x;
        u_xlat80 = ((x_722 * x_723) + x_726);
        let x_729 : vec4<f32> = u_xlat11;
        let x_730 : vec2<f32> = vec2<f32>(x_729.x, x_729.y);
        let x_732 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_730.x, x_730.y, x_732);
        let x_739 : vec3<f32> = txVec6;
        let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_739.xy, x_739.z);
        u_xlat6.x = x_741;
        let x_744 : f32 = u_xlat13.z;
        let x_746 : f32 = u_xlat6.x;
        let x_748 : f32 = u_xlat80;
        u_xlat80 = ((x_744 * x_746) + x_748);
        let x_751 : vec4<f32> = u_xlat9;
        let x_752 : vec2<f32> = vec2<f32>(x_751.x, x_751.y);
        let x_754 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_752.x, x_752.y, x_754);
        let x_761 : vec3<f32> = txVec7;
        let x_763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_761.xy, x_761.z);
        u_xlat6.x = x_763;
        let x_766 : f32 = u_xlat13.w;
        let x_768 : f32 = u_xlat6.x;
        let x_770 : f32 = u_xlat80;
        u_xlat80 = ((x_766 * x_768) + x_770);
        let x_773 : vec4<f32> = u_xlat12;
        let x_774 : vec2<f32> = vec2<f32>(x_773.x, x_773.y);
        let x_776 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_774.x, x_774.y, x_776);
        let x_783 : vec3<f32> = txVec8;
        let x_785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_783.xy, x_783.z);
        u_xlat6.x = x_785;
        let x_788 : f32 = u_xlat14.x;
        let x_790 : f32 = u_xlat6.x;
        let x_792 : f32 = u_xlat80;
        u_xlat80 = ((x_788 * x_790) + x_792);
        let x_795 : vec4<f32> = u_xlat12;
        let x_796 : vec2<f32> = vec2<f32>(x_795.z, x_795.w);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec9;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
        u_xlat6.x = x_807;
        let x_810 : f32 = u_xlat14.y;
        let x_812 : f32 = u_xlat6.x;
        let x_814 : f32 = u_xlat80;
        u_xlat80 = ((x_810 * x_812) + x_814);
        let x_817 : vec4<f32> = u_xlat9;
        let x_818 : vec2<f32> = vec2<f32>(x_817.z, x_817.w);
        let x_820 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_818.x, x_818.y, x_820);
        let x_827 : vec3<f32> = txVec10;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_827.xy, x_827.z);
        u_xlat6.x = x_829;
        let x_832 : f32 = u_xlat14.z;
        let x_834 : f32 = u_xlat6.x;
        let x_836 : f32 = u_xlat80;
        u_xlat80 = ((x_832 * x_834) + x_836);
        let x_839 : vec4<f32> = u_xlat8;
        let x_840 : vec2<f32> = vec2<f32>(x_839.x, x_839.y);
        let x_842 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_840.x, x_840.y, x_842);
        let x_849 : vec3<f32> = txVec11;
        let x_851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_849.xy, x_849.z);
        u_xlat6.x = x_851;
        let x_854 : f32 = u_xlat14.w;
        let x_856 : f32 = u_xlat6.x;
        let x_858 : f32 = u_xlat80;
        u_xlat80 = ((x_854 * x_856) + x_858);
        let x_861 : vec4<f32> = u_xlat8;
        let x_862 : vec2<f32> = vec2<f32>(x_861.z, x_861.w);
        let x_864 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_862.x, x_862.y, x_864);
        let x_871 : vec3<f32> = txVec12;
        let x_873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_871.xy, x_871.z);
        u_xlat6.x = x_873;
        let x_876 : f32 = u_xlat55.x;
        let x_878 : f32 = u_xlat6.x;
        let x_880 : f32 = u_xlat80;
        u_xlat30.x = ((x_876 * x_878) + x_880);
      } else {
        let x_884 : vec4<f32> = vs_TEXCOORD6;
        let x_887 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        u_xlat55 = ((vec2<f32>(x_884.x, x_884.y) * vec2<f32>(x_887.z, x_887.w)) + vec2<f32>(0.5f, 0.5f));
        let x_891 : vec2<f32> = u_xlat55;
        u_xlat55 = floor(x_891);
        let x_893 : vec4<f32> = vs_TEXCOORD6;
        let x_896 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_899 : vec2<f32> = u_xlat55;
        let x_901 : vec2<f32> = ((vec2<f32>(x_893.x, x_893.y) * vec2<f32>(x_896.z, x_896.w)) + -(x_899));
        let x_902 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
        let x_904 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_904.x, x_904.x, x_904.y, x_904.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_907 : vec4<f32> = u_xlat7;
        let x_909 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_907.x, x_907.x, x_907.z, x_907.z) * vec4<f32>(x_909.x, x_909.x, x_909.z, x_909.z));
        let x_912 : vec4<f32> = u_xlat8;
        let x_916 : vec2<f32> = (vec2<f32>(x_912.y, x_912.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_917 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_917.x, x_916.x, x_917.z, x_916.y);
        let x_919 : vec4<f32> = u_xlat8;
        let x_922 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_919.x, x_919.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_922.x, x_922.y)));
        let x_926 : vec4<f32> = u_xlat6;
        let x_929 : vec2<f32> = (-(vec2<f32>(x_926.x, x_926.y)) + vec2<f32>(1.0f, 1.0f));
        let x_930 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_929.x, x_930.y, x_929.y, x_930.w);
        let x_932 : vec4<f32> = u_xlat6;
        let x_934 : vec2<f32> = min(vec2<f32>(x_932.x, x_932.y), vec2<f32>(0.0f, 0.0f));
        let x_935 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_934.x, x_934.y, x_935.z, x_935.w);
        let x_937 : vec4<f32> = u_xlat8;
        let x_940 : vec4<f32> = u_xlat8;
        let x_943 : vec4<f32> = u_xlat7;
        let x_945 : vec2<f32> = ((-(vec2<f32>(x_937.x, x_937.y)) * vec2<f32>(x_940.x, x_940.y)) + vec2<f32>(x_943.x, x_943.z));
        let x_946 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_945.x, x_946.y, x_945.y, x_946.w);
        let x_948 : vec4<f32> = u_xlat6;
        let x_950 : vec2<f32> = max(vec2<f32>(x_948.x, x_948.y), vec2<f32>(0.0f, 0.0f));
        let x_951 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_950.x, x_950.y, x_951.z, x_951.w);
        let x_953 : vec4<f32> = u_xlat8;
        let x_956 : vec4<f32> = u_xlat8;
        let x_959 : vec4<f32> = u_xlat7;
        let x_961 : vec2<f32> = ((-(vec2<f32>(x_953.x, x_953.y)) * vec2<f32>(x_956.x, x_956.y)) + vec2<f32>(x_959.y, x_959.w));
        let x_962 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_962.x, x_961.x, x_962.z, x_961.y);
        let x_964 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_964 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_968 : f32 = u_xlat7.y;
        u_xlat8.z = (x_968 * 0.08163200318813323975f);
        let x_972 : vec2<f32> = u_xlat56;
        let x_975 : vec2<f32> = (vec2<f32>(x_972.y, x_972.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_976 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_978.x, x_978.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_982 : f32 = u_xlat7.w;
        u_xlat10.z = (x_982 * 0.08163200318813323975f);
        let x_986 : f32 = u_xlat10.y;
        u_xlat8.x = x_986;
        let x_988 : vec4<f32> = u_xlat6;
        let x_995 : vec2<f32> = ((vec2<f32>(x_988.x, x_988.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_996.x, x_995.x, x_996.z, x_995.y);
        let x_998 : vec4<f32> = u_xlat6;
        let x_1002 : vec2<f32> = ((vec2<f32>(x_998.x, x_998.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1003 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1002.x, x_1003.y, x_1002.y, x_1003.w);
        let x_1006 : f32 = u_xlat56.x;
        u_xlat7.y = x_1006;
        let x_1009 : f32 = u_xlat9.y;
        u_xlat7.w = x_1009;
        let x_1011 : vec4<f32> = u_xlat7;
        let x_1012 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1011 + x_1012);
        let x_1014 : vec4<f32> = u_xlat6;
        let x_1017 : vec2<f32> = ((vec2<f32>(x_1014.y, x_1014.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1018 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1018.x, x_1017.x, x_1018.z, x_1017.y);
        let x_1020 : vec4<f32> = u_xlat6;
        let x_1023 : vec2<f32> = ((vec2<f32>(x_1020.y, x_1020.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1023.x, x_1024.y, x_1023.y, x_1024.w);
        let x_1027 : f32 = u_xlat56.y;
        u_xlat9.y = x_1027;
        let x_1029 : vec4<f32> = u_xlat9;
        let x_1030 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1029 + x_1030);
        let x_1032 : vec4<f32> = u_xlat7;
        let x_1033 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1032 / x_1033);
        let x_1035 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1035 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1041 : vec4<f32> = u_xlat9;
        let x_1042 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1041 / x_1042);
        let x_1044 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1044 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1046 : vec4<f32> = u_xlat7;
        let x_1049 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1046.w, x_1046.x, x_1046.y, x_1046.z) * vec4<f32>(x_1049.x, x_1049.x, x_1049.x, x_1049.x));
        let x_1052 : vec4<f32> = u_xlat9;
        let x_1055 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1052.x, x_1052.w, x_1052.y, x_1052.z) * vec4<f32>(x_1055.y, x_1055.y, x_1055.y, x_1055.y));
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1059 : vec3<f32> = vec3<f32>(x_1058.y, x_1058.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1059.x, x_1060.y, x_1059.y, x_1059.z);
        let x_1063 : f32 = u_xlat9.x;
        u_xlat10.y = x_1063;
        let x_1065 : vec2<f32> = u_xlat55;
        let x_1068 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1065.x, x_1065.y, x_1065.x, x_1065.y) * vec4<f32>(x_1068.x, x_1068.y, x_1068.x, x_1068.y)) + vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1071.y));
        let x_1074 : vec2<f32> = u_xlat55;
        let x_1076 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat10;
        let x_1081 : vec2<f32> = ((x_1074 * vec2<f32>(x_1076.x, x_1076.y)) + vec2<f32>(x_1079.w, x_1079.y));
        let x_1082 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
        let x_1085 : f32 = u_xlat10.y;
        u_xlat7.y = x_1085;
        let x_1088 : f32 = u_xlat9.z;
        u_xlat10.y = x_1088;
        let x_1090 : vec2<f32> = u_xlat55;
        let x_1093 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y) * vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y)) + vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1096.y));
        let x_1100 : vec2<f32> = u_xlat55;
        let x_1102 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_1105 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1100 * vec2<f32>(x_1102.x, x_1102.y)) + vec2<f32>(x_1105.w, x_1105.y));
        let x_1109 : f32 = u_xlat10.y;
        u_xlat7.z = x_1109;
        let x_1111 : vec2<f32> = u_xlat55;
        let x_1114 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y) * vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y)) + vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.z));
        let x_1121 : f32 = u_xlat9.w;
        u_xlat10.y = x_1121;
        let x_1124 : vec2<f32> = u_xlat55;
        let x_1127 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_1130 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y) * vec4<f32>(x_1127.x, x_1127.y, x_1127.x, x_1127.y)) + vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1130.y));
        let x_1134 : vec2<f32> = u_xlat55;
        let x_1136 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat10;
        let x_1141 : vec2<f32> = ((x_1134 * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1139.w, x_1139.y));
        let x_1142 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1141.x, x_1141.y, x_1142.z);
        let x_1145 : f32 = u_xlat10.y;
        u_xlat7.w = x_1145;
        let x_1148 : vec2<f32> = u_xlat55;
        let x_1150 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat7;
        let x_1155 : vec2<f32> = ((x_1148 * vec2<f32>(x_1150.x, x_1150.y)) + vec2<f32>(x_1153.x, x_1153.w));
        let x_1156 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        let x_1158 : vec4<f32> = u_xlat10;
        let x_1159 : vec3<f32> = vec3<f32>(x_1158.x, x_1158.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1159.x, x_1160.y, x_1159.y, x_1159.z);
        let x_1162 : vec2<f32> = u_xlat55;
        let x_1165 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_1168 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1162.x, x_1162.y, x_1162.x, x_1162.y) * vec4<f32>(x_1165.x, x_1165.y, x_1165.x, x_1165.y)) + vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1168.y));
        let x_1172 : vec2<f32> = u_xlat55;
        let x_1174 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat59 = ((x_1172 * vec2<f32>(x_1174.x, x_1174.y)) + vec2<f32>(x_1177.w, x_1177.y));
        let x_1181 : f32 = u_xlat7.x;
        u_xlat9.x = x_1181;
        let x_1183 : vec2<f32> = u_xlat55;
        let x_1185 : vec4<f32> = x_302.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat9;
        u_xlat55 = ((x_1183 * vec2<f32>(x_1185.x, x_1185.y)) + vec2<f32>(x_1188.x, x_1188.y));
        let x_1192 : vec4<f32> = u_xlat6;
        let x_1194 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1192.x, x_1192.x, x_1192.x, x_1192.x) * x_1194);
        let x_1197 : vec4<f32> = u_xlat6;
        let x_1199 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1197.y, x_1197.y, x_1197.y, x_1197.y) * x_1199);
        let x_1202 : vec4<f32> = u_xlat6;
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1202.z, x_1202.z, x_1202.z, x_1202.z) * x_1204);
        let x_1206 : vec4<f32> = u_xlat6;
        let x_1208 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1206.w, x_1206.w, x_1206.w, x_1206.w) * x_1208);
        let x_1211 : vec4<f32> = u_xlat11;
        let x_1212 : vec2<f32> = vec2<f32>(x_1211.x, x_1211.y);
        let x_1214 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1212.x, x_1212.y, x_1214);
        let x_1221 : vec3<f32> = txVec13;
        let x_1223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1221.xy, x_1221.z);
        u_xlat7.x = x_1223;
        let x_1226 : vec4<f32> = u_xlat11;
        let x_1227 : vec2<f32> = vec2<f32>(x_1226.z, x_1226.w);
        let x_1229 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1227.x, x_1227.y, x_1229);
        let x_1237 : vec3<f32> = txVec14;
        let x_1239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1237.xy, x_1237.z);
        u_xlat82 = x_1239;
        let x_1240 : f32 = u_xlat82;
        let x_1242 : f32 = u_xlat17.y;
        u_xlat82 = (x_1240 * x_1242);
        let x_1245 : f32 = u_xlat17.x;
        let x_1247 : f32 = u_xlat7.x;
        let x_1249 : f32 = u_xlat82;
        u_xlat7.x = ((x_1245 * x_1247) + x_1249);
        let x_1253 : vec4<f32> = u_xlat12;
        let x_1254 : vec2<f32> = vec2<f32>(x_1253.x, x_1253.y);
        let x_1256 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
        let x_1263 : vec3<f32> = txVec15;
        let x_1265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1263.xy, x_1263.z);
        u_xlat82 = x_1265;
        let x_1267 : f32 = u_xlat17.z;
        let x_1268 : f32 = u_xlat82;
        let x_1271 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1267 * x_1268) + x_1271);
        let x_1275 : vec4<f32> = u_xlat14;
        let x_1276 : vec2<f32> = vec2<f32>(x_1275.x, x_1275.y);
        let x_1278 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1276.x, x_1276.y, x_1278);
        let x_1285 : vec3<f32> = txVec16;
        let x_1287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1285.xy, x_1285.z);
        u_xlat82 = x_1287;
        let x_1289 : f32 = u_xlat17.w;
        let x_1290 : f32 = u_xlat82;
        let x_1293 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1289 * x_1290) + x_1293);
        let x_1297 : vec4<f32> = u_xlat13;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.x, x_1297.y);
        let x_1300 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec17;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1307.xy, x_1307.z);
        u_xlat82 = x_1309;
        let x_1311 : f32 = u_xlat18.x;
        let x_1312 : f32 = u_xlat82;
        let x_1315 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1311 * x_1312) + x_1315);
        let x_1319 : vec4<f32> = u_xlat13;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.z, x_1319.w);
        let x_1322 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec18;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1329.xy, x_1329.z);
        u_xlat82 = x_1331;
        let x_1333 : f32 = u_xlat18.y;
        let x_1334 : f32 = u_xlat82;
        let x_1337 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1333 * x_1334) + x_1337);
        let x_1341 : vec2<f32> = u_xlat62;
        let x_1343 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1350 : vec3<f32> = txVec19;
        let x_1352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1350.xy, x_1350.z);
        u_xlat82 = x_1352;
        let x_1354 : f32 = u_xlat18.z;
        let x_1355 : f32 = u_xlat82;
        let x_1358 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1354 * x_1355) + x_1358);
        let x_1362 : vec4<f32> = u_xlat14;
        let x_1363 : vec2<f32> = vec2<f32>(x_1362.z, x_1362.w);
        let x_1365 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1363.x, x_1363.y, x_1365);
        let x_1372 : vec3<f32> = txVec20;
        let x_1374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1372.xy, x_1372.z);
        u_xlat82 = x_1374;
        let x_1376 : f32 = u_xlat18.w;
        let x_1377 : f32 = u_xlat82;
        let x_1380 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1376 * x_1377) + x_1380);
        let x_1384 : vec4<f32> = u_xlat15;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.x, x_1384.y);
        let x_1387 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec21;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1394.xy, x_1394.z);
        u_xlat82 = x_1396;
        let x_1398 : f32 = u_xlat19.x;
        let x_1399 : f32 = u_xlat82;
        let x_1402 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1398 * x_1399) + x_1402);
        let x_1406 : vec4<f32> = u_xlat15;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.z, x_1406.w);
        let x_1409 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec22;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1416.xy, x_1416.z);
        u_xlat82 = x_1418;
        let x_1420 : f32 = u_xlat19.y;
        let x_1421 : f32 = u_xlat82;
        let x_1424 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1420 * x_1421) + x_1424);
        let x_1428 : vec3<f32> = u_xlat32;
        let x_1429 : vec2<f32> = vec2<f32>(x_1428.x, x_1428.y);
        let x_1431 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec23;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1438.xy, x_1438.z);
        u_xlat32.x = x_1440;
        let x_1443 : f32 = u_xlat19.z;
        let x_1445 : f32 = u_xlat32.x;
        let x_1448 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1443 * x_1445) + x_1448);
        let x_1452 : vec4<f32> = u_xlat16;
        let x_1453 : vec2<f32> = vec2<f32>(x_1452.x, x_1452.y);
        let x_1455 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1453.x, x_1453.y, x_1455);
        let x_1462 : vec3<f32> = txVec24;
        let x_1464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1462.xy, x_1462.z);
        u_xlat32.x = x_1464;
        let x_1467 : f32 = u_xlat19.w;
        let x_1469 : f32 = u_xlat32.x;
        let x_1472 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1467 * x_1469) + x_1472);
        let x_1476 : vec4<f32> = u_xlat10;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.x, x_1476.y);
        let x_1479 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec25;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1486.xy, x_1486.z);
        u_xlat32.x = x_1488;
        let x_1491 : f32 = u_xlat6.x;
        let x_1493 : f32 = u_xlat32.x;
        let x_1496 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1491 * x_1493) + x_1496);
        let x_1500 : vec4<f32> = u_xlat10;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.z, x_1500.w);
        let x_1503 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec26;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1510.xy, x_1510.z);
        u_xlat7.x = x_1512;
        let x_1515 : f32 = u_xlat6.y;
        let x_1517 : f32 = u_xlat7.x;
        let x_1520 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1515 * x_1517) + x_1520);
        let x_1524 : vec2<f32> = u_xlat59;
        let x_1526 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1534 : vec3<f32> = txVec27;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1534.xy, x_1534.z);
        u_xlat31 = x_1536;
        let x_1538 : f32 = u_xlat6.z;
        let x_1539 : f32 = u_xlat31;
        let x_1542 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1538 * x_1539) + x_1542);
        let x_1546 : vec2<f32> = u_xlat55;
        let x_1548 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec28;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat55.x = x_1557;
        let x_1560 : f32 = u_xlat6.w;
        let x_1562 : f32 = u_xlat55.x;
        let x_1565 : f32 = u_xlat6.x;
        u_xlat30.x = ((x_1560 * x_1562) + x_1565);
      }
    }
  } else {
    let x_1570 : vec4<f32> = vs_TEXCOORD6;
    let x_1571 : vec2<f32> = vec2<f32>(x_1570.x, x_1570.y);
    let x_1573 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
    let x_1580 : vec3<f32> = txVec29;
    let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
    u_xlat30.x = x_1582;
  }
  let x_1585 : f32 = x_302.x_MainLightShadowParams.x;
  u_xlat55.x = (-(x_1585) + 1.0f);
  let x_1590 : f32 = u_xlat30.x;
  let x_1592 : f32 = x_302.x_MainLightShadowParams.x;
  let x_1595 : f32 = u_xlat55.x;
  u_xlat30.x = ((x_1590 * x_1592) + x_1595);
  let x_1599 : f32 = vs_TEXCOORD6.z;
  u_xlatb55 = (0.0f >= x_1599);
  let x_1603 : f32 = vs_TEXCOORD6.z;
  u_xlatb80 = (x_1603 >= 1.0f);
  let x_1605 : bool = u_xlatb80;
  let x_1606 : bool = u_xlatb55;
  u_xlatb55 = (x_1605 | x_1606);
  let x_1608 : bool = u_xlatb55;
  if (x_1608) {
    x_1609 = 1.0f;
  } else {
    let x_1614 : f32 = u_xlat30.x;
    x_1609 = x_1614;
  }
  let x_1615 : f32 = x_1609;
  u_xlat30.x = x_1615;
  let x_1617 : vec3<f32> = vs_TEXCOORD1;
  let x_1619 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1621 : vec3<f32> = (x_1617 + -(x_1619));
  let x_1622 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1622.w);
  let x_1624 : vec4<f32> = u_xlat6;
  let x_1626 : vec4<f32> = u_xlat6;
  u_xlat55.x = dot(vec3<f32>(x_1624.x, x_1624.y, x_1624.z), vec3<f32>(x_1626.x, x_1626.y, x_1626.z));
  let x_1631 : f32 = u_xlat55.x;
  let x_1633 : f32 = x_302.x_MainLightShadowParams.z;
  let x_1636 : f32 = x_302.x_MainLightShadowParams.w;
  u_xlat80 = ((x_1631 * x_1633) + x_1636);
  let x_1638 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1638, 0.0f, 1.0f);
  let x_1641 : f32 = u_xlat30.x;
  u_xlat6.x = (-(x_1641) + 1.0f);
  let x_1645 : f32 = u_xlat80;
  let x_1647 : f32 = u_xlat6.x;
  let x_1650 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1645 * x_1647) + x_1650);
  let x_1653 : vec3<f32> = u_xlat3;
  let x_1655 : vec4<f32> = u_xlat2;
  u_xlat80 = dot(-(x_1653), vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
  let x_1658 : f32 = u_xlat80;
  let x_1659 : f32 = u_xlat80;
  u_xlat80 = (x_1658 + x_1659);
  let x_1661 : vec4<f32> = u_xlat2;
  let x_1663 : f32 = u_xlat80;
  let x_1667 : vec3<f32> = u_xlat3;
  let x_1669 : vec3<f32> = ((vec3<f32>(x_1661.x, x_1661.y, x_1661.z) * -(vec3<f32>(x_1663, x_1663, x_1663))) + -(x_1667));
  let x_1670 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
  let x_1672 : vec4<f32> = u_xlat2;
  let x_1674 : vec3<f32> = u_xlat3;
  u_xlat80 = dot(vec3<f32>(x_1672.x, x_1672.y, x_1672.z), x_1674);
  let x_1676 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1676, 0.0f, 1.0f);
  let x_1678 : f32 = u_xlat80;
  u_xlat80 = (-(x_1678) + 1.0f);
  let x_1681 : f32 = u_xlat80;
  let x_1682 : f32 = u_xlat80;
  u_xlat80 = (x_1681 * x_1682);
  let x_1684 : f32 = u_xlat80;
  let x_1685 : f32 = u_xlat80;
  u_xlat80 = (x_1684 * x_1685);
  let x_1688 : f32 = u_xlat75;
  u_xlat81 = ((-(x_1688) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1694 : f32 = u_xlat75;
  let x_1695 : f32 = u_xlat81;
  u_xlat75 = (x_1694 * x_1695);
  let x_1697 : f32 = u_xlat75;
  u_xlat75 = (x_1697 * 6.0f);
  let x_1708 : vec4<f32> = u_xlat6;
  let x_1710 : f32 = u_xlat75;
  let x_1711 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1708.x, x_1708.y, x_1708.z), x_1710);
  u_xlat6 = x_1711;
  let x_1713 : f32 = u_xlat6.w;
  u_xlat75 = (x_1713 + -1.0f);
  let x_1717 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1718 : f32 = u_xlat75;
  u_xlat75 = ((x_1717 * x_1718) + 1.0f);
  let x_1721 : f32 = u_xlat75;
  u_xlat75 = max(x_1721, 0.0f);
  let x_1723 : f32 = u_xlat75;
  u_xlat75 = log2(x_1723);
  let x_1725 : f32 = u_xlat75;
  let x_1727 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_1725 * x_1727);
  let x_1729 : f32 = u_xlat75;
  u_xlat75 = exp2(x_1729);
  let x_1731 : f32 = u_xlat75;
  let x_1733 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_1731 * x_1733);
  let x_1735 : vec4<f32> = u_xlat6;
  let x_1737 : f32 = u_xlat75;
  let x_1739 : vec3<f32> = (vec3<f32>(x_1735.x, x_1735.y, x_1735.z) * vec3<f32>(x_1737, x_1737, x_1737));
  let x_1740 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
  let x_1742 : f32 = u_xlat78;
  let x_1744 : f32 = u_xlat78;
  let x_1748 : vec2<f32> = ((vec2<f32>(x_1742, x_1742) * vec2<f32>(x_1744, x_1744)) + vec2<f32>(-1.0f, 1.0f));
  let x_1749 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1748.x, x_1748.y, x_1749.z, x_1749.w);
  let x_1752 : f32 = u_xlat7.y;
  u_xlat75 = (1.0f / x_1752);
  let x_1754 : vec4<f32> = u_xlat0;
  let x_1757 : f32 = u_xlat77;
  u_xlat32 = (-(vec3<f32>(x_1754.x, x_1754.y, x_1754.z)) + vec3<f32>(x_1757, x_1757, x_1757));
  let x_1760 : f32 = u_xlat80;
  let x_1762 : vec3<f32> = u_xlat32;
  let x_1764 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1760, x_1760, x_1760) * x_1762) + vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
  let x_1767 : f32 = u_xlat75;
  let x_1769 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1767, x_1767, x_1767) * x_1769);
  let x_1771 : vec4<f32> = u_xlat6;
  let x_1773 : vec3<f32> = u_xlat32;
  let x_1774 : vec3<f32> = (vec3<f32>(x_1771.x, x_1771.y, x_1771.z) * x_1773);
  let x_1775 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1775.w);
  let x_1777 : vec3<f32> = u_xlat4;
  let x_1778 : vec3<f32> = u_xlat26;
  let x_1780 : vec4<f32> = u_xlat6;
  u_xlat4 = ((x_1777 * x_1778) + vec3<f32>(x_1780.x, x_1780.y, x_1780.z));
  let x_1784 : f32 = u_xlat30.x;
  let x_1786 : f32 = x_145.unity_LightData.z;
  u_xlat75 = (x_1784 * x_1786);
  let x_1788 : vec4<f32> = u_xlat2;
  let x_1791 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_1788.x, x_1788.y, x_1788.z), vec3<f32>(x_1791.x, x_1791.y, x_1791.z));
  let x_1794 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1794, 0.0f, 1.0f);
  let x_1796 : f32 = u_xlat75;
  let x_1797 : f32 = u_xlat77;
  u_xlat75 = (x_1796 * x_1797);
  let x_1799 : f32 = u_xlat75;
  let x_1802 : vec4<f32> = x_28.x_MainLightColor;
  let x_1804 : vec3<f32> = (vec3<f32>(x_1799, x_1799, x_1799) * vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
  let x_1805 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
  let x_1807 : vec3<f32> = u_xlat3;
  let x_1809 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat32 = (x_1807 + vec3<f32>(x_1809.x, x_1809.y, x_1809.z));
  let x_1812 : vec3<f32> = u_xlat32;
  let x_1813 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1812, x_1813);
  let x_1815 : f32 = u_xlat75;
  u_xlat75 = max(x_1815, 1.17549435e-38f);
  let x_1818 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1818);
  let x_1820 : f32 = u_xlat75;
  let x_1822 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1820, x_1820, x_1820) * x_1822);
  let x_1824 : vec4<f32> = u_xlat2;
  let x_1826 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(vec3<f32>(x_1824.x, x_1824.y, x_1824.z), x_1826);
  let x_1828 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1828, 0.0f, 1.0f);
  let x_1831 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1833 : vec3<f32> = u_xlat32;
  u_xlat77 = dot(vec3<f32>(x_1831.x, x_1831.y, x_1831.z), x_1833);
  let x_1835 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1835, 0.0f, 1.0f);
  let x_1837 : f32 = u_xlat75;
  let x_1838 : f32 = u_xlat75;
  u_xlat75 = (x_1837 * x_1838);
  let x_1840 : f32 = u_xlat75;
  let x_1842 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1840 * x_1842) + 1.00001001358032226562f);
  let x_1846 : f32 = u_xlat77;
  let x_1847 : f32 = u_xlat77;
  u_xlat77 = (x_1846 * x_1847);
  let x_1849 : f32 = u_xlat75;
  let x_1850 : f32 = u_xlat75;
  u_xlat75 = (x_1849 * x_1850);
  let x_1852 : f32 = u_xlat77;
  u_xlat77 = max(x_1852, 0.10000000149011611938f);
  let x_1855 : f32 = u_xlat75;
  let x_1856 : f32 = u_xlat77;
  u_xlat75 = (x_1855 * x_1856);
  let x_1859 : f32 = u_xlat5.x;
  let x_1860 : f32 = u_xlat75;
  u_xlat75 = (x_1859 * x_1860);
  let x_1862 : f32 = u_xlat79;
  let x_1863 : f32 = u_xlat75;
  u_xlat75 = (x_1862 / x_1863);
  let x_1865 : vec4<f32> = u_xlat0;
  let x_1867 : f32 = u_xlat75;
  let x_1870 : vec3<f32> = u_xlat26;
  u_xlat32 = ((vec3<f32>(x_1865.x, x_1865.y, x_1865.z) * vec3<f32>(x_1867, x_1867, x_1867)) + x_1870);
  let x_1874 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1876 : f32 = x_145.unity_LightData.y;
  u_xlat75 = min(x_1874, x_1876);
  let x_1880 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1880));
  let x_1884 : f32 = u_xlat55.x;
  let x_1887 : f32 = x_302.x_AdditionalShadowFadeParams.x;
  let x_1890 : f32 = x_302.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_1884 * x_1887) + x_1890);
  let x_1892 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1892, 0.0f, 1.0f);
  u_xlat30.x = 0.0f;
  u_xlat30.y = 0.0f;
  u_xlat30.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1904 : u32 = u_xlatu_loop_1;
    let x_1905 : u32 = u_xlatu75;
    if ((x_1904 < x_1905)) {
    } else {
      break;
    }
    let x_1908 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_1908 >> 2u);
    let x_1912 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1912 & 3u));
    let x_1915 : u32 = u_xlatu81;
    let x_1918 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1915)];
    let x_1928 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1933 : vec4<u32> = indexable[x_1928];
    u_xlat81 = dot(x_1918, bitcast<vec4<f32>>(x_1933));
    let x_1937 : f32 = u_xlat81;
    u_xlati81 = i32(x_1937);
    let x_1939 : vec3<f32> = vs_TEXCOORD1;
    let x_1950 : i32 = u_xlati81;
    let x_1952 : vec4<f32> = x_1949.x_AdditionalLightsPosition[x_1950];
    let x_1955 : i32 = u_xlati81;
    let x_1957 : vec4<f32> = x_1949.x_AdditionalLightsPosition[x_1955];
    let x_1959 : vec3<f32> = ((-(x_1939) * vec3<f32>(x_1952.w, x_1952.w, x_1952.w)) + vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
    let x_1960 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1960.w);
    let x_1963 : vec4<f32> = u_xlat8;
    let x_1965 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_1963.x, x_1963.y, x_1963.z), vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
    let x_1968 : f32 = u_xlat83;
    u_xlat83 = max(x_1968, 0.00006103515625f);
    let x_1971 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_1971);
    let x_1975 : vec4<f32> = u_xlat8;
    let x_1977 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_1975.x, x_1975.y, x_1975.z) * vec3<f32>(x_1977.x, x_1977.x, x_1977.x));
    let x_1980 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_1980);
    let x_1983 : f32 = u_xlat83;
    let x_1984 : i32 = u_xlati81;
    let x_1986 : f32 = x_1949.x_AdditionalLightsAttenuation[x_1984].x;
    u_xlat83 = (x_1983 * x_1986);
    let x_1988 : f32 = u_xlat83;
    let x_1990 : f32 = u_xlat83;
    u_xlat83 = ((-(x_1988) * x_1990) + 1.0f);
    let x_1993 : f32 = u_xlat83;
    u_xlat83 = max(x_1993, 0.0f);
    let x_1995 : f32 = u_xlat83;
    let x_1996 : f32 = u_xlat83;
    u_xlat83 = (x_1995 * x_1996);
    let x_1998 : f32 = u_xlat83;
    let x_2000 : f32 = u_xlat10.x;
    u_xlat83 = (x_1998 * x_2000);
    let x_2002 : i32 = u_xlati81;
    let x_2004 : vec4<f32> = x_1949.x_AdditionalLightsSpotDir[x_2002];
    let x_2006 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2004.x, x_2004.y, x_2004.z), x_2006);
    let x_2010 : f32 = u_xlat10.x;
    let x_2011 : i32 = u_xlati81;
    let x_2013 : f32 = x_1949.x_AdditionalLightsAttenuation[x_2011].z;
    let x_2015 : i32 = u_xlati81;
    let x_2017 : f32 = x_1949.x_AdditionalLightsAttenuation[x_2015].w;
    u_xlat10.x = ((x_2010 * x_2013) + x_2017);
    let x_2021 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2021, 0.0f, 1.0f);
    let x_2025 : f32 = u_xlat10.x;
    let x_2027 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2025 * x_2027);
    let x_2030 : f32 = u_xlat83;
    let x_2032 : f32 = u_xlat10.x;
    u_xlat83 = (x_2030 * x_2032);
    let x_2036 : i32 = u_xlati81;
    let x_2038 : f32 = x_302.x_AdditionalShadowParams[x_2036].w;
    u_xlati10 = i32(x_2038);
    let x_2043 : i32 = u_xlati10;
    u_xlatb35.x = (x_2043 >= 0i);
    let x_2047 : bool = u_xlatb35.x;
    if (x_2047) {
      let x_2051 : i32 = u_xlati81;
      let x_2053 : f32 = x_302.x_AdditionalShadowParams[x_2051].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2053, x_2053, x_2053, x_2053))));
      let x_2060 : bool = u_xlatb35.x;
      if (x_2060) {
        let x_2063 : vec3<f32> = u_xlat34;
        let x_2066 : vec3<f32> = u_xlat34;
        let x_2069 : vec4<bool> = (abs(vec4<f32>(x_2063.z, x_2063.z, x_2063.y, x_2063.y)) >= abs(vec4<f32>(x_2066.x, x_2066.y, x_2066.x, x_2066.x)));
        u_xlatb35 = vec3<bool>(x_2069.x, x_2069.y, x_2069.z);
        let x_2072 : bool = u_xlatb35.y;
        let x_2074 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2072 & x_2074);
        let x_2078 : vec3<f32> = u_xlat34;
        let x_2081 : vec4<bool> = (-(vec4<f32>(x_2078.z, x_2078.y, x_2078.x, x_2078.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2081.x, x_2081.y, x_2081.z);
        let x_2084 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2084);
        let x_2089 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2089);
        let x_2095 : bool = u_xlatb11.z;
        u_xlat60 = select(0.0f, 1.0f, x_2095);
        let x_2098 : bool = u_xlatb35.z;
        if (x_2098) {
          let x_2103 : f32 = u_xlat11.y;
          x_2099 = x_2103;
        } else {
          let x_2105 : f32 = u_xlat60;
          x_2099 = x_2105;
        }
        let x_2106 : f32 = x_2099;
        u_xlat60 = x_2106;
        let x_2109 : bool = u_xlatb35.x;
        if (x_2109) {
          let x_2114 : f32 = u_xlat11.x;
          x_2110 = x_2114;
        } else {
          let x_2116 : f32 = u_xlat60;
          x_2110 = x_2116;
        }
        let x_2117 : f32 = x_2110;
        u_xlat35 = x_2117;
        let x_2118 : i32 = u_xlati81;
        let x_2120 : f32 = x_302.x_AdditionalShadowParams[x_2118].w;
        u_xlat60 = trunc(x_2120);
        let x_2122 : f32 = u_xlat35;
        let x_2123 : f32 = u_xlat60;
        u_xlat35 = (x_2122 + x_2123);
        let x_2125 : f32 = u_xlat35;
        u_xlati10 = i32(x_2125);
      }
      let x_2127 : i32 = u_xlati10;
      u_xlati10 = (x_2127 << bitcast<u32>(2i));
      let x_2129 : vec3<f32> = vs_TEXCOORD1;
      let x_2132 : i32 = u_xlati10;
      let x_2135 : i32 = u_xlati10;
      let x_2139 : vec4<f32> = x_302.x_AdditionalLightsWorldToShadow[((x_2132 + 1i) / 4i)][((x_2135 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2129.y, x_2129.y, x_2129.y, x_2129.y) * x_2139);
      let x_2141 : i32 = u_xlati10;
      let x_2143 : i32 = u_xlati10;
      let x_2146 : vec4<f32> = x_302.x_AdditionalLightsWorldToShadow[(x_2141 / 4i)][(x_2143 % 4i)];
      let x_2147 : vec3<f32> = vs_TEXCOORD1;
      let x_2150 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2146 * vec4<f32>(x_2147.x, x_2147.x, x_2147.x, x_2147.x)) + x_2150);
      let x_2152 : i32 = u_xlati10;
      let x_2155 : i32 = u_xlati10;
      let x_2159 : vec4<f32> = x_302.x_AdditionalLightsWorldToShadow[((x_2152 + 2i) / 4i)][((x_2155 + 2i) % 4i)];
      let x_2160 : vec3<f32> = vs_TEXCOORD1;
      let x_2163 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2159 * vec4<f32>(x_2160.z, x_2160.z, x_2160.z, x_2160.z)) + x_2163);
      let x_2165 : vec4<f32> = u_xlat11;
      let x_2166 : i32 = u_xlati10;
      let x_2169 : i32 = u_xlati10;
      let x_2173 : vec4<f32> = x_302.x_AdditionalLightsWorldToShadow[((x_2166 + 3i) / 4i)][((x_2169 + 3i) % 4i)];
      u_xlat10 = (x_2165 + x_2173);
      let x_2175 : vec4<f32> = u_xlat10;
      let x_2177 : vec4<f32> = u_xlat10;
      let x_2179 : vec3<f32> = (vec3<f32>(x_2175.x, x_2175.y, x_2175.z) / vec3<f32>(x_2177.w, x_2177.w, x_2177.w));
      let x_2180 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2179.x, x_2179.y, x_2179.z, x_2180.w);
      let x_2183 : i32 = u_xlati81;
      let x_2185 : f32 = x_302.x_AdditionalShadowParams[x_2183].y;
      u_xlatb85 = (0.0f < x_2185);
      let x_2187 : bool = u_xlatb85;
      if (x_2187) {
        let x_2190 : i32 = u_xlati81;
        let x_2192 : f32 = x_302.x_AdditionalShadowParams[x_2190].y;
        u_xlatb85 = (1.0f == x_2192);
        let x_2194 : bool = u_xlatb85;
        if (x_2194) {
          let x_2197 : vec4<f32> = u_xlat10;
          let x_2201 : vec4<f32> = x_302.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2197.x, x_2197.y, x_2197.x, x_2197.y) + x_2201);
          let x_2204 : vec4<f32> = u_xlat11;
          let x_2205 : vec2<f32> = vec2<f32>(x_2204.x, x_2204.y);
          let x_2207 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2205.x, x_2205.y, x_2207);
          let x_2215 : vec3<f32> = txVec30;
          let x_2217 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2215.xy, x_2215.z);
          u_xlat12.x = x_2217;
          let x_2220 : vec4<f32> = u_xlat11;
          let x_2221 : vec2<f32> = vec2<f32>(x_2220.z, x_2220.w);
          let x_2223 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2221.x, x_2221.y, x_2223);
          let x_2230 : vec3<f32> = txVec31;
          let x_2232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2230.xy, x_2230.z);
          u_xlat12.y = x_2232;
          let x_2234 : vec4<f32> = u_xlat10;
          let x_2238 : vec4<f32> = x_302.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2234.x, x_2234.y, x_2234.x, x_2234.y) + x_2238);
          let x_2241 : vec4<f32> = u_xlat11;
          let x_2242 : vec2<f32> = vec2<f32>(x_2241.x, x_2241.y);
          let x_2244 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2242.x, x_2242.y, x_2244);
          let x_2251 : vec3<f32> = txVec32;
          let x_2253 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2251.xy, x_2251.z);
          u_xlat12.z = x_2253;
          let x_2256 : vec4<f32> = u_xlat11;
          let x_2257 : vec2<f32> = vec2<f32>(x_2256.z, x_2256.w);
          let x_2259 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2257.x, x_2257.y, x_2259);
          let x_2266 : vec3<f32> = txVec33;
          let x_2268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2266.xy, x_2266.z);
          u_xlat12.w = x_2268;
          let x_2271 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2271, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2274 : i32 = u_xlati81;
          let x_2276 : f32 = x_302.x_AdditionalShadowParams[x_2274].y;
          u_xlatb11.x = (2.0f == x_2276);
          let x_2280 : bool = u_xlatb11.x;
          if (x_2280) {
            let x_2283 : vec4<f32> = u_xlat10;
            let x_2287 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2290 : vec2<f32> = ((vec2<f32>(x_2283.x, x_2283.y) * vec2<f32>(x_2287.z, x_2287.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2291 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2290.x, x_2290.y, x_2291.z, x_2291.w);
            let x_2293 : vec4<f32> = u_xlat11;
            let x_2295 : vec2<f32> = floor(vec2<f32>(x_2293.x, x_2293.y));
            let x_2296 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2295.x, x_2295.y, x_2296.z, x_2296.w);
            let x_2299 : vec4<f32> = u_xlat10;
            let x_2302 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2305 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2299.x, x_2299.y) * vec2<f32>(x_2302.z, x_2302.w)) + -(vec2<f32>(x_2305.x, x_2305.y)));
            let x_2309 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2309.x, x_2309.x, x_2309.y, x_2309.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2312 : vec4<f32> = u_xlat12;
            let x_2314 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2312.x, x_2312.x, x_2312.z, x_2312.z) * vec4<f32>(x_2314.x, x_2314.x, x_2314.z, x_2314.z));
            let x_2317 : vec4<f32> = u_xlat13;
            let x_2319 : vec2<f32> = (vec2<f32>(x_2317.y, x_2317.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2320 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2319.x, x_2320.y, x_2319.y, x_2320.w);
            let x_2322 : vec4<f32> = u_xlat13;
            let x_2325 : vec2<f32> = u_xlat61;
            let x_2327 : vec2<f32> = ((vec2<f32>(x_2322.x, x_2322.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2325));
            let x_2328 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2327.x, x_2327.y, x_2328.z, x_2328.w);
            let x_2331 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2331) + vec2<f32>(1.0f, 1.0f));
            let x_2334 : vec2<f32> = u_xlat61;
            let x_2335 : vec2<f32> = min(x_2334, vec2<f32>(0.0f, 0.0f));
            let x_2336 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2335.x, x_2335.y, x_2336.z, x_2336.w);
            let x_2338 : vec4<f32> = u_xlat14;
            let x_2341 : vec4<f32> = u_xlat14;
            let x_2344 : vec2<f32> = u_xlat63;
            let x_2345 : vec2<f32> = ((-(vec2<f32>(x_2338.x, x_2338.y)) * vec2<f32>(x_2341.x, x_2341.y)) + x_2344);
            let x_2346 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2345.x, x_2345.y, x_2346.z, x_2346.w);
            let x_2348 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2348, vec2<f32>(0.0f, 0.0f));
            let x_2350 : vec2<f32> = u_xlat61;
            let x_2352 : vec2<f32> = u_xlat61;
            let x_2354 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2350) * x_2352) + vec2<f32>(x_2354.y, x_2354.w));
            let x_2357 : vec4<f32> = u_xlat14;
            let x_2359 : vec2<f32> = (vec2<f32>(x_2357.x, x_2357.y) + vec2<f32>(1.0f, 1.0f));
            let x_2360 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2359.x, x_2359.y, x_2360.z, x_2360.w);
            let x_2362 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2362 + vec2<f32>(1.0f, 1.0f));
            let x_2364 : vec4<f32> = u_xlat13;
            let x_2366 : vec2<f32> = (vec2<f32>(x_2364.x, x_2364.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2367 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2366.x, x_2366.y, x_2367.z, x_2367.w);
            let x_2369 : vec2<f32> = u_xlat63;
            let x_2370 : vec2<f32> = (x_2369 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2371 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2370.x, x_2370.y, x_2371.z, x_2371.w);
            let x_2373 : vec4<f32> = u_xlat14;
            let x_2375 : vec2<f32> = (vec2<f32>(x_2373.x, x_2373.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2376 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2375.x, x_2375.y, x_2376.z, x_2376.w);
            let x_2378 : vec2<f32> = u_xlat61;
            let x_2379 : vec2<f32> = (x_2378 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2380 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2379.x, x_2379.y, x_2380.z, x_2380.w);
            let x_2382 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2382.y, x_2382.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2386 : f32 = u_xlat14.x;
            u_xlat15.z = x_2386;
            let x_2389 : f32 = u_xlat61.x;
            u_xlat15.w = x_2389;
            let x_2392 : f32 = u_xlat16.x;
            u_xlat13.z = x_2392;
            let x_2395 : f32 = u_xlat12.x;
            u_xlat13.w = x_2395;
            let x_2397 : vec4<f32> = u_xlat13;
            let x_2399 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2397.z, x_2397.w, x_2397.x, x_2397.z) + vec4<f32>(x_2399.z, x_2399.w, x_2399.x, x_2399.z));
            let x_2403 : f32 = u_xlat15.y;
            u_xlat14.z = x_2403;
            let x_2406 : f32 = u_xlat61.y;
            u_xlat14.w = x_2406;
            let x_2409 : f32 = u_xlat13.y;
            u_xlat16.z = x_2409;
            let x_2412 : f32 = u_xlat12.z;
            u_xlat16.w = x_2412;
            let x_2414 : vec4<f32> = u_xlat14;
            let x_2416 : vec4<f32> = u_xlat16;
            let x_2418 : vec3<f32> = (vec3<f32>(x_2414.z, x_2414.y, x_2414.w) + vec3<f32>(x_2416.z, x_2416.y, x_2416.w));
            let x_2419 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);
            let x_2421 : vec4<f32> = u_xlat13;
            let x_2423 : vec4<f32> = u_xlat17;
            let x_2425 : vec3<f32> = (vec3<f32>(x_2421.x, x_2421.z, x_2421.w) / vec3<f32>(x_2423.z, x_2423.w, x_2423.y));
            let x_2426 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
            let x_2428 : vec4<f32> = u_xlat13;
            let x_2430 : vec3<f32> = (vec3<f32>(x_2428.x, x_2428.y, x_2428.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2431 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
            let x_2433 : vec4<f32> = u_xlat16;
            let x_2435 : vec4<f32> = u_xlat12;
            let x_2437 : vec3<f32> = (vec3<f32>(x_2433.z, x_2433.y, x_2433.w) / vec3<f32>(x_2435.x, x_2435.y, x_2435.z));
            let x_2438 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2437.x, x_2437.y, x_2437.z, x_2438.w);
            let x_2440 : vec4<f32> = u_xlat14;
            let x_2442 : vec3<f32> = (vec3<f32>(x_2440.x, x_2440.y, x_2440.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2443 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
            let x_2445 : vec4<f32> = u_xlat13;
            let x_2448 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2450 : vec3<f32> = (vec3<f32>(x_2445.y, x_2445.x, x_2445.z) * vec3<f32>(x_2448.x, x_2448.x, x_2448.x));
            let x_2451 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2450.x, x_2450.y, x_2450.z, x_2451.w);
            let x_2453 : vec4<f32> = u_xlat14;
            let x_2456 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2458 : vec3<f32> = (vec3<f32>(x_2453.x, x_2453.y, x_2453.z) * vec3<f32>(x_2456.y, x_2456.y, x_2456.y));
            let x_2459 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
            let x_2462 : f32 = u_xlat14.x;
            u_xlat13.w = x_2462;
            let x_2464 : vec4<f32> = u_xlat11;
            let x_2467 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2470 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2464.x, x_2464.y, x_2464.x, x_2464.y) * vec4<f32>(x_2467.x, x_2467.y, x_2467.x, x_2467.y)) + vec4<f32>(x_2470.y, x_2470.w, x_2470.x, x_2470.w));
            let x_2473 : vec4<f32> = u_xlat11;
            let x_2476 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2479 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2473.x, x_2473.y) * vec2<f32>(x_2476.x, x_2476.y)) + vec2<f32>(x_2479.z, x_2479.w));
            let x_2483 : f32 = u_xlat13.y;
            u_xlat14.w = x_2483;
            let x_2485 : vec4<f32> = u_xlat14;
            let x_2486 : vec2<f32> = vec2<f32>(x_2485.y, x_2485.z);
            let x_2487 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2487.x, x_2486.x, x_2487.z, x_2486.y);
            let x_2489 : vec4<f32> = u_xlat11;
            let x_2492 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2495 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2489.x, x_2489.y, x_2489.x, x_2489.y) * vec4<f32>(x_2492.x, x_2492.y, x_2492.x, x_2492.y)) + vec4<f32>(x_2495.x, x_2495.y, x_2495.z, x_2495.y));
            let x_2498 : vec4<f32> = u_xlat11;
            let x_2501 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2504 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2498.x, x_2498.y, x_2498.x, x_2498.y) * vec4<f32>(x_2501.x, x_2501.y, x_2501.x, x_2501.y)) + vec4<f32>(x_2504.w, x_2504.y, x_2504.w, x_2504.z));
            let x_2507 : vec4<f32> = u_xlat11;
            let x_2510 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2513 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2507.x, x_2507.y, x_2507.x, x_2507.y) * vec4<f32>(x_2510.x, x_2510.y, x_2510.x, x_2510.y)) + vec4<f32>(x_2513.x, x_2513.w, x_2513.z, x_2513.w));
            let x_2516 : vec4<f32> = u_xlat12;
            let x_2518 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2516.x, x_2516.x, x_2516.x, x_2516.y) * vec4<f32>(x_2518.z, x_2518.w, x_2518.y, x_2518.z));
            let x_2521 : vec4<f32> = u_xlat12;
            let x_2523 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2521.y, x_2521.y, x_2521.z, x_2521.z) * x_2523);
            let x_2526 : f32 = u_xlat12.z;
            let x_2528 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2526 * x_2528);
            let x_2532 : vec4<f32> = u_xlat15;
            let x_2533 : vec2<f32> = vec2<f32>(x_2532.x, x_2532.y);
            let x_2535 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2533.x, x_2533.y, x_2535);
            let x_2543 : vec3<f32> = txVec34;
            let x_2545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2543.xy, x_2543.z);
            u_xlat36 = x_2545;
            let x_2547 : vec4<f32> = u_xlat15;
            let x_2548 : vec2<f32> = vec2<f32>(x_2547.z, x_2547.w);
            let x_2550 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2548.x, x_2548.y, x_2550);
            let x_2557 : vec3<f32> = txVec35;
            let x_2559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2557.xy, x_2557.z);
            u_xlat12.x = x_2559;
            let x_2562 : f32 = u_xlat12.x;
            let x_2564 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2562 * x_2564);
            let x_2568 : f32 = u_xlat18.x;
            let x_2569 : f32 = u_xlat36;
            let x_2572 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2568 * x_2569) + x_2572);
            let x_2575 : vec2<f32> = u_xlat61;
            let x_2577 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2575.x, x_2575.y, x_2577);
            let x_2584 : vec3<f32> = txVec36;
            let x_2586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2584.xy, x_2584.z);
            u_xlat61.x = x_2586;
            let x_2589 : f32 = u_xlat18.z;
            let x_2591 : f32 = u_xlat61.x;
            let x_2593 : f32 = u_xlat36;
            u_xlat36 = ((x_2589 * x_2591) + x_2593);
            let x_2596 : vec4<f32> = u_xlat14;
            let x_2597 : vec2<f32> = vec2<f32>(x_2596.x, x_2596.y);
            let x_2599 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2597.x, x_2597.y, x_2599);
            let x_2606 : vec3<f32> = txVec37;
            let x_2608 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2606.xy, x_2606.z);
            u_xlat61.x = x_2608;
            let x_2611 : f32 = u_xlat18.w;
            let x_2613 : f32 = u_xlat61.x;
            let x_2615 : f32 = u_xlat36;
            u_xlat36 = ((x_2611 * x_2613) + x_2615);
            let x_2618 : vec4<f32> = u_xlat16;
            let x_2619 : vec2<f32> = vec2<f32>(x_2618.x, x_2618.y);
            let x_2621 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2619.x, x_2619.y, x_2621);
            let x_2628 : vec3<f32> = txVec38;
            let x_2630 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2628.xy, x_2628.z);
            u_xlat61.x = x_2630;
            let x_2633 : f32 = u_xlat19.x;
            let x_2635 : f32 = u_xlat61.x;
            let x_2637 : f32 = u_xlat36;
            u_xlat36 = ((x_2633 * x_2635) + x_2637);
            let x_2640 : vec4<f32> = u_xlat16;
            let x_2641 : vec2<f32> = vec2<f32>(x_2640.z, x_2640.w);
            let x_2643 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2641.x, x_2641.y, x_2643);
            let x_2650 : vec3<f32> = txVec39;
            let x_2652 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2650.xy, x_2650.z);
            u_xlat61.x = x_2652;
            let x_2655 : f32 = u_xlat19.y;
            let x_2657 : f32 = u_xlat61.x;
            let x_2659 : f32 = u_xlat36;
            u_xlat36 = ((x_2655 * x_2657) + x_2659);
            let x_2662 : vec4<f32> = u_xlat14;
            let x_2663 : vec2<f32> = vec2<f32>(x_2662.z, x_2662.w);
            let x_2665 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2663.x, x_2663.y, x_2665);
            let x_2672 : vec3<f32> = txVec40;
            let x_2674 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2672.xy, x_2672.z);
            u_xlat61.x = x_2674;
            let x_2677 : f32 = u_xlat19.z;
            let x_2679 : f32 = u_xlat61.x;
            let x_2681 : f32 = u_xlat36;
            u_xlat36 = ((x_2677 * x_2679) + x_2681);
            let x_2684 : vec4<f32> = u_xlat13;
            let x_2685 : vec2<f32> = vec2<f32>(x_2684.x, x_2684.y);
            let x_2687 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2685.x, x_2685.y, x_2687);
            let x_2694 : vec3<f32> = txVec41;
            let x_2696 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2694.xy, x_2694.z);
            u_xlat61.x = x_2696;
            let x_2699 : f32 = u_xlat19.w;
            let x_2701 : f32 = u_xlat61.x;
            let x_2703 : f32 = u_xlat36;
            u_xlat36 = ((x_2699 * x_2701) + x_2703);
            let x_2706 : vec4<f32> = u_xlat13;
            let x_2707 : vec2<f32> = vec2<f32>(x_2706.z, x_2706.w);
            let x_2709 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2707.x, x_2707.y, x_2709);
            let x_2716 : vec3<f32> = txVec42;
            let x_2718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2716.xy, x_2716.z);
            u_xlat61.x = x_2718;
            let x_2721 : f32 = u_xlat11.x;
            let x_2723 : f32 = u_xlat61.x;
            let x_2725 : f32 = u_xlat36;
            u_xlat85 = ((x_2721 * x_2723) + x_2725);
          } else {
            let x_2728 : vec4<f32> = u_xlat10;
            let x_2731 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2734 : vec2<f32> = ((vec2<f32>(x_2728.x, x_2728.y) * vec2<f32>(x_2731.z, x_2731.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2735 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2734.x, x_2734.y, x_2735.z, x_2735.w);
            let x_2737 : vec4<f32> = u_xlat11;
            let x_2739 : vec2<f32> = floor(vec2<f32>(x_2737.x, x_2737.y));
            let x_2740 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2739.x, x_2739.y, x_2740.z, x_2740.w);
            let x_2742 : vec4<f32> = u_xlat10;
            let x_2745 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2748 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2742.x, x_2742.y) * vec2<f32>(x_2745.z, x_2745.w)) + -(vec2<f32>(x_2748.x, x_2748.y)));
            let x_2752 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2752.x, x_2752.x, x_2752.y, x_2752.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2755 : vec4<f32> = u_xlat12;
            let x_2757 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2755.x, x_2755.x, x_2755.z, x_2755.z) * vec4<f32>(x_2757.x, x_2757.x, x_2757.z, x_2757.z));
            let x_2760 : vec4<f32> = u_xlat13;
            let x_2762 : vec2<f32> = (vec2<f32>(x_2760.y, x_2760.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2763 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2763.x, x_2762.x, x_2763.z, x_2762.y);
            let x_2765 : vec4<f32> = u_xlat13;
            let x_2768 : vec2<f32> = u_xlat61;
            let x_2770 : vec2<f32> = ((vec2<f32>(x_2765.x, x_2765.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2768));
            let x_2771 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2770.x, x_2771.y, x_2770.y, x_2771.w);
            let x_2773 : vec2<f32> = u_xlat61;
            let x_2775 : vec2<f32> = (-(x_2773) + vec2<f32>(1.0f, 1.0f));
            let x_2776 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2775.x, x_2775.y, x_2776.z, x_2776.w);
            let x_2778 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2778, vec2<f32>(0.0f, 0.0f));
            let x_2780 : vec2<f32> = u_xlat63;
            let x_2782 : vec2<f32> = u_xlat63;
            let x_2784 : vec4<f32> = u_xlat13;
            let x_2786 : vec2<f32> = ((-(x_2780) * x_2782) + vec2<f32>(x_2784.x, x_2784.y));
            let x_2787 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2786.x, x_2786.y, x_2787.z, x_2787.w);
            let x_2789 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2789, vec2<f32>(0.0f, 0.0f));
            let x_2792 : vec2<f32> = u_xlat63;
            let x_2794 : vec2<f32> = u_xlat63;
            let x_2796 : vec4<f32> = u_xlat12;
            let x_2798 : vec2<f32> = ((-(x_2792) * x_2794) + vec2<f32>(x_2796.y, x_2796.w));
            let x_2799 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2798.x, x_2799.y, x_2798.y);
            let x_2801 : vec4<f32> = u_xlat13;
            let x_2804 : vec2<f32> = (vec2<f32>(x_2801.x, x_2801.y) + vec2<f32>(2.0f, 2.0f));
            let x_2805 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2804.x, x_2804.y, x_2805.z, x_2805.w);
            let x_2807 : vec3<f32> = u_xlat37;
            let x_2809 : vec2<f32> = (vec2<f32>(x_2807.x, x_2807.z) + vec2<f32>(2.0f, 2.0f));
            let x_2810 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2810.x, x_2809.x, x_2810.z, x_2809.y);
            let x_2813 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2813 * 0.08163200318813323975f);
            let x_2816 : vec4<f32> = u_xlat12;
            let x_2819 : vec3<f32> = (vec3<f32>(x_2816.z, x_2816.x, x_2816.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2820 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2819.x, x_2819.y, x_2819.z, x_2820.w);
            let x_2822 : vec4<f32> = u_xlat13;
            let x_2824 : vec2<f32> = (vec2<f32>(x_2822.x, x_2822.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2825 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2824.x, x_2824.y, x_2825.z, x_2825.w);
            let x_2828 : f32 = u_xlat16.y;
            u_xlat15.x = x_2828;
            let x_2830 : vec2<f32> = u_xlat61;
            let x_2833 : vec2<f32> = ((vec2<f32>(x_2830.x, x_2830.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2834 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2834.x, x_2833.x, x_2834.z, x_2833.y);
            let x_2836 : vec2<f32> = u_xlat61;
            let x_2839 : vec2<f32> = ((vec2<f32>(x_2836.x, x_2836.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2840 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2839.x, x_2840.y, x_2839.y, x_2840.w);
            let x_2843 : f32 = u_xlat12.x;
            u_xlat13.y = x_2843;
            let x_2846 : f32 = u_xlat14.y;
            u_xlat13.w = x_2846;
            let x_2848 : vec4<f32> = u_xlat13;
            let x_2849 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2848 + x_2849);
            let x_2851 : vec2<f32> = u_xlat61;
            let x_2854 : vec2<f32> = ((vec2<f32>(x_2851.y, x_2851.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2855 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2855.x, x_2854.x, x_2855.z, x_2854.y);
            let x_2857 : vec2<f32> = u_xlat61;
            let x_2860 : vec2<f32> = ((vec2<f32>(x_2857.y, x_2857.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2861 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2860.x, x_2861.y, x_2860.y, x_2861.w);
            let x_2864 : f32 = u_xlat12.y;
            u_xlat14.y = x_2864;
            let x_2866 : vec4<f32> = u_xlat14;
            let x_2867 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2866 + x_2867);
            let x_2869 : vec4<f32> = u_xlat13;
            let x_2870 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2869 / x_2870);
            let x_2872 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2872 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2874 : vec4<f32> = u_xlat14;
            let x_2875 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2874 / x_2875);
            let x_2877 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2877 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2879 : vec4<f32> = u_xlat13;
            let x_2882 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2879.w, x_2879.x, x_2879.y, x_2879.z) * vec4<f32>(x_2882.x, x_2882.x, x_2882.x, x_2882.x));
            let x_2885 : vec4<f32> = u_xlat14;
            let x_2888 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2885.x, x_2885.w, x_2885.y, x_2885.z) * vec4<f32>(x_2888.y, x_2888.y, x_2888.y, x_2888.y));
            let x_2891 : vec4<f32> = u_xlat13;
            let x_2892 : vec3<f32> = vec3<f32>(x_2891.y, x_2891.z, x_2891.w);
            let x_2893 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2892.x, x_2893.y, x_2892.y, x_2892.z);
            let x_2896 : f32 = u_xlat14.x;
            u_xlat16.y = x_2896;
            let x_2898 : vec4<f32> = u_xlat11;
            let x_2901 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2904 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2898.x, x_2898.y, x_2898.x, x_2898.y) * vec4<f32>(x_2901.x, x_2901.y, x_2901.x, x_2901.y)) + vec4<f32>(x_2904.x, x_2904.y, x_2904.z, x_2904.y));
            let x_2907 : vec4<f32> = u_xlat11;
            let x_2910 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2913 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2907.x, x_2907.y) * vec2<f32>(x_2910.x, x_2910.y)) + vec2<f32>(x_2913.w, x_2913.y));
            let x_2917 : f32 = u_xlat16.y;
            u_xlat13.y = x_2917;
            let x_2920 : f32 = u_xlat14.z;
            u_xlat16.y = x_2920;
            let x_2922 : vec4<f32> = u_xlat11;
            let x_2925 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2928 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2922.x, x_2922.y, x_2922.x, x_2922.y) * vec4<f32>(x_2925.x, x_2925.y, x_2925.x, x_2925.y)) + vec4<f32>(x_2928.x, x_2928.y, x_2928.z, x_2928.y));
            let x_2931 : vec4<f32> = u_xlat11;
            let x_2934 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2937 : vec4<f32> = u_xlat16;
            let x_2939 : vec2<f32> = ((vec2<f32>(x_2931.x, x_2931.y) * vec2<f32>(x_2934.x, x_2934.y)) + vec2<f32>(x_2937.w, x_2937.y));
            let x_2940 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_2939.x, x_2939.y, x_2940.z, x_2940.w);
            let x_2943 : f32 = u_xlat16.y;
            u_xlat13.z = x_2943;
            let x_2946 : vec4<f32> = u_xlat11;
            let x_2949 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2952 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_2946.x, x_2946.y, x_2946.x, x_2946.y) * vec4<f32>(x_2949.x, x_2949.y, x_2949.x, x_2949.y)) + vec4<f32>(x_2952.x, x_2952.y, x_2952.x, x_2952.z));
            let x_2956 : f32 = u_xlat14.w;
            u_xlat16.y = x_2956;
            let x_2959 : vec4<f32> = u_xlat11;
            let x_2962 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2965 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_2959.x, x_2959.y, x_2959.x, x_2959.y) * vec4<f32>(x_2962.x, x_2962.y, x_2962.x, x_2962.y)) + vec4<f32>(x_2965.x, x_2965.y, x_2965.z, x_2965.y));
            let x_2969 : vec4<f32> = u_xlat11;
            let x_2972 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2975 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_2969.x, x_2969.y) * vec2<f32>(x_2972.x, x_2972.y)) + vec2<f32>(x_2975.w, x_2975.y));
            let x_2979 : f32 = u_xlat16.y;
            u_xlat13.w = x_2979;
            let x_2982 : vec4<f32> = u_xlat11;
            let x_2985 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_2988 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_2982.x, x_2982.y) * vec2<f32>(x_2985.x, x_2985.y)) + vec2<f32>(x_2988.x, x_2988.w));
            let x_2991 : vec4<f32> = u_xlat16;
            let x_2992 : vec3<f32> = vec3<f32>(x_2991.x, x_2991.z, x_2991.w);
            let x_2993 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2992.x, x_2993.y, x_2992.y, x_2992.z);
            let x_2995 : vec4<f32> = u_xlat11;
            let x_2998 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_3001 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2995.x, x_2995.y, x_2995.x, x_2995.y) * vec4<f32>(x_2998.x, x_2998.y, x_2998.x, x_2998.y)) + vec4<f32>(x_3001.x, x_3001.y, x_3001.z, x_3001.y));
            let x_3005 : vec4<f32> = u_xlat11;
            let x_3008 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_3011 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3005.x, x_3005.y) * vec2<f32>(x_3008.x, x_3008.y)) + vec2<f32>(x_3011.w, x_3011.y));
            let x_3015 : f32 = u_xlat13.x;
            u_xlat14.x = x_3015;
            let x_3017 : vec4<f32> = u_xlat11;
            let x_3020 : vec4<f32> = x_302.x_AdditionalShadowmapSize;
            let x_3023 : vec4<f32> = u_xlat14;
            let x_3025 : vec2<f32> = ((vec2<f32>(x_3017.x, x_3017.y) * vec2<f32>(x_3020.x, x_3020.y)) + vec2<f32>(x_3023.x, x_3023.y));
            let x_3026 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3025.x, x_3025.y, x_3026.z, x_3026.w);
            let x_3029 : vec4<f32> = u_xlat12;
            let x_3031 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3029.x, x_3029.x, x_3029.x, x_3029.x) * x_3031);
            let x_3034 : vec4<f32> = u_xlat12;
            let x_3036 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3034.y, x_3034.y, x_3034.y, x_3034.y) * x_3036);
            let x_3039 : vec4<f32> = u_xlat12;
            let x_3041 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3039.z, x_3039.z, x_3039.z, x_3039.z) * x_3041);
            let x_3043 : vec4<f32> = u_xlat12;
            let x_3045 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3043.w, x_3043.w, x_3043.w, x_3043.w) * x_3045);
            let x_3048 : vec4<f32> = u_xlat17;
            let x_3049 : vec2<f32> = vec2<f32>(x_3048.x, x_3048.y);
            let x_3051 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3049.x, x_3049.y, x_3051);
            let x_3058 : vec3<f32> = txVec43;
            let x_3060 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
            u_xlat13.x = x_3060;
            let x_3063 : vec4<f32> = u_xlat17;
            let x_3064 : vec2<f32> = vec2<f32>(x_3063.z, x_3063.w);
            let x_3066 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3064.x, x_3064.y, x_3066);
            let x_3074 : vec3<f32> = txVec44;
            let x_3076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3074.xy, x_3074.z);
            u_xlat88 = x_3076;
            let x_3077 : f32 = u_xlat88;
            let x_3079 : f32 = u_xlat22.y;
            u_xlat88 = (x_3077 * x_3079);
            let x_3082 : f32 = u_xlat22.x;
            let x_3084 : f32 = u_xlat13.x;
            let x_3086 : f32 = u_xlat88;
            u_xlat13.x = ((x_3082 * x_3084) + x_3086);
            let x_3090 : vec2<f32> = u_xlat61;
            let x_3092 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3090.x, x_3090.y, x_3092);
            let x_3099 : vec3<f32> = txVec45;
            let x_3101 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3099.xy, x_3099.z);
            u_xlat61.x = x_3101;
            let x_3104 : f32 = u_xlat22.z;
            let x_3106 : f32 = u_xlat61.x;
            let x_3109 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3104 * x_3106) + x_3109);
            let x_3113 : vec4<f32> = u_xlat20;
            let x_3114 : vec2<f32> = vec2<f32>(x_3113.x, x_3113.y);
            let x_3116 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3114.x, x_3114.y, x_3116);
            let x_3124 : vec3<f32> = txVec46;
            let x_3126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
            u_xlat86 = x_3126;
            let x_3128 : f32 = u_xlat22.w;
            let x_3129 : f32 = u_xlat86;
            let x_3132 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3128 * x_3129) + x_3132);
            let x_3136 : vec4<f32> = u_xlat18;
            let x_3137 : vec2<f32> = vec2<f32>(x_3136.x, x_3136.y);
            let x_3139 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3137.x, x_3137.y, x_3139);
            let x_3146 : vec3<f32> = txVec47;
            let x_3148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3146.xy, x_3146.z);
            u_xlat86 = x_3148;
            let x_3150 : f32 = u_xlat23.x;
            let x_3151 : f32 = u_xlat86;
            let x_3154 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3150 * x_3151) + x_3154);
            let x_3158 : vec4<f32> = u_xlat18;
            let x_3159 : vec2<f32> = vec2<f32>(x_3158.z, x_3158.w);
            let x_3161 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3159.x, x_3159.y, x_3161);
            let x_3168 : vec3<f32> = txVec48;
            let x_3170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3168.xy, x_3168.z);
            u_xlat86 = x_3170;
            let x_3172 : f32 = u_xlat23.y;
            let x_3173 : f32 = u_xlat86;
            let x_3176 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3172 * x_3173) + x_3176);
            let x_3180 : vec4<f32> = u_xlat19;
            let x_3181 : vec2<f32> = vec2<f32>(x_3180.x, x_3180.y);
            let x_3183 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
            let x_3190 : vec3<f32> = txVec49;
            let x_3192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
            u_xlat86 = x_3192;
            let x_3194 : f32 = u_xlat23.z;
            let x_3195 : f32 = u_xlat86;
            let x_3198 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3194 * x_3195) + x_3198);
            let x_3202 : vec4<f32> = u_xlat20;
            let x_3203 : vec2<f32> = vec2<f32>(x_3202.z, x_3202.w);
            let x_3205 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3203.x, x_3203.y, x_3205);
            let x_3212 : vec3<f32> = txVec50;
            let x_3214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3212.xy, x_3212.z);
            u_xlat86 = x_3214;
            let x_3216 : f32 = u_xlat23.w;
            let x_3217 : f32 = u_xlat86;
            let x_3220 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3216 * x_3217) + x_3220);
            let x_3224 : vec4<f32> = u_xlat21;
            let x_3225 : vec2<f32> = vec2<f32>(x_3224.x, x_3224.y);
            let x_3227 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3225.x, x_3225.y, x_3227);
            let x_3234 : vec3<f32> = txVec51;
            let x_3236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3234.xy, x_3234.z);
            u_xlat86 = x_3236;
            let x_3238 : f32 = u_xlat24.x;
            let x_3239 : f32 = u_xlat86;
            let x_3242 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3238 * x_3239) + x_3242);
            let x_3246 : vec4<f32> = u_xlat21;
            let x_3247 : vec2<f32> = vec2<f32>(x_3246.z, x_3246.w);
            let x_3249 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3247.x, x_3247.y, x_3249);
            let x_3256 : vec3<f32> = txVec52;
            let x_3258 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3256.xy, x_3256.z);
            u_xlat86 = x_3258;
            let x_3260 : f32 = u_xlat24.y;
            let x_3261 : f32 = u_xlat86;
            let x_3264 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3260 * x_3261) + x_3264);
            let x_3268 : vec2<f32> = u_xlat38;
            let x_3270 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3268.x, x_3268.y, x_3270);
            let x_3277 : vec3<f32> = txVec53;
            let x_3279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3277.xy, x_3277.z);
            u_xlat86 = x_3279;
            let x_3281 : f32 = u_xlat24.z;
            let x_3282 : f32 = u_xlat86;
            let x_3285 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3281 * x_3282) + x_3285);
            let x_3289 : vec2<f32> = u_xlat69;
            let x_3291 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3289.x, x_3289.y, x_3291);
            let x_3298 : vec3<f32> = txVec54;
            let x_3300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3298.xy, x_3298.z);
            u_xlat86 = x_3300;
            let x_3302 : f32 = u_xlat24.w;
            let x_3303 : f32 = u_xlat86;
            let x_3306 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3302 * x_3303) + x_3306);
            let x_3310 : vec4<f32> = u_xlat16;
            let x_3311 : vec2<f32> = vec2<f32>(x_3310.x, x_3310.y);
            let x_3313 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3311.x, x_3311.y, x_3313);
            let x_3320 : vec3<f32> = txVec55;
            let x_3322 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3320.xy, x_3320.z);
            u_xlat86 = x_3322;
            let x_3324 : f32 = u_xlat12.x;
            let x_3325 : f32 = u_xlat86;
            let x_3328 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3324 * x_3325) + x_3328);
            let x_3332 : vec4<f32> = u_xlat16;
            let x_3333 : vec2<f32> = vec2<f32>(x_3332.z, x_3332.w);
            let x_3335 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3333.x, x_3333.y, x_3335);
            let x_3342 : vec3<f32> = txVec56;
            let x_3344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3342.xy, x_3342.z);
            u_xlat86 = x_3344;
            let x_3346 : f32 = u_xlat12.y;
            let x_3347 : f32 = u_xlat86;
            let x_3350 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3346 * x_3347) + x_3350);
            let x_3354 : vec2<f32> = u_xlat64;
            let x_3356 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3354.x, x_3354.y, x_3356);
            let x_3363 : vec3<f32> = txVec57;
            let x_3365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3363.xy, x_3363.z);
            u_xlat86 = x_3365;
            let x_3367 : f32 = u_xlat12.z;
            let x_3368 : f32 = u_xlat86;
            let x_3371 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3367 * x_3368) + x_3371);
            let x_3375 : vec4<f32> = u_xlat11;
            let x_3376 : vec2<f32> = vec2<f32>(x_3375.x, x_3375.y);
            let x_3378 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3376.x, x_3376.y, x_3378);
            let x_3385 : vec3<f32> = txVec58;
            let x_3387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3385.xy, x_3385.z);
            u_xlat11.x = x_3387;
            let x_3390 : f32 = u_xlat12.w;
            let x_3392 : f32 = u_xlat11.x;
            let x_3395 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3390 * x_3392) + x_3395);
          }
        }
      } else {
        let x_3399 : vec4<f32> = u_xlat10;
        let x_3400 : vec2<f32> = vec2<f32>(x_3399.x, x_3399.y);
        let x_3402 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3400.x, x_3400.y, x_3402);
        let x_3409 : vec3<f32> = txVec59;
        let x_3411 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3409.xy, x_3409.z);
        u_xlat85 = x_3411;
      }
      let x_3412 : i32 = u_xlati81;
      let x_3414 : f32 = x_302.x_AdditionalShadowParams[x_3412].x;
      u_xlat10.x = (1.0f + -(x_3414));
      let x_3418 : f32 = u_xlat85;
      let x_3419 : i32 = u_xlati81;
      let x_3421 : f32 = x_302.x_AdditionalShadowParams[x_3419].x;
      let x_3424 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3418 * x_3421) + x_3424);
      let x_3428 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3428);
      let x_3433 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3433 >= 1.0f);
      let x_3435 : bool = u_xlatb60;
      let x_3437 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3435 | x_3437);
      let x_3441 : bool = u_xlatb35.x;
      if (x_3441) {
        x_3442 = 1.0f;
      } else {
        let x_3447 : f32 = u_xlat10.x;
        x_3442 = x_3447;
      }
      let x_3448 : f32 = x_3442;
      u_xlat10.x = x_3448;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3453 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3453) + 1.0f);
    let x_3456 : f32 = u_xlat77;
    let x_3457 : f32 = u_xlat35;
    let x_3460 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3456 * x_3457) + x_3460);
    let x_3463 : f32 = u_xlat83;
    let x_3465 : f32 = u_xlat10.x;
    u_xlat83 = (x_3463 * x_3465);
    let x_3467 : vec4<f32> = u_xlat2;
    let x_3469 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_3467.x, x_3467.y, x_3467.z), x_3469);
    let x_3473 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3473, 0.0f, 1.0f);
    let x_3476 : f32 = u_xlat83;
    let x_3478 : f32 = u_xlat10.x;
    u_xlat83 = (x_3476 * x_3478);
    let x_3480 : f32 = u_xlat83;
    let x_3482 : i32 = u_xlati81;
    let x_3484 : vec4<f32> = x_1949.x_AdditionalLightsColor[x_3482];
    let x_3486 : vec3<f32> = (vec3<f32>(x_3480, x_3480, x_3480) * vec3<f32>(x_3484.x, x_3484.y, x_3484.z));
    let x_3487 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3486.x, x_3486.y, x_3486.z, x_3487.w);
    let x_3489 : vec4<f32> = u_xlat8;
    let x_3491 : vec4<f32> = u_xlat9;
    let x_3494 : vec3<f32> = u_xlat3;
    let x_3495 : vec3<f32> = ((vec3<f32>(x_3489.x, x_3489.y, x_3489.z) * vec3<f32>(x_3491.x, x_3491.x, x_3491.x)) + x_3494);
    let x_3496 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3495.x, x_3495.y, x_3495.z, x_3496.w);
    let x_3498 : vec4<f32> = u_xlat8;
    let x_3500 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3498.x, x_3498.y, x_3498.z), vec3<f32>(x_3500.x, x_3500.y, x_3500.z));
    let x_3503 : f32 = u_xlat81;
    u_xlat81 = max(x_3503, 1.17549435e-38f);
    let x_3505 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3505);
    let x_3507 : f32 = u_xlat81;
    let x_3509 : vec4<f32> = u_xlat8;
    let x_3511 : vec3<f32> = (vec3<f32>(x_3507, x_3507, x_3507) * vec3<f32>(x_3509.x, x_3509.y, x_3509.z));
    let x_3512 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3511.x, x_3511.y, x_3511.z, x_3512.w);
    let x_3514 : vec4<f32> = u_xlat2;
    let x_3516 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3514.x, x_3514.y, x_3514.z), vec3<f32>(x_3516.x, x_3516.y, x_3516.z));
    let x_3519 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3519, 0.0f, 1.0f);
    let x_3521 : vec3<f32> = u_xlat34;
    let x_3522 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3521, vec3<f32>(x_3522.x, x_3522.y, x_3522.z));
    let x_3527 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3527, 0.0f, 1.0f);
    let x_3530 : f32 = u_xlat81;
    let x_3531 : f32 = u_xlat81;
    u_xlat81 = (x_3530 * x_3531);
    let x_3533 : f32 = u_xlat81;
    let x_3535 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3533 * x_3535) + 1.00001001358032226562f);
    let x_3539 : f32 = u_xlat8.x;
    let x_3541 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3539 * x_3541);
    let x_3544 : f32 = u_xlat81;
    let x_3545 : f32 = u_xlat81;
    u_xlat81 = (x_3544 * x_3545);
    let x_3548 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3548, 0.10000000149011611938f);
    let x_3551 : f32 = u_xlat81;
    let x_3553 : f32 = u_xlat8.x;
    u_xlat81 = (x_3551 * x_3553);
    let x_3556 : f32 = u_xlat5.x;
    let x_3557 : f32 = u_xlat81;
    u_xlat81 = (x_3556 * x_3557);
    let x_3559 : f32 = u_xlat79;
    let x_3560 : f32 = u_xlat81;
    u_xlat81 = (x_3559 / x_3560);
    let x_3562 : vec4<f32> = u_xlat0;
    let x_3564 : f32 = u_xlat81;
    let x_3567 : vec3<f32> = u_xlat26;
    let x_3568 : vec3<f32> = ((vec3<f32>(x_3562.x, x_3562.y, x_3562.z) * vec3<f32>(x_3564, x_3564, x_3564)) + x_3567);
    let x_3569 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3568.x, x_3568.y, x_3568.z, x_3569.w);
    let x_3571 : vec4<f32> = u_xlat8;
    let x_3573 : vec4<f32> = u_xlat10;
    let x_3576 : vec3<f32> = u_xlat30;
    u_xlat30 = ((vec3<f32>(x_3571.x, x_3571.y, x_3571.z) * vec3<f32>(x_3573.x, x_3573.y, x_3573.z)) + x_3576);

    continuing {
      let x_3578 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3578 + bitcast<u32>(1i));
    }
  }
  let x_3580 : vec3<f32> = u_xlat32;
  let x_3581 : vec4<f32> = u_xlat6;
  let x_3584 : vec3<f32> = u_xlat4;
  let x_3585 : vec3<f32> = ((x_3580 * vec3<f32>(x_3581.x, x_3581.y, x_3581.z)) + x_3584);
  let x_3586 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3585.x, x_3585.y, x_3585.z, x_3586.w);
  let x_3590 : vec3<f32> = u_xlat30;
  let x_3591 : vec4<f32> = u_xlat0;
  let x_3593 : vec3<f32> = (x_3590 + vec3<f32>(x_3591.x, x_3591.y, x_3591.z));
  let x_3594 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3593.x, x_3593.y, x_3593.z, x_3594.w);
  let x_3598 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_3598 == 1.0f);
  let x_3600 : bool = u_xlatb0;
  if (x_3600) {
    let x_3605 : f32 = u_xlat1.x;
    x_3601 = x_3605;
  } else {
    x_3601 = 1.0f;
  }
  let x_3607 : f32 = x_3601;
  SV_Target0.w = x_3607;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


