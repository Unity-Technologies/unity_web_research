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

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb75 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat75 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb30 : bool;

@group(1) @binding(4) var<uniform> x_264 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1677 : UnityPerDraw;

var<private> u_xlatu75 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_1912 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat60 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_83 : f32;
  var x_96 : f32;
  var x_109 : f32;
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
  var x_1570 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2062 : f32;
  var x_2073 : f32;
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
  var x_3405 : f32;
  var x_3563 : f32;
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
  let x_62 : vec3<f32> = vs_TEXCOORD1;
  let x_67 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_62) + x_67);
  let x_71 : vec3<f32> = u_xlat2;
  let x_72 : vec3<f32> = u_xlat2;
  u_xlat77 = dot(x_71, x_72);
  let x_74 : f32 = u_xlat77;
  u_xlat77 = inverseSqrt(x_74);
  let x_76 : f32 = u_xlat77;
  let x_78 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_76, x_76, x_76) * x_78);
  let x_81 : bool = u_xlatb75;
  if (x_81) {
    let x_87 : f32 = u_xlat2.x;
    x_83 = x_87;
  } else {
    let x_92 : f32 = x_28.unity_MatrixV[0i].z;
    x_83 = x_92;
  }
  let x_93 : f32 = x_83;
  u_xlat3.x = x_93;
  let x_95 : bool = u_xlatb75;
  if (x_95) {
    let x_101 : f32 = u_xlat2.y;
    x_96 = x_101;
  } else {
    let x_105 : f32 = x_28.unity_MatrixV[1i].z;
    x_96 = x_105;
  }
  let x_106 : f32 = x_96;
  u_xlat3.y = x_106;
  let x_108 : bool = u_xlatb75;
  if (x_108) {
    let x_113 : f32 = u_xlat2.z;
    x_109 = x_113;
  } else {
    let x_116 : f32 = x_28.unity_MatrixV[2i].z;
    x_109 = x_116;
  }
  let x_117 : f32 = x_109;
  u_xlat3.z = x_117;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  let x_122 : vec3<f32> = vs_TEXCOORD2;
  u_xlat75 = dot(x_121, x_122);
  let x_124 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_124);
  let x_126 : f32 = u_xlat75;
  let x_128 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_126, x_126, x_126) * x_128);
  let x_137 : vec2<f32> = vs_TEXCOORD8;
  let x_139 : f32 = x_28.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_137, x_139);
  u_xlat4 = x_140;
  let x_146 : vec2<f32> = vs_TEXCOORD8;
  let x_148 : f32 = x_28.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_146, x_148);
  u_xlat5 = vec3<f32>(x_149.x, x_149.y, x_149.z);
  let x_151 : vec4<f32> = u_xlat4;
  let x_155 : vec3<f32> = (vec3<f32>(x_151.x, x_151.y, x_151.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : vec3<f32> = u_xlat2;
  let x_159 : vec4<f32> = u_xlat4;
  u_xlat75 = dot(x_158, vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : f32 = u_xlat75;
  u_xlat75 = (x_162 + 0.5f);
  let x_165 : f32 = u_xlat75;
  let x_167 : vec3<f32> = u_xlat5;
  let x_168 : vec3<f32> = (vec3<f32>(x_165, x_165, x_165) * x_167);
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : f32 = u_xlat4.w;
  u_xlat75 = max(x_172, 0.00009999999747378752f);
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : f32 = u_xlat75;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) / vec3<f32>(x_177, x_177, x_177));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_184 : f32 = x_42.x_Metallic;
  u_xlat75 = ((-(x_184) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_189 : f32 = u_xlat75;
  let x_192 : f32 = x_42.x_Smoothness;
  u_xlat77 = (-(x_189) + x_192);
  let x_195 : f32 = u_xlat75;
  let x_197 : vec4<f32> = u_xlat1;
  u_xlat26 = (vec3<f32>(x_195, x_195, x_195) * vec3<f32>(x_197.y, x_197.z, x_197.w));
  let x_200 : vec4<f32> = u_xlat0;
  let x_203 : vec4<f32> = x_42.x_BaseColor;
  let x_208 : vec3<f32> = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_212 : f32 = x_42.x_Metallic;
  let x_214 : f32 = x_42.x_Metallic;
  let x_216 : f32 = x_42.x_Metallic;
  let x_217 : vec3<f32> = vec3<f32>(x_212, x_214, x_216);
  let x_222 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_222.x, x_222.y, x_222.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : f32 = x_42.x_Smoothness;
  u_xlat75 = (-(x_231) + 1.0f);
  let x_236 : f32 = u_xlat75;
  let x_237 : f32 = u_xlat75;
  u_xlat78 = (x_236 * x_237);
  let x_239 : f32 = u_xlat78;
  u_xlat78 = max(x_239, 0.0078125f);
  let x_243 : f32 = u_xlat78;
  let x_244 : f32 = u_xlat78;
  u_xlat79 = (x_243 * x_244);
  let x_246 : f32 = u_xlat77;
  u_xlat77 = (x_246 + 1.0f);
  let x_248 : f32 = u_xlat77;
  u_xlat77 = clamp(x_248, 0.0f, 1.0f);
  let x_250 : f32 = u_xlat78;
  u_xlat5.x = ((x_250 * 4.0f) + 2.0f);
  let x_267 : f32 = x_264.x_MainLightShadowParams.y;
  u_xlatb30 = (0.0f < x_267);
  let x_269 : bool = u_xlatb30;
  if (x_269) {
    let x_273 : f32 = x_264.x_MainLightShadowParams.y;
    u_xlatb30 = (x_273 == 1.0f);
    let x_275 : bool = u_xlatb30;
    if (x_275) {
      let x_281 : vec4<f32> = vs_TEXCOORD6;
      let x_284 : vec4<f32> = x_264.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_281.x, x_281.y, x_281.x, x_281.y) + x_284);
      let x_288 : vec4<f32> = u_xlat6;
      let x_289 : vec2<f32> = vec2<f32>(x_288.x, x_288.y);
      let x_292 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_289.x, x_289.y, x_292);
      let x_305 : vec3<f32> = txVec0;
      let x_307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_305.xy, x_305.z);
      u_xlat7.x = x_307;
      let x_310 : vec4<f32> = u_xlat6;
      let x_311 : vec2<f32> = vec2<f32>(x_310.z, x_310.w);
      let x_313 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_311.x, x_311.y, x_313);
      let x_320 : vec3<f32> = txVec1;
      let x_322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_320.xy, x_320.z);
      u_xlat7.y = x_322;
      let x_324 : vec4<f32> = vs_TEXCOORD6;
      let x_327 : vec4<f32> = x_264.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_324.x, x_324.y, x_324.x, x_324.y) + x_327);
      let x_330 : vec4<f32> = u_xlat6;
      let x_331 : vec2<f32> = vec2<f32>(x_330.x, x_330.y);
      let x_333 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_331.x, x_331.y, x_333);
      let x_340 : vec3<f32> = txVec2;
      let x_342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_340.xy, x_340.z);
      u_xlat7.z = x_342;
      let x_345 : vec4<f32> = u_xlat6;
      let x_346 : vec2<f32> = vec2<f32>(x_345.z, x_345.w);
      let x_348 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_346.x, x_346.y, x_348);
      let x_355 : vec3<f32> = txVec3;
      let x_357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_355.xy, x_355.z);
      u_xlat7.w = x_357;
      let x_360 : vec4<f32> = u_xlat7;
      u_xlat30.x = dot(x_360, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_368 : f32 = x_264.x_MainLightShadowParams.y;
      u_xlatb55 = (x_368 == 2.0f);
      let x_370 : bool = u_xlatb55;
      if (x_370) {
        let x_375 : vec4<f32> = vs_TEXCOORD6;
        let x_379 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat55 = ((vec2<f32>(x_375.x, x_375.y) * vec2<f32>(x_379.z, x_379.w)) + vec2<f32>(0.5f, 0.5f));
        let x_384 : vec2<f32> = u_xlat55;
        u_xlat55 = floor(x_384);
        let x_386 : vec4<f32> = vs_TEXCOORD6;
        let x_389 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_392 : vec2<f32> = u_xlat55;
        let x_394 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(x_389.z, x_389.w)) + -(x_392));
        let x_395 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_394.x, x_394.y, x_395.z, x_395.w);
        let x_397 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_397.x, x_397.x, x_397.y, x_397.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_402 : vec4<f32> = u_xlat7;
        let x_404 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_402.x, x_402.x, x_402.z, x_402.z) * vec4<f32>(x_404.x, x_404.x, x_404.z, x_404.z));
        let x_408 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_408.y, x_408.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_413 : vec4<f32> = u_xlat8;
        let x_416 : vec4<f32> = u_xlat6;
        let x_419 : vec2<f32> = ((vec2<f32>(x_413.x, x_413.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_416.x, x_416.y)));
        let x_420 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_419.x, x_420.y, x_419.y, x_420.w);
        let x_422 : vec4<f32> = u_xlat6;
        let x_426 : vec2<f32> = (-(vec2<f32>(x_422.x, x_422.y)) + vec2<f32>(1.0f, 1.0f));
        let x_427 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
        let x_430 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_430.x, x_430.y), vec2<f32>(0.0f, 0.0f));
        let x_434 : vec2<f32> = u_xlat58;
        let x_436 : vec2<f32> = u_xlat58;
        let x_438 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_434) * x_436) + vec2<f32>(x_438.x, x_438.y));
        let x_441 : vec4<f32> = u_xlat6;
        let x_443 : vec2<f32> = max(vec2<f32>(x_441.x, x_441.y), vec2<f32>(0.0f, 0.0f));
        let x_444 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
        let x_446 : vec4<f32> = u_xlat6;
        let x_449 : vec4<f32> = u_xlat6;
        let x_452 : vec4<f32> = u_xlat7;
        let x_454 : vec2<f32> = ((-(vec2<f32>(x_446.x, x_446.y)) * vec2<f32>(x_449.x, x_449.y)) + vec2<f32>(x_452.y, x_452.w));
        let x_455 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
        let x_457 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_457 + vec2<f32>(1.0f, 1.0f));
        let x_459 : vec4<f32> = u_xlat6;
        let x_461 : vec2<f32> = (vec2<f32>(x_459.x, x_459.y) + vec2<f32>(1.0f, 1.0f));
        let x_462 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
        let x_465 : vec4<f32> = u_xlat7;
        let x_469 : vec2<f32> = (vec2<f32>(x_465.x, x_465.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_470 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_473 : vec4<f32> = u_xlat8;
        let x_475 : vec2<f32> = (vec2<f32>(x_473.x, x_473.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_476 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
        let x_478 : vec2<f32> = u_xlat58;
        let x_479 : vec2<f32> = (x_478 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_480 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_483 : vec4<f32> = u_xlat6;
        let x_485 : vec2<f32> = (vec2<f32>(x_483.x, x_483.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_486 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
        let x_488 : vec4<f32> = u_xlat7;
        let x_490 : vec2<f32> = (vec2<f32>(x_488.y, x_488.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_491 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
        let x_494 : f32 = u_xlat8.x;
        u_xlat9.z = x_494;
        let x_497 : f32 = u_xlat6.x;
        u_xlat9.w = x_497;
        let x_500 : f32 = u_xlat11.x;
        u_xlat10.z = x_500;
        let x_503 : f32 = u_xlat56.x;
        u_xlat10.w = x_503;
        let x_505 : vec4<f32> = u_xlat9;
        let x_507 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_505.z, x_505.w, x_505.x, x_505.z) + vec4<f32>(x_507.z, x_507.w, x_507.x, x_507.z));
        let x_511 : f32 = u_xlat9.y;
        u_xlat8.z = x_511;
        let x_514 : f32 = u_xlat6.y;
        u_xlat8.w = x_514;
        let x_517 : f32 = u_xlat10.y;
        u_xlat11.z = x_517;
        let x_520 : f32 = u_xlat56.y;
        u_xlat11.w = x_520;
        let x_522 : vec4<f32> = u_xlat8;
        let x_524 : vec4<f32> = u_xlat11;
        let x_526 : vec3<f32> = (vec3<f32>(x_522.z, x_522.y, x_522.w) + vec3<f32>(x_524.z, x_524.y, x_524.w));
        let x_527 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
        let x_529 : vec4<f32> = u_xlat10;
        let x_531 : vec4<f32> = u_xlat7;
        let x_533 : vec3<f32> = (vec3<f32>(x_529.x, x_529.z, x_529.w) / vec3<f32>(x_531.z, x_531.w, x_531.y));
        let x_534 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
        let x_536 : vec4<f32> = u_xlat8;
        let x_541 : vec3<f32> = (vec3<f32>(x_536.x, x_536.y, x_536.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_542 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
        let x_544 : vec4<f32> = u_xlat11;
        let x_546 : vec4<f32> = u_xlat6;
        let x_548 : vec3<f32> = (vec3<f32>(x_544.z, x_544.y, x_544.w) / vec3<f32>(x_546.x, x_546.y, x_546.z));
        let x_549 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
        let x_551 : vec4<f32> = u_xlat9;
        let x_553 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_554 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
        let x_556 : vec4<f32> = u_xlat8;
        let x_559 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_561 : vec3<f32> = (vec3<f32>(x_556.y, x_556.x, x_556.z) * vec3<f32>(x_559.x, x_559.x, x_559.x));
        let x_562 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat9;
        let x_567 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_569 : vec3<f32> = (vec3<f32>(x_564.x, x_564.y, x_564.z) * vec3<f32>(x_567.y, x_567.y, x_567.y));
        let x_570 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
        let x_573 : f32 = u_xlat9.x;
        u_xlat8.w = x_573;
        let x_575 : vec2<f32> = u_xlat55;
        let x_578 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_581 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_575.x, x_575.y, x_575.x, x_575.y) * vec4<f32>(x_578.x, x_578.y, x_578.x, x_578.y)) + vec4<f32>(x_581.y, x_581.w, x_581.x, x_581.w));
        let x_584 : vec2<f32> = u_xlat55;
        let x_586 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_589 : vec4<f32> = u_xlat8;
        let x_591 : vec2<f32> = ((x_584 * vec2<f32>(x_586.x, x_586.y)) + vec2<f32>(x_589.z, x_589.w));
        let x_592 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
        let x_595 : f32 = u_xlat8.y;
        u_xlat9.w = x_595;
        let x_597 : vec4<f32> = u_xlat9;
        let x_598 : vec2<f32> = vec2<f32>(x_597.y, x_597.z);
        let x_599 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_599.x, x_598.x, x_599.z, x_598.y);
        let x_602 : vec2<f32> = u_xlat55;
        let x_605 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_608 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.y) * vec4<f32>(x_605.x, x_605.y, x_605.x, x_605.y)) + vec4<f32>(x_608.x, x_608.y, x_608.z, x_608.y));
        let x_611 : vec2<f32> = u_xlat55;
        let x_614 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_617 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y) * vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y)) + vec4<f32>(x_617.w, x_617.y, x_617.w, x_617.z));
        let x_620 : vec2<f32> = u_xlat55;
        let x_623 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_626 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y) * vec4<f32>(x_623.x, x_623.y, x_623.x, x_623.y)) + vec4<f32>(x_626.x, x_626.w, x_626.z, x_626.w));
        let x_630 : vec4<f32> = u_xlat6;
        let x_632 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_630.x, x_630.x, x_630.x, x_630.y) * vec4<f32>(x_632.z, x_632.w, x_632.y, x_632.z));
        let x_636 : vec4<f32> = u_xlat6;
        let x_638 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_636.y, x_636.y, x_636.z, x_636.z) * x_638);
        let x_641 : f32 = u_xlat6.z;
        let x_643 : f32 = u_xlat7.y;
        u_xlat55.x = (x_641 * x_643);
        let x_647 : vec4<f32> = u_xlat10;
        let x_648 : vec2<f32> = vec2<f32>(x_647.x, x_647.y);
        let x_650 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_648.x, x_648.y, x_650);
        let x_658 : vec3<f32> = txVec4;
        let x_660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_658.xy, x_658.z);
        u_xlat80 = x_660;
        let x_662 : vec4<f32> = u_xlat10;
        let x_663 : vec2<f32> = vec2<f32>(x_662.z, x_662.w);
        let x_665 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_663.x, x_663.y, x_665);
        let x_672 : vec3<f32> = txVec5;
        let x_674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_672.xy, x_672.z);
        u_xlat6.x = x_674;
        let x_677 : f32 = u_xlat6.x;
        let x_679 : f32 = u_xlat13.y;
        u_xlat6.x = (x_677 * x_679);
        let x_683 : f32 = u_xlat13.x;
        let x_684 : f32 = u_xlat80;
        let x_687 : f32 = u_xlat6.x;
        u_xlat80 = ((x_683 * x_684) + x_687);
        let x_690 : vec4<f32> = u_xlat11;
        let x_691 : vec2<f32> = vec2<f32>(x_690.x, x_690.y);
        let x_693 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_691.x, x_691.y, x_693);
        let x_700 : vec3<f32> = txVec6;
        let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_700.xy, x_700.z);
        u_xlat6.x = x_702;
        let x_705 : f32 = u_xlat13.z;
        let x_707 : f32 = u_xlat6.x;
        let x_709 : f32 = u_xlat80;
        u_xlat80 = ((x_705 * x_707) + x_709);
        let x_712 : vec4<f32> = u_xlat9;
        let x_713 : vec2<f32> = vec2<f32>(x_712.x, x_712.y);
        let x_715 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_713.x, x_713.y, x_715);
        let x_722 : vec3<f32> = txVec7;
        let x_724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_722.xy, x_722.z);
        u_xlat6.x = x_724;
        let x_727 : f32 = u_xlat13.w;
        let x_729 : f32 = u_xlat6.x;
        let x_731 : f32 = u_xlat80;
        u_xlat80 = ((x_727 * x_729) + x_731);
        let x_734 : vec4<f32> = u_xlat12;
        let x_735 : vec2<f32> = vec2<f32>(x_734.x, x_734.y);
        let x_737 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_735.x, x_735.y, x_737);
        let x_744 : vec3<f32> = txVec8;
        let x_746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_744.xy, x_744.z);
        u_xlat6.x = x_746;
        let x_749 : f32 = u_xlat14.x;
        let x_751 : f32 = u_xlat6.x;
        let x_753 : f32 = u_xlat80;
        u_xlat80 = ((x_749 * x_751) + x_753);
        let x_756 : vec4<f32> = u_xlat12;
        let x_757 : vec2<f32> = vec2<f32>(x_756.z, x_756.w);
        let x_759 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_757.x, x_757.y, x_759);
        let x_766 : vec3<f32> = txVec9;
        let x_768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_766.xy, x_766.z);
        u_xlat6.x = x_768;
        let x_771 : f32 = u_xlat14.y;
        let x_773 : f32 = u_xlat6.x;
        let x_775 : f32 = u_xlat80;
        u_xlat80 = ((x_771 * x_773) + x_775);
        let x_778 : vec4<f32> = u_xlat9;
        let x_779 : vec2<f32> = vec2<f32>(x_778.z, x_778.w);
        let x_781 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_779.x, x_779.y, x_781);
        let x_788 : vec3<f32> = txVec10;
        let x_790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_788.xy, x_788.z);
        u_xlat6.x = x_790;
        let x_793 : f32 = u_xlat14.z;
        let x_795 : f32 = u_xlat6.x;
        let x_797 : f32 = u_xlat80;
        u_xlat80 = ((x_793 * x_795) + x_797);
        let x_800 : vec4<f32> = u_xlat8;
        let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
        let x_803 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_801.x, x_801.y, x_803);
        let x_810 : vec3<f32> = txVec11;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_810.xy, x_810.z);
        u_xlat6.x = x_812;
        let x_815 : f32 = u_xlat14.w;
        let x_817 : f32 = u_xlat6.x;
        let x_819 : f32 = u_xlat80;
        u_xlat80 = ((x_815 * x_817) + x_819);
        let x_822 : vec4<f32> = u_xlat8;
        let x_823 : vec2<f32> = vec2<f32>(x_822.z, x_822.w);
        let x_825 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_823.x, x_823.y, x_825);
        let x_832 : vec3<f32> = txVec12;
        let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_832.xy, x_832.z);
        u_xlat6.x = x_834;
        let x_837 : f32 = u_xlat55.x;
        let x_839 : f32 = u_xlat6.x;
        let x_841 : f32 = u_xlat80;
        u_xlat30.x = ((x_837 * x_839) + x_841);
      } else {
        let x_845 : vec4<f32> = vs_TEXCOORD6;
        let x_848 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat55 = ((vec2<f32>(x_845.x, x_845.y) * vec2<f32>(x_848.z, x_848.w)) + vec2<f32>(0.5f, 0.5f));
        let x_852 : vec2<f32> = u_xlat55;
        u_xlat55 = floor(x_852);
        let x_854 : vec4<f32> = vs_TEXCOORD6;
        let x_857 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_860 : vec2<f32> = u_xlat55;
        let x_862 : vec2<f32> = ((vec2<f32>(x_854.x, x_854.y) * vec2<f32>(x_857.z, x_857.w)) + -(x_860));
        let x_863 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_865.x, x_865.x, x_865.y, x_865.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_868 : vec4<f32> = u_xlat7;
        let x_870 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_868.x, x_868.x, x_868.z, x_868.z) * vec4<f32>(x_870.x, x_870.x, x_870.z, x_870.z));
        let x_873 : vec4<f32> = u_xlat8;
        let x_877 : vec2<f32> = (vec2<f32>(x_873.y, x_873.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_878 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_878.x, x_877.x, x_878.z, x_877.y);
        let x_880 : vec4<f32> = u_xlat8;
        let x_883 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_880.x, x_880.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_883.x, x_883.y)));
        let x_887 : vec4<f32> = u_xlat6;
        let x_890 : vec2<f32> = (-(vec2<f32>(x_887.x, x_887.y)) + vec2<f32>(1.0f, 1.0f));
        let x_891 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_890.x, x_891.y, x_890.y, x_891.w);
        let x_893 : vec4<f32> = u_xlat6;
        let x_895 : vec2<f32> = min(vec2<f32>(x_893.x, x_893.y), vec2<f32>(0.0f, 0.0f));
        let x_896 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_898 : vec4<f32> = u_xlat8;
        let x_901 : vec4<f32> = u_xlat8;
        let x_904 : vec4<f32> = u_xlat7;
        let x_906 : vec2<f32> = ((-(vec2<f32>(x_898.x, x_898.y)) * vec2<f32>(x_901.x, x_901.y)) + vec2<f32>(x_904.x, x_904.z));
        let x_907 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_906.x, x_907.y, x_906.y, x_907.w);
        let x_909 : vec4<f32> = u_xlat6;
        let x_911 : vec2<f32> = max(vec2<f32>(x_909.x, x_909.y), vec2<f32>(0.0f, 0.0f));
        let x_912 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_914 : vec4<f32> = u_xlat8;
        let x_917 : vec4<f32> = u_xlat8;
        let x_920 : vec4<f32> = u_xlat7;
        let x_922 : vec2<f32> = ((-(vec2<f32>(x_914.x, x_914.y)) * vec2<f32>(x_917.x, x_917.y)) + vec2<f32>(x_920.y, x_920.w));
        let x_923 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_923.x, x_922.x, x_923.z, x_922.y);
        let x_925 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_925 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_929 : f32 = u_xlat7.y;
        u_xlat8.z = (x_929 * 0.08163200318813323975f);
        let x_933 : vec2<f32> = u_xlat56;
        let x_936 : vec2<f32> = (vec2<f32>(x_933.y, x_933.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_937 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_939 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_939.x, x_939.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_943 : f32 = u_xlat7.w;
        u_xlat10.z = (x_943 * 0.08163200318813323975f);
        let x_947 : f32 = u_xlat10.y;
        u_xlat8.x = x_947;
        let x_949 : vec4<f32> = u_xlat6;
        let x_956 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_957.x, x_956.x, x_957.z, x_956.y);
        let x_959 : vec4<f32> = u_xlat6;
        let x_963 : vec2<f32> = ((vec2<f32>(x_959.x, x_959.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_964 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_963.x, x_964.y, x_963.y, x_964.w);
        let x_967 : f32 = u_xlat56.x;
        u_xlat7.y = x_967;
        let x_970 : f32 = u_xlat9.y;
        u_xlat7.w = x_970;
        let x_972 : vec4<f32> = u_xlat7;
        let x_973 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_972 + x_973);
        let x_975 : vec4<f32> = u_xlat6;
        let x_978 : vec2<f32> = ((vec2<f32>(x_975.y, x_975.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_979 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_979.x, x_978.x, x_979.z, x_978.y);
        let x_981 : vec4<f32> = u_xlat6;
        let x_984 : vec2<f32> = ((vec2<f32>(x_981.y, x_981.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_985 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_984.x, x_985.y, x_984.y, x_985.w);
        let x_988 : f32 = u_xlat56.y;
        u_xlat9.y = x_988;
        let x_990 : vec4<f32> = u_xlat9;
        let x_991 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_990 + x_991);
        let x_993 : vec4<f32> = u_xlat7;
        let x_994 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_993 / x_994);
        let x_996 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_996 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1002 : vec4<f32> = u_xlat9;
        let x_1003 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1002 / x_1003);
        let x_1005 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1005 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1010 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1007.w, x_1007.x, x_1007.y, x_1007.z) * vec4<f32>(x_1010.x, x_1010.x, x_1010.x, x_1010.x));
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1016 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1013.x, x_1013.w, x_1013.y, x_1013.z) * vec4<f32>(x_1016.y, x_1016.y, x_1016.y, x_1016.y));
        let x_1019 : vec4<f32> = u_xlat7;
        let x_1020 : vec3<f32> = vec3<f32>(x_1019.y, x_1019.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1020.x, x_1021.y, x_1020.y, x_1020.z);
        let x_1024 : f32 = u_xlat9.x;
        u_xlat10.y = x_1024;
        let x_1026 : vec2<f32> = u_xlat55;
        let x_1029 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.y));
        let x_1035 : vec2<f32> = u_xlat55;
        let x_1037 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1040 : vec4<f32> = u_xlat10;
        let x_1042 : vec2<f32> = ((x_1035 * vec2<f32>(x_1037.x, x_1037.y)) + vec2<f32>(x_1040.w, x_1040.y));
        let x_1043 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
        let x_1046 : f32 = u_xlat10.y;
        u_xlat7.y = x_1046;
        let x_1049 : f32 = u_xlat9.z;
        u_xlat10.y = x_1049;
        let x_1051 : vec2<f32> = u_xlat55;
        let x_1054 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1057 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y) * vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y)) + vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1057.y));
        let x_1061 : vec2<f32> = u_xlat55;
        let x_1063 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1066 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1061 * vec2<f32>(x_1063.x, x_1063.y)) + vec2<f32>(x_1066.w, x_1066.y));
        let x_1070 : f32 = u_xlat10.y;
        u_xlat7.z = x_1070;
        let x_1072 : vec2<f32> = u_xlat55;
        let x_1075 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y) * vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y)) + vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.z));
        let x_1082 : f32 = u_xlat9.w;
        u_xlat10.y = x_1082;
        let x_1085 : vec2<f32> = u_xlat55;
        let x_1088 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1091.y));
        let x_1095 : vec2<f32> = u_xlat55;
        let x_1097 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat10;
        let x_1102 : vec2<f32> = ((x_1095 * vec2<f32>(x_1097.x, x_1097.y)) + vec2<f32>(x_1100.w, x_1100.y));
        let x_1103 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1102.x, x_1102.y, x_1103.z);
        let x_1106 : f32 = u_xlat10.y;
        u_xlat7.w = x_1106;
        let x_1109 : vec2<f32> = u_xlat55;
        let x_1111 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat7;
        let x_1116 : vec2<f32> = ((x_1109 * vec2<f32>(x_1111.x, x_1111.y)) + vec2<f32>(x_1114.x, x_1114.w));
        let x_1117 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat10;
        let x_1120 : vec3<f32> = vec3<f32>(x_1119.x, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1120.z);
        let x_1123 : vec2<f32> = u_xlat55;
        let x_1126 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y) * vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y)) + vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1129.y));
        let x_1133 : vec2<f32> = u_xlat55;
        let x_1135 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat59 = ((x_1133 * vec2<f32>(x_1135.x, x_1135.y)) + vec2<f32>(x_1138.w, x_1138.y));
        let x_1142 : f32 = u_xlat7.x;
        u_xlat9.x = x_1142;
        let x_1144 : vec2<f32> = u_xlat55;
        let x_1146 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat9;
        u_xlat55 = ((x_1144 * vec2<f32>(x_1146.x, x_1146.y)) + vec2<f32>(x_1149.x, x_1149.y));
        let x_1153 : vec4<f32> = u_xlat6;
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1153.x, x_1153.x, x_1153.x, x_1153.x) * x_1155);
        let x_1158 : vec4<f32> = u_xlat6;
        let x_1160 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1158.y, x_1158.y, x_1158.y, x_1158.y) * x_1160);
        let x_1163 : vec4<f32> = u_xlat6;
        let x_1165 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1163.z, x_1163.z, x_1163.z, x_1163.z) * x_1165);
        let x_1167 : vec4<f32> = u_xlat6;
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1167.w, x_1167.w, x_1167.w, x_1167.w) * x_1169);
        let x_1172 : vec4<f32> = u_xlat11;
        let x_1173 : vec2<f32> = vec2<f32>(x_1172.x, x_1172.y);
        let x_1175 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1173.x, x_1173.y, x_1175);
        let x_1182 : vec3<f32> = txVec13;
        let x_1184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1182.xy, x_1182.z);
        u_xlat7.x = x_1184;
        let x_1187 : vec4<f32> = u_xlat11;
        let x_1188 : vec2<f32> = vec2<f32>(x_1187.z, x_1187.w);
        let x_1190 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1188.x, x_1188.y, x_1190);
        let x_1198 : vec3<f32> = txVec14;
        let x_1200 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1198.xy, x_1198.z);
        u_xlat82 = x_1200;
        let x_1201 : f32 = u_xlat82;
        let x_1203 : f32 = u_xlat17.y;
        u_xlat82 = (x_1201 * x_1203);
        let x_1206 : f32 = u_xlat17.x;
        let x_1208 : f32 = u_xlat7.x;
        let x_1210 : f32 = u_xlat82;
        u_xlat7.x = ((x_1206 * x_1208) + x_1210);
        let x_1214 : vec4<f32> = u_xlat12;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec15;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1224.xy, x_1224.z);
        u_xlat82 = x_1226;
        let x_1228 : f32 = u_xlat17.z;
        let x_1229 : f32 = u_xlat82;
        let x_1232 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1228 * x_1229) + x_1232);
        let x_1236 : vec4<f32> = u_xlat14;
        let x_1237 : vec2<f32> = vec2<f32>(x_1236.x, x_1236.y);
        let x_1239 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1237.x, x_1237.y, x_1239);
        let x_1246 : vec3<f32> = txVec16;
        let x_1248 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1246.xy, x_1246.z);
        u_xlat82 = x_1248;
        let x_1250 : f32 = u_xlat17.w;
        let x_1251 : f32 = u_xlat82;
        let x_1254 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1250 * x_1251) + x_1254);
        let x_1258 : vec4<f32> = u_xlat13;
        let x_1259 : vec2<f32> = vec2<f32>(x_1258.x, x_1258.y);
        let x_1261 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
        let x_1268 : vec3<f32> = txVec17;
        let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1268.xy, x_1268.z);
        u_xlat82 = x_1270;
        let x_1272 : f32 = u_xlat18.x;
        let x_1273 : f32 = u_xlat82;
        let x_1276 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1272 * x_1273) + x_1276);
        let x_1280 : vec4<f32> = u_xlat13;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.z, x_1280.w);
        let x_1283 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec18;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1290.xy, x_1290.z);
        u_xlat82 = x_1292;
        let x_1294 : f32 = u_xlat18.y;
        let x_1295 : f32 = u_xlat82;
        let x_1298 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1294 * x_1295) + x_1298);
        let x_1302 : vec2<f32> = u_xlat62;
        let x_1304 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec19;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1311.xy, x_1311.z);
        u_xlat82 = x_1313;
        let x_1315 : f32 = u_xlat18.z;
        let x_1316 : f32 = u_xlat82;
        let x_1319 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1315 * x_1316) + x_1319);
        let x_1323 : vec4<f32> = u_xlat14;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.z, x_1323.w);
        let x_1326 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec20;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1333.xy, x_1333.z);
        u_xlat82 = x_1335;
        let x_1337 : f32 = u_xlat18.w;
        let x_1338 : f32 = u_xlat82;
        let x_1341 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1337 * x_1338) + x_1341);
        let x_1345 : vec4<f32> = u_xlat15;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.x, x_1345.y);
        let x_1348 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec21;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat82 = x_1357;
        let x_1359 : f32 = u_xlat19.x;
        let x_1360 : f32 = u_xlat82;
        let x_1363 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1359 * x_1360) + x_1363);
        let x_1367 : vec4<f32> = u_xlat15;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.z, x_1367.w);
        let x_1370 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec22;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat82 = x_1379;
        let x_1381 : f32 = u_xlat19.y;
        let x_1382 : f32 = u_xlat82;
        let x_1385 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1381 * x_1382) + x_1385);
        let x_1389 : vec3<f32> = u_xlat32;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.x, x_1389.y);
        let x_1392 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec23;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat32.x = x_1401;
        let x_1404 : f32 = u_xlat19.z;
        let x_1406 : f32 = u_xlat32.x;
        let x_1409 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1404 * x_1406) + x_1409);
        let x_1413 : vec4<f32> = u_xlat16;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.x, x_1413.y);
        let x_1416 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec24;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1423.xy, x_1423.z);
        u_xlat32.x = x_1425;
        let x_1428 : f32 = u_xlat19.w;
        let x_1430 : f32 = u_xlat32.x;
        let x_1433 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1428 * x_1430) + x_1433);
        let x_1437 : vec4<f32> = u_xlat10;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.x, x_1437.y);
        let x_1440 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec25;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat32.x = x_1449;
        let x_1452 : f32 = u_xlat6.x;
        let x_1454 : f32 = u_xlat32.x;
        let x_1457 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1452 * x_1454) + x_1457);
        let x_1461 : vec4<f32> = u_xlat10;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.z, x_1461.w);
        let x_1464 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec26;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat7.x = x_1473;
        let x_1476 : f32 = u_xlat6.y;
        let x_1478 : f32 = u_xlat7.x;
        let x_1481 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1476 * x_1478) + x_1481);
        let x_1485 : vec2<f32> = u_xlat59;
        let x_1487 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1495 : vec3<f32> = txVec27;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1495.xy, x_1495.z);
        u_xlat31 = x_1497;
        let x_1499 : f32 = u_xlat6.z;
        let x_1500 : f32 = u_xlat31;
        let x_1503 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1499 * x_1500) + x_1503);
        let x_1507 : vec2<f32> = u_xlat55;
        let x_1509 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec28;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1516.xy, x_1516.z);
        u_xlat55.x = x_1518;
        let x_1521 : f32 = u_xlat6.w;
        let x_1523 : f32 = u_xlat55.x;
        let x_1526 : f32 = u_xlat6.x;
        u_xlat30.x = ((x_1521 * x_1523) + x_1526);
      }
    }
  } else {
    let x_1531 : vec4<f32> = vs_TEXCOORD6;
    let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
    let x_1534 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
    let x_1541 : vec3<f32> = txVec29;
    let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1541.xy, x_1541.z);
    u_xlat30.x = x_1543;
  }
  let x_1546 : f32 = x_264.x_MainLightShadowParams.x;
  u_xlat55.x = (-(x_1546) + 1.0f);
  let x_1551 : f32 = u_xlat30.x;
  let x_1553 : f32 = x_264.x_MainLightShadowParams.x;
  let x_1556 : f32 = u_xlat55.x;
  u_xlat30.x = ((x_1551 * x_1553) + x_1556);
  let x_1560 : f32 = vs_TEXCOORD6.z;
  u_xlatb55 = (0.0f >= x_1560);
  let x_1564 : f32 = vs_TEXCOORD6.z;
  u_xlatb80 = (x_1564 >= 1.0f);
  let x_1566 : bool = u_xlatb80;
  let x_1567 : bool = u_xlatb55;
  u_xlatb55 = (x_1566 | x_1567);
  let x_1569 : bool = u_xlatb55;
  if (x_1569) {
    x_1570 = 1.0f;
  } else {
    let x_1575 : f32 = u_xlat30.x;
    x_1570 = x_1575;
  }
  let x_1576 : f32 = x_1570;
  u_xlat30.x = x_1576;
  let x_1578 : vec3<f32> = vs_TEXCOORD1;
  let x_1580 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1582 : vec3<f32> = (x_1578 + -(x_1580));
  let x_1583 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1583.w);
  let x_1585 : vec4<f32> = u_xlat6;
  let x_1587 : vec4<f32> = u_xlat6;
  u_xlat55.x = dot(vec3<f32>(x_1585.x, x_1585.y, x_1585.z), vec3<f32>(x_1587.x, x_1587.y, x_1587.z));
  let x_1592 : f32 = u_xlat55.x;
  let x_1594 : f32 = x_264.x_MainLightShadowParams.z;
  let x_1597 : f32 = x_264.x_MainLightShadowParams.w;
  u_xlat80 = ((x_1592 * x_1594) + x_1597);
  let x_1599 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1599, 0.0f, 1.0f);
  let x_1602 : f32 = u_xlat30.x;
  u_xlat6.x = (-(x_1602) + 1.0f);
  let x_1606 : f32 = u_xlat80;
  let x_1608 : f32 = u_xlat6.x;
  let x_1611 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1606 * x_1608) + x_1611);
  let x_1614 : vec3<f32> = u_xlat3;
  let x_1616 : vec3<f32> = u_xlat2;
  u_xlat80 = dot(-(x_1614), x_1616);
  let x_1618 : f32 = u_xlat80;
  let x_1619 : f32 = u_xlat80;
  u_xlat80 = (x_1618 + x_1619);
  let x_1621 : vec3<f32> = u_xlat2;
  let x_1622 : f32 = u_xlat80;
  let x_1626 : vec3<f32> = u_xlat3;
  let x_1628 : vec3<f32> = ((x_1621 * -(vec3<f32>(x_1622, x_1622, x_1622))) + -(x_1626));
  let x_1629 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
  let x_1631 : vec3<f32> = u_xlat2;
  let x_1632 : vec3<f32> = u_xlat3;
  u_xlat80 = dot(x_1631, x_1632);
  let x_1634 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1634, 0.0f, 1.0f);
  let x_1636 : f32 = u_xlat80;
  u_xlat80 = (-(x_1636) + 1.0f);
  let x_1639 : f32 = u_xlat80;
  let x_1640 : f32 = u_xlat80;
  u_xlat80 = (x_1639 * x_1640);
  let x_1642 : f32 = u_xlat80;
  let x_1643 : f32 = u_xlat80;
  u_xlat80 = (x_1642 * x_1643);
  let x_1646 : f32 = u_xlat75;
  u_xlat81 = ((-(x_1646) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1652 : f32 = u_xlat75;
  let x_1653 : f32 = u_xlat81;
  u_xlat75 = (x_1652 * x_1653);
  let x_1655 : f32 = u_xlat75;
  u_xlat75 = (x_1655 * 6.0f);
  let x_1666 : vec4<f32> = u_xlat6;
  let x_1668 : f32 = u_xlat75;
  let x_1669 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1666.x, x_1666.y, x_1666.z), x_1668);
  u_xlat6 = x_1669;
  let x_1671 : f32 = u_xlat6.w;
  u_xlat75 = (x_1671 + -1.0f);
  let x_1679 : f32 = x_1677.unity_SpecCube0_HDR.w;
  let x_1680 : f32 = u_xlat75;
  u_xlat75 = ((x_1679 * x_1680) + 1.0f);
  let x_1683 : f32 = u_xlat75;
  u_xlat75 = max(x_1683, 0.0f);
  let x_1685 : f32 = u_xlat75;
  u_xlat75 = log2(x_1685);
  let x_1687 : f32 = u_xlat75;
  let x_1689 : f32 = x_1677.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_1687 * x_1689);
  let x_1691 : f32 = u_xlat75;
  u_xlat75 = exp2(x_1691);
  let x_1693 : f32 = u_xlat75;
  let x_1695 : f32 = x_1677.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_1693 * x_1695);
  let x_1697 : vec4<f32> = u_xlat6;
  let x_1699 : f32 = u_xlat75;
  let x_1701 : vec3<f32> = (vec3<f32>(x_1697.x, x_1697.y, x_1697.z) * vec3<f32>(x_1699, x_1699, x_1699));
  let x_1702 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
  let x_1704 : f32 = u_xlat78;
  let x_1706 : f32 = u_xlat78;
  let x_1710 : vec2<f32> = ((vec2<f32>(x_1704, x_1704) * vec2<f32>(x_1706, x_1706)) + vec2<f32>(-1.0f, 1.0f));
  let x_1711 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1710.x, x_1710.y, x_1711.z, x_1711.w);
  let x_1714 : f32 = u_xlat7.y;
  u_xlat75 = (1.0f / x_1714);
  let x_1716 : vec4<f32> = u_xlat0;
  let x_1719 : f32 = u_xlat77;
  u_xlat32 = (-(vec3<f32>(x_1716.x, x_1716.y, x_1716.z)) + vec3<f32>(x_1719, x_1719, x_1719));
  let x_1722 : f32 = u_xlat80;
  let x_1724 : vec3<f32> = u_xlat32;
  let x_1726 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1722, x_1722, x_1722) * x_1724) + vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
  let x_1729 : f32 = u_xlat75;
  let x_1731 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1729, x_1729, x_1729) * x_1731);
  let x_1733 : vec4<f32> = u_xlat6;
  let x_1735 : vec3<f32> = u_xlat32;
  let x_1736 : vec3<f32> = (vec3<f32>(x_1733.x, x_1733.y, x_1733.z) * x_1735);
  let x_1737 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1736.x, x_1736.y, x_1736.z, x_1737.w);
  let x_1739 : vec4<f32> = u_xlat4;
  let x_1741 : vec3<f32> = u_xlat26;
  let x_1743 : vec4<f32> = u_xlat6;
  let x_1745 : vec3<f32> = ((vec3<f32>(x_1739.x, x_1739.y, x_1739.z) * x_1741) + vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
  let x_1746 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
  let x_1749 : f32 = u_xlat30.x;
  let x_1751 : f32 = x_1677.unity_LightData.z;
  u_xlat75 = (x_1749 * x_1751);
  let x_1753 : vec3<f32> = u_xlat2;
  let x_1755 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat77 = dot(x_1753, vec3<f32>(x_1755.x, x_1755.y, x_1755.z));
  let x_1758 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1758, 0.0f, 1.0f);
  let x_1760 : f32 = u_xlat75;
  let x_1761 : f32 = u_xlat77;
  u_xlat75 = (x_1760 * x_1761);
  let x_1763 : f32 = u_xlat75;
  let x_1766 : vec4<f32> = x_28.x_MainLightColor;
  let x_1768 : vec3<f32> = (vec3<f32>(x_1763, x_1763, x_1763) * vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
  let x_1769 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
  let x_1771 : vec3<f32> = u_xlat3;
  let x_1773 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat32 = (x_1771 + vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
  let x_1776 : vec3<f32> = u_xlat32;
  let x_1777 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1776, x_1777);
  let x_1779 : f32 = u_xlat75;
  u_xlat75 = max(x_1779, 1.17549435e-38f);
  let x_1782 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1782);
  let x_1784 : f32 = u_xlat75;
  let x_1786 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1784, x_1784, x_1784) * x_1786);
  let x_1788 : vec3<f32> = u_xlat2;
  let x_1789 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1788, x_1789);
  let x_1791 : f32 = u_xlat75;
  u_xlat75 = clamp(x_1791, 0.0f, 1.0f);
  let x_1794 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1796 : vec3<f32> = u_xlat32;
  u_xlat77 = dot(vec3<f32>(x_1794.x, x_1794.y, x_1794.z), x_1796);
  let x_1798 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1798, 0.0f, 1.0f);
  let x_1800 : f32 = u_xlat75;
  let x_1801 : f32 = u_xlat75;
  u_xlat75 = (x_1800 * x_1801);
  let x_1803 : f32 = u_xlat75;
  let x_1805 : f32 = u_xlat7.x;
  u_xlat75 = ((x_1803 * x_1805) + 1.00001001358032226562f);
  let x_1809 : f32 = u_xlat77;
  let x_1810 : f32 = u_xlat77;
  u_xlat77 = (x_1809 * x_1810);
  let x_1812 : f32 = u_xlat75;
  let x_1813 : f32 = u_xlat75;
  u_xlat75 = (x_1812 * x_1813);
  let x_1815 : f32 = u_xlat77;
  u_xlat77 = max(x_1815, 0.10000000149011611938f);
  let x_1818 : f32 = u_xlat75;
  let x_1819 : f32 = u_xlat77;
  u_xlat75 = (x_1818 * x_1819);
  let x_1822 : f32 = u_xlat5.x;
  let x_1823 : f32 = u_xlat75;
  u_xlat75 = (x_1822 * x_1823);
  let x_1825 : f32 = u_xlat79;
  let x_1826 : f32 = u_xlat75;
  u_xlat75 = (x_1825 / x_1826);
  let x_1828 : vec4<f32> = u_xlat0;
  let x_1830 : f32 = u_xlat75;
  let x_1833 : vec3<f32> = u_xlat26;
  u_xlat32 = ((vec3<f32>(x_1828.x, x_1828.y, x_1828.z) * vec3<f32>(x_1830, x_1830, x_1830)) + x_1833);
  let x_1837 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1839 : f32 = x_1677.unity_LightData.y;
  u_xlat75 = min(x_1837, x_1839);
  let x_1843 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_1843));
  let x_1847 : f32 = u_xlat55.x;
  let x_1850 : f32 = x_264.x_AdditionalShadowFadeParams.x;
  let x_1853 : f32 = x_264.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_1847 * x_1850) + x_1853);
  let x_1855 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1855, 0.0f, 1.0f);
  u_xlat30.x = 0.0f;
  u_xlat30.y = 0.0f;
  u_xlat30.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1867 : u32 = u_xlatu_loop_1;
    let x_1868 : u32 = u_xlatu75;
    if ((x_1867 < x_1868)) {
    } else {
      break;
    }
    let x_1871 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_1871 >> 2u);
    let x_1875 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1875 & 3u));
    let x_1878 : u32 = u_xlatu81;
    let x_1881 : vec4<f32> = x_1677.unity_LightIndices[bitcast<i32>(x_1878)];
    let x_1891 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1896 : vec4<u32> = indexable[x_1891];
    u_xlat81 = dot(x_1881, bitcast<vec4<f32>>(x_1896));
    let x_1900 : f32 = u_xlat81;
    u_xlati81 = i32(x_1900);
    let x_1902 : vec3<f32> = vs_TEXCOORD1;
    let x_1913 : i32 = u_xlati81;
    let x_1915 : vec4<f32> = x_1912.x_AdditionalLightsPosition[x_1913];
    let x_1918 : i32 = u_xlati81;
    let x_1920 : vec4<f32> = x_1912.x_AdditionalLightsPosition[x_1918];
    let x_1922 : vec3<f32> = ((-(x_1902) * vec3<f32>(x_1915.w, x_1915.w, x_1915.w)) + vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
    let x_1923 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
    let x_1926 : vec4<f32> = u_xlat8;
    let x_1928 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_1926.x, x_1926.y, x_1926.z), vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
    let x_1931 : f32 = u_xlat83;
    u_xlat83 = max(x_1931, 0.00006103515625f);
    let x_1934 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_1934);
    let x_1938 : vec4<f32> = u_xlat8;
    let x_1940 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_1938.x, x_1938.y, x_1938.z) * vec3<f32>(x_1940.x, x_1940.x, x_1940.x));
    let x_1943 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_1943);
    let x_1946 : f32 = u_xlat83;
    let x_1947 : i32 = u_xlati81;
    let x_1949 : f32 = x_1912.x_AdditionalLightsAttenuation[x_1947].x;
    u_xlat83 = (x_1946 * x_1949);
    let x_1951 : f32 = u_xlat83;
    let x_1953 : f32 = u_xlat83;
    u_xlat83 = ((-(x_1951) * x_1953) + 1.0f);
    let x_1956 : f32 = u_xlat83;
    u_xlat83 = max(x_1956, 0.0f);
    let x_1958 : f32 = u_xlat83;
    let x_1959 : f32 = u_xlat83;
    u_xlat83 = (x_1958 * x_1959);
    let x_1961 : f32 = u_xlat83;
    let x_1963 : f32 = u_xlat10.x;
    u_xlat83 = (x_1961 * x_1963);
    let x_1965 : i32 = u_xlati81;
    let x_1967 : vec4<f32> = x_1912.x_AdditionalLightsSpotDir[x_1965];
    let x_1969 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_1967.x, x_1967.y, x_1967.z), x_1969);
    let x_1973 : f32 = u_xlat10.x;
    let x_1974 : i32 = u_xlati81;
    let x_1976 : f32 = x_1912.x_AdditionalLightsAttenuation[x_1974].z;
    let x_1978 : i32 = u_xlati81;
    let x_1980 : f32 = x_1912.x_AdditionalLightsAttenuation[x_1978].w;
    u_xlat10.x = ((x_1973 * x_1976) + x_1980);
    let x_1984 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1984, 0.0f, 1.0f);
    let x_1988 : f32 = u_xlat10.x;
    let x_1990 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1988 * x_1990);
    let x_1993 : f32 = u_xlat83;
    let x_1995 : f32 = u_xlat10.x;
    u_xlat83 = (x_1993 * x_1995);
    let x_1999 : i32 = u_xlati81;
    let x_2001 : f32 = x_264.x_AdditionalShadowParams[x_1999].w;
    u_xlati10 = i32(x_2001);
    let x_2006 : i32 = u_xlati10;
    u_xlatb35.x = (x_2006 >= 0i);
    let x_2010 : bool = u_xlatb35.x;
    if (x_2010) {
      let x_2014 : i32 = u_xlati81;
      let x_2016 : f32 = x_264.x_AdditionalShadowParams[x_2014].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2016, x_2016, x_2016, x_2016))));
      let x_2023 : bool = u_xlatb35.x;
      if (x_2023) {
        let x_2026 : vec3<f32> = u_xlat34;
        let x_2029 : vec3<f32> = u_xlat34;
        let x_2032 : vec4<bool> = (abs(vec4<f32>(x_2026.z, x_2026.z, x_2026.y, x_2026.y)) >= abs(vec4<f32>(x_2029.x, x_2029.y, x_2029.x, x_2029.x)));
        u_xlatb35 = vec3<bool>(x_2032.x, x_2032.y, x_2032.z);
        let x_2035 : bool = u_xlatb35.y;
        let x_2037 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2035 & x_2037);
        let x_2041 : vec3<f32> = u_xlat34;
        let x_2044 : vec4<bool> = (-(vec4<f32>(x_2041.z, x_2041.y, x_2041.x, x_2041.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2044.x, x_2044.y, x_2044.z);
        let x_2047 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2047);
        let x_2052 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2052);
        let x_2058 : bool = u_xlatb11.z;
        u_xlat60 = select(0.0f, 1.0f, x_2058);
        let x_2061 : bool = u_xlatb35.z;
        if (x_2061) {
          let x_2066 : f32 = u_xlat11.y;
          x_2062 = x_2066;
        } else {
          let x_2068 : f32 = u_xlat60;
          x_2062 = x_2068;
        }
        let x_2069 : f32 = x_2062;
        u_xlat60 = x_2069;
        let x_2072 : bool = u_xlatb35.x;
        if (x_2072) {
          let x_2077 : f32 = u_xlat11.x;
          x_2073 = x_2077;
        } else {
          let x_2079 : f32 = u_xlat60;
          x_2073 = x_2079;
        }
        let x_2080 : f32 = x_2073;
        u_xlat35 = x_2080;
        let x_2081 : i32 = u_xlati81;
        let x_2083 : f32 = x_264.x_AdditionalShadowParams[x_2081].w;
        u_xlat60 = trunc(x_2083);
        let x_2085 : f32 = u_xlat35;
        let x_2086 : f32 = u_xlat60;
        u_xlat35 = (x_2085 + x_2086);
        let x_2088 : f32 = u_xlat35;
        u_xlati10 = i32(x_2088);
      }
      let x_2090 : i32 = u_xlati10;
      u_xlati10 = (x_2090 << bitcast<u32>(2i));
      let x_2092 : vec3<f32> = vs_TEXCOORD1;
      let x_2095 : i32 = u_xlati10;
      let x_2098 : i32 = u_xlati10;
      let x_2102 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_2095 + 1i) / 4i)][((x_2098 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2092.y, x_2092.y, x_2092.y, x_2092.y) * x_2102);
      let x_2104 : i32 = u_xlati10;
      let x_2106 : i32 = u_xlati10;
      let x_2109 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[(x_2104 / 4i)][(x_2106 % 4i)];
      let x_2110 : vec3<f32> = vs_TEXCOORD1;
      let x_2113 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2109 * vec4<f32>(x_2110.x, x_2110.x, x_2110.x, x_2110.x)) + x_2113);
      let x_2115 : i32 = u_xlati10;
      let x_2118 : i32 = u_xlati10;
      let x_2122 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_2115 + 2i) / 4i)][((x_2118 + 2i) % 4i)];
      let x_2123 : vec3<f32> = vs_TEXCOORD1;
      let x_2126 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2122 * vec4<f32>(x_2123.z, x_2123.z, x_2123.z, x_2123.z)) + x_2126);
      let x_2128 : vec4<f32> = u_xlat11;
      let x_2129 : i32 = u_xlati10;
      let x_2132 : i32 = u_xlati10;
      let x_2136 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_2129 + 3i) / 4i)][((x_2132 + 3i) % 4i)];
      u_xlat10 = (x_2128 + x_2136);
      let x_2138 : vec4<f32> = u_xlat10;
      let x_2140 : vec4<f32> = u_xlat10;
      let x_2142 : vec3<f32> = (vec3<f32>(x_2138.x, x_2138.y, x_2138.z) / vec3<f32>(x_2140.w, x_2140.w, x_2140.w));
      let x_2143 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2142.x, x_2142.y, x_2142.z, x_2143.w);
      let x_2146 : i32 = u_xlati81;
      let x_2148 : f32 = x_264.x_AdditionalShadowParams[x_2146].y;
      u_xlatb85 = (0.0f < x_2148);
      let x_2150 : bool = u_xlatb85;
      if (x_2150) {
        let x_2153 : i32 = u_xlati81;
        let x_2155 : f32 = x_264.x_AdditionalShadowParams[x_2153].y;
        u_xlatb85 = (1.0f == x_2155);
        let x_2157 : bool = u_xlatb85;
        if (x_2157) {
          let x_2160 : vec4<f32> = u_xlat10;
          let x_2164 : vec4<f32> = x_264.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2160.x, x_2160.y, x_2160.x, x_2160.y) + x_2164);
          let x_2167 : vec4<f32> = u_xlat11;
          let x_2168 : vec2<f32> = vec2<f32>(x_2167.x, x_2167.y);
          let x_2170 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2168.x, x_2168.y, x_2170);
          let x_2178 : vec3<f32> = txVec30;
          let x_2180 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2178.xy, x_2178.z);
          u_xlat12.x = x_2180;
          let x_2183 : vec4<f32> = u_xlat11;
          let x_2184 : vec2<f32> = vec2<f32>(x_2183.z, x_2183.w);
          let x_2186 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2184.x, x_2184.y, x_2186);
          let x_2193 : vec3<f32> = txVec31;
          let x_2195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2193.xy, x_2193.z);
          u_xlat12.y = x_2195;
          let x_2197 : vec4<f32> = u_xlat10;
          let x_2201 : vec4<f32> = x_264.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2197.x, x_2197.y, x_2197.x, x_2197.y) + x_2201);
          let x_2204 : vec4<f32> = u_xlat11;
          let x_2205 : vec2<f32> = vec2<f32>(x_2204.x, x_2204.y);
          let x_2207 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2205.x, x_2205.y, x_2207);
          let x_2214 : vec3<f32> = txVec32;
          let x_2216 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2214.xy, x_2214.z);
          u_xlat12.z = x_2216;
          let x_2219 : vec4<f32> = u_xlat11;
          let x_2220 : vec2<f32> = vec2<f32>(x_2219.z, x_2219.w);
          let x_2222 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2220.x, x_2220.y, x_2222);
          let x_2229 : vec3<f32> = txVec33;
          let x_2231 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2229.xy, x_2229.z);
          u_xlat12.w = x_2231;
          let x_2234 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2234, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2237 : i32 = u_xlati81;
          let x_2239 : f32 = x_264.x_AdditionalShadowParams[x_2237].y;
          u_xlatb11.x = (2.0f == x_2239);
          let x_2243 : bool = u_xlatb11.x;
          if (x_2243) {
            let x_2246 : vec4<f32> = u_xlat10;
            let x_2250 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2253 : vec2<f32> = ((vec2<f32>(x_2246.x, x_2246.y) * vec2<f32>(x_2250.z, x_2250.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2254 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2253.x, x_2253.y, x_2254.z, x_2254.w);
            let x_2256 : vec4<f32> = u_xlat11;
            let x_2258 : vec2<f32> = floor(vec2<f32>(x_2256.x, x_2256.y));
            let x_2259 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2258.x, x_2258.y, x_2259.z, x_2259.w);
            let x_2262 : vec4<f32> = u_xlat10;
            let x_2265 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2268 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2262.x, x_2262.y) * vec2<f32>(x_2265.z, x_2265.w)) + -(vec2<f32>(x_2268.x, x_2268.y)));
            let x_2272 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2272.x, x_2272.x, x_2272.y, x_2272.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2275 : vec4<f32> = u_xlat12;
            let x_2277 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2275.x, x_2275.x, x_2275.z, x_2275.z) * vec4<f32>(x_2277.x, x_2277.x, x_2277.z, x_2277.z));
            let x_2280 : vec4<f32> = u_xlat13;
            let x_2282 : vec2<f32> = (vec2<f32>(x_2280.y, x_2280.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2283 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2282.x, x_2283.y, x_2282.y, x_2283.w);
            let x_2285 : vec4<f32> = u_xlat13;
            let x_2288 : vec2<f32> = u_xlat61;
            let x_2290 : vec2<f32> = ((vec2<f32>(x_2285.x, x_2285.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2288));
            let x_2291 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2290.x, x_2290.y, x_2291.z, x_2291.w);
            let x_2294 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2294) + vec2<f32>(1.0f, 1.0f));
            let x_2297 : vec2<f32> = u_xlat61;
            let x_2298 : vec2<f32> = min(x_2297, vec2<f32>(0.0f, 0.0f));
            let x_2299 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2298.x, x_2298.y, x_2299.z, x_2299.w);
            let x_2301 : vec4<f32> = u_xlat14;
            let x_2304 : vec4<f32> = u_xlat14;
            let x_2307 : vec2<f32> = u_xlat63;
            let x_2308 : vec2<f32> = ((-(vec2<f32>(x_2301.x, x_2301.y)) * vec2<f32>(x_2304.x, x_2304.y)) + x_2307);
            let x_2309 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2308.x, x_2308.y, x_2309.z, x_2309.w);
            let x_2311 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2311, vec2<f32>(0.0f, 0.0f));
            let x_2313 : vec2<f32> = u_xlat61;
            let x_2315 : vec2<f32> = u_xlat61;
            let x_2317 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2313) * x_2315) + vec2<f32>(x_2317.y, x_2317.w));
            let x_2320 : vec4<f32> = u_xlat14;
            let x_2322 : vec2<f32> = (vec2<f32>(x_2320.x, x_2320.y) + vec2<f32>(1.0f, 1.0f));
            let x_2323 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2322.x, x_2322.y, x_2323.z, x_2323.w);
            let x_2325 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2325 + vec2<f32>(1.0f, 1.0f));
            let x_2327 : vec4<f32> = u_xlat13;
            let x_2329 : vec2<f32> = (vec2<f32>(x_2327.x, x_2327.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2330 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2329.x, x_2329.y, x_2330.z, x_2330.w);
            let x_2332 : vec2<f32> = u_xlat63;
            let x_2333 : vec2<f32> = (x_2332 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2334 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2333.x, x_2333.y, x_2334.z, x_2334.w);
            let x_2336 : vec4<f32> = u_xlat14;
            let x_2338 : vec2<f32> = (vec2<f32>(x_2336.x, x_2336.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2339 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2338.x, x_2338.y, x_2339.z, x_2339.w);
            let x_2341 : vec2<f32> = u_xlat61;
            let x_2342 : vec2<f32> = (x_2341 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2343 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2342.x, x_2342.y, x_2343.z, x_2343.w);
            let x_2345 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2345.y, x_2345.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2349 : f32 = u_xlat14.x;
            u_xlat15.z = x_2349;
            let x_2352 : f32 = u_xlat61.x;
            u_xlat15.w = x_2352;
            let x_2355 : f32 = u_xlat16.x;
            u_xlat13.z = x_2355;
            let x_2358 : f32 = u_xlat12.x;
            u_xlat13.w = x_2358;
            let x_2360 : vec4<f32> = u_xlat13;
            let x_2362 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2360.z, x_2360.w, x_2360.x, x_2360.z) + vec4<f32>(x_2362.z, x_2362.w, x_2362.x, x_2362.z));
            let x_2366 : f32 = u_xlat15.y;
            u_xlat14.z = x_2366;
            let x_2369 : f32 = u_xlat61.y;
            u_xlat14.w = x_2369;
            let x_2372 : f32 = u_xlat13.y;
            u_xlat16.z = x_2372;
            let x_2375 : f32 = u_xlat12.z;
            u_xlat16.w = x_2375;
            let x_2377 : vec4<f32> = u_xlat14;
            let x_2379 : vec4<f32> = u_xlat16;
            let x_2381 : vec3<f32> = (vec3<f32>(x_2377.z, x_2377.y, x_2377.w) + vec3<f32>(x_2379.z, x_2379.y, x_2379.w));
            let x_2382 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
            let x_2384 : vec4<f32> = u_xlat13;
            let x_2386 : vec4<f32> = u_xlat17;
            let x_2388 : vec3<f32> = (vec3<f32>(x_2384.x, x_2384.z, x_2384.w) / vec3<f32>(x_2386.z, x_2386.w, x_2386.y));
            let x_2389 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2388.x, x_2388.y, x_2388.z, x_2389.w);
            let x_2391 : vec4<f32> = u_xlat13;
            let x_2393 : vec3<f32> = (vec3<f32>(x_2391.x, x_2391.y, x_2391.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2394 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2393.x, x_2393.y, x_2393.z, x_2394.w);
            let x_2396 : vec4<f32> = u_xlat16;
            let x_2398 : vec4<f32> = u_xlat12;
            let x_2400 : vec3<f32> = (vec3<f32>(x_2396.z, x_2396.y, x_2396.w) / vec3<f32>(x_2398.x, x_2398.y, x_2398.z));
            let x_2401 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2400.x, x_2400.y, x_2400.z, x_2401.w);
            let x_2403 : vec4<f32> = u_xlat14;
            let x_2405 : vec3<f32> = (vec3<f32>(x_2403.x, x_2403.y, x_2403.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2406 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
            let x_2408 : vec4<f32> = u_xlat13;
            let x_2411 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2413 : vec3<f32> = (vec3<f32>(x_2408.y, x_2408.x, x_2408.z) * vec3<f32>(x_2411.x, x_2411.x, x_2411.x));
            let x_2414 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2413.x, x_2413.y, x_2413.z, x_2414.w);
            let x_2416 : vec4<f32> = u_xlat14;
            let x_2419 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2421 : vec3<f32> = (vec3<f32>(x_2416.x, x_2416.y, x_2416.z) * vec3<f32>(x_2419.y, x_2419.y, x_2419.y));
            let x_2422 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2421.x, x_2421.y, x_2421.z, x_2422.w);
            let x_2425 : f32 = u_xlat14.x;
            u_xlat13.w = x_2425;
            let x_2427 : vec4<f32> = u_xlat11;
            let x_2430 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2433 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2427.x, x_2427.y, x_2427.x, x_2427.y) * vec4<f32>(x_2430.x, x_2430.y, x_2430.x, x_2430.y)) + vec4<f32>(x_2433.y, x_2433.w, x_2433.x, x_2433.w));
            let x_2436 : vec4<f32> = u_xlat11;
            let x_2439 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2442 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2436.x, x_2436.y) * vec2<f32>(x_2439.x, x_2439.y)) + vec2<f32>(x_2442.z, x_2442.w));
            let x_2446 : f32 = u_xlat13.y;
            u_xlat14.w = x_2446;
            let x_2448 : vec4<f32> = u_xlat14;
            let x_2449 : vec2<f32> = vec2<f32>(x_2448.y, x_2448.z);
            let x_2450 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2450.x, x_2449.x, x_2450.z, x_2449.y);
            let x_2452 : vec4<f32> = u_xlat11;
            let x_2455 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2458 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2452.x, x_2452.y, x_2452.x, x_2452.y) * vec4<f32>(x_2455.x, x_2455.y, x_2455.x, x_2455.y)) + vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2458.y));
            let x_2461 : vec4<f32> = u_xlat11;
            let x_2464 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2467 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2461.x, x_2461.y, x_2461.x, x_2461.y) * vec4<f32>(x_2464.x, x_2464.y, x_2464.x, x_2464.y)) + vec4<f32>(x_2467.w, x_2467.y, x_2467.w, x_2467.z));
            let x_2470 : vec4<f32> = u_xlat11;
            let x_2473 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2476 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2470.x, x_2470.y, x_2470.x, x_2470.y) * vec4<f32>(x_2473.x, x_2473.y, x_2473.x, x_2473.y)) + vec4<f32>(x_2476.x, x_2476.w, x_2476.z, x_2476.w));
            let x_2479 : vec4<f32> = u_xlat12;
            let x_2481 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2479.x, x_2479.x, x_2479.x, x_2479.y) * vec4<f32>(x_2481.z, x_2481.w, x_2481.y, x_2481.z));
            let x_2484 : vec4<f32> = u_xlat12;
            let x_2486 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2484.y, x_2484.y, x_2484.z, x_2484.z) * x_2486);
            let x_2489 : f32 = u_xlat12.z;
            let x_2491 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2489 * x_2491);
            let x_2495 : vec4<f32> = u_xlat15;
            let x_2496 : vec2<f32> = vec2<f32>(x_2495.x, x_2495.y);
            let x_2498 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2496.x, x_2496.y, x_2498);
            let x_2506 : vec3<f32> = txVec34;
            let x_2508 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2506.xy, x_2506.z);
            u_xlat36 = x_2508;
            let x_2510 : vec4<f32> = u_xlat15;
            let x_2511 : vec2<f32> = vec2<f32>(x_2510.z, x_2510.w);
            let x_2513 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2511.x, x_2511.y, x_2513);
            let x_2520 : vec3<f32> = txVec35;
            let x_2522 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2520.xy, x_2520.z);
            u_xlat12.x = x_2522;
            let x_2525 : f32 = u_xlat12.x;
            let x_2527 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2525 * x_2527);
            let x_2531 : f32 = u_xlat18.x;
            let x_2532 : f32 = u_xlat36;
            let x_2535 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2531 * x_2532) + x_2535);
            let x_2538 : vec2<f32> = u_xlat61;
            let x_2540 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2538.x, x_2538.y, x_2540);
            let x_2547 : vec3<f32> = txVec36;
            let x_2549 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2547.xy, x_2547.z);
            u_xlat61.x = x_2549;
            let x_2552 : f32 = u_xlat18.z;
            let x_2554 : f32 = u_xlat61.x;
            let x_2556 : f32 = u_xlat36;
            u_xlat36 = ((x_2552 * x_2554) + x_2556);
            let x_2559 : vec4<f32> = u_xlat14;
            let x_2560 : vec2<f32> = vec2<f32>(x_2559.x, x_2559.y);
            let x_2562 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2560.x, x_2560.y, x_2562);
            let x_2569 : vec3<f32> = txVec37;
            let x_2571 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2569.xy, x_2569.z);
            u_xlat61.x = x_2571;
            let x_2574 : f32 = u_xlat18.w;
            let x_2576 : f32 = u_xlat61.x;
            let x_2578 : f32 = u_xlat36;
            u_xlat36 = ((x_2574 * x_2576) + x_2578);
            let x_2581 : vec4<f32> = u_xlat16;
            let x_2582 : vec2<f32> = vec2<f32>(x_2581.x, x_2581.y);
            let x_2584 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2582.x, x_2582.y, x_2584);
            let x_2591 : vec3<f32> = txVec38;
            let x_2593 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2591.xy, x_2591.z);
            u_xlat61.x = x_2593;
            let x_2596 : f32 = u_xlat19.x;
            let x_2598 : f32 = u_xlat61.x;
            let x_2600 : f32 = u_xlat36;
            u_xlat36 = ((x_2596 * x_2598) + x_2600);
            let x_2603 : vec4<f32> = u_xlat16;
            let x_2604 : vec2<f32> = vec2<f32>(x_2603.z, x_2603.w);
            let x_2606 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2604.x, x_2604.y, x_2606);
            let x_2613 : vec3<f32> = txVec39;
            let x_2615 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2613.xy, x_2613.z);
            u_xlat61.x = x_2615;
            let x_2618 : f32 = u_xlat19.y;
            let x_2620 : f32 = u_xlat61.x;
            let x_2622 : f32 = u_xlat36;
            u_xlat36 = ((x_2618 * x_2620) + x_2622);
            let x_2625 : vec4<f32> = u_xlat14;
            let x_2626 : vec2<f32> = vec2<f32>(x_2625.z, x_2625.w);
            let x_2628 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2626.x, x_2626.y, x_2628);
            let x_2635 : vec3<f32> = txVec40;
            let x_2637 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2635.xy, x_2635.z);
            u_xlat61.x = x_2637;
            let x_2640 : f32 = u_xlat19.z;
            let x_2642 : f32 = u_xlat61.x;
            let x_2644 : f32 = u_xlat36;
            u_xlat36 = ((x_2640 * x_2642) + x_2644);
            let x_2647 : vec4<f32> = u_xlat13;
            let x_2648 : vec2<f32> = vec2<f32>(x_2647.x, x_2647.y);
            let x_2650 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2648.x, x_2648.y, x_2650);
            let x_2657 : vec3<f32> = txVec41;
            let x_2659 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2657.xy, x_2657.z);
            u_xlat61.x = x_2659;
            let x_2662 : f32 = u_xlat19.w;
            let x_2664 : f32 = u_xlat61.x;
            let x_2666 : f32 = u_xlat36;
            u_xlat36 = ((x_2662 * x_2664) + x_2666);
            let x_2669 : vec4<f32> = u_xlat13;
            let x_2670 : vec2<f32> = vec2<f32>(x_2669.z, x_2669.w);
            let x_2672 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2670.x, x_2670.y, x_2672);
            let x_2679 : vec3<f32> = txVec42;
            let x_2681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2679.xy, x_2679.z);
            u_xlat61.x = x_2681;
            let x_2684 : f32 = u_xlat11.x;
            let x_2686 : f32 = u_xlat61.x;
            let x_2688 : f32 = u_xlat36;
            u_xlat85 = ((x_2684 * x_2686) + x_2688);
          } else {
            let x_2691 : vec4<f32> = u_xlat10;
            let x_2694 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2697 : vec2<f32> = ((vec2<f32>(x_2691.x, x_2691.y) * vec2<f32>(x_2694.z, x_2694.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2698 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2697.x, x_2697.y, x_2698.z, x_2698.w);
            let x_2700 : vec4<f32> = u_xlat11;
            let x_2702 : vec2<f32> = floor(vec2<f32>(x_2700.x, x_2700.y));
            let x_2703 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2702.x, x_2702.y, x_2703.z, x_2703.w);
            let x_2705 : vec4<f32> = u_xlat10;
            let x_2708 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2711 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2705.x, x_2705.y) * vec2<f32>(x_2708.z, x_2708.w)) + -(vec2<f32>(x_2711.x, x_2711.y)));
            let x_2715 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2715.x, x_2715.x, x_2715.y, x_2715.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2718 : vec4<f32> = u_xlat12;
            let x_2720 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2718.x, x_2718.x, x_2718.z, x_2718.z) * vec4<f32>(x_2720.x, x_2720.x, x_2720.z, x_2720.z));
            let x_2723 : vec4<f32> = u_xlat13;
            let x_2725 : vec2<f32> = (vec2<f32>(x_2723.y, x_2723.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2726 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2726.x, x_2725.x, x_2726.z, x_2725.y);
            let x_2728 : vec4<f32> = u_xlat13;
            let x_2731 : vec2<f32> = u_xlat61;
            let x_2733 : vec2<f32> = ((vec2<f32>(x_2728.x, x_2728.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2731));
            let x_2734 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2733.x, x_2734.y, x_2733.y, x_2734.w);
            let x_2736 : vec2<f32> = u_xlat61;
            let x_2738 : vec2<f32> = (-(x_2736) + vec2<f32>(1.0f, 1.0f));
            let x_2739 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2738.x, x_2738.y, x_2739.z, x_2739.w);
            let x_2741 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2741, vec2<f32>(0.0f, 0.0f));
            let x_2743 : vec2<f32> = u_xlat63;
            let x_2745 : vec2<f32> = u_xlat63;
            let x_2747 : vec4<f32> = u_xlat13;
            let x_2749 : vec2<f32> = ((-(x_2743) * x_2745) + vec2<f32>(x_2747.x, x_2747.y));
            let x_2750 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2749.x, x_2749.y, x_2750.z, x_2750.w);
            let x_2752 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2752, vec2<f32>(0.0f, 0.0f));
            let x_2755 : vec2<f32> = u_xlat63;
            let x_2757 : vec2<f32> = u_xlat63;
            let x_2759 : vec4<f32> = u_xlat12;
            let x_2761 : vec2<f32> = ((-(x_2755) * x_2757) + vec2<f32>(x_2759.y, x_2759.w));
            let x_2762 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2761.x, x_2762.y, x_2761.y);
            let x_2764 : vec4<f32> = u_xlat13;
            let x_2767 : vec2<f32> = (vec2<f32>(x_2764.x, x_2764.y) + vec2<f32>(2.0f, 2.0f));
            let x_2768 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2767.x, x_2767.y, x_2768.z, x_2768.w);
            let x_2770 : vec3<f32> = u_xlat37;
            let x_2772 : vec2<f32> = (vec2<f32>(x_2770.x, x_2770.z) + vec2<f32>(2.0f, 2.0f));
            let x_2773 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2773.x, x_2772.x, x_2773.z, x_2772.y);
            let x_2776 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2776 * 0.08163200318813323975f);
            let x_2779 : vec4<f32> = u_xlat12;
            let x_2782 : vec3<f32> = (vec3<f32>(x_2779.z, x_2779.x, x_2779.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2783 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2782.x, x_2782.y, x_2782.z, x_2783.w);
            let x_2785 : vec4<f32> = u_xlat13;
            let x_2787 : vec2<f32> = (vec2<f32>(x_2785.x, x_2785.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2788 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2787.x, x_2787.y, x_2788.z, x_2788.w);
            let x_2791 : f32 = u_xlat16.y;
            u_xlat15.x = x_2791;
            let x_2793 : vec2<f32> = u_xlat61;
            let x_2796 : vec2<f32> = ((vec2<f32>(x_2793.x, x_2793.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2797 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2797.x, x_2796.x, x_2797.z, x_2796.y);
            let x_2799 : vec2<f32> = u_xlat61;
            let x_2802 : vec2<f32> = ((vec2<f32>(x_2799.x, x_2799.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2803 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2802.x, x_2803.y, x_2802.y, x_2803.w);
            let x_2806 : f32 = u_xlat12.x;
            u_xlat13.y = x_2806;
            let x_2809 : f32 = u_xlat14.y;
            u_xlat13.w = x_2809;
            let x_2811 : vec4<f32> = u_xlat13;
            let x_2812 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2811 + x_2812);
            let x_2814 : vec2<f32> = u_xlat61;
            let x_2817 : vec2<f32> = ((vec2<f32>(x_2814.y, x_2814.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2818 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2818.x, x_2817.x, x_2818.z, x_2817.y);
            let x_2820 : vec2<f32> = u_xlat61;
            let x_2823 : vec2<f32> = ((vec2<f32>(x_2820.y, x_2820.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2824 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2823.x, x_2824.y, x_2823.y, x_2824.w);
            let x_2827 : f32 = u_xlat12.y;
            u_xlat14.y = x_2827;
            let x_2829 : vec4<f32> = u_xlat14;
            let x_2830 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_2829 + x_2830);
            let x_2832 : vec4<f32> = u_xlat13;
            let x_2833 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_2832 / x_2833);
            let x_2835 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2835 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2837 : vec4<f32> = u_xlat14;
            let x_2838 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_2837 / x_2838);
            let x_2840 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2840 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2842 : vec4<f32> = u_xlat13;
            let x_2845 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_2842.w, x_2842.x, x_2842.y, x_2842.z) * vec4<f32>(x_2845.x, x_2845.x, x_2845.x, x_2845.x));
            let x_2848 : vec4<f32> = u_xlat14;
            let x_2851 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2848.x, x_2848.w, x_2848.y, x_2848.z) * vec4<f32>(x_2851.y, x_2851.y, x_2851.y, x_2851.y));
            let x_2854 : vec4<f32> = u_xlat13;
            let x_2855 : vec3<f32> = vec3<f32>(x_2854.y, x_2854.z, x_2854.w);
            let x_2856 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2855.x, x_2856.y, x_2855.y, x_2855.z);
            let x_2859 : f32 = u_xlat14.x;
            u_xlat16.y = x_2859;
            let x_2861 : vec4<f32> = u_xlat11;
            let x_2864 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2867 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_2861.x, x_2861.y, x_2861.x, x_2861.y) * vec4<f32>(x_2864.x, x_2864.y, x_2864.x, x_2864.y)) + vec4<f32>(x_2867.x, x_2867.y, x_2867.z, x_2867.y));
            let x_2870 : vec4<f32> = u_xlat11;
            let x_2873 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2876 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_2870.x, x_2870.y) * vec2<f32>(x_2873.x, x_2873.y)) + vec2<f32>(x_2876.w, x_2876.y));
            let x_2880 : f32 = u_xlat16.y;
            u_xlat13.y = x_2880;
            let x_2883 : f32 = u_xlat14.z;
            u_xlat16.y = x_2883;
            let x_2885 : vec4<f32> = u_xlat11;
            let x_2888 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2891 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_2885.x, x_2885.y, x_2885.x, x_2885.y) * vec4<f32>(x_2888.x, x_2888.y, x_2888.x, x_2888.y)) + vec4<f32>(x_2891.x, x_2891.y, x_2891.z, x_2891.y));
            let x_2894 : vec4<f32> = u_xlat11;
            let x_2897 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2900 : vec4<f32> = u_xlat16;
            let x_2902 : vec2<f32> = ((vec2<f32>(x_2894.x, x_2894.y) * vec2<f32>(x_2897.x, x_2897.y)) + vec2<f32>(x_2900.w, x_2900.y));
            let x_2903 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_2902.x, x_2902.y, x_2903.z, x_2903.w);
            let x_2906 : f32 = u_xlat16.y;
            u_xlat13.z = x_2906;
            let x_2909 : vec4<f32> = u_xlat11;
            let x_2912 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2915 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_2909.x, x_2909.y, x_2909.x, x_2909.y) * vec4<f32>(x_2912.x, x_2912.y, x_2912.x, x_2912.y)) + vec4<f32>(x_2915.x, x_2915.y, x_2915.x, x_2915.z));
            let x_2919 : f32 = u_xlat14.w;
            u_xlat16.y = x_2919;
            let x_2922 : vec4<f32> = u_xlat11;
            let x_2925 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2928 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_2922.x, x_2922.y, x_2922.x, x_2922.y) * vec4<f32>(x_2925.x, x_2925.y, x_2925.x, x_2925.y)) + vec4<f32>(x_2928.x, x_2928.y, x_2928.z, x_2928.y));
            let x_2932 : vec4<f32> = u_xlat11;
            let x_2935 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2938 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_2932.x, x_2932.y) * vec2<f32>(x_2935.x, x_2935.y)) + vec2<f32>(x_2938.w, x_2938.y));
            let x_2942 : f32 = u_xlat16.y;
            u_xlat13.w = x_2942;
            let x_2945 : vec4<f32> = u_xlat11;
            let x_2948 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2951 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_2945.x, x_2945.y) * vec2<f32>(x_2948.x, x_2948.y)) + vec2<f32>(x_2951.x, x_2951.w));
            let x_2954 : vec4<f32> = u_xlat16;
            let x_2955 : vec3<f32> = vec3<f32>(x_2954.x, x_2954.z, x_2954.w);
            let x_2956 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2955.x, x_2956.y, x_2955.y, x_2955.z);
            let x_2958 : vec4<f32> = u_xlat11;
            let x_2961 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2964 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2958.x, x_2958.y, x_2958.x, x_2958.y) * vec4<f32>(x_2961.x, x_2961.y, x_2961.x, x_2961.y)) + vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2964.y));
            let x_2968 : vec4<f32> = u_xlat11;
            let x_2971 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2974 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2968.x, x_2968.y) * vec2<f32>(x_2971.x, x_2971.y)) + vec2<f32>(x_2974.w, x_2974.y));
            let x_2978 : f32 = u_xlat13.x;
            u_xlat14.x = x_2978;
            let x_2980 : vec4<f32> = u_xlat11;
            let x_2983 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2986 : vec4<f32> = u_xlat14;
            let x_2988 : vec2<f32> = ((vec2<f32>(x_2980.x, x_2980.y) * vec2<f32>(x_2983.x, x_2983.y)) + vec2<f32>(x_2986.x, x_2986.y));
            let x_2989 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2988.x, x_2988.y, x_2989.z, x_2989.w);
            let x_2992 : vec4<f32> = u_xlat12;
            let x_2994 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_2992.x, x_2992.x, x_2992.x, x_2992.x) * x_2994);
            let x_2997 : vec4<f32> = u_xlat12;
            let x_2999 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_2997.y, x_2997.y, x_2997.y, x_2997.y) * x_2999);
            let x_3002 : vec4<f32> = u_xlat12;
            let x_3004 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3002.z, x_3002.z, x_3002.z, x_3002.z) * x_3004);
            let x_3006 : vec4<f32> = u_xlat12;
            let x_3008 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3006.w, x_3006.w, x_3006.w, x_3006.w) * x_3008);
            let x_3011 : vec4<f32> = u_xlat17;
            let x_3012 : vec2<f32> = vec2<f32>(x_3011.x, x_3011.y);
            let x_3014 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3012.x, x_3012.y, x_3014);
            let x_3021 : vec3<f32> = txVec43;
            let x_3023 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3021.xy, x_3021.z);
            u_xlat13.x = x_3023;
            let x_3026 : vec4<f32> = u_xlat17;
            let x_3027 : vec2<f32> = vec2<f32>(x_3026.z, x_3026.w);
            let x_3029 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3027.x, x_3027.y, x_3029);
            let x_3037 : vec3<f32> = txVec44;
            let x_3039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3037.xy, x_3037.z);
            u_xlat88 = x_3039;
            let x_3040 : f32 = u_xlat88;
            let x_3042 : f32 = u_xlat22.y;
            u_xlat88 = (x_3040 * x_3042);
            let x_3045 : f32 = u_xlat22.x;
            let x_3047 : f32 = u_xlat13.x;
            let x_3049 : f32 = u_xlat88;
            u_xlat13.x = ((x_3045 * x_3047) + x_3049);
            let x_3053 : vec2<f32> = u_xlat61;
            let x_3055 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3053.x, x_3053.y, x_3055);
            let x_3062 : vec3<f32> = txVec45;
            let x_3064 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3062.xy, x_3062.z);
            u_xlat61.x = x_3064;
            let x_3067 : f32 = u_xlat22.z;
            let x_3069 : f32 = u_xlat61.x;
            let x_3072 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3067 * x_3069) + x_3072);
            let x_3076 : vec4<f32> = u_xlat20;
            let x_3077 : vec2<f32> = vec2<f32>(x_3076.x, x_3076.y);
            let x_3079 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3077.x, x_3077.y, x_3079);
            let x_3087 : vec3<f32> = txVec46;
            let x_3089 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3087.xy, x_3087.z);
            u_xlat86 = x_3089;
            let x_3091 : f32 = u_xlat22.w;
            let x_3092 : f32 = u_xlat86;
            let x_3095 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3091 * x_3092) + x_3095);
            let x_3099 : vec4<f32> = u_xlat18;
            let x_3100 : vec2<f32> = vec2<f32>(x_3099.x, x_3099.y);
            let x_3102 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3100.x, x_3100.y, x_3102);
            let x_3109 : vec3<f32> = txVec47;
            let x_3111 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3109.xy, x_3109.z);
            u_xlat86 = x_3111;
            let x_3113 : f32 = u_xlat23.x;
            let x_3114 : f32 = u_xlat86;
            let x_3117 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3113 * x_3114) + x_3117);
            let x_3121 : vec4<f32> = u_xlat18;
            let x_3122 : vec2<f32> = vec2<f32>(x_3121.z, x_3121.w);
            let x_3124 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3122.x, x_3122.y, x_3124);
            let x_3131 : vec3<f32> = txVec48;
            let x_3133 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3131.xy, x_3131.z);
            u_xlat86 = x_3133;
            let x_3135 : f32 = u_xlat23.y;
            let x_3136 : f32 = u_xlat86;
            let x_3139 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3135 * x_3136) + x_3139);
            let x_3143 : vec4<f32> = u_xlat19;
            let x_3144 : vec2<f32> = vec2<f32>(x_3143.x, x_3143.y);
            let x_3146 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3144.x, x_3144.y, x_3146);
            let x_3153 : vec3<f32> = txVec49;
            let x_3155 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3153.xy, x_3153.z);
            u_xlat86 = x_3155;
            let x_3157 : f32 = u_xlat23.z;
            let x_3158 : f32 = u_xlat86;
            let x_3161 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3157 * x_3158) + x_3161);
            let x_3165 : vec4<f32> = u_xlat20;
            let x_3166 : vec2<f32> = vec2<f32>(x_3165.z, x_3165.w);
            let x_3168 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3166.x, x_3166.y, x_3168);
            let x_3175 : vec3<f32> = txVec50;
            let x_3177 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3175.xy, x_3175.z);
            u_xlat86 = x_3177;
            let x_3179 : f32 = u_xlat23.w;
            let x_3180 : f32 = u_xlat86;
            let x_3183 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3179 * x_3180) + x_3183);
            let x_3187 : vec4<f32> = u_xlat21;
            let x_3188 : vec2<f32> = vec2<f32>(x_3187.x, x_3187.y);
            let x_3190 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3188.x, x_3188.y, x_3190);
            let x_3197 : vec3<f32> = txVec51;
            let x_3199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3197.xy, x_3197.z);
            u_xlat86 = x_3199;
            let x_3201 : f32 = u_xlat24.x;
            let x_3202 : f32 = u_xlat86;
            let x_3205 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3201 * x_3202) + x_3205);
            let x_3209 : vec4<f32> = u_xlat21;
            let x_3210 : vec2<f32> = vec2<f32>(x_3209.z, x_3209.w);
            let x_3212 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3210.x, x_3210.y, x_3212);
            let x_3219 : vec3<f32> = txVec52;
            let x_3221 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3219.xy, x_3219.z);
            u_xlat86 = x_3221;
            let x_3223 : f32 = u_xlat24.y;
            let x_3224 : f32 = u_xlat86;
            let x_3227 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3223 * x_3224) + x_3227);
            let x_3231 : vec2<f32> = u_xlat38;
            let x_3233 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3231.x, x_3231.y, x_3233);
            let x_3240 : vec3<f32> = txVec53;
            let x_3242 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3240.xy, x_3240.z);
            u_xlat86 = x_3242;
            let x_3244 : f32 = u_xlat24.z;
            let x_3245 : f32 = u_xlat86;
            let x_3248 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3244 * x_3245) + x_3248);
            let x_3252 : vec2<f32> = u_xlat69;
            let x_3254 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3252.x, x_3252.y, x_3254);
            let x_3261 : vec3<f32> = txVec54;
            let x_3263 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3261.xy, x_3261.z);
            u_xlat86 = x_3263;
            let x_3265 : f32 = u_xlat24.w;
            let x_3266 : f32 = u_xlat86;
            let x_3269 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3265 * x_3266) + x_3269);
            let x_3273 : vec4<f32> = u_xlat16;
            let x_3274 : vec2<f32> = vec2<f32>(x_3273.x, x_3273.y);
            let x_3276 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3274.x, x_3274.y, x_3276);
            let x_3283 : vec3<f32> = txVec55;
            let x_3285 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3283.xy, x_3283.z);
            u_xlat86 = x_3285;
            let x_3287 : f32 = u_xlat12.x;
            let x_3288 : f32 = u_xlat86;
            let x_3291 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3287 * x_3288) + x_3291);
            let x_3295 : vec4<f32> = u_xlat16;
            let x_3296 : vec2<f32> = vec2<f32>(x_3295.z, x_3295.w);
            let x_3298 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3296.x, x_3296.y, x_3298);
            let x_3305 : vec3<f32> = txVec56;
            let x_3307 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3305.xy, x_3305.z);
            u_xlat86 = x_3307;
            let x_3309 : f32 = u_xlat12.y;
            let x_3310 : f32 = u_xlat86;
            let x_3313 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3309 * x_3310) + x_3313);
            let x_3317 : vec2<f32> = u_xlat64;
            let x_3319 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3317.x, x_3317.y, x_3319);
            let x_3326 : vec3<f32> = txVec57;
            let x_3328 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3326.xy, x_3326.z);
            u_xlat86 = x_3328;
            let x_3330 : f32 = u_xlat12.z;
            let x_3331 : f32 = u_xlat86;
            let x_3334 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3330 * x_3331) + x_3334);
            let x_3338 : vec4<f32> = u_xlat11;
            let x_3339 : vec2<f32> = vec2<f32>(x_3338.x, x_3338.y);
            let x_3341 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3339.x, x_3339.y, x_3341);
            let x_3348 : vec3<f32> = txVec58;
            let x_3350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3348.xy, x_3348.z);
            u_xlat11.x = x_3350;
            let x_3353 : f32 = u_xlat12.w;
            let x_3355 : f32 = u_xlat11.x;
            let x_3358 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3353 * x_3355) + x_3358);
          }
        }
      } else {
        let x_3362 : vec4<f32> = u_xlat10;
        let x_3363 : vec2<f32> = vec2<f32>(x_3362.x, x_3362.y);
        let x_3365 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3363.x, x_3363.y, x_3365);
        let x_3372 : vec3<f32> = txVec59;
        let x_3374 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3372.xy, x_3372.z);
        u_xlat85 = x_3374;
      }
      let x_3375 : i32 = u_xlati81;
      let x_3377 : f32 = x_264.x_AdditionalShadowParams[x_3375].x;
      u_xlat10.x = (1.0f + -(x_3377));
      let x_3381 : f32 = u_xlat85;
      let x_3382 : i32 = u_xlati81;
      let x_3384 : f32 = x_264.x_AdditionalShadowParams[x_3382].x;
      let x_3387 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3381 * x_3384) + x_3387);
      let x_3391 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3391);
      let x_3396 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3396 >= 1.0f);
      let x_3398 : bool = u_xlatb60;
      let x_3400 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3398 | x_3400);
      let x_3404 : bool = u_xlatb35.x;
      if (x_3404) {
        x_3405 = 1.0f;
      } else {
        let x_3410 : f32 = u_xlat10.x;
        x_3405 = x_3410;
      }
      let x_3411 : f32 = x_3405;
      u_xlat10.x = x_3411;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3416 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3416) + 1.0f);
    let x_3419 : f32 = u_xlat77;
    let x_3420 : f32 = u_xlat35;
    let x_3423 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3419 * x_3420) + x_3423);
    let x_3426 : f32 = u_xlat83;
    let x_3428 : f32 = u_xlat10.x;
    u_xlat83 = (x_3426 * x_3428);
    let x_3430 : vec3<f32> = u_xlat2;
    let x_3431 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(x_3430, x_3431);
    let x_3435 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3435, 0.0f, 1.0f);
    let x_3438 : f32 = u_xlat83;
    let x_3440 : f32 = u_xlat10.x;
    u_xlat83 = (x_3438 * x_3440);
    let x_3442 : f32 = u_xlat83;
    let x_3444 : i32 = u_xlati81;
    let x_3446 : vec4<f32> = x_1912.x_AdditionalLightsColor[x_3444];
    let x_3448 : vec3<f32> = (vec3<f32>(x_3442, x_3442, x_3442) * vec3<f32>(x_3446.x, x_3446.y, x_3446.z));
    let x_3449 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3448.x, x_3448.y, x_3448.z, x_3449.w);
    let x_3451 : vec4<f32> = u_xlat8;
    let x_3453 : vec4<f32> = u_xlat9;
    let x_3456 : vec3<f32> = u_xlat3;
    let x_3457 : vec3<f32> = ((vec3<f32>(x_3451.x, x_3451.y, x_3451.z) * vec3<f32>(x_3453.x, x_3453.x, x_3453.x)) + x_3456);
    let x_3458 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3457.x, x_3457.y, x_3457.z, x_3458.w);
    let x_3460 : vec4<f32> = u_xlat8;
    let x_3462 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3460.x, x_3460.y, x_3460.z), vec3<f32>(x_3462.x, x_3462.y, x_3462.z));
    let x_3465 : f32 = u_xlat81;
    u_xlat81 = max(x_3465, 1.17549435e-38f);
    let x_3467 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3467);
    let x_3469 : f32 = u_xlat81;
    let x_3471 : vec4<f32> = u_xlat8;
    let x_3473 : vec3<f32> = (vec3<f32>(x_3469, x_3469, x_3469) * vec3<f32>(x_3471.x, x_3471.y, x_3471.z));
    let x_3474 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3473.x, x_3473.y, x_3473.z, x_3474.w);
    let x_3476 : vec3<f32> = u_xlat2;
    let x_3477 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(x_3476, vec3<f32>(x_3477.x, x_3477.y, x_3477.z));
    let x_3480 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3480, 0.0f, 1.0f);
    let x_3482 : vec3<f32> = u_xlat34;
    let x_3483 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3482, vec3<f32>(x_3483.x, x_3483.y, x_3483.z));
    let x_3488 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3488, 0.0f, 1.0f);
    let x_3491 : f32 = u_xlat81;
    let x_3492 : f32 = u_xlat81;
    u_xlat81 = (x_3491 * x_3492);
    let x_3494 : f32 = u_xlat81;
    let x_3496 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3494 * x_3496) + 1.00001001358032226562f);
    let x_3500 : f32 = u_xlat8.x;
    let x_3502 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3500 * x_3502);
    let x_3505 : f32 = u_xlat81;
    let x_3506 : f32 = u_xlat81;
    u_xlat81 = (x_3505 * x_3506);
    let x_3509 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3509, 0.10000000149011611938f);
    let x_3512 : f32 = u_xlat81;
    let x_3514 : f32 = u_xlat8.x;
    u_xlat81 = (x_3512 * x_3514);
    let x_3517 : f32 = u_xlat5.x;
    let x_3518 : f32 = u_xlat81;
    u_xlat81 = (x_3517 * x_3518);
    let x_3520 : f32 = u_xlat79;
    let x_3521 : f32 = u_xlat81;
    u_xlat81 = (x_3520 / x_3521);
    let x_3523 : vec4<f32> = u_xlat0;
    let x_3525 : f32 = u_xlat81;
    let x_3528 : vec3<f32> = u_xlat26;
    let x_3529 : vec3<f32> = ((vec3<f32>(x_3523.x, x_3523.y, x_3523.z) * vec3<f32>(x_3525, x_3525, x_3525)) + x_3528);
    let x_3530 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3529.x, x_3529.y, x_3529.z, x_3530.w);
    let x_3532 : vec4<f32> = u_xlat8;
    let x_3534 : vec4<f32> = u_xlat10;
    let x_3537 : vec3<f32> = u_xlat30;
    u_xlat30 = ((vec3<f32>(x_3532.x, x_3532.y, x_3532.z) * vec3<f32>(x_3534.x, x_3534.y, x_3534.z)) + x_3537);

    continuing {
      let x_3539 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3539 + bitcast<u32>(1i));
    }
  }
  let x_3541 : vec3<f32> = u_xlat32;
  let x_3542 : vec4<f32> = u_xlat6;
  let x_3545 : vec4<f32> = u_xlat4;
  let x_3547 : vec3<f32> = ((x_3541 * vec3<f32>(x_3542.x, x_3542.y, x_3542.z)) + vec3<f32>(x_3545.x, x_3545.y, x_3545.z));
  let x_3548 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3547.x, x_3547.y, x_3547.z, x_3548.w);
  let x_3552 : vec3<f32> = u_xlat30;
  let x_3553 : vec4<f32> = u_xlat0;
  let x_3555 : vec3<f32> = (x_3552 + vec3<f32>(x_3553.x, x_3553.y, x_3553.z));
  let x_3556 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3555.x, x_3555.y, x_3555.z, x_3556.w);
  let x_3560 : f32 = x_42.x_Surface;
  u_xlatb0 = (x_3560 == 1.0f);
  let x_3562 : bool = u_xlatb0;
  if (x_3562) {
    let x_3567 : f32 = u_xlat1.x;
    x_3563 = x_3567;
  } else {
    x_3563 = 1.0f;
  }
  let x_3569 : f32 = x_3563;
  SV_Target0.w = x_3569;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


