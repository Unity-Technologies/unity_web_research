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

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_217 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlatb6 : bool;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat56 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat54 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2164 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat85 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

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
  var x_1828 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2312 : f32;
  var x_2325 : f32;
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
  var x_3658 : f32;
  var x_3821 : f32;
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
  let x_209 : vec3<f32> = vs_TEXCOORD1;
  let x_219 : vec4<f32> = x_217.x_CascadeShadowSplitSpheres0;
  let x_222 : vec3<f32> = (x_209 + -(vec3<f32>(x_219.x, x_219.y, x_219.z)));
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : vec3<f32> = vs_TEXCOORD1;
  let x_228 : vec4<f32> = x_217.x_CascadeShadowSplitSpheres1;
  let x_231 : vec3<f32> = (x_226 + -(vec3<f32>(x_228.x, x_228.y, x_228.z)));
  let x_232 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = x_217.x_CascadeShadowSplitSpheres2;
  let x_241 : vec3<f32> = (x_235 + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_242 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_245 : vec3<f32> = vs_TEXCOORD1;
  let x_247 : vec4<f32> = x_217.x_CascadeShadowSplitSpheres3;
  let x_250 : vec3<f32> = (x_245 + -(vec3<f32>(x_247.x, x_247.y, x_247.z)));
  let x_251 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_259 : vec4<f32> = u_xlat5;
  let x_261 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_265 : vec4<f32> = u_xlat6;
  let x_267 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_265.x, x_265.y, x_265.z), vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_271 : vec4<f32> = u_xlat7;
  let x_273 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_271.x, x_271.y, x_271.z), vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_280 : vec4<f32> = u_xlat4;
  let x_282 : vec4<f32> = x_217.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_280 < x_282);
  let x_285 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_285);
  let x_289 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_289);
  let x_293 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_293);
  let x_297 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_297);
  let x_301 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_301);
  let x_307 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_307);
  let x_311 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_311);
  let x_314 : vec4<f32> = u_xlat4;
  let x_316 : vec4<f32> = u_xlat5;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) + vec3<f32>(x_316.y, x_316.z, x_316.w));
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat4;
  let x_324 : vec3<f32> = max(vec3<f32>(x_321.x, x_321.y, x_321.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_325 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_325.x, x_324.x, x_324.y, x_324.z);
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat75 = dot(x_327, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_333 : f32 = u_xlat75;
  u_xlat75 = (-(x_333) + 4.0f);
  let x_338 : f32 = u_xlat75;
  u_xlatu75 = u32(x_338);
  let x_342 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_342) << bitcast<u32>(2i));
  let x_345 : vec3<f32> = vs_TEXCOORD1;
  let x_347 : i32 = u_xlati75;
  let x_350 : i32 = u_xlati75;
  let x_354 : vec4<f32> = x_217.x_MainLightWorldToShadow[((x_347 + 1i) / 4i)][((x_350 + 1i) % 4i)];
  let x_356 : vec3<f32> = (vec3<f32>(x_345.y, x_345.y, x_345.y) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : i32 = u_xlati75;
  let x_361 : i32 = u_xlati75;
  let x_364 : vec4<f32> = x_217.x_MainLightWorldToShadow[(x_359 / 4i)][(x_361 % 4i)];
  let x_366 : vec3<f32> = vs_TEXCOORD1;
  let x_369 : vec4<f32> = u_xlat4;
  let x_371 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.x, x_366.x, x_366.x)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : i32 = u_xlati75;
  let x_377 : i32 = u_xlati75;
  let x_381 : vec4<f32> = x_217.x_MainLightWorldToShadow[((x_374 + 2i) / 4i)][((x_377 + 2i) % 4i)];
  let x_383 : vec3<f32> = vs_TEXCOORD1;
  let x_386 : vec4<f32> = u_xlat4;
  let x_388 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(x_383.z, x_383.z, x_383.z)) + vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat4;
  let x_393 : i32 = u_xlati75;
  let x_396 : i32 = u_xlati75;
  let x_400 : vec4<f32> = x_217.x_MainLightWorldToShadow[((x_393 + 3i) / 4i)][((x_396 + 3i) % 4i)];
  let x_402 : vec3<f32> = (vec3<f32>(x_391.x, x_391.y, x_391.z) + vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  u_xlat2.w = 1.0f;
  let x_408 : vec4<f32> = x_95.unity_SHAr;
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_408, x_409);
  let x_414 : vec4<f32> = x_95.unity_SHAg;
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_414, x_415);
  let x_420 : vec4<f32> = x_95.unity_SHAb;
  let x_421 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_420, x_421);
  let x_424 : vec4<f32> = u_xlat2;
  let x_426 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_424.y, x_424.z, x_424.z, x_424.x) * vec4<f32>(x_426.x, x_426.y, x_426.z, x_426.z));
  let x_431 : vec4<f32> = x_95.unity_SHBr;
  let x_432 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_431, x_432);
  let x_437 : vec4<f32> = x_95.unity_SHBg;
  let x_438 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_437, x_438);
  let x_443 : vec4<f32> = x_95.unity_SHBb;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_443, x_444);
  let x_448 : f32 = u_xlat2.y;
  let x_450 : f32 = u_xlat2.y;
  u_xlat75 = (x_448 * x_450);
  let x_453 : f32 = u_xlat2.x;
  let x_455 : f32 = u_xlat2.x;
  let x_457 : f32 = u_xlat75;
  u_xlat75 = ((x_453 * x_455) + -(x_457));
  let x_462 : vec4<f32> = x_95.unity_SHC;
  let x_464 : f32 = u_xlat75;
  let x_467 : vec4<f32> = u_xlat7;
  let x_469 : vec3<f32> = ((vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(x_464, x_464, x_464)) + vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat5;
  let x_474 : vec4<f32> = u_xlat6;
  let x_476 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) + vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat5;
  let x_481 : vec3<f32> = max(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_482 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : f32 = x_58.x_Metallic;
  u_xlat75 = ((-(x_485) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_490 : f32 = u_xlat75;
  u_xlat77 = (-(x_490) + 1.0f);
  let x_494 : f32 = u_xlat75;
  let x_496 : vec4<f32> = u_xlat1;
  u_xlat26 = (vec3<f32>(x_494, x_494, x_494) * vec3<f32>(x_496.y, x_496.z, x_496.w));
  let x_499 : vec4<f32> = u_xlat0;
  let x_502 : vec4<f32> = x_58.x_BaseColor;
  let x_507 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(x_502.x, x_502.y, x_502.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_508 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_511 : f32 = x_58.x_Metallic;
  let x_513 : f32 = x_58.x_Metallic;
  let x_515 : f32 = x_58.x_Metallic;
  let x_516 : vec3<f32> = vec3<f32>(x_511, x_513, x_515);
  let x_521 : vec4<f32> = u_xlat0;
  let x_526 : vec3<f32> = ((vec3<f32>(x_516.x, x_516.y, x_516.z) * vec3<f32>(x_521.x, x_521.y, x_521.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_527 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_530 : f32 = x_58.x_Smoothness;
  u_xlat75 = (-(x_530) + 1.0f);
  let x_534 : f32 = u_xlat75;
  let x_535 : f32 = u_xlat75;
  u_xlat78 = (x_534 * x_535);
  let x_537 : f32 = u_xlat78;
  u_xlat78 = max(x_537, 0.0078125f);
  let x_541 : f32 = u_xlat78;
  let x_542 : f32 = u_xlat78;
  u_xlat79 = (x_541 * x_542);
  let x_544 : f32 = u_xlat77;
  let x_546 : f32 = x_58.x_Smoothness;
  u_xlat77 = (x_544 + x_546);
  let x_548 : f32 = u_xlat77;
  u_xlat77 = clamp(x_548, 0.0f, 1.0f);
  let x_551 : f32 = u_xlat78;
  u_xlat80 = ((x_551 * 4.0f) + 2.0f);
  let x_557 : f32 = x_217.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_557);
  let x_559 : bool = u_xlatb6;
  if (x_559) {
    let x_563 : f32 = x_217.x_MainLightShadowParams.y;
    u_xlatb6 = (x_563 == 1.0f);
    let x_565 : bool = u_xlatb6;
    if (x_565) {
      let x_568 : vec4<f32> = u_xlat4;
      let x_571 : vec4<f32> = x_217.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_568.x, x_568.y, x_568.x, x_568.y) + x_571);
      let x_575 : vec4<f32> = u_xlat6;
      let x_576 : vec2<f32> = vec2<f32>(x_575.x, x_575.y);
      let x_578 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_576.x, x_576.y, x_578);
      let x_590 : vec3<f32> = txVec0;
      let x_592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_590.xy, x_590.z);
      u_xlat7.x = x_592;
      let x_595 : vec4<f32> = u_xlat6;
      let x_596 : vec2<f32> = vec2<f32>(x_595.z, x_595.w);
      let x_598 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_596.x, x_596.y, x_598);
      let x_605 : vec3<f32> = txVec1;
      let x_607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_605.xy, x_605.z);
      u_xlat7.y = x_607;
      let x_609 : vec4<f32> = u_xlat4;
      let x_612 : vec4<f32> = x_217.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_609.x, x_609.y, x_609.x, x_609.y) + x_612);
      let x_615 : vec4<f32> = u_xlat6;
      let x_616 : vec2<f32> = vec2<f32>(x_615.x, x_615.y);
      let x_618 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_616.x, x_616.y, x_618);
      let x_625 : vec3<f32> = txVec2;
      let x_627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_625.xy, x_625.z);
      u_xlat7.z = x_627;
      let x_630 : vec4<f32> = u_xlat6;
      let x_631 : vec2<f32> = vec2<f32>(x_630.z, x_630.w);
      let x_633 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_631.x, x_631.y, x_633);
      let x_640 : vec3<f32> = txVec3;
      let x_642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_640.xy, x_640.z);
      u_xlat7.w = x_642;
      let x_644 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_644, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_652 : f32 = x_217.x_MainLightShadowParams.y;
      u_xlatb31 = (x_652 == 2.0f);
      let x_654 : bool = u_xlatb31;
      if (x_654) {
        let x_659 : vec4<f32> = u_xlat4;
        let x_663 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_659.x, x_659.y) * vec2<f32>(x_663.z, x_663.w)) + vec2<f32>(0.5f, 0.5f));
        let x_669 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_669);
        let x_671 : vec4<f32> = u_xlat4;
        let x_674 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_677 : vec2<f32> = u_xlat31;
        let x_679 : vec2<f32> = ((vec2<f32>(x_671.x, x_671.y) * vec2<f32>(x_674.z, x_674.w)) + -(x_677));
        let x_680 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
        let x_683 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_683.x, x_683.x, x_683.y, x_683.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_688 : vec4<f32> = u_xlat8;
        let x_690 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_688.x, x_688.x, x_688.z, x_688.z) * vec4<f32>(x_690.x, x_690.x, x_690.z, x_690.z));
        let x_694 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_694.y, x_694.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_699 : vec4<f32> = u_xlat9;
        let x_702 : vec4<f32> = u_xlat7;
        let x_705 : vec2<f32> = ((vec2<f32>(x_699.x, x_699.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_702.x, x_702.y)));
        let x_706 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_705.x, x_706.y, x_705.y, x_706.w);
        let x_708 : vec4<f32> = u_xlat7;
        let x_712 : vec2<f32> = (-(vec2<f32>(x_708.x, x_708.y)) + vec2<f32>(1.0f, 1.0f));
        let x_713 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
        let x_716 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_716.x, x_716.y), vec2<f32>(0.0f, 0.0f));
        let x_720 : vec2<f32> = u_xlat59;
        let x_722 : vec2<f32> = u_xlat59;
        let x_724 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_720) * x_722) + vec2<f32>(x_724.x, x_724.y));
        let x_727 : vec4<f32> = u_xlat7;
        let x_729 : vec2<f32> = max(vec2<f32>(x_727.x, x_727.y), vec2<f32>(0.0f, 0.0f));
        let x_730 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
        let x_732 : vec4<f32> = u_xlat7;
        let x_735 : vec4<f32> = u_xlat7;
        let x_738 : vec4<f32> = u_xlat8;
        let x_740 : vec2<f32> = ((-(vec2<f32>(x_732.x, x_732.y)) * vec2<f32>(x_735.x, x_735.y)) + vec2<f32>(x_738.y, x_738.w));
        let x_741 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_740.x, x_740.y, x_741.z, x_741.w);
        let x_743 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_743 + vec2<f32>(1.0f, 1.0f));
        let x_745 : vec4<f32> = u_xlat7;
        let x_747 : vec2<f32> = (vec2<f32>(x_745.x, x_745.y) + vec2<f32>(1.0f, 1.0f));
        let x_748 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
        let x_751 : vec4<f32> = u_xlat8;
        let x_755 : vec2<f32> = (vec2<f32>(x_751.x, x_751.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_756 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
        let x_759 : vec4<f32> = u_xlat9;
        let x_761 : vec2<f32> = (vec2<f32>(x_759.x, x_759.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_762 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_761.x, x_761.y, x_762.z, x_762.w);
        let x_764 : vec2<f32> = u_xlat59;
        let x_765 : vec2<f32> = (x_764 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_766 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
        let x_769 : vec4<f32> = u_xlat7;
        let x_771 : vec2<f32> = (vec2<f32>(x_769.x, x_769.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_772 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat8;
        let x_776 : vec2<f32> = (vec2<f32>(x_774.y, x_774.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_777 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
        let x_780 : f32 = u_xlat9.x;
        u_xlat10.z = x_780;
        let x_783 : f32 = u_xlat7.x;
        u_xlat10.w = x_783;
        let x_786 : f32 = u_xlat12.x;
        u_xlat11.z = x_786;
        let x_789 : f32 = u_xlat57.x;
        u_xlat11.w = x_789;
        let x_791 : vec4<f32> = u_xlat10;
        let x_793 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_791.z, x_791.w, x_791.x, x_791.z) + vec4<f32>(x_793.z, x_793.w, x_793.x, x_793.z));
        let x_797 : f32 = u_xlat10.y;
        u_xlat9.z = x_797;
        let x_800 : f32 = u_xlat7.y;
        u_xlat9.w = x_800;
        let x_803 : f32 = u_xlat11.y;
        u_xlat12.z = x_803;
        let x_806 : f32 = u_xlat57.y;
        u_xlat12.w = x_806;
        let x_808 : vec4<f32> = u_xlat9;
        let x_810 : vec4<f32> = u_xlat12;
        let x_812 : vec3<f32> = (vec3<f32>(x_808.z, x_808.y, x_808.w) + vec3<f32>(x_810.z, x_810.y, x_810.w));
        let x_813 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
        let x_815 : vec4<f32> = u_xlat11;
        let x_817 : vec4<f32> = u_xlat8;
        let x_819 : vec3<f32> = (vec3<f32>(x_815.x, x_815.z, x_815.w) / vec3<f32>(x_817.z, x_817.w, x_817.y));
        let x_820 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat9;
        let x_828 : vec3<f32> = (vec3<f32>(x_822.x, x_822.y, x_822.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_829 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
        let x_831 : vec4<f32> = u_xlat12;
        let x_833 : vec4<f32> = u_xlat7;
        let x_835 : vec3<f32> = (vec3<f32>(x_831.z, x_831.y, x_831.w) / vec3<f32>(x_833.x, x_833.y, x_833.z));
        let x_836 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat10;
        let x_840 : vec3<f32> = (vec3<f32>(x_838.x, x_838.y, x_838.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_841 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
        let x_843 : vec4<f32> = u_xlat9;
        let x_846 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_848 : vec3<f32> = (vec3<f32>(x_843.y, x_843.x, x_843.z) * vec3<f32>(x_846.x, x_846.x, x_846.x));
        let x_849 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
        let x_851 : vec4<f32> = u_xlat10;
        let x_854 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_856 : vec3<f32> = (vec3<f32>(x_851.x, x_851.y, x_851.z) * vec3<f32>(x_854.y, x_854.y, x_854.y));
        let x_857 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
        let x_860 : f32 = u_xlat10.x;
        u_xlat9.w = x_860;
        let x_862 : vec2<f32> = u_xlat31;
        let x_865 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_868 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_862.x, x_862.y, x_862.x, x_862.y) * vec4<f32>(x_865.x, x_865.y, x_865.x, x_865.y)) + vec4<f32>(x_868.y, x_868.w, x_868.x, x_868.w));
        let x_871 : vec2<f32> = u_xlat31;
        let x_873 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_876 : vec4<f32> = u_xlat9;
        let x_878 : vec2<f32> = ((x_871 * vec2<f32>(x_873.x, x_873.y)) + vec2<f32>(x_876.z, x_876.w));
        let x_879 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_882 : f32 = u_xlat9.y;
        u_xlat10.w = x_882;
        let x_884 : vec4<f32> = u_xlat10;
        let x_885 : vec2<f32> = vec2<f32>(x_884.y, x_884.z);
        let x_886 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_886.x, x_885.x, x_886.z, x_885.y);
        let x_889 : vec2<f32> = u_xlat31;
        let x_892 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_895 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_889.x, x_889.y, x_889.x, x_889.y) * vec4<f32>(x_892.x, x_892.y, x_892.x, x_892.y)) + vec4<f32>(x_895.x, x_895.y, x_895.z, x_895.y));
        let x_898 : vec2<f32> = u_xlat31;
        let x_901 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_904 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_898.x, x_898.y, x_898.x, x_898.y) * vec4<f32>(x_901.x, x_901.y, x_901.x, x_901.y)) + vec4<f32>(x_904.w, x_904.y, x_904.w, x_904.z));
        let x_907 : vec2<f32> = u_xlat31;
        let x_910 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_913 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_907.x, x_907.y, x_907.x, x_907.y) * vec4<f32>(x_910.x, x_910.y, x_910.x, x_910.y)) + vec4<f32>(x_913.x, x_913.w, x_913.z, x_913.w));
        let x_917 : vec4<f32> = u_xlat7;
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_917.x, x_917.x, x_917.x, x_917.y) * vec4<f32>(x_919.z, x_919.w, x_919.y, x_919.z));
        let x_923 : vec4<f32> = u_xlat7;
        let x_925 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_923.y, x_923.y, x_923.z, x_923.z) * x_925);
        let x_928 : f32 = u_xlat7.z;
        let x_930 : f32 = u_xlat8.y;
        u_xlat31.x = (x_928 * x_930);
        let x_934 : vec4<f32> = u_xlat11;
        let x_935 : vec2<f32> = vec2<f32>(x_934.x, x_934.y);
        let x_937 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_935.x, x_935.y, x_937);
        let x_945 : vec3<f32> = txVec4;
        let x_947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_945.xy, x_945.z);
        u_xlat56 = x_947;
        let x_949 : vec4<f32> = u_xlat11;
        let x_950 : vec2<f32> = vec2<f32>(x_949.z, x_949.w);
        let x_952 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_950.x, x_950.y, x_952);
        let x_960 : vec3<f32> = txVec5;
        let x_962 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_960.xy, x_960.z);
        u_xlat81 = x_962;
        let x_963 : f32 = u_xlat81;
        let x_965 : f32 = u_xlat14.y;
        u_xlat81 = (x_963 * x_965);
        let x_968 : f32 = u_xlat14.x;
        let x_969 : f32 = u_xlat56;
        let x_971 : f32 = u_xlat81;
        u_xlat56 = ((x_968 * x_969) + x_971);
        let x_974 : vec4<f32> = u_xlat12;
        let x_975 : vec2<f32> = vec2<f32>(x_974.x, x_974.y);
        let x_977 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_975.x, x_975.y, x_977);
        let x_984 : vec3<f32> = txVec6;
        let x_986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_984.xy, x_984.z);
        u_xlat81 = x_986;
        let x_988 : f32 = u_xlat14.z;
        let x_989 : f32 = u_xlat81;
        let x_991 : f32 = u_xlat56;
        u_xlat56 = ((x_988 * x_989) + x_991);
        let x_994 : vec4<f32> = u_xlat10;
        let x_995 : vec2<f32> = vec2<f32>(x_994.x, x_994.y);
        let x_997 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_995.x, x_995.y, x_997);
        let x_1004 : vec3<f32> = txVec7;
        let x_1006 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1004.xy, x_1004.z);
        u_xlat81 = x_1006;
        let x_1008 : f32 = u_xlat14.w;
        let x_1009 : f32 = u_xlat81;
        let x_1011 : f32 = u_xlat56;
        u_xlat56 = ((x_1008 * x_1009) + x_1011);
        let x_1014 : vec4<f32> = u_xlat13;
        let x_1015 : vec2<f32> = vec2<f32>(x_1014.x, x_1014.y);
        let x_1017 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1015.x, x_1015.y, x_1017);
        let x_1024 : vec3<f32> = txVec8;
        let x_1026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1024.xy, x_1024.z);
        u_xlat81 = x_1026;
        let x_1028 : f32 = u_xlat15.x;
        let x_1029 : f32 = u_xlat81;
        let x_1031 : f32 = u_xlat56;
        u_xlat56 = ((x_1028 * x_1029) + x_1031);
        let x_1034 : vec4<f32> = u_xlat13;
        let x_1035 : vec2<f32> = vec2<f32>(x_1034.z, x_1034.w);
        let x_1037 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
        let x_1044 : vec3<f32> = txVec9;
        let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1044.xy, x_1044.z);
        u_xlat81 = x_1046;
        let x_1048 : f32 = u_xlat15.y;
        let x_1049 : f32 = u_xlat81;
        let x_1051 : f32 = u_xlat56;
        u_xlat56 = ((x_1048 * x_1049) + x_1051);
        let x_1054 : vec4<f32> = u_xlat10;
        let x_1055 : vec2<f32> = vec2<f32>(x_1054.z, x_1054.w);
        let x_1057 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1055.x, x_1055.y, x_1057);
        let x_1064 : vec3<f32> = txVec10;
        let x_1066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1064.xy, x_1064.z);
        u_xlat81 = x_1066;
        let x_1068 : f32 = u_xlat15.z;
        let x_1069 : f32 = u_xlat81;
        let x_1071 : f32 = u_xlat56;
        u_xlat56 = ((x_1068 * x_1069) + x_1071);
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1075 : vec2<f32> = vec2<f32>(x_1074.x, x_1074.y);
        let x_1077 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1075.x, x_1075.y, x_1077);
        let x_1084 : vec3<f32> = txVec11;
        let x_1086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1084.xy, x_1084.z);
        u_xlat81 = x_1086;
        let x_1088 : f32 = u_xlat15.w;
        let x_1089 : f32 = u_xlat81;
        let x_1091 : f32 = u_xlat56;
        u_xlat56 = ((x_1088 * x_1089) + x_1091);
        let x_1094 : vec4<f32> = u_xlat9;
        let x_1095 : vec2<f32> = vec2<f32>(x_1094.z, x_1094.w);
        let x_1097 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1095.x, x_1095.y, x_1097);
        let x_1104 : vec3<f32> = txVec12;
        let x_1106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1104.xy, x_1104.z);
        u_xlat81 = x_1106;
        let x_1108 : f32 = u_xlat31.x;
        let x_1109 : f32 = u_xlat81;
        let x_1111 : f32 = u_xlat56;
        u_xlat6.x = ((x_1108 * x_1109) + x_1111);
      } else {
        let x_1115 : vec4<f32> = u_xlat4;
        let x_1118 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1115.x, x_1115.y) * vec2<f32>(x_1118.z, x_1118.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1122 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1122);
        let x_1124 : vec4<f32> = u_xlat4;
        let x_1127 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1130 : vec2<f32> = u_xlat31;
        let x_1132 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.y) * vec2<f32>(x_1127.z, x_1127.w)) + -(x_1130));
        let x_1133 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1135.x, x_1135.x, x_1135.y, x_1135.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1138 : vec4<f32> = u_xlat8;
        let x_1140 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1138.x, x_1138.x, x_1138.z, x_1138.z) * vec4<f32>(x_1140.x, x_1140.x, x_1140.z, x_1140.z));
        let x_1143 : vec4<f32> = u_xlat9;
        let x_1147 : vec2<f32> = (vec2<f32>(x_1143.y, x_1143.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1148 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1148.x, x_1147.x, x_1148.z, x_1147.y);
        let x_1150 : vec4<f32> = u_xlat9;
        let x_1153 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1150.x, x_1150.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1153.x, x_1153.y)));
        let x_1157 : vec4<f32> = u_xlat7;
        let x_1160 : vec2<f32> = (-(vec2<f32>(x_1157.x, x_1157.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1161.y, x_1160.y, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1165 : vec2<f32> = min(vec2<f32>(x_1163.x, x_1163.y), vec2<f32>(0.0f, 0.0f));
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat9;
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1174 : vec4<f32> = u_xlat8;
        let x_1176 : vec2<f32> = ((-(vec2<f32>(x_1168.x, x_1168.y)) * vec2<f32>(x_1171.x, x_1171.y)) + vec2<f32>(x_1174.x, x_1174.z));
        let x_1177 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1176.x, x_1177.y, x_1176.y, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat7;
        let x_1181 : vec2<f32> = max(vec2<f32>(x_1179.x, x_1179.y), vec2<f32>(0.0f, 0.0f));
        let x_1182 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1184 : vec4<f32> = u_xlat9;
        let x_1187 : vec4<f32> = u_xlat9;
        let x_1190 : vec4<f32> = u_xlat8;
        let x_1192 : vec2<f32> = ((-(vec2<f32>(x_1184.x, x_1184.y)) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.y, x_1190.w));
        let x_1193 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1193.x, x_1192.x, x_1193.z, x_1192.y);
        let x_1195 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1195 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1199 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1199 * 0.08163200318813323975f);
        let x_1203 : vec2<f32> = u_xlat57;
        let x_1206 : vec2<f32> = (vec2<f32>(x_1203.y, x_1203.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1207 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1209.x, x_1209.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1213 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1213 * 0.08163200318813323975f);
        let x_1217 : f32 = u_xlat11.y;
        u_xlat9.x = x_1217;
        let x_1219 : vec4<f32> = u_xlat7;
        let x_1226 : vec2<f32> = ((vec2<f32>(x_1219.x, x_1219.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1227.x, x_1226.x, x_1227.z, x_1226.y);
        let x_1229 : vec4<f32> = u_xlat7;
        let x_1233 : vec2<f32> = ((vec2<f32>(x_1229.x, x_1229.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1234 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1233.x, x_1234.y, x_1233.y, x_1234.w);
        let x_1237 : f32 = u_xlat57.x;
        u_xlat8.y = x_1237;
        let x_1240 : f32 = u_xlat10.y;
        u_xlat8.w = x_1240;
        let x_1242 : vec4<f32> = u_xlat8;
        let x_1243 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1242 + x_1243);
        let x_1245 : vec4<f32> = u_xlat7;
        let x_1248 : vec2<f32> = ((vec2<f32>(x_1245.y, x_1245.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1249 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1249.x, x_1248.x, x_1249.z, x_1248.y);
        let x_1251 : vec4<f32> = u_xlat7;
        let x_1254 : vec2<f32> = ((vec2<f32>(x_1251.y, x_1251.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1255 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1254.x, x_1255.y, x_1254.y, x_1255.w);
        let x_1258 : f32 = u_xlat57.y;
        u_xlat10.y = x_1258;
        let x_1260 : vec4<f32> = u_xlat10;
        let x_1261 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1260 + x_1261);
        let x_1263 : vec4<f32> = u_xlat8;
        let x_1264 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1263 / x_1264);
        let x_1266 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1266 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1272 : vec4<f32> = u_xlat10;
        let x_1273 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1272 / x_1273);
        let x_1275 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1275 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1277 : vec4<f32> = u_xlat8;
        let x_1280 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1277.w, x_1277.x, x_1277.y, x_1277.z) * vec4<f32>(x_1280.x, x_1280.x, x_1280.x, x_1280.x));
        let x_1283 : vec4<f32> = u_xlat10;
        let x_1286 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1283.x, x_1283.w, x_1283.y, x_1283.z) * vec4<f32>(x_1286.y, x_1286.y, x_1286.y, x_1286.y));
        let x_1289 : vec4<f32> = u_xlat8;
        let x_1290 : vec3<f32> = vec3<f32>(x_1289.y, x_1289.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1290.x, x_1291.y, x_1290.y, x_1290.z);
        let x_1294 : f32 = u_xlat10.x;
        u_xlat11.y = x_1294;
        let x_1296 : vec2<f32> = u_xlat31;
        let x_1299 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y) * vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y)) + vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1302.y));
        let x_1305 : vec2<f32> = u_xlat31;
        let x_1307 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat11;
        let x_1312 : vec2<f32> = ((x_1305 * vec2<f32>(x_1307.x, x_1307.y)) + vec2<f32>(x_1310.w, x_1310.y));
        let x_1313 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1316 : f32 = u_xlat11.y;
        u_xlat8.y = x_1316;
        let x_1319 : f32 = u_xlat10.z;
        u_xlat11.y = x_1319;
        let x_1321 : vec2<f32> = u_xlat31;
        let x_1324 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.y) * vec4<f32>(x_1324.x, x_1324.y, x_1324.x, x_1324.y)) + vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1327.y));
        let x_1331 : vec2<f32> = u_xlat31;
        let x_1333 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1336 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1331 * vec2<f32>(x_1333.x, x_1333.y)) + vec2<f32>(x_1336.w, x_1336.y));
        let x_1340 : f32 = u_xlat11.y;
        u_xlat8.z = x_1340;
        let x_1342 : vec2<f32> = u_xlat31;
        let x_1345 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1348 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.y) * vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y)) + vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.z));
        let x_1352 : f32 = u_xlat10.w;
        u_xlat11.y = x_1352;
        let x_1355 : vec2<f32> = u_xlat31;
        let x_1358 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1361 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y) * vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y)) + vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1361.y));
        let x_1365 : vec2<f32> = u_xlat31;
        let x_1367 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat11;
        u_xlat33 = ((x_1365 * vec2<f32>(x_1367.x, x_1367.y)) + vec2<f32>(x_1370.w, x_1370.y));
        let x_1374 : f32 = u_xlat11.y;
        u_xlat8.w = x_1374;
        let x_1377 : vec2<f32> = u_xlat31;
        let x_1379 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1382 : vec4<f32> = u_xlat8;
        let x_1384 : vec2<f32> = ((x_1377 * vec2<f32>(x_1379.x, x_1379.y)) + vec2<f32>(x_1382.x, x_1382.w));
        let x_1385 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1384.x, x_1384.y, x_1385.z, x_1385.w);
        let x_1387 : vec4<f32> = u_xlat11;
        let x_1388 : vec3<f32> = vec3<f32>(x_1387.x, x_1387.z, x_1387.w);
        let x_1389 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1388.x, x_1389.y, x_1388.y, x_1388.z);
        let x_1391 : vec2<f32> = u_xlat31;
        let x_1394 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1397 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1391.x, x_1391.y, x_1391.x, x_1391.y) * vec4<f32>(x_1394.x, x_1394.y, x_1394.x, x_1394.y)) + vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1397.y));
        let x_1401 : vec2<f32> = u_xlat31;
        let x_1403 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1406 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1401 * vec2<f32>(x_1403.x, x_1403.y)) + vec2<f32>(x_1406.w, x_1406.y));
        let x_1410 : f32 = u_xlat8.x;
        u_xlat10.x = x_1410;
        let x_1412 : vec2<f32> = u_xlat31;
        let x_1414 : vec4<f32> = x_217.x_MainLightShadowmapSize;
        let x_1417 : vec4<f32> = u_xlat10;
        u_xlat31 = ((x_1412 * vec2<f32>(x_1414.x, x_1414.y)) + vec2<f32>(x_1417.x, x_1417.y));
        let x_1421 : vec4<f32> = u_xlat7;
        let x_1423 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1421.x, x_1421.x, x_1421.x, x_1421.x) * x_1423);
        let x_1426 : vec4<f32> = u_xlat7;
        let x_1428 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1426.y, x_1426.y, x_1426.y, x_1426.y) * x_1428);
        let x_1431 : vec4<f32> = u_xlat7;
        let x_1433 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1431.z, x_1431.z, x_1431.z, x_1431.z) * x_1433);
        let x_1435 : vec4<f32> = u_xlat7;
        let x_1437 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1435.w, x_1435.w, x_1435.w, x_1435.w) * x_1437);
        let x_1440 : vec4<f32> = u_xlat12;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.x, x_1440.y);
        let x_1443 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec13;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat81 = x_1452;
        let x_1454 : vec4<f32> = u_xlat12;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.z, x_1454.w);
        let x_1457 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec14;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1464.xy, x_1464.z);
        u_xlat8.x = x_1466;
        let x_1469 : f32 = u_xlat8.x;
        let x_1471 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1469 * x_1471);
        let x_1475 : f32 = u_xlat18.x;
        let x_1476 : f32 = u_xlat81;
        let x_1479 : f32 = u_xlat8.x;
        u_xlat81 = ((x_1475 * x_1476) + x_1479);
        let x_1482 : vec4<f32> = u_xlat13;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.x, x_1482.y);
        let x_1485 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec15;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1492.xy, x_1492.z);
        u_xlat8.x = x_1494;
        let x_1497 : f32 = u_xlat18.z;
        let x_1499 : f32 = u_xlat8.x;
        let x_1501 : f32 = u_xlat81;
        u_xlat81 = ((x_1497 * x_1499) + x_1501);
        let x_1504 : vec4<f32> = u_xlat15;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.x, x_1504.y);
        let x_1507 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec16;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1514.xy, x_1514.z);
        u_xlat8.x = x_1516;
        let x_1519 : f32 = u_xlat18.w;
        let x_1521 : f32 = u_xlat8.x;
        let x_1523 : f32 = u_xlat81;
        u_xlat81 = ((x_1519 * x_1521) + x_1523);
        let x_1526 : vec4<f32> = u_xlat14;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.x, x_1526.y);
        let x_1529 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec17;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1536.xy, x_1536.z);
        u_xlat8.x = x_1538;
        let x_1541 : f32 = u_xlat19.x;
        let x_1543 : f32 = u_xlat8.x;
        let x_1545 : f32 = u_xlat81;
        u_xlat81 = ((x_1541 * x_1543) + x_1545);
        let x_1548 : vec4<f32> = u_xlat14;
        let x_1549 : vec2<f32> = vec2<f32>(x_1548.z, x_1548.w);
        let x_1551 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec18;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat8.x = x_1560;
        let x_1563 : f32 = u_xlat19.y;
        let x_1565 : f32 = u_xlat8.x;
        let x_1567 : f32 = u_xlat81;
        u_xlat81 = ((x_1563 * x_1565) + x_1567);
        let x_1570 : vec2<f32> = u_xlat63;
        let x_1572 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec19;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1579.xy, x_1579.z);
        u_xlat8.x = x_1581;
        let x_1584 : f32 = u_xlat19.z;
        let x_1586 : f32 = u_xlat8.x;
        let x_1588 : f32 = u_xlat81;
        u_xlat81 = ((x_1584 * x_1586) + x_1588);
        let x_1591 : vec4<f32> = u_xlat15;
        let x_1592 : vec2<f32> = vec2<f32>(x_1591.z, x_1591.w);
        let x_1594 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec20;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1601.xy, x_1601.z);
        u_xlat8.x = x_1603;
        let x_1606 : f32 = u_xlat19.w;
        let x_1608 : f32 = u_xlat8.x;
        let x_1610 : f32 = u_xlat81;
        u_xlat81 = ((x_1606 * x_1608) + x_1610);
        let x_1613 : vec4<f32> = u_xlat16;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.x, x_1613.y);
        let x_1616 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec21;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1623.xy, x_1623.z);
        u_xlat8.x = x_1625;
        let x_1628 : f32 = u_xlat20.x;
        let x_1630 : f32 = u_xlat8.x;
        let x_1632 : f32 = u_xlat81;
        u_xlat81 = ((x_1628 * x_1630) + x_1632);
        let x_1635 : vec4<f32> = u_xlat16;
        let x_1636 : vec2<f32> = vec2<f32>(x_1635.z, x_1635.w);
        let x_1638 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec22;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1645.xy, x_1645.z);
        u_xlat8.x = x_1647;
        let x_1650 : f32 = u_xlat20.y;
        let x_1652 : f32 = u_xlat8.x;
        let x_1654 : f32 = u_xlat81;
        u_xlat81 = ((x_1650 * x_1652) + x_1654);
        let x_1657 : vec2<f32> = u_xlat33;
        let x_1659 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec23;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
        u_xlat8.x = x_1668;
        let x_1671 : f32 = u_xlat20.z;
        let x_1673 : f32 = u_xlat8.x;
        let x_1675 : f32 = u_xlat81;
        u_xlat81 = ((x_1671 * x_1673) + x_1675);
        let x_1678 : vec4<f32> = u_xlat17;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
        let x_1681 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec24;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1688.xy, x_1688.z);
        u_xlat8.x = x_1690;
        let x_1693 : f32 = u_xlat20.w;
        let x_1695 : f32 = u_xlat8.x;
        let x_1697 : f32 = u_xlat81;
        u_xlat81 = ((x_1693 * x_1695) + x_1697);
        let x_1700 : vec4<f32> = u_xlat11;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.x, x_1700.y);
        let x_1703 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec25;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat8.x = x_1712;
        let x_1715 : f32 = u_xlat7.x;
        let x_1717 : f32 = u_xlat8.x;
        let x_1719 : f32 = u_xlat81;
        u_xlat81 = ((x_1715 * x_1717) + x_1719);
        let x_1722 : vec4<f32> = u_xlat11;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.z, x_1722.w);
        let x_1725 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec26;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1732.xy, x_1732.z);
        u_xlat7.x = x_1734;
        let x_1737 : f32 = u_xlat7.y;
        let x_1739 : f32 = u_xlat7.x;
        let x_1741 : f32 = u_xlat81;
        u_xlat81 = ((x_1737 * x_1739) + x_1741);
        let x_1744 : vec2<f32> = u_xlat60;
        let x_1746 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1744.x, x_1744.y, x_1746);
        let x_1753 : vec3<f32> = txVec27;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1753.xy, x_1753.z);
        u_xlat7.x = x_1755;
        let x_1758 : f32 = u_xlat7.z;
        let x_1760 : f32 = u_xlat7.x;
        let x_1762 : f32 = u_xlat81;
        u_xlat81 = ((x_1758 * x_1760) + x_1762);
        let x_1765 : vec2<f32> = u_xlat31;
        let x_1767 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1765.x, x_1765.y, x_1767);
        let x_1774 : vec3<f32> = txVec28;
        let x_1776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1774.xy, x_1774.z);
        u_xlat31.x = x_1776;
        let x_1779 : f32 = u_xlat7.w;
        let x_1781 : f32 = u_xlat31.x;
        let x_1783 : f32 = u_xlat81;
        u_xlat6.x = ((x_1779 * x_1781) + x_1783);
      }
    }
  } else {
    let x_1788 : vec4<f32> = u_xlat4;
    let x_1789 : vec2<f32> = vec2<f32>(x_1788.x, x_1788.y);
    let x_1791 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
    let x_1798 : vec3<f32> = txVec29;
    let x_1800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1798.xy, x_1798.z);
    u_xlat6.x = x_1800;
  }
  let x_1803 : f32 = x_217.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1803) + 1.0f);
  let x_1808 : f32 = u_xlat6.x;
  let x_1810 : f32 = x_217.x_MainLightShadowParams.x;
  let x_1813 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1808 * x_1810) + x_1813);
  let x_1818 : f32 = u_xlat4.z;
  u_xlatb29 = (0.0f >= x_1818);
  let x_1822 : f32 = u_xlat4.z;
  u_xlatb54 = (x_1822 >= 1.0f);
  let x_1824 : bool = u_xlatb54;
  let x_1825 : bool = u_xlatb29;
  u_xlatb29 = (x_1824 | x_1825);
  let x_1827 : bool = u_xlatb29;
  if (x_1827) {
    x_1828 = 1.0f;
  } else {
    let x_1833 : f32 = u_xlat4.x;
    x_1828 = x_1833;
  }
  let x_1834 : f32 = x_1828;
  u_xlat4.x = x_1834;
  let x_1836 : vec3<f32> = vs_TEXCOORD1;
  let x_1838 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1840 : vec3<f32> = (x_1836 + -(x_1838));
  let x_1841 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
  let x_1844 : vec4<f32> = u_xlat6;
  let x_1846 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_1844.x, x_1844.y, x_1844.z), vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
  let x_1850 : f32 = u_xlat29;
  let x_1852 : f32 = x_217.x_MainLightShadowParams.z;
  let x_1855 : f32 = x_217.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1850 * x_1852) + x_1855);
  let x_1857 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1857, 0.0f, 1.0f);
  let x_1860 : f32 = u_xlat4.x;
  u_xlat6.x = (-(x_1860) + 1.0f);
  let x_1864 : f32 = u_xlat54;
  let x_1866 : f32 = u_xlat6.x;
  let x_1869 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1864 * x_1866) + x_1869);
  let x_1872 : vec3<f32> = u_xlat3;
  let x_1874 : vec4<f32> = u_xlat2;
  u_xlat54 = dot(-(x_1872), vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
  let x_1877 : f32 = u_xlat54;
  let x_1878 : f32 = u_xlat54;
  u_xlat54 = (x_1877 + x_1878);
  let x_1880 : vec4<f32> = u_xlat2;
  let x_1882 : f32 = u_xlat54;
  let x_1886 : vec3<f32> = u_xlat3;
  let x_1888 : vec3<f32> = ((vec3<f32>(x_1880.x, x_1880.y, x_1880.z) * -(vec3<f32>(x_1882, x_1882, x_1882))) + -(x_1886));
  let x_1889 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
  let x_1891 : vec4<f32> = u_xlat2;
  let x_1893 : vec3<f32> = u_xlat3;
  u_xlat54 = dot(vec3<f32>(x_1891.x, x_1891.y, x_1891.z), x_1893);
  let x_1895 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1895, 0.0f, 1.0f);
  let x_1897 : f32 = u_xlat54;
  u_xlat54 = (-(x_1897) + 1.0f);
  let x_1900 : f32 = u_xlat54;
  let x_1901 : f32 = u_xlat54;
  u_xlat54 = (x_1900 * x_1901);
  let x_1903 : f32 = u_xlat54;
  let x_1904 : f32 = u_xlat54;
  u_xlat54 = (x_1903 * x_1904);
  let x_1906 : f32 = u_xlat75;
  u_xlat81 = ((-(x_1906) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1912 : f32 = u_xlat75;
  let x_1913 : f32 = u_xlat81;
  u_xlat75 = (x_1912 * x_1913);
  let x_1915 : f32 = u_xlat75;
  u_xlat75 = (x_1915 * 6.0f);
  let x_1926 : vec4<f32> = u_xlat6;
  let x_1928 : f32 = u_xlat75;
  let x_1929 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1926.x, x_1926.y, x_1926.z), x_1928);
  u_xlat6 = x_1929;
  let x_1931 : f32 = u_xlat6.w;
  u_xlat75 = (x_1931 + -1.0f);
  let x_1934 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_1935 : f32 = u_xlat75;
  u_xlat75 = ((x_1934 * x_1935) + 1.0f);
  let x_1938 : f32 = u_xlat75;
  u_xlat75 = max(x_1938, 0.0f);
  let x_1940 : f32 = u_xlat75;
  u_xlat75 = log2(x_1940);
  let x_1942 : f32 = u_xlat75;
  let x_1944 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_1942 * x_1944);
  let x_1946 : f32 = u_xlat75;
  u_xlat75 = exp2(x_1946);
  let x_1948 : f32 = u_xlat75;
  let x_1950 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_1948 * x_1950);
  let x_1952 : vec4<f32> = u_xlat6;
  let x_1954 : f32 = u_xlat75;
  let x_1956 : vec3<f32> = (vec3<f32>(x_1952.x, x_1952.y, x_1952.z) * vec3<f32>(x_1954, x_1954, x_1954));
  let x_1957 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1956.x, x_1956.y, x_1956.z, x_1957.w);
  let x_1959 : f32 = u_xlat78;
  let x_1961 : f32 = u_xlat78;
  let x_1965 : vec2<f32> = ((vec2<f32>(x_1959, x_1959) * vec2<f32>(x_1961, x_1961)) + vec2<f32>(-1.0f, 1.0f));
  let x_1966 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1965.x, x_1965.y, x_1966.z, x_1966.w);
  let x_1969 : f32 = u_xlat7.y;
  u_xlat75 = (1.0f / x_1969);
  let x_1972 : vec4<f32> = u_xlat0;
  let x_1975 : f32 = u_xlat77;
  u_xlat32 = (-(vec3<f32>(x_1972.x, x_1972.y, x_1972.z)) + vec3<f32>(x_1975, x_1975, x_1975));
  let x_1978 : f32 = u_xlat54;
  let x_1980 : vec3<f32> = u_xlat32;
  let x_1982 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1978, x_1978, x_1978) * x_1980) + vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
  let x_1985 : f32 = u_xlat75;
  let x_1987 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1985, x_1985, x_1985) * x_1987);
  let x_1989 : vec4<f32> = u_xlat6;
  let x_1991 : vec3<f32> = u_xlat32;
  let x_1992 : vec3<f32> = (vec3<f32>(x_1989.x, x_1989.y, x_1989.z) * x_1991);
  let x_1993 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  let x_1995 : vec4<f32> = u_xlat5;
  let x_1997 : vec3<f32> = u_xlat26;
  let x_1999 : vec4<f32> = u_xlat6;
  let x_2001 : vec3<f32> = ((vec3<f32>(x_1995.x, x_1995.y, x_1995.z) * x_1997) + vec3<f32>(x_1999.x, x_1999.y, x_1999.z));
  let x_2002 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2001.x, x_2001.y, x_2001.z, x_2002.w);
  let x_2005 : f32 = u_xlat4.x;
  let x_2007 : f32 = x_95.unity_LightData.z;
  u_xlat75 = (x_2005 * x_2007);
  let x_2009 : vec4<f32> = u_xlat2;
  let x_2012 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat77 = dot(vec3<f32>(x_2009.x, x_2009.y, x_2009.z), vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
  let x_2015 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2015, 0.0f, 1.0f);
  let x_2017 : f32 = u_xlat75;
  let x_2018 : f32 = u_xlat77;
  u_xlat75 = (x_2017 * x_2018);
  let x_2020 : f32 = u_xlat75;
  let x_2023 : vec4<f32> = x_45.x_MainLightColor;
  let x_2025 : vec3<f32> = (vec3<f32>(x_2020, x_2020, x_2020) * vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
  let x_2026 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  let x_2028 : vec3<f32> = u_xlat3;
  let x_2030 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat32 = (x_2028 + vec3<f32>(x_2030.x, x_2030.y, x_2030.z));
  let x_2033 : vec3<f32> = u_xlat32;
  let x_2034 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_2033, x_2034);
  let x_2036 : f32 = u_xlat75;
  u_xlat75 = max(x_2036, 1.17549435e-38f);
  let x_2039 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_2039);
  let x_2041 : f32 = u_xlat75;
  let x_2043 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2041, x_2041, x_2041) * x_2043);
  let x_2045 : vec4<f32> = u_xlat2;
  let x_2047 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(vec3<f32>(x_2045.x, x_2045.y, x_2045.z), x_2047);
  let x_2049 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2049, 0.0f, 1.0f);
  let x_2052 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2054 : vec3<f32> = u_xlat32;
  u_xlat77 = dot(vec3<f32>(x_2052.x, x_2052.y, x_2052.z), x_2054);
  let x_2056 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2056, 0.0f, 1.0f);
  let x_2058 : f32 = u_xlat75;
  let x_2059 : f32 = u_xlat75;
  u_xlat75 = (x_2058 * x_2059);
  let x_2061 : f32 = u_xlat75;
  let x_2063 : f32 = u_xlat7.x;
  u_xlat75 = ((x_2061 * x_2063) + 1.00001001358032226562f);
  let x_2067 : f32 = u_xlat77;
  let x_2068 : f32 = u_xlat77;
  u_xlat77 = (x_2067 * x_2068);
  let x_2070 : f32 = u_xlat75;
  let x_2071 : f32 = u_xlat75;
  u_xlat75 = (x_2070 * x_2071);
  let x_2073 : f32 = u_xlat77;
  u_xlat77 = max(x_2073, 0.10000000149011611938f);
  let x_2076 : f32 = u_xlat75;
  let x_2077 : f32 = u_xlat77;
  u_xlat75 = (x_2076 * x_2077);
  let x_2079 : f32 = u_xlat80;
  let x_2080 : f32 = u_xlat75;
  u_xlat75 = (x_2079 * x_2080);
  let x_2082 : f32 = u_xlat79;
  let x_2083 : f32 = u_xlat75;
  u_xlat75 = (x_2082 / x_2083);
  let x_2085 : vec4<f32> = u_xlat0;
  let x_2087 : f32 = u_xlat75;
  let x_2090 : vec3<f32> = u_xlat26;
  u_xlat32 = ((vec3<f32>(x_2085.x, x_2085.y, x_2085.z) * vec3<f32>(x_2087, x_2087, x_2087)) + x_2090);
  let x_2093 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2095 : f32 = x_95.unity_LightData.y;
  u_xlat75 = min(x_2093, x_2095);
  let x_2097 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2097));
  let x_2100 : f32 = u_xlat29;
  let x_2103 : f32 = x_217.x_AdditionalShadowFadeParams.x;
  let x_2106 : f32 = x_217.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2100 * x_2103) + x_2106);
  let x_2108 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2108, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2120 : u32 = u_xlatu_loop_1;
    let x_2121 : u32 = u_xlatu75;
    if ((x_2120 < x_2121)) {
    } else {
      break;
    }
    let x_2124 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2124 >> 2u);
    let x_2127 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_2127 & 3u));
    let x_2130 : u32 = u_xlatu81;
    let x_2133 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_2130)];
    let x_2143 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2148 : vec4<u32> = indexable[x_2143];
    u_xlat81 = dot(x_2133, bitcast<vec4<f32>>(x_2148));
    let x_2152 : f32 = u_xlat81;
    u_xlati81 = i32(x_2152);
    let x_2154 : vec3<f32> = vs_TEXCOORD1;
    let x_2165 : i32 = u_xlati81;
    let x_2167 : vec4<f32> = x_2164.x_AdditionalLightsPosition[x_2165];
    let x_2170 : i32 = u_xlati81;
    let x_2172 : vec4<f32> = x_2164.x_AdditionalLightsPosition[x_2170];
    let x_2174 : vec3<f32> = ((-(x_2154) * vec3<f32>(x_2167.w, x_2167.w, x_2167.w)) + vec3<f32>(x_2172.x, x_2172.y, x_2172.z));
    let x_2175 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2174.x, x_2174.y, x_2174.z, x_2175.w);
    let x_2178 : vec4<f32> = u_xlat8;
    let x_2180 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_2178.x, x_2178.y, x_2178.z), vec3<f32>(x_2180.x, x_2180.y, x_2180.z));
    let x_2183 : f32 = u_xlat83;
    u_xlat83 = max(x_2183, 0.00006103515625f);
    let x_2186 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_2186);
    let x_2190 : vec4<f32> = u_xlat8;
    let x_2192 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_2190.x, x_2190.y, x_2190.z) * vec3<f32>(x_2192.x, x_2192.x, x_2192.x));
    let x_2195 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_2195);
    let x_2198 : f32 = u_xlat83;
    let x_2199 : i32 = u_xlati81;
    let x_2201 : f32 = x_2164.x_AdditionalLightsAttenuation[x_2199].x;
    u_xlat83 = (x_2198 * x_2201);
    let x_2203 : f32 = u_xlat83;
    let x_2205 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2203) * x_2205) + 1.0f);
    let x_2208 : f32 = u_xlat83;
    u_xlat83 = max(x_2208, 0.0f);
    let x_2210 : f32 = u_xlat83;
    let x_2211 : f32 = u_xlat83;
    u_xlat83 = (x_2210 * x_2211);
    let x_2213 : f32 = u_xlat83;
    let x_2215 : f32 = u_xlat10.x;
    u_xlat83 = (x_2213 * x_2215);
    let x_2217 : i32 = u_xlati81;
    let x_2219 : vec4<f32> = x_2164.x_AdditionalLightsSpotDir[x_2217];
    let x_2221 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2219.x, x_2219.y, x_2219.z), x_2221);
    let x_2225 : f32 = u_xlat10.x;
    let x_2226 : i32 = u_xlati81;
    let x_2228 : f32 = x_2164.x_AdditionalLightsAttenuation[x_2226].z;
    let x_2230 : i32 = u_xlati81;
    let x_2232 : f32 = x_2164.x_AdditionalLightsAttenuation[x_2230].w;
    u_xlat10.x = ((x_2225 * x_2228) + x_2232);
    let x_2236 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2236, 0.0f, 1.0f);
    let x_2240 : f32 = u_xlat10.x;
    let x_2242 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2240 * x_2242);
    let x_2245 : f32 = u_xlat83;
    let x_2247 : f32 = u_xlat10.x;
    u_xlat83 = (x_2245 * x_2247);
    let x_2251 : i32 = u_xlati81;
    let x_2253 : f32 = x_217.x_AdditionalShadowParams[x_2251].w;
    u_xlati10 = i32(x_2253);
    let x_2258 : i32 = u_xlati10;
    u_xlatb35.x = (x_2258 >= 0i);
    let x_2262 : bool = u_xlatb35.x;
    if (x_2262) {
      let x_2266 : i32 = u_xlati81;
      let x_2268 : f32 = x_217.x_AdditionalShadowParams[x_2266].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2268, x_2268, x_2268, x_2268))));
      let x_2274 : bool = u_xlatb35.x;
      if (x_2274) {
        let x_2277 : vec3<f32> = u_xlat34;
        let x_2280 : vec3<f32> = u_xlat34;
        let x_2283 : vec4<bool> = (abs(vec4<f32>(x_2277.z, x_2277.z, x_2277.y, x_2277.y)) >= abs(vec4<f32>(x_2280.x, x_2280.y, x_2280.x, x_2280.x)));
        u_xlatb35 = vec3<bool>(x_2283.x, x_2283.y, x_2283.z);
        let x_2286 : bool = u_xlatb35.y;
        let x_2288 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2286 & x_2288);
        let x_2292 : vec3<f32> = u_xlat34;
        let x_2295 : vec4<bool> = (-(vec4<f32>(x_2292.z, x_2292.y, x_2292.x, x_2292.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2295.x, x_2295.y, x_2295.z);
        let x_2298 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2298);
        let x_2303 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2303);
        let x_2307 : bool = u_xlatb11.z;
        u_xlat60.x = select(0.0f, 1.0f, x_2307);
        let x_2311 : bool = u_xlatb35.z;
        if (x_2311) {
          let x_2316 : f32 = u_xlat11.y;
          x_2312 = x_2316;
        } else {
          let x_2319 : f32 = u_xlat60.x;
          x_2312 = x_2319;
        }
        let x_2320 : f32 = x_2312;
        u_xlat60.x = x_2320;
        let x_2324 : bool = u_xlatb35.x;
        if (x_2324) {
          let x_2329 : f32 = u_xlat11.x;
          x_2325 = x_2329;
        } else {
          let x_2332 : f32 = u_xlat60.x;
          x_2325 = x_2332;
        }
        let x_2333 : f32 = x_2325;
        u_xlat35 = x_2333;
        let x_2334 : i32 = u_xlati81;
        let x_2336 : f32 = x_217.x_AdditionalShadowParams[x_2334].w;
        u_xlat60.x = trunc(x_2336);
        let x_2339 : f32 = u_xlat35;
        let x_2341 : f32 = u_xlat60.x;
        u_xlat35 = (x_2339 + x_2341);
        let x_2343 : f32 = u_xlat35;
        u_xlati10 = i32(x_2343);
      }
      let x_2345 : i32 = u_xlati10;
      u_xlati10 = (x_2345 << bitcast<u32>(2i));
      let x_2347 : vec3<f32> = vs_TEXCOORD1;
      let x_2350 : i32 = u_xlati10;
      let x_2353 : i32 = u_xlati10;
      let x_2357 : vec4<f32> = x_217.x_AdditionalLightsWorldToShadow[((x_2350 + 1i) / 4i)][((x_2353 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2347.y, x_2347.y, x_2347.y, x_2347.y) * x_2357);
      let x_2359 : i32 = u_xlati10;
      let x_2361 : i32 = u_xlati10;
      let x_2364 : vec4<f32> = x_217.x_AdditionalLightsWorldToShadow[(x_2359 / 4i)][(x_2361 % 4i)];
      let x_2365 : vec3<f32> = vs_TEXCOORD1;
      let x_2368 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2364 * vec4<f32>(x_2365.x, x_2365.x, x_2365.x, x_2365.x)) + x_2368);
      let x_2370 : i32 = u_xlati10;
      let x_2373 : i32 = u_xlati10;
      let x_2377 : vec4<f32> = x_217.x_AdditionalLightsWorldToShadow[((x_2370 + 2i) / 4i)][((x_2373 + 2i) % 4i)];
      let x_2378 : vec3<f32> = vs_TEXCOORD1;
      let x_2381 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2377 * vec4<f32>(x_2378.z, x_2378.z, x_2378.z, x_2378.z)) + x_2381);
      let x_2383 : vec4<f32> = u_xlat11;
      let x_2384 : i32 = u_xlati10;
      let x_2387 : i32 = u_xlati10;
      let x_2391 : vec4<f32> = x_217.x_AdditionalLightsWorldToShadow[((x_2384 + 3i) / 4i)][((x_2387 + 3i) % 4i)];
      u_xlat10 = (x_2383 + x_2391);
      let x_2393 : vec4<f32> = u_xlat10;
      let x_2395 : vec4<f32> = u_xlat10;
      let x_2397 : vec3<f32> = (vec3<f32>(x_2393.x, x_2393.y, x_2393.z) / vec3<f32>(x_2395.w, x_2395.w, x_2395.w));
      let x_2398 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
      let x_2401 : i32 = u_xlati81;
      let x_2403 : f32 = x_217.x_AdditionalShadowParams[x_2401].y;
      u_xlatb85 = (0.0f < x_2403);
      let x_2405 : bool = u_xlatb85;
      if (x_2405) {
        let x_2408 : i32 = u_xlati81;
        let x_2410 : f32 = x_217.x_AdditionalShadowParams[x_2408].y;
        u_xlatb85 = (1.0f == x_2410);
        let x_2412 : bool = u_xlatb85;
        if (x_2412) {
          let x_2415 : vec4<f32> = u_xlat10;
          let x_2419 : vec4<f32> = x_217.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2415.x, x_2415.y, x_2415.x, x_2415.y) + x_2419);
          let x_2422 : vec4<f32> = u_xlat11;
          let x_2423 : vec2<f32> = vec2<f32>(x_2422.x, x_2422.y);
          let x_2425 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2423.x, x_2423.y, x_2425);
          let x_2433 : vec3<f32> = txVec30;
          let x_2435 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2433.xy, x_2433.z);
          u_xlat12.x = x_2435;
          let x_2438 : vec4<f32> = u_xlat11;
          let x_2439 : vec2<f32> = vec2<f32>(x_2438.z, x_2438.w);
          let x_2441 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2439.x, x_2439.y, x_2441);
          let x_2448 : vec3<f32> = txVec31;
          let x_2450 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2448.xy, x_2448.z);
          u_xlat12.y = x_2450;
          let x_2452 : vec4<f32> = u_xlat10;
          let x_2456 : vec4<f32> = x_217.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2452.x, x_2452.y, x_2452.x, x_2452.y) + x_2456);
          let x_2459 : vec4<f32> = u_xlat11;
          let x_2460 : vec2<f32> = vec2<f32>(x_2459.x, x_2459.y);
          let x_2462 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2460.x, x_2460.y, x_2462);
          let x_2469 : vec3<f32> = txVec32;
          let x_2471 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2469.xy, x_2469.z);
          u_xlat12.z = x_2471;
          let x_2474 : vec4<f32> = u_xlat11;
          let x_2475 : vec2<f32> = vec2<f32>(x_2474.z, x_2474.w);
          let x_2477 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2475.x, x_2475.y, x_2477);
          let x_2484 : vec3<f32> = txVec33;
          let x_2486 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2484.xy, x_2484.z);
          u_xlat12.w = x_2486;
          let x_2489 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2489, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2492 : i32 = u_xlati81;
          let x_2494 : f32 = x_217.x_AdditionalShadowParams[x_2492].y;
          u_xlatb11.x = (2.0f == x_2494);
          let x_2498 : bool = u_xlatb11.x;
          if (x_2498) {
            let x_2501 : vec4<f32> = u_xlat10;
            let x_2505 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2508 : vec2<f32> = ((vec2<f32>(x_2501.x, x_2501.y) * vec2<f32>(x_2505.z, x_2505.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2509 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2508.x, x_2508.y, x_2509.z, x_2509.w);
            let x_2511 : vec4<f32> = u_xlat11;
            let x_2513 : vec2<f32> = floor(vec2<f32>(x_2511.x, x_2511.y));
            let x_2514 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2513.x, x_2513.y, x_2514.z, x_2514.w);
            let x_2517 : vec4<f32> = u_xlat10;
            let x_2520 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2523 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2517.x, x_2517.y) * vec2<f32>(x_2520.z, x_2520.w)) + -(vec2<f32>(x_2523.x, x_2523.y)));
            let x_2527 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2527.x, x_2527.x, x_2527.y, x_2527.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2530 : vec4<f32> = u_xlat12;
            let x_2532 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2530.x, x_2530.x, x_2530.z, x_2530.z) * vec4<f32>(x_2532.x, x_2532.x, x_2532.z, x_2532.z));
            let x_2535 : vec4<f32> = u_xlat13;
            let x_2537 : vec2<f32> = (vec2<f32>(x_2535.y, x_2535.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2538 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2537.x, x_2538.y, x_2537.y, x_2538.w);
            let x_2540 : vec4<f32> = u_xlat13;
            let x_2543 : vec2<f32> = u_xlat61;
            let x_2545 : vec2<f32> = ((vec2<f32>(x_2540.x, x_2540.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2543));
            let x_2546 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2545.x, x_2545.y, x_2546.z, x_2546.w);
            let x_2548 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2548) + vec2<f32>(1.0f, 1.0f));
            let x_2551 : vec2<f32> = u_xlat61;
            let x_2552 : vec2<f32> = min(x_2551, vec2<f32>(0.0f, 0.0f));
            let x_2553 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2552.x, x_2552.y, x_2553.z, x_2553.w);
            let x_2555 : vec4<f32> = u_xlat14;
            let x_2558 : vec4<f32> = u_xlat14;
            let x_2561 : vec2<f32> = u_xlat63;
            let x_2562 : vec2<f32> = ((-(vec2<f32>(x_2555.x, x_2555.y)) * vec2<f32>(x_2558.x, x_2558.y)) + x_2561);
            let x_2563 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2562.x, x_2562.y, x_2563.z, x_2563.w);
            let x_2565 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2565, vec2<f32>(0.0f, 0.0f));
            let x_2567 : vec2<f32> = u_xlat61;
            let x_2569 : vec2<f32> = u_xlat61;
            let x_2571 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2567) * x_2569) + vec2<f32>(x_2571.y, x_2571.w));
            let x_2574 : vec4<f32> = u_xlat14;
            let x_2576 : vec2<f32> = (vec2<f32>(x_2574.x, x_2574.y) + vec2<f32>(1.0f, 1.0f));
            let x_2577 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2576.x, x_2576.y, x_2577.z, x_2577.w);
            let x_2579 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2579 + vec2<f32>(1.0f, 1.0f));
            let x_2581 : vec4<f32> = u_xlat13;
            let x_2583 : vec2<f32> = (vec2<f32>(x_2581.x, x_2581.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2584 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2583.x, x_2583.y, x_2584.z, x_2584.w);
            let x_2586 : vec2<f32> = u_xlat63;
            let x_2587 : vec2<f32> = (x_2586 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2588 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2587.x, x_2587.y, x_2588.z, x_2588.w);
            let x_2590 : vec4<f32> = u_xlat14;
            let x_2592 : vec2<f32> = (vec2<f32>(x_2590.x, x_2590.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2593 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2592.x, x_2592.y, x_2593.z, x_2593.w);
            let x_2595 : vec2<f32> = u_xlat61;
            let x_2596 : vec2<f32> = (x_2595 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2597 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2596.x, x_2596.y, x_2597.z, x_2597.w);
            let x_2599 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2599.y, x_2599.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2603 : f32 = u_xlat14.x;
            u_xlat15.z = x_2603;
            let x_2606 : f32 = u_xlat61.x;
            u_xlat15.w = x_2606;
            let x_2609 : f32 = u_xlat16.x;
            u_xlat13.z = x_2609;
            let x_2612 : f32 = u_xlat12.x;
            u_xlat13.w = x_2612;
            let x_2614 : vec4<f32> = u_xlat13;
            let x_2616 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2614.z, x_2614.w, x_2614.x, x_2614.z) + vec4<f32>(x_2616.z, x_2616.w, x_2616.x, x_2616.z));
            let x_2620 : f32 = u_xlat15.y;
            u_xlat14.z = x_2620;
            let x_2623 : f32 = u_xlat61.y;
            u_xlat14.w = x_2623;
            let x_2626 : f32 = u_xlat13.y;
            u_xlat16.z = x_2626;
            let x_2629 : f32 = u_xlat12.z;
            u_xlat16.w = x_2629;
            let x_2631 : vec4<f32> = u_xlat14;
            let x_2633 : vec4<f32> = u_xlat16;
            let x_2635 : vec3<f32> = (vec3<f32>(x_2631.z, x_2631.y, x_2631.w) + vec3<f32>(x_2633.z, x_2633.y, x_2633.w));
            let x_2636 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2635.x, x_2635.y, x_2635.z, x_2636.w);
            let x_2638 : vec4<f32> = u_xlat13;
            let x_2640 : vec4<f32> = u_xlat17;
            let x_2642 : vec3<f32> = (vec3<f32>(x_2638.x, x_2638.z, x_2638.w) / vec3<f32>(x_2640.z, x_2640.w, x_2640.y));
            let x_2643 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
            let x_2645 : vec4<f32> = u_xlat13;
            let x_2647 : vec3<f32> = (vec3<f32>(x_2645.x, x_2645.y, x_2645.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2648 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2648.w);
            let x_2650 : vec4<f32> = u_xlat16;
            let x_2652 : vec4<f32> = u_xlat12;
            let x_2654 : vec3<f32> = (vec3<f32>(x_2650.z, x_2650.y, x_2650.w) / vec3<f32>(x_2652.x, x_2652.y, x_2652.z));
            let x_2655 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2654.x, x_2654.y, x_2654.z, x_2655.w);
            let x_2657 : vec4<f32> = u_xlat14;
            let x_2659 : vec3<f32> = (vec3<f32>(x_2657.x, x_2657.y, x_2657.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2660 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2659.x, x_2659.y, x_2659.z, x_2660.w);
            let x_2662 : vec4<f32> = u_xlat13;
            let x_2665 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2667 : vec3<f32> = (vec3<f32>(x_2662.y, x_2662.x, x_2662.z) * vec3<f32>(x_2665.x, x_2665.x, x_2665.x));
            let x_2668 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2667.x, x_2667.y, x_2667.z, x_2668.w);
            let x_2670 : vec4<f32> = u_xlat14;
            let x_2673 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2675 : vec3<f32> = (vec3<f32>(x_2670.x, x_2670.y, x_2670.z) * vec3<f32>(x_2673.y, x_2673.y, x_2673.y));
            let x_2676 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2675.x, x_2675.y, x_2675.z, x_2676.w);
            let x_2679 : f32 = u_xlat14.x;
            u_xlat13.w = x_2679;
            let x_2681 : vec4<f32> = u_xlat11;
            let x_2684 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2687 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2681.x, x_2681.y, x_2681.x, x_2681.y) * vec4<f32>(x_2684.x, x_2684.y, x_2684.x, x_2684.y)) + vec4<f32>(x_2687.y, x_2687.w, x_2687.x, x_2687.w));
            let x_2690 : vec4<f32> = u_xlat11;
            let x_2693 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2696 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2690.x, x_2690.y) * vec2<f32>(x_2693.x, x_2693.y)) + vec2<f32>(x_2696.z, x_2696.w));
            let x_2700 : f32 = u_xlat13.y;
            u_xlat14.w = x_2700;
            let x_2702 : vec4<f32> = u_xlat14;
            let x_2703 : vec2<f32> = vec2<f32>(x_2702.y, x_2702.z);
            let x_2704 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2704.x, x_2703.x, x_2704.z, x_2703.y);
            let x_2706 : vec4<f32> = u_xlat11;
            let x_2709 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2712 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2706.x, x_2706.y, x_2706.x, x_2706.y) * vec4<f32>(x_2709.x, x_2709.y, x_2709.x, x_2709.y)) + vec4<f32>(x_2712.x, x_2712.y, x_2712.z, x_2712.y));
            let x_2715 : vec4<f32> = u_xlat11;
            let x_2718 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2721 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2715.x, x_2715.y, x_2715.x, x_2715.y) * vec4<f32>(x_2718.x, x_2718.y, x_2718.x, x_2718.y)) + vec4<f32>(x_2721.w, x_2721.y, x_2721.w, x_2721.z));
            let x_2724 : vec4<f32> = u_xlat11;
            let x_2727 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2730 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y) * vec4<f32>(x_2727.x, x_2727.y, x_2727.x, x_2727.y)) + vec4<f32>(x_2730.x, x_2730.w, x_2730.z, x_2730.w));
            let x_2733 : vec4<f32> = u_xlat12;
            let x_2735 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2733.x, x_2733.x, x_2733.x, x_2733.y) * vec4<f32>(x_2735.z, x_2735.w, x_2735.y, x_2735.z));
            let x_2738 : vec4<f32> = u_xlat12;
            let x_2740 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2738.y, x_2738.y, x_2738.z, x_2738.z) * x_2740);
            let x_2743 : f32 = u_xlat12.z;
            let x_2745 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2743 * x_2745);
            let x_2749 : vec4<f32> = u_xlat15;
            let x_2750 : vec2<f32> = vec2<f32>(x_2749.x, x_2749.y);
            let x_2752 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2750.x, x_2750.y, x_2752);
            let x_2760 : vec3<f32> = txVec34;
            let x_2762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2760.xy, x_2760.z);
            u_xlat36 = x_2762;
            let x_2764 : vec4<f32> = u_xlat15;
            let x_2765 : vec2<f32> = vec2<f32>(x_2764.z, x_2764.w);
            let x_2767 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2765.x, x_2765.y, x_2767);
            let x_2774 : vec3<f32> = txVec35;
            let x_2776 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2774.xy, x_2774.z);
            u_xlat12.x = x_2776;
            let x_2779 : f32 = u_xlat12.x;
            let x_2781 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2779 * x_2781);
            let x_2785 : f32 = u_xlat18.x;
            let x_2786 : f32 = u_xlat36;
            let x_2789 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2785 * x_2786) + x_2789);
            let x_2792 : vec2<f32> = u_xlat61;
            let x_2794 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2792.x, x_2792.y, x_2794);
            let x_2801 : vec3<f32> = txVec36;
            let x_2803 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2801.xy, x_2801.z);
            u_xlat61.x = x_2803;
            let x_2806 : f32 = u_xlat18.z;
            let x_2808 : f32 = u_xlat61.x;
            let x_2810 : f32 = u_xlat36;
            u_xlat36 = ((x_2806 * x_2808) + x_2810);
            let x_2813 : vec4<f32> = u_xlat14;
            let x_2814 : vec2<f32> = vec2<f32>(x_2813.x, x_2813.y);
            let x_2816 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2814.x, x_2814.y, x_2816);
            let x_2823 : vec3<f32> = txVec37;
            let x_2825 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2823.xy, x_2823.z);
            u_xlat61.x = x_2825;
            let x_2828 : f32 = u_xlat18.w;
            let x_2830 : f32 = u_xlat61.x;
            let x_2832 : f32 = u_xlat36;
            u_xlat36 = ((x_2828 * x_2830) + x_2832);
            let x_2835 : vec4<f32> = u_xlat16;
            let x_2836 : vec2<f32> = vec2<f32>(x_2835.x, x_2835.y);
            let x_2838 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2836.x, x_2836.y, x_2838);
            let x_2845 : vec3<f32> = txVec38;
            let x_2847 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2845.xy, x_2845.z);
            u_xlat61.x = x_2847;
            let x_2850 : f32 = u_xlat19.x;
            let x_2852 : f32 = u_xlat61.x;
            let x_2854 : f32 = u_xlat36;
            u_xlat36 = ((x_2850 * x_2852) + x_2854);
            let x_2857 : vec4<f32> = u_xlat16;
            let x_2858 : vec2<f32> = vec2<f32>(x_2857.z, x_2857.w);
            let x_2860 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2858.x, x_2858.y, x_2860);
            let x_2867 : vec3<f32> = txVec39;
            let x_2869 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2867.xy, x_2867.z);
            u_xlat61.x = x_2869;
            let x_2872 : f32 = u_xlat19.y;
            let x_2874 : f32 = u_xlat61.x;
            let x_2876 : f32 = u_xlat36;
            u_xlat36 = ((x_2872 * x_2874) + x_2876);
            let x_2879 : vec4<f32> = u_xlat14;
            let x_2880 : vec2<f32> = vec2<f32>(x_2879.z, x_2879.w);
            let x_2882 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2880.x, x_2880.y, x_2882);
            let x_2889 : vec3<f32> = txVec40;
            let x_2891 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2889.xy, x_2889.z);
            u_xlat61.x = x_2891;
            let x_2894 : f32 = u_xlat19.z;
            let x_2896 : f32 = u_xlat61.x;
            let x_2898 : f32 = u_xlat36;
            u_xlat36 = ((x_2894 * x_2896) + x_2898);
            let x_2901 : vec4<f32> = u_xlat13;
            let x_2902 : vec2<f32> = vec2<f32>(x_2901.x, x_2901.y);
            let x_2904 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2902.x, x_2902.y, x_2904);
            let x_2911 : vec3<f32> = txVec41;
            let x_2913 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2911.xy, x_2911.z);
            u_xlat61.x = x_2913;
            let x_2916 : f32 = u_xlat19.w;
            let x_2918 : f32 = u_xlat61.x;
            let x_2920 : f32 = u_xlat36;
            u_xlat36 = ((x_2916 * x_2918) + x_2920);
            let x_2923 : vec4<f32> = u_xlat13;
            let x_2924 : vec2<f32> = vec2<f32>(x_2923.z, x_2923.w);
            let x_2926 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2924.x, x_2924.y, x_2926);
            let x_2933 : vec3<f32> = txVec42;
            let x_2935 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2933.xy, x_2933.z);
            u_xlat61.x = x_2935;
            let x_2938 : f32 = u_xlat11.x;
            let x_2940 : f32 = u_xlat61.x;
            let x_2942 : f32 = u_xlat36;
            u_xlat85 = ((x_2938 * x_2940) + x_2942);
          } else {
            let x_2945 : vec4<f32> = u_xlat10;
            let x_2948 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2951 : vec2<f32> = ((vec2<f32>(x_2945.x, x_2945.y) * vec2<f32>(x_2948.z, x_2948.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2952 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2951.x, x_2951.y, x_2952.z, x_2952.w);
            let x_2954 : vec4<f32> = u_xlat11;
            let x_2956 : vec2<f32> = floor(vec2<f32>(x_2954.x, x_2954.y));
            let x_2957 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2956.x, x_2956.y, x_2957.z, x_2957.w);
            let x_2959 : vec4<f32> = u_xlat10;
            let x_2962 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_2965 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2959.x, x_2959.y) * vec2<f32>(x_2962.z, x_2962.w)) + -(vec2<f32>(x_2965.x, x_2965.y)));
            let x_2969 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2969.x, x_2969.x, x_2969.y, x_2969.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2972 : vec4<f32> = u_xlat12;
            let x_2974 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2972.x, x_2972.x, x_2972.z, x_2972.z) * vec4<f32>(x_2974.x, x_2974.x, x_2974.z, x_2974.z));
            let x_2977 : vec4<f32> = u_xlat13;
            let x_2979 : vec2<f32> = (vec2<f32>(x_2977.y, x_2977.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2980 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2980.x, x_2979.x, x_2980.z, x_2979.y);
            let x_2982 : vec4<f32> = u_xlat13;
            let x_2985 : vec2<f32> = u_xlat61;
            let x_2987 : vec2<f32> = ((vec2<f32>(x_2982.x, x_2982.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2985));
            let x_2988 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2987.x, x_2988.y, x_2987.y, x_2988.w);
            let x_2990 : vec2<f32> = u_xlat61;
            let x_2992 : vec2<f32> = (-(x_2990) + vec2<f32>(1.0f, 1.0f));
            let x_2993 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2992.x, x_2992.y, x_2993.z, x_2993.w);
            let x_2995 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2995, vec2<f32>(0.0f, 0.0f));
            let x_2997 : vec2<f32> = u_xlat63;
            let x_2999 : vec2<f32> = u_xlat63;
            let x_3001 : vec4<f32> = u_xlat13;
            let x_3003 : vec2<f32> = ((-(x_2997) * x_2999) + vec2<f32>(x_3001.x, x_3001.y));
            let x_3004 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3003.x, x_3003.y, x_3004.z, x_3004.w);
            let x_3006 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3006, vec2<f32>(0.0f, 0.0f));
            let x_3009 : vec2<f32> = u_xlat63;
            let x_3011 : vec2<f32> = u_xlat63;
            let x_3013 : vec4<f32> = u_xlat12;
            let x_3015 : vec2<f32> = ((-(x_3009) * x_3011) + vec2<f32>(x_3013.y, x_3013.w));
            let x_3016 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3015.x, x_3016.y, x_3015.y);
            let x_3018 : vec4<f32> = u_xlat13;
            let x_3021 : vec2<f32> = (vec2<f32>(x_3018.x, x_3018.y) + vec2<f32>(2.0f, 2.0f));
            let x_3022 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3021.x, x_3021.y, x_3022.z, x_3022.w);
            let x_3024 : vec3<f32> = u_xlat37;
            let x_3026 : vec2<f32> = (vec2<f32>(x_3024.x, x_3024.z) + vec2<f32>(2.0f, 2.0f));
            let x_3027 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3027.x, x_3026.x, x_3027.z, x_3026.y);
            let x_3030 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3030 * 0.08163200318813323975f);
            let x_3033 : vec4<f32> = u_xlat12;
            let x_3036 : vec3<f32> = (vec3<f32>(x_3033.z, x_3033.x, x_3033.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3037 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3036.x, x_3036.y, x_3036.z, x_3037.w);
            let x_3039 : vec4<f32> = u_xlat13;
            let x_3041 : vec2<f32> = (vec2<f32>(x_3039.x, x_3039.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3042 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3041.x, x_3041.y, x_3042.z, x_3042.w);
            let x_3045 : f32 = u_xlat16.y;
            u_xlat15.x = x_3045;
            let x_3047 : vec2<f32> = u_xlat61;
            let x_3050 : vec2<f32> = ((vec2<f32>(x_3047.x, x_3047.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3051 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3051.x, x_3050.x, x_3051.z, x_3050.y);
            let x_3053 : vec2<f32> = u_xlat61;
            let x_3056 : vec2<f32> = ((vec2<f32>(x_3053.x, x_3053.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3057 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3056.x, x_3057.y, x_3056.y, x_3057.w);
            let x_3060 : f32 = u_xlat12.x;
            u_xlat13.y = x_3060;
            let x_3063 : f32 = u_xlat14.y;
            u_xlat13.w = x_3063;
            let x_3065 : vec4<f32> = u_xlat13;
            let x_3066 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3065 + x_3066);
            let x_3068 : vec2<f32> = u_xlat61;
            let x_3071 : vec2<f32> = ((vec2<f32>(x_3068.y, x_3068.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3072 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3072.x, x_3071.x, x_3072.z, x_3071.y);
            let x_3074 : vec2<f32> = u_xlat61;
            let x_3077 : vec2<f32> = ((vec2<f32>(x_3074.y, x_3074.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3078 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3077.x, x_3078.y, x_3077.y, x_3078.w);
            let x_3081 : f32 = u_xlat12.y;
            u_xlat14.y = x_3081;
            let x_3083 : vec4<f32> = u_xlat14;
            let x_3084 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3083 + x_3084);
            let x_3086 : vec4<f32> = u_xlat13;
            let x_3087 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3086 / x_3087);
            let x_3089 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3089 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3091 : vec4<f32> = u_xlat14;
            let x_3092 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3091 / x_3092);
            let x_3094 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3094 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3096 : vec4<f32> = u_xlat13;
            let x_3099 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3096.w, x_3096.x, x_3096.y, x_3096.z) * vec4<f32>(x_3099.x, x_3099.x, x_3099.x, x_3099.x));
            let x_3102 : vec4<f32> = u_xlat14;
            let x_3105 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3102.x, x_3102.w, x_3102.y, x_3102.z) * vec4<f32>(x_3105.y, x_3105.y, x_3105.y, x_3105.y));
            let x_3108 : vec4<f32> = u_xlat13;
            let x_3109 : vec3<f32> = vec3<f32>(x_3108.y, x_3108.z, x_3108.w);
            let x_3110 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3109.x, x_3110.y, x_3109.y, x_3109.z);
            let x_3113 : f32 = u_xlat14.x;
            u_xlat16.y = x_3113;
            let x_3115 : vec4<f32> = u_xlat11;
            let x_3118 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3121 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3115.x, x_3115.y, x_3115.x, x_3115.y) * vec4<f32>(x_3118.x, x_3118.y, x_3118.x, x_3118.y)) + vec4<f32>(x_3121.x, x_3121.y, x_3121.z, x_3121.y));
            let x_3124 : vec4<f32> = u_xlat11;
            let x_3127 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3130 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3124.x, x_3124.y) * vec2<f32>(x_3127.x, x_3127.y)) + vec2<f32>(x_3130.w, x_3130.y));
            let x_3134 : f32 = u_xlat16.y;
            u_xlat13.y = x_3134;
            let x_3137 : f32 = u_xlat14.z;
            u_xlat16.y = x_3137;
            let x_3139 : vec4<f32> = u_xlat11;
            let x_3142 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3145 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3139.x, x_3139.y, x_3139.x, x_3139.y) * vec4<f32>(x_3142.x, x_3142.y, x_3142.x, x_3142.y)) + vec4<f32>(x_3145.x, x_3145.y, x_3145.z, x_3145.y));
            let x_3148 : vec4<f32> = u_xlat11;
            let x_3151 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3154 : vec4<f32> = u_xlat16;
            let x_3156 : vec2<f32> = ((vec2<f32>(x_3148.x, x_3148.y) * vec2<f32>(x_3151.x, x_3151.y)) + vec2<f32>(x_3154.w, x_3154.y));
            let x_3157 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3156.x, x_3156.y, x_3157.z, x_3157.w);
            let x_3160 : f32 = u_xlat16.y;
            u_xlat13.z = x_3160;
            let x_3162 : vec4<f32> = u_xlat11;
            let x_3165 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3168 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3162.x, x_3162.y, x_3162.x, x_3162.y) * vec4<f32>(x_3165.x, x_3165.y, x_3165.x, x_3165.y)) + vec4<f32>(x_3168.x, x_3168.y, x_3168.x, x_3168.z));
            let x_3172 : f32 = u_xlat14.w;
            u_xlat16.y = x_3172;
            let x_3175 : vec4<f32> = u_xlat11;
            let x_3178 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3181 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3175.x, x_3175.y, x_3175.x, x_3175.y) * vec4<f32>(x_3178.x, x_3178.y, x_3178.x, x_3178.y)) + vec4<f32>(x_3181.x, x_3181.y, x_3181.z, x_3181.y));
            let x_3185 : vec4<f32> = u_xlat11;
            let x_3188 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3191 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3185.x, x_3185.y) * vec2<f32>(x_3188.x, x_3188.y)) + vec2<f32>(x_3191.w, x_3191.y));
            let x_3195 : f32 = u_xlat16.y;
            u_xlat13.w = x_3195;
            let x_3198 : vec4<f32> = u_xlat11;
            let x_3201 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3204 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3198.x, x_3198.y) * vec2<f32>(x_3201.x, x_3201.y)) + vec2<f32>(x_3204.x, x_3204.w));
            let x_3207 : vec4<f32> = u_xlat16;
            let x_3208 : vec3<f32> = vec3<f32>(x_3207.x, x_3207.z, x_3207.w);
            let x_3209 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3208.x, x_3209.y, x_3208.y, x_3208.z);
            let x_3211 : vec4<f32> = u_xlat11;
            let x_3214 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3217 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3211.x, x_3211.y, x_3211.x, x_3211.y) * vec4<f32>(x_3214.x, x_3214.y, x_3214.x, x_3214.y)) + vec4<f32>(x_3217.x, x_3217.y, x_3217.z, x_3217.y));
            let x_3221 : vec4<f32> = u_xlat11;
            let x_3224 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3227 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3221.x, x_3221.y) * vec2<f32>(x_3224.x, x_3224.y)) + vec2<f32>(x_3227.w, x_3227.y));
            let x_3231 : f32 = u_xlat13.x;
            u_xlat14.x = x_3231;
            let x_3233 : vec4<f32> = u_xlat11;
            let x_3236 : vec4<f32> = x_217.x_AdditionalShadowmapSize;
            let x_3239 : vec4<f32> = u_xlat14;
            let x_3241 : vec2<f32> = ((vec2<f32>(x_3233.x, x_3233.y) * vec2<f32>(x_3236.x, x_3236.y)) + vec2<f32>(x_3239.x, x_3239.y));
            let x_3242 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3241.x, x_3241.y, x_3242.z, x_3242.w);
            let x_3245 : vec4<f32> = u_xlat12;
            let x_3247 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3245.x, x_3245.x, x_3245.x, x_3245.x) * x_3247);
            let x_3250 : vec4<f32> = u_xlat12;
            let x_3252 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3250.y, x_3250.y, x_3250.y, x_3250.y) * x_3252);
            let x_3255 : vec4<f32> = u_xlat12;
            let x_3257 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3255.z, x_3255.z, x_3255.z, x_3255.z) * x_3257);
            let x_3259 : vec4<f32> = u_xlat12;
            let x_3261 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3259.w, x_3259.w, x_3259.w, x_3259.w) * x_3261);
            let x_3264 : vec4<f32> = u_xlat17;
            let x_3265 : vec2<f32> = vec2<f32>(x_3264.x, x_3264.y);
            let x_3267 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3265.x, x_3265.y, x_3267);
            let x_3274 : vec3<f32> = txVec43;
            let x_3276 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3274.xy, x_3274.z);
            u_xlat13.x = x_3276;
            let x_3279 : vec4<f32> = u_xlat17;
            let x_3280 : vec2<f32> = vec2<f32>(x_3279.z, x_3279.w);
            let x_3282 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3280.x, x_3280.y, x_3282);
            let x_3290 : vec3<f32> = txVec44;
            let x_3292 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3290.xy, x_3290.z);
            u_xlat88 = x_3292;
            let x_3293 : f32 = u_xlat88;
            let x_3295 : f32 = u_xlat22.y;
            u_xlat88 = (x_3293 * x_3295);
            let x_3298 : f32 = u_xlat22.x;
            let x_3300 : f32 = u_xlat13.x;
            let x_3302 : f32 = u_xlat88;
            u_xlat13.x = ((x_3298 * x_3300) + x_3302);
            let x_3306 : vec2<f32> = u_xlat61;
            let x_3308 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3306.x, x_3306.y, x_3308);
            let x_3315 : vec3<f32> = txVec45;
            let x_3317 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3315.xy, x_3315.z);
            u_xlat61.x = x_3317;
            let x_3320 : f32 = u_xlat22.z;
            let x_3322 : f32 = u_xlat61.x;
            let x_3325 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3320 * x_3322) + x_3325);
            let x_3329 : vec4<f32> = u_xlat20;
            let x_3330 : vec2<f32> = vec2<f32>(x_3329.x, x_3329.y);
            let x_3332 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3330.x, x_3330.y, x_3332);
            let x_3340 : vec3<f32> = txVec46;
            let x_3342 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3340.xy, x_3340.z);
            u_xlat86 = x_3342;
            let x_3344 : f32 = u_xlat22.w;
            let x_3345 : f32 = u_xlat86;
            let x_3348 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3344 * x_3345) + x_3348);
            let x_3352 : vec4<f32> = u_xlat18;
            let x_3353 : vec2<f32> = vec2<f32>(x_3352.x, x_3352.y);
            let x_3355 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3353.x, x_3353.y, x_3355);
            let x_3362 : vec3<f32> = txVec47;
            let x_3364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3362.xy, x_3362.z);
            u_xlat86 = x_3364;
            let x_3366 : f32 = u_xlat23.x;
            let x_3367 : f32 = u_xlat86;
            let x_3370 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3366 * x_3367) + x_3370);
            let x_3374 : vec4<f32> = u_xlat18;
            let x_3375 : vec2<f32> = vec2<f32>(x_3374.z, x_3374.w);
            let x_3377 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3375.x, x_3375.y, x_3377);
            let x_3384 : vec3<f32> = txVec48;
            let x_3386 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3384.xy, x_3384.z);
            u_xlat86 = x_3386;
            let x_3388 : f32 = u_xlat23.y;
            let x_3389 : f32 = u_xlat86;
            let x_3392 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3388 * x_3389) + x_3392);
            let x_3396 : vec4<f32> = u_xlat19;
            let x_3397 : vec2<f32> = vec2<f32>(x_3396.x, x_3396.y);
            let x_3399 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3397.x, x_3397.y, x_3399);
            let x_3406 : vec3<f32> = txVec49;
            let x_3408 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3406.xy, x_3406.z);
            u_xlat86 = x_3408;
            let x_3410 : f32 = u_xlat23.z;
            let x_3411 : f32 = u_xlat86;
            let x_3414 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3410 * x_3411) + x_3414);
            let x_3418 : vec4<f32> = u_xlat20;
            let x_3419 : vec2<f32> = vec2<f32>(x_3418.z, x_3418.w);
            let x_3421 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3419.x, x_3419.y, x_3421);
            let x_3428 : vec3<f32> = txVec50;
            let x_3430 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3428.xy, x_3428.z);
            u_xlat86 = x_3430;
            let x_3432 : f32 = u_xlat23.w;
            let x_3433 : f32 = u_xlat86;
            let x_3436 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3432 * x_3433) + x_3436);
            let x_3440 : vec4<f32> = u_xlat21;
            let x_3441 : vec2<f32> = vec2<f32>(x_3440.x, x_3440.y);
            let x_3443 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3441.x, x_3441.y, x_3443);
            let x_3450 : vec3<f32> = txVec51;
            let x_3452 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3450.xy, x_3450.z);
            u_xlat86 = x_3452;
            let x_3454 : f32 = u_xlat24.x;
            let x_3455 : f32 = u_xlat86;
            let x_3458 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3454 * x_3455) + x_3458);
            let x_3462 : vec4<f32> = u_xlat21;
            let x_3463 : vec2<f32> = vec2<f32>(x_3462.z, x_3462.w);
            let x_3465 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3463.x, x_3463.y, x_3465);
            let x_3472 : vec3<f32> = txVec52;
            let x_3474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3472.xy, x_3472.z);
            u_xlat86 = x_3474;
            let x_3476 : f32 = u_xlat24.y;
            let x_3477 : f32 = u_xlat86;
            let x_3480 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3476 * x_3477) + x_3480);
            let x_3484 : vec2<f32> = u_xlat38;
            let x_3486 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3484.x, x_3484.y, x_3486);
            let x_3493 : vec3<f32> = txVec53;
            let x_3495 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3493.xy, x_3493.z);
            u_xlat86 = x_3495;
            let x_3497 : f32 = u_xlat24.z;
            let x_3498 : f32 = u_xlat86;
            let x_3501 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3497 * x_3498) + x_3501);
            let x_3505 : vec2<f32> = u_xlat69;
            let x_3507 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3505.x, x_3505.y, x_3507);
            let x_3514 : vec3<f32> = txVec54;
            let x_3516 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3514.xy, x_3514.z);
            u_xlat86 = x_3516;
            let x_3518 : f32 = u_xlat24.w;
            let x_3519 : f32 = u_xlat86;
            let x_3522 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3518 * x_3519) + x_3522);
            let x_3526 : vec4<f32> = u_xlat16;
            let x_3527 : vec2<f32> = vec2<f32>(x_3526.x, x_3526.y);
            let x_3529 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3527.x, x_3527.y, x_3529);
            let x_3536 : vec3<f32> = txVec55;
            let x_3538 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3536.xy, x_3536.z);
            u_xlat86 = x_3538;
            let x_3540 : f32 = u_xlat12.x;
            let x_3541 : f32 = u_xlat86;
            let x_3544 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3540 * x_3541) + x_3544);
            let x_3548 : vec4<f32> = u_xlat16;
            let x_3549 : vec2<f32> = vec2<f32>(x_3548.z, x_3548.w);
            let x_3551 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3549.x, x_3549.y, x_3551);
            let x_3558 : vec3<f32> = txVec56;
            let x_3560 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3558.xy, x_3558.z);
            u_xlat86 = x_3560;
            let x_3562 : f32 = u_xlat12.y;
            let x_3563 : f32 = u_xlat86;
            let x_3566 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3562 * x_3563) + x_3566);
            let x_3570 : vec2<f32> = u_xlat64;
            let x_3572 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3570.x, x_3570.y, x_3572);
            let x_3579 : vec3<f32> = txVec57;
            let x_3581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3579.xy, x_3579.z);
            u_xlat86 = x_3581;
            let x_3583 : f32 = u_xlat12.z;
            let x_3584 : f32 = u_xlat86;
            let x_3587 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3583 * x_3584) + x_3587);
            let x_3591 : vec4<f32> = u_xlat11;
            let x_3592 : vec2<f32> = vec2<f32>(x_3591.x, x_3591.y);
            let x_3594 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3592.x, x_3592.y, x_3594);
            let x_3601 : vec3<f32> = txVec58;
            let x_3603 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3601.xy, x_3601.z);
            u_xlat11.x = x_3603;
            let x_3606 : f32 = u_xlat12.w;
            let x_3608 : f32 = u_xlat11.x;
            let x_3611 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3606 * x_3608) + x_3611);
          }
        }
      } else {
        let x_3615 : vec4<f32> = u_xlat10;
        let x_3616 : vec2<f32> = vec2<f32>(x_3615.x, x_3615.y);
        let x_3618 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3616.x, x_3616.y, x_3618);
        let x_3625 : vec3<f32> = txVec59;
        let x_3627 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3625.xy, x_3625.z);
        u_xlat85 = x_3627;
      }
      let x_3628 : i32 = u_xlati81;
      let x_3630 : f32 = x_217.x_AdditionalShadowParams[x_3628].x;
      u_xlat10.x = (1.0f + -(x_3630));
      let x_3634 : f32 = u_xlat85;
      let x_3635 : i32 = u_xlati81;
      let x_3637 : f32 = x_217.x_AdditionalShadowParams[x_3635].x;
      let x_3640 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3634 * x_3637) + x_3640);
      let x_3644 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3644);
      let x_3649 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3649 >= 1.0f);
      let x_3651 : bool = u_xlatb60;
      let x_3653 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3651 | x_3653);
      let x_3657 : bool = u_xlatb35.x;
      if (x_3657) {
        x_3658 = 1.0f;
      } else {
        let x_3663 : f32 = u_xlat10.x;
        x_3658 = x_3663;
      }
      let x_3664 : f32 = x_3658;
      u_xlat10.x = x_3664;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3669 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3669) + 1.0f);
    let x_3672 : f32 = u_xlat77;
    let x_3673 : f32 = u_xlat35;
    let x_3676 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3672 * x_3673) + x_3676);
    let x_3679 : f32 = u_xlat83;
    let x_3681 : f32 = u_xlat10.x;
    u_xlat83 = (x_3679 * x_3681);
    let x_3683 : vec4<f32> = u_xlat2;
    let x_3685 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_3683.x, x_3683.y, x_3683.z), x_3685);
    let x_3689 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3689, 0.0f, 1.0f);
    let x_3692 : f32 = u_xlat83;
    let x_3694 : f32 = u_xlat10.x;
    u_xlat83 = (x_3692 * x_3694);
    let x_3696 : f32 = u_xlat83;
    let x_3698 : i32 = u_xlati81;
    let x_3700 : vec4<f32> = x_2164.x_AdditionalLightsColor[x_3698];
    let x_3702 : vec3<f32> = (vec3<f32>(x_3696, x_3696, x_3696) * vec3<f32>(x_3700.x, x_3700.y, x_3700.z));
    let x_3703 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3702.x, x_3702.y, x_3702.z, x_3703.w);
    let x_3705 : vec4<f32> = u_xlat8;
    let x_3707 : vec4<f32> = u_xlat9;
    let x_3710 : vec3<f32> = u_xlat3;
    let x_3711 : vec3<f32> = ((vec3<f32>(x_3705.x, x_3705.y, x_3705.z) * vec3<f32>(x_3707.x, x_3707.x, x_3707.x)) + x_3710);
    let x_3712 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3711.x, x_3711.y, x_3711.z, x_3712.w);
    let x_3714 : vec4<f32> = u_xlat8;
    let x_3716 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3714.x, x_3714.y, x_3714.z), vec3<f32>(x_3716.x, x_3716.y, x_3716.z));
    let x_3719 : f32 = u_xlat81;
    u_xlat81 = max(x_3719, 1.17549435e-38f);
    let x_3721 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3721);
    let x_3723 : f32 = u_xlat81;
    let x_3725 : vec4<f32> = u_xlat8;
    let x_3727 : vec3<f32> = (vec3<f32>(x_3723, x_3723, x_3723) * vec3<f32>(x_3725.x, x_3725.y, x_3725.z));
    let x_3728 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3727.x, x_3727.y, x_3727.z, x_3728.w);
    let x_3730 : vec4<f32> = u_xlat2;
    let x_3732 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3730.x, x_3730.y, x_3730.z), vec3<f32>(x_3732.x, x_3732.y, x_3732.z));
    let x_3735 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3735, 0.0f, 1.0f);
    let x_3737 : vec3<f32> = u_xlat34;
    let x_3738 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3737, vec3<f32>(x_3738.x, x_3738.y, x_3738.z));
    let x_3743 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3743, 0.0f, 1.0f);
    let x_3746 : f32 = u_xlat81;
    let x_3747 : f32 = u_xlat81;
    u_xlat81 = (x_3746 * x_3747);
    let x_3749 : f32 = u_xlat81;
    let x_3751 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3749 * x_3751) + 1.00001001358032226562f);
    let x_3755 : f32 = u_xlat8.x;
    let x_3757 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3755 * x_3757);
    let x_3760 : f32 = u_xlat81;
    let x_3761 : f32 = u_xlat81;
    u_xlat81 = (x_3760 * x_3761);
    let x_3764 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3764, 0.10000000149011611938f);
    let x_3767 : f32 = u_xlat81;
    let x_3769 : f32 = u_xlat8.x;
    u_xlat81 = (x_3767 * x_3769);
    let x_3771 : f32 = u_xlat80;
    let x_3772 : f32 = u_xlat81;
    u_xlat81 = (x_3771 * x_3772);
    let x_3774 : f32 = u_xlat79;
    let x_3775 : f32 = u_xlat81;
    u_xlat81 = (x_3774 / x_3775);
    let x_3777 : vec4<f32> = u_xlat0;
    let x_3779 : f32 = u_xlat81;
    let x_3782 : vec3<f32> = u_xlat26;
    let x_3783 : vec3<f32> = ((vec3<f32>(x_3777.x, x_3777.y, x_3777.z) * vec3<f32>(x_3779, x_3779, x_3779)) + x_3782);
    let x_3784 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3783.x, x_3783.y, x_3783.z, x_3784.w);
    let x_3786 : vec4<f32> = u_xlat8;
    let x_3788 : vec4<f32> = u_xlat10;
    let x_3791 : vec4<f32> = u_xlat4;
    let x_3793 : vec3<f32> = ((vec3<f32>(x_3786.x, x_3786.y, x_3786.z) * vec3<f32>(x_3788.x, x_3788.y, x_3788.z)) + vec3<f32>(x_3791.x, x_3791.y, x_3791.z));
    let x_3794 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3793.x, x_3793.y, x_3793.z, x_3794.w);

    continuing {
      let x_3796 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3796 + bitcast<u32>(1i));
    }
  }
  let x_3798 : vec3<f32> = u_xlat32;
  let x_3799 : vec4<f32> = u_xlat6;
  let x_3802 : vec4<f32> = u_xlat5;
  let x_3804 : vec3<f32> = ((x_3798 * vec3<f32>(x_3799.x, x_3799.y, x_3799.z)) + vec3<f32>(x_3802.x, x_3802.y, x_3802.z));
  let x_3805 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3804.x, x_3804.y, x_3804.z, x_3805.w);
  let x_3809 : vec4<f32> = u_xlat4;
  let x_3811 : vec4<f32> = u_xlat0;
  let x_3813 : vec3<f32> = (vec3<f32>(x_3809.x, x_3809.y, x_3809.z) + vec3<f32>(x_3811.x, x_3811.y, x_3811.z));
  let x_3814 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3813.x, x_3813.y, x_3813.z, x_3814.w);
  let x_3818 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_3818 == 1.0f);
  let x_3820 : bool = u_xlatb0;
  if (x_3820) {
    let x_3825 : f32 = u_xlat1.x;
    x_3821 = x_3825;
  } else {
    x_3821 = 1.0f;
  }
  let x_3827 : f32 = x_3821;
  SV_Target0.w = x_3827;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


