diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb22 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_158 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu22 : u32;

var<private> u_xlati22 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb66 : bool;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb1 : bool;

@group(1) @binding(2) var<uniform> x_1718 : UnityPerDraw;

var<private> u_xlatu68 : u32;

var<private> u_xlati69 : i32;

var<private> u_xlati68 : i32;

@group(1) @binding(1) var<uniform> x_1830 : AdditionalLights;

var<private> u_xlat69 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlati70 : i32;

var<private> u_xlatb71 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlatb70 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb68 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
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
  var x_1967 : f32;
  var x_1977 : f32;
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
  var x_3319 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat22 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat44 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat66 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat66;
  let x_90 : f32 = u_xlat44;
  u_xlat44 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat44;
  u_xlat44 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat22;
  let x_97 : f32 = u_xlat44;
  u_xlat22 = (x_96 / x_97);
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb44;
  if (x_109) {
    let x_113 : f32 = u_xlat22;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat22 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat22;
  u_xlatb22 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb22;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat22 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat22;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres0;
  let x_163 : vec3<f32> = (x_149 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres1;
  let x_173 : vec3<f32> = (x_167 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec3<f32> = vs_TEXCOORD1;
  let x_180 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres2;
  let x_183 : vec3<f32> = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres3;
  let x_192 : vec3<f32> = (x_187 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_208 : vec4<f32> = u_xlat5;
  let x_210 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : vec4<f32> = u_xlat6;
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_224 : vec4<f32> = u_xlat3;
  let x_227 : vec4<f32> = x_158.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_224 < x_227);
  let x_230 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_242);
  let x_246 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_246);
  let x_252 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_252);
  let x_256 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_256);
  let x_259 : vec4<f32> = u_xlat3;
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) + vec3<f32>(x_261.y, x_261.z, x_261.w));
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat3;
  let x_269 : vec3<f32> = max(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_270.x, x_269.x, x_269.y, x_269.z);
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(x_272, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_278 : f32 = u_xlat22;
  u_xlat22 = (-(x_278) + 4.0f);
  let x_283 : f32 = u_xlat22;
  u_xlatu22 = u32(x_283);
  let x_287 : u32 = u_xlatu22;
  u_xlati22 = (bitcast<i32>(x_287) << bitcast<u32>(2i));
  let x_290 : vec3<f32> = vs_TEXCOORD1;
  let x_292 : i32 = u_xlati22;
  let x_295 : i32 = u_xlati22;
  let x_299 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_292 + 1i) / 4i)][((x_295 + 1i) % 4i)];
  let x_301 : vec3<f32> = (vec3<f32>(x_290.y, x_290.y, x_290.y) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : i32 = u_xlati22;
  let x_306 : i32 = u_xlati22;
  let x_309 : vec4<f32> = x_158.x_MainLightWorldToShadow[(x_304 / 4i)][(x_306 % 4i)];
  let x_311 : vec3<f32> = vs_TEXCOORD1;
  let x_314 : vec4<f32> = u_xlat3;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.x, x_311.x)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : i32 = u_xlati22;
  let x_322 : i32 = u_xlati22;
  let x_326 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_319 + 2i) / 4i)][((x_322 + 2i) % 4i)];
  let x_328 : vec3<f32> = vs_TEXCOORD1;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.z, x_328.z, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : i32 = u_xlati22;
  let x_341 : i32 = u_xlati22;
  let x_345 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_338 + 3i) / 4i)][((x_341 + 3i) % 4i)];
  let x_347 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_356 : vec2<f32> = vs_TEXCOORD7;
  let x_358 : f32 = x_27.x_GlobalMipBias.x;
  let x_359 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_356, x_358);
  u_xlat4 = x_359;
  let x_364 : vec2<f32> = vs_TEXCOORD7;
  let x_366 : f32 = x_27.x_GlobalMipBias.x;
  let x_367 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_364, x_366);
  let x_368 : vec3<f32> = vec3<f32>(x_367.x, x_367.y, x_367.z);
  let x_369 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat4;
  let x_375 : vec3<f32> = (vec3<f32>(x_371.x, x_371.y, x_371.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_376 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec3<f32> = u_xlat2;
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(x_378, vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : f32 = u_xlat22;
  u_xlat22 = (x_382 + 0.5f);
  let x_384 : f32 = u_xlat22;
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : vec3<f32> = (vec3<f32>(x_384, x_384, x_384) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : f32 = u_xlat4.w;
  u_xlat22 = max(x_392, 0.00009999999747378752f);
  let x_394 : vec4<f32> = u_xlat4;
  let x_396 : f32 = u_xlat22;
  let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) / vec3<f32>(x_396, x_396, x_396));
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_403 : f32 = x_158.x_MainLightShadowParams.y;
  u_xlatb22 = (0.0f < x_403);
  let x_405 : bool = u_xlatb22;
  if (x_405) {
    let x_409 : f32 = x_158.x_MainLightShadowParams.y;
    u_xlatb22 = (x_409 == 1.0f);
    let x_411 : bool = u_xlatb22;
    if (x_411) {
      let x_414 : vec4<f32> = u_xlat3;
      let x_418 : vec4<f32> = x_158.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_414.x, x_414.y, x_414.x, x_414.y) + x_418);
      let x_422 : vec4<f32> = u_xlat5;
      let x_423 : vec2<f32> = vec2<f32>(x_422.x, x_422.y);
      let x_425 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_423.x, x_423.y, x_425);
      let x_437 : vec3<f32> = txVec0;
      let x_439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_437.xy, x_437.z);
      u_xlat6.x = x_439;
      let x_442 : vec4<f32> = u_xlat5;
      let x_443 : vec2<f32> = vec2<f32>(x_442.z, x_442.w);
      let x_445 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_443.x, x_443.y, x_445);
      let x_452 : vec3<f32> = txVec1;
      let x_454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_452.xy, x_452.z);
      u_xlat6.y = x_454;
      let x_456 : vec4<f32> = u_xlat3;
      let x_460 : vec4<f32> = x_158.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_456.x, x_456.y, x_456.x, x_456.y) + x_460);
      let x_463 : vec4<f32> = u_xlat5;
      let x_464 : vec2<f32> = vec2<f32>(x_463.x, x_463.y);
      let x_466 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_464.x, x_464.y, x_466);
      let x_473 : vec3<f32> = txVec2;
      let x_475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_473.xy, x_473.z);
      u_xlat6.z = x_475;
      let x_478 : vec4<f32> = u_xlat5;
      let x_479 : vec2<f32> = vec2<f32>(x_478.z, x_478.w);
      let x_481 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_479.x, x_479.y, x_481);
      let x_488 : vec3<f32> = txVec3;
      let x_490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_488.xy, x_488.z);
      u_xlat6.w = x_490;
      let x_492 : vec4<f32> = u_xlat6;
      u_xlat22 = dot(x_492, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_499 : f32 = x_158.x_MainLightShadowParams.y;
      u_xlatb66 = (x_499 == 2.0f);
      let x_501 : bool = u_xlatb66;
      if (x_501) {
        let x_504 : vec4<f32> = u_xlat3;
        let x_508 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_512 : vec2<f32> = ((vec2<f32>(x_504.x, x_504.y) * vec2<f32>(x_508.z, x_508.w)) + vec2<f32>(0.5f, 0.5f));
        let x_513 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
        let x_515 : vec4<f32> = u_xlat5;
        let x_517 : vec2<f32> = floor(vec2<f32>(x_515.x, x_515.y));
        let x_518 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_522 : vec4<f32> = u_xlat3;
        let x_525 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_528 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_522.x, x_522.y) * vec2<f32>(x_525.z, x_525.w)) + -(vec2<f32>(x_528.x, x_528.y)));
        let x_532 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_532.x, x_532.x, x_532.y, x_532.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_537 : vec4<f32> = u_xlat6;
        let x_539 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_537.x, x_537.x, x_537.z, x_537.z) * vec4<f32>(x_539.x, x_539.x, x_539.z, x_539.z));
        let x_542 : vec4<f32> = u_xlat7;
        let x_546 : vec2<f32> = (vec2<f32>(x_542.y, x_542.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_547 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_546.x, x_547.y, x_546.y, x_547.w);
        let x_549 : vec4<f32> = u_xlat7;
        let x_552 : vec2<f32> = u_xlat49;
        let x_554 : vec2<f32> = ((vec2<f32>(x_549.x, x_549.z) * vec2<f32>(0.5f, 0.5f)) + -(x_552));
        let x_555 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_558 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_558) + vec2<f32>(1.0f, 1.0f));
        let x_563 : vec2<f32> = u_xlat49;
        let x_565 : vec2<f32> = min(x_563, vec2<f32>(0.0f, 0.0f));
        let x_566 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
        let x_568 : vec4<f32> = u_xlat8;
        let x_571 : vec4<f32> = u_xlat8;
        let x_574 : vec2<f32> = u_xlat51;
        let x_575 : vec2<f32> = ((-(vec2<f32>(x_568.x, x_568.y)) * vec2<f32>(x_571.x, x_571.y)) + x_574);
        let x_576 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
        let x_578 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_578, vec2<f32>(0.0f, 0.0f));
        let x_580 : vec2<f32> = u_xlat49;
        let x_582 : vec2<f32> = u_xlat49;
        let x_584 : vec4<f32> = u_xlat6;
        u_xlat49 = ((-(x_580) * x_582) + vec2<f32>(x_584.y, x_584.w));
        let x_587 : vec4<f32> = u_xlat8;
        let x_589 : vec2<f32> = (vec2<f32>(x_587.x, x_587.y) + vec2<f32>(1.0f, 1.0f));
        let x_590 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
        let x_592 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_592 + vec2<f32>(1.0f, 1.0f));
        let x_595 : vec4<f32> = u_xlat7;
        let x_599 : vec2<f32> = (vec2<f32>(x_595.x, x_595.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_600 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_602 : vec2<f32> = u_xlat51;
        let x_603 : vec2<f32> = (x_602 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_604 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_606 : vec4<f32> = u_xlat8;
        let x_608 : vec2<f32> = (vec2<f32>(x_606.x, x_606.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_609 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_612 : vec2<f32> = u_xlat49;
        let x_613 : vec2<f32> = (x_612 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_614 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_616 : vec4<f32> = u_xlat6;
        u_xlat49 = (vec2<f32>(x_616.y, x_616.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_620 : f32 = u_xlat8.x;
        u_xlat9.z = x_620;
        let x_623 : f32 = u_xlat49.x;
        u_xlat9.w = x_623;
        let x_626 : f32 = u_xlat10.x;
        u_xlat7.z = x_626;
        let x_629 : f32 = u_xlat6.x;
        u_xlat7.w = x_629;
        let x_632 : vec4<f32> = u_xlat7;
        let x_634 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_632.z, x_632.w, x_632.x, x_632.z) + vec4<f32>(x_634.z, x_634.w, x_634.x, x_634.z));
        let x_638 : f32 = u_xlat9.y;
        u_xlat8.z = x_638;
        let x_641 : f32 = u_xlat49.y;
        u_xlat8.w = x_641;
        let x_644 : f32 = u_xlat7.y;
        u_xlat10.z = x_644;
        let x_647 : f32 = u_xlat6.z;
        u_xlat10.w = x_647;
        let x_649 : vec4<f32> = u_xlat8;
        let x_651 : vec4<f32> = u_xlat10;
        let x_653 : vec3<f32> = (vec3<f32>(x_649.z, x_649.y, x_649.w) + vec3<f32>(x_651.z, x_651.y, x_651.w));
        let x_654 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
        let x_656 : vec4<f32> = u_xlat7;
        let x_658 : vec4<f32> = u_xlat11;
        let x_660 : vec3<f32> = (vec3<f32>(x_656.x, x_656.z, x_656.w) / vec3<f32>(x_658.z, x_658.w, x_658.y));
        let x_661 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
        let x_663 : vec4<f32> = u_xlat7;
        let x_668 : vec3<f32> = (vec3<f32>(x_663.x, x_663.y, x_663.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_669 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat10;
        let x_673 : vec4<f32> = u_xlat6;
        let x_675 : vec3<f32> = (vec3<f32>(x_671.z, x_671.y, x_671.w) / vec3<f32>(x_673.x, x_673.y, x_673.z));
        let x_676 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat8;
        let x_680 : vec3<f32> = (vec3<f32>(x_678.x, x_678.y, x_678.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_681 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
        let x_683 : vec4<f32> = u_xlat7;
        let x_686 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_688 : vec3<f32> = (vec3<f32>(x_683.y, x_683.x, x_683.z) * vec3<f32>(x_686.x, x_686.x, x_686.x));
        let x_689 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat8;
        let x_694 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_696 : vec3<f32> = (vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(x_694.y, x_694.y, x_694.y));
        let x_697 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
        let x_700 : f32 = u_xlat8.x;
        u_xlat7.w = x_700;
        let x_702 : vec4<f32> = u_xlat5;
        let x_705 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_708 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_702.x, x_702.y, x_702.x, x_702.y) * vec4<f32>(x_705.x, x_705.y, x_705.x, x_705.y)) + vec4<f32>(x_708.y, x_708.w, x_708.x, x_708.w));
        let x_711 : vec4<f32> = u_xlat5;
        let x_714 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_717 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_711.x, x_711.y) * vec2<f32>(x_714.x, x_714.y)) + vec2<f32>(x_717.z, x_717.w));
        let x_721 : f32 = u_xlat7.y;
        u_xlat8.w = x_721;
        let x_723 : vec4<f32> = u_xlat8;
        let x_724 : vec2<f32> = vec2<f32>(x_723.y, x_723.z);
        let x_725 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_725.x, x_724.x, x_725.z, x_724.y);
        let x_727 : vec4<f32> = u_xlat5;
        let x_730 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_733 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_727.x, x_727.y, x_727.x, x_727.y) * vec4<f32>(x_730.x, x_730.y, x_730.x, x_730.y)) + vec4<f32>(x_733.x, x_733.y, x_733.z, x_733.y));
        let x_736 : vec4<f32> = u_xlat5;
        let x_739 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_742 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_736.x, x_736.y, x_736.x, x_736.y) * vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y)) + vec4<f32>(x_742.w, x_742.y, x_742.w, x_742.z));
        let x_745 : vec4<f32> = u_xlat5;
        let x_748 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_751 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_745.x, x_745.y, x_745.x, x_745.y) * vec4<f32>(x_748.x, x_748.y, x_748.x, x_748.y)) + vec4<f32>(x_751.x, x_751.w, x_751.z, x_751.w));
        let x_755 : vec4<f32> = u_xlat6;
        let x_757 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_755.x, x_755.x, x_755.x, x_755.y) * vec4<f32>(x_757.z, x_757.w, x_757.y, x_757.z));
        let x_761 : vec4<f32> = u_xlat6;
        let x_763 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_761.y, x_761.y, x_761.z, x_761.z) * x_763);
        let x_766 : f32 = u_xlat6.z;
        let x_768 : f32 = u_xlat11.y;
        u_xlat66 = (x_766 * x_768);
        let x_771 : vec4<f32> = u_xlat9;
        let x_772 : vec2<f32> = vec2<f32>(x_771.x, x_771.y);
        let x_774 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_772.x, x_772.y, x_774);
        let x_781 : vec3<f32> = txVec4;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
        u_xlat1.x = x_783;
        let x_786 : vec4<f32> = u_xlat9;
        let x_787 : vec2<f32> = vec2<f32>(x_786.z, x_786.w);
        let x_789 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_787.x, x_787.y, x_789);
        let x_797 : vec3<f32> = txVec5;
        let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_797.xy, x_797.z);
        u_xlat68 = x_799;
        let x_800 : f32 = u_xlat68;
        let x_802 : f32 = u_xlat12.y;
        u_xlat68 = (x_800 * x_802);
        let x_805 : f32 = u_xlat12.x;
        let x_807 : f32 = u_xlat1.x;
        let x_809 : f32 = u_xlat68;
        u_xlat1.x = ((x_805 * x_807) + x_809);
        let x_813 : vec2<f32> = u_xlat49;
        let x_815 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_813.x, x_813.y, x_815);
        let x_822 : vec3<f32> = txVec6;
        let x_824 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_822.xy, x_822.z);
        u_xlat68 = x_824;
        let x_826 : f32 = u_xlat12.z;
        let x_827 : f32 = u_xlat68;
        let x_830 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_826 * x_827) + x_830);
        let x_834 : vec4<f32> = u_xlat8;
        let x_835 : vec2<f32> = vec2<f32>(x_834.x, x_834.y);
        let x_837 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_835.x, x_835.y, x_837);
        let x_844 : vec3<f32> = txVec7;
        let x_846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_844.xy, x_844.z);
        u_xlat68 = x_846;
        let x_848 : f32 = u_xlat12.w;
        let x_849 : f32 = u_xlat68;
        let x_852 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_848 * x_849) + x_852);
        let x_856 : vec4<f32> = u_xlat10;
        let x_857 : vec2<f32> = vec2<f32>(x_856.x, x_856.y);
        let x_859 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_857.x, x_857.y, x_859);
        let x_866 : vec3<f32> = txVec8;
        let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_866.xy, x_866.z);
        u_xlat68 = x_868;
        let x_870 : f32 = u_xlat13.x;
        let x_871 : f32 = u_xlat68;
        let x_874 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_870 * x_871) + x_874);
        let x_878 : vec4<f32> = u_xlat10;
        let x_879 : vec2<f32> = vec2<f32>(x_878.z, x_878.w);
        let x_881 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_879.x, x_879.y, x_881);
        let x_888 : vec3<f32> = txVec9;
        let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_888.xy, x_888.z);
        u_xlat68 = x_890;
        let x_892 : f32 = u_xlat13.y;
        let x_893 : f32 = u_xlat68;
        let x_896 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_892 * x_893) + x_896);
        let x_900 : vec4<f32> = u_xlat8;
        let x_901 : vec2<f32> = vec2<f32>(x_900.z, x_900.w);
        let x_903 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec10;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
        u_xlat68 = x_912;
        let x_914 : f32 = u_xlat13.z;
        let x_915 : f32 = u_xlat68;
        let x_918 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_914 * x_915) + x_918);
        let x_922 : vec4<f32> = u_xlat7;
        let x_923 : vec2<f32> = vec2<f32>(x_922.x, x_922.y);
        let x_925 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_923.x, x_923.y, x_925);
        let x_932 : vec3<f32> = txVec11;
        let x_934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_932.xy, x_932.z);
        u_xlat68 = x_934;
        let x_936 : f32 = u_xlat13.w;
        let x_937 : f32 = u_xlat68;
        let x_940 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_936 * x_937) + x_940);
        let x_944 : vec4<f32> = u_xlat7;
        let x_945 : vec2<f32> = vec2<f32>(x_944.z, x_944.w);
        let x_947 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_945.x, x_945.y, x_947);
        let x_954 : vec3<f32> = txVec12;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_954.xy, x_954.z);
        u_xlat68 = x_956;
        let x_957 : f32 = u_xlat66;
        let x_958 : f32 = u_xlat68;
        let x_961 : f32 = u_xlat1.x;
        u_xlat22 = ((x_957 * x_958) + x_961);
      } else {
        let x_964 : vec4<f32> = u_xlat3;
        let x_967 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_970 : vec2<f32> = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_967.z, x_967.w)) + vec2<f32>(0.5f, 0.5f));
        let x_971 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec4<f32> = u_xlat5;
        let x_975 : vec2<f32> = floor(vec2<f32>(x_973.x, x_973.y));
        let x_976 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat3;
        let x_981 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_984 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_978.x, x_978.y) * vec2<f32>(x_981.z, x_981.w)) + -(vec2<f32>(x_984.x, x_984.y)));
        let x_988 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_988.x, x_988.x, x_988.y, x_988.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_991 : vec4<f32> = u_xlat6;
        let x_993 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_991.x, x_991.x, x_991.z, x_991.z) * vec4<f32>(x_993.x, x_993.x, x_993.z, x_993.z));
        let x_996 : vec4<f32> = u_xlat7;
        let x_1000 : vec2<f32> = (vec2<f32>(x_996.y, x_996.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1001 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1001.x, x_1000.x, x_1001.z, x_1000.y);
        let x_1003 : vec4<f32> = u_xlat7;
        let x_1006 : vec2<f32> = u_xlat49;
        let x_1008 : vec2<f32> = ((vec2<f32>(x_1003.x, x_1003.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1006));
        let x_1009 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1008.x, x_1009.y, x_1008.y, x_1009.w);
        let x_1011 : vec2<f32> = u_xlat49;
        let x_1013 : vec2<f32> = (-(x_1011) + vec2<f32>(1.0f, 1.0f));
        let x_1014 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1013.x, x_1013.y, x_1014.z, x_1014.w);
        let x_1016 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1016, vec2<f32>(0.0f, 0.0f));
        let x_1018 : vec2<f32> = u_xlat51;
        let x_1020 : vec2<f32> = u_xlat51;
        let x_1022 : vec4<f32> = u_xlat7;
        let x_1024 : vec2<f32> = ((-(x_1018) * x_1020) + vec2<f32>(x_1022.x, x_1022.y));
        let x_1025 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
        let x_1027 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1027, vec2<f32>(0.0f, 0.0f));
        let x_1030 : vec2<f32> = u_xlat51;
        let x_1032 : vec2<f32> = u_xlat51;
        let x_1034 : vec4<f32> = u_xlat6;
        let x_1036 : vec2<f32> = ((-(x_1030) * x_1032) + vec2<f32>(x_1034.y, x_1034.w));
        let x_1037 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1036.x, x_1037.y, x_1036.y);
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1042 : vec2<f32> = (vec2<f32>(x_1039.x, x_1039.y) + vec2<f32>(2.0f, 2.0f));
        let x_1043 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
        let x_1045 : vec3<f32> = u_xlat28;
        let x_1047 : vec2<f32> = (vec2<f32>(x_1045.x, x_1045.z) + vec2<f32>(2.0f, 2.0f));
        let x_1048 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1048.x, x_1047.x, x_1048.z, x_1047.y);
        let x_1051 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1051 * 0.08163200318813323975f);
        let x_1055 : vec4<f32> = u_xlat6;
        let x_1058 : vec3<f32> = (vec3<f32>(x_1055.z, x_1055.x, x_1055.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1059 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1064 : vec2<f32> = (vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1065 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1068 : f32 = u_xlat10.y;
        u_xlat9.x = x_1068;
        let x_1070 : vec2<f32> = u_xlat49;
        let x_1077 : vec2<f32> = ((vec2<f32>(x_1070.x, x_1070.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1078 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1078.x, x_1077.x, x_1078.z, x_1077.y);
        let x_1080 : vec2<f32> = u_xlat49;
        let x_1084 : vec2<f32> = ((vec2<f32>(x_1080.x, x_1080.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1085 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1084.x, x_1085.y, x_1084.y, x_1085.w);
        let x_1088 : f32 = u_xlat6.x;
        u_xlat7.y = x_1088;
        let x_1091 : f32 = u_xlat8.y;
        u_xlat7.w = x_1091;
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1094 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1093 + x_1094);
        let x_1096 : vec2<f32> = u_xlat49;
        let x_1099 : vec2<f32> = ((vec2<f32>(x_1096.y, x_1096.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1100 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1100.x, x_1099.x, x_1100.z, x_1099.y);
        let x_1102 : vec2<f32> = u_xlat49;
        let x_1105 : vec2<f32> = ((vec2<f32>(x_1102.y, x_1102.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1106 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1105.x, x_1106.y, x_1105.y, x_1106.w);
        let x_1109 : f32 = u_xlat6.y;
        u_xlat8.y = x_1109;
        let x_1111 : vec4<f32> = u_xlat8;
        let x_1112 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1111 + x_1112);
        let x_1114 : vec4<f32> = u_xlat7;
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1114 / x_1115);
        let x_1117 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1117 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1124 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1123 / x_1124);
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1126 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1131 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1128.w, x_1128.x, x_1128.y, x_1128.z) * vec4<f32>(x_1131.x, x_1131.x, x_1131.x, x_1131.x));
        let x_1134 : vec4<f32> = u_xlat8;
        let x_1137 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1134.x, x_1134.w, x_1134.y, x_1134.z) * vec4<f32>(x_1137.y, x_1137.y, x_1137.y, x_1137.y));
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1141 : vec3<f32> = vec3<f32>(x_1140.y, x_1140.z, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1141.z);
        let x_1145 : f32 = u_xlat8.x;
        u_xlat10.y = x_1145;
        let x_1147 : vec4<f32> = u_xlat5;
        let x_1150 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y) * vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y)) + vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1153.y));
        let x_1156 : vec4<f32> = u_xlat5;
        let x_1159 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat49 = ((vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1162.w, x_1162.y));
        let x_1166 : f32 = u_xlat10.y;
        u_xlat7.y = x_1166;
        let x_1169 : f32 = u_xlat8.z;
        u_xlat10.y = x_1169;
        let x_1171 : vec4<f32> = u_xlat5;
        let x_1174 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y) * vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y)) + vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1177.y));
        let x_1180 : vec4<f32> = u_xlat5;
        let x_1183 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat10;
        let x_1188 : vec2<f32> = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.w, x_1186.y));
        let x_1189 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        let x_1192 : f32 = u_xlat10.y;
        u_xlat7.z = x_1192;
        let x_1195 : vec4<f32> = u_xlat5;
        let x_1198 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y) * vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y)) + vec4<f32>(x_1201.x, x_1201.y, x_1201.x, x_1201.z));
        let x_1205 : f32 = u_xlat8.w;
        u_xlat10.y = x_1205;
        let x_1208 : vec4<f32> = u_xlat5;
        let x_1211 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y) * vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y)) + vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1214.y));
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1221 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat29 = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1221.x, x_1221.y)) + vec2<f32>(x_1224.w, x_1224.y));
        let x_1228 : f32 = u_xlat10.y;
        u_xlat7.w = x_1228;
        let x_1231 : vec4<f32> = u_xlat5;
        let x_1234 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1231.x, x_1231.y) * vec2<f32>(x_1234.x, x_1234.y)) + vec2<f32>(x_1237.x, x_1237.w));
        let x_1240 : vec4<f32> = u_xlat10;
        let x_1241 : vec3<f32> = vec3<f32>(x_1240.x, x_1240.z, x_1240.w);
        let x_1242 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1241.x, x_1242.y, x_1241.y, x_1241.z);
        let x_1244 : vec4<f32> = u_xlat5;
        let x_1247 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y) * vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y)) + vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1250.y));
        let x_1254 : vec4<f32> = u_xlat5;
        let x_1257 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1254.x, x_1254.y) * vec2<f32>(x_1257.x, x_1257.y)) + vec2<f32>(x_1260.w, x_1260.y));
        let x_1264 : f32 = u_xlat7.x;
        u_xlat8.x = x_1264;
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat8;
        let x_1274 : vec2<f32> = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.x, x_1272.y));
        let x_1275 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1274.x, x_1274.y, x_1275.z, x_1275.w);
        let x_1278 : vec4<f32> = u_xlat6;
        let x_1280 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1278.x, x_1278.x, x_1278.x, x_1278.x) * x_1280);
        let x_1283 : vec4<f32> = u_xlat6;
        let x_1285 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1283.y, x_1283.y, x_1283.y, x_1283.y) * x_1285);
        let x_1288 : vec4<f32> = u_xlat6;
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1288.z, x_1288.z, x_1288.z, x_1288.z) * x_1290);
        let x_1292 : vec4<f32> = u_xlat6;
        let x_1294 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1292.w, x_1292.w, x_1292.w, x_1292.w) * x_1294);
        let x_1297 : vec4<f32> = u_xlat11;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.x, x_1297.y);
        let x_1300 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec13;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1307.xy, x_1307.z);
        u_xlat66 = x_1309;
        let x_1311 : vec4<f32> = u_xlat11;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.z, x_1311.w);
        let x_1314 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1321 : vec3<f32> = txVec14;
        let x_1323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1321.xy, x_1321.z);
        u_xlat1.x = x_1323;
        let x_1326 : f32 = u_xlat1.x;
        let x_1328 : f32 = u_xlat16.y;
        u_xlat1.x = (x_1326 * x_1328);
        let x_1332 : f32 = u_xlat16.x;
        let x_1333 : f32 = u_xlat66;
        let x_1336 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1332 * x_1333) + x_1336);
        let x_1339 : vec2<f32> = u_xlat49;
        let x_1341 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1348 : vec3<f32> = txVec15;
        let x_1350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1348.xy, x_1348.z);
        u_xlat1.x = x_1350;
        let x_1353 : f32 = u_xlat16.z;
        let x_1355 : f32 = u_xlat1.x;
        let x_1357 : f32 = u_xlat66;
        u_xlat66 = ((x_1353 * x_1355) + x_1357);
        let x_1360 : vec4<f32> = u_xlat14;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.x, x_1360.y);
        let x_1363 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec16;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat1.x = x_1372;
        let x_1375 : f32 = u_xlat16.w;
        let x_1377 : f32 = u_xlat1.x;
        let x_1379 : f32 = u_xlat66;
        u_xlat66 = ((x_1375 * x_1377) + x_1379);
        let x_1382 : vec4<f32> = u_xlat12;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.x, x_1382.y);
        let x_1385 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec17;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1392.xy, x_1392.z);
        u_xlat1.x = x_1394;
        let x_1397 : f32 = u_xlat17.x;
        let x_1399 : f32 = u_xlat1.x;
        let x_1401 : f32 = u_xlat66;
        u_xlat66 = ((x_1397 * x_1399) + x_1401);
        let x_1404 : vec4<f32> = u_xlat12;
        let x_1405 : vec2<f32> = vec2<f32>(x_1404.z, x_1404.w);
        let x_1407 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec18;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat1.x = x_1416;
        let x_1419 : f32 = u_xlat17.y;
        let x_1421 : f32 = u_xlat1.x;
        let x_1423 : f32 = u_xlat66;
        u_xlat66 = ((x_1419 * x_1421) + x_1423);
        let x_1426 : vec4<f32> = u_xlat13;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec19;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
        u_xlat1.x = x_1438;
        let x_1441 : f32 = u_xlat17.z;
        let x_1443 : f32 = u_xlat1.x;
        let x_1445 : f32 = u_xlat66;
        u_xlat66 = ((x_1441 * x_1443) + x_1445);
        let x_1448 : vec4<f32> = u_xlat14;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.z, x_1448.w);
        let x_1451 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec20;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1458.xy, x_1458.z);
        u_xlat1.x = x_1460;
        let x_1463 : f32 = u_xlat17.w;
        let x_1465 : f32 = u_xlat1.x;
        let x_1467 : f32 = u_xlat66;
        u_xlat66 = ((x_1463 * x_1465) + x_1467);
        let x_1470 : vec4<f32> = u_xlat15;
        let x_1471 : vec2<f32> = vec2<f32>(x_1470.x, x_1470.y);
        let x_1473 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1480 : vec3<f32> = txVec21;
        let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1480.xy, x_1480.z);
        u_xlat1.x = x_1482;
        let x_1485 : f32 = u_xlat18.x;
        let x_1487 : f32 = u_xlat1.x;
        let x_1489 : f32 = u_xlat66;
        u_xlat66 = ((x_1485 * x_1487) + x_1489);
        let x_1492 : vec4<f32> = u_xlat15;
        let x_1493 : vec2<f32> = vec2<f32>(x_1492.z, x_1492.w);
        let x_1495 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec22;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1502.xy, x_1502.z);
        u_xlat1.x = x_1504;
        let x_1507 : f32 = u_xlat18.y;
        let x_1509 : f32 = u_xlat1.x;
        let x_1511 : f32 = u_xlat66;
        u_xlat66 = ((x_1507 * x_1509) + x_1511);
        let x_1514 : vec2<f32> = u_xlat29;
        let x_1516 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec23;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat1.x = x_1525;
        let x_1528 : f32 = u_xlat18.z;
        let x_1530 : f32 = u_xlat1.x;
        let x_1532 : f32 = u_xlat66;
        u_xlat66 = ((x_1528 * x_1530) + x_1532);
        let x_1535 : vec2<f32> = u_xlat57;
        let x_1537 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1535.x, x_1535.y, x_1537);
        let x_1544 : vec3<f32> = txVec24;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1544.xy, x_1544.z);
        u_xlat1.x = x_1546;
        let x_1549 : f32 = u_xlat18.w;
        let x_1551 : f32 = u_xlat1.x;
        let x_1553 : f32 = u_xlat66;
        u_xlat66 = ((x_1549 * x_1551) + x_1553);
        let x_1556 : vec4<f32> = u_xlat10;
        let x_1557 : vec2<f32> = vec2<f32>(x_1556.x, x_1556.y);
        let x_1559 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec25;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1566.xy, x_1566.z);
        u_xlat1.x = x_1568;
        let x_1571 : f32 = u_xlat6.x;
        let x_1573 : f32 = u_xlat1.x;
        let x_1575 : f32 = u_xlat66;
        u_xlat66 = ((x_1571 * x_1573) + x_1575);
        let x_1578 : vec4<f32> = u_xlat10;
        let x_1579 : vec2<f32> = vec2<f32>(x_1578.z, x_1578.w);
        let x_1581 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec26;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1588.xy, x_1588.z);
        u_xlat1.x = x_1590;
        let x_1593 : f32 = u_xlat6.y;
        let x_1595 : f32 = u_xlat1.x;
        let x_1597 : f32 = u_xlat66;
        u_xlat66 = ((x_1593 * x_1595) + x_1597);
        let x_1600 : vec2<f32> = u_xlat52;
        let x_1602 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
        let x_1609 : vec3<f32> = txVec27;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1609.xy, x_1609.z);
        u_xlat1.x = x_1611;
        let x_1614 : f32 = u_xlat6.z;
        let x_1616 : f32 = u_xlat1.x;
        let x_1618 : f32 = u_xlat66;
        u_xlat66 = ((x_1614 * x_1616) + x_1618);
        let x_1621 : vec4<f32> = u_xlat5;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.x, x_1621.y);
        let x_1624 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec28;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1631.xy, x_1631.z);
        u_xlat1.x = x_1633;
        let x_1636 : f32 = u_xlat6.w;
        let x_1638 : f32 = u_xlat1.x;
        let x_1640 : f32 = u_xlat66;
        u_xlat22 = ((x_1636 * x_1638) + x_1640);
      }
    }
  } else {
    let x_1644 : vec4<f32> = u_xlat3;
    let x_1645 : vec2<f32> = vec2<f32>(x_1644.x, x_1644.y);
    let x_1647 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1645.x, x_1645.y, x_1647);
    let x_1654 : vec3<f32> = txVec29;
    let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1654.xy, x_1654.z);
    u_xlat22 = x_1656;
  }
  let x_1658 : f32 = x_158.x_MainLightShadowParams.x;
  u_xlat66 = (-(x_1658) + 1.0f);
  let x_1661 : f32 = u_xlat22;
  let x_1663 : f32 = x_158.x_MainLightShadowParams.x;
  let x_1665 : f32 = u_xlat66;
  u_xlat22 = ((x_1661 * x_1663) + x_1665);
  let x_1668 : f32 = u_xlat3.z;
  u_xlatb66 = (0.0f >= x_1668);
  let x_1672 : f32 = u_xlat3.z;
  u_xlatb1 = (x_1672 >= 1.0f);
  let x_1674 : bool = u_xlatb66;
  let x_1675 : bool = u_xlatb1;
  u_xlatb66 = (x_1674 | x_1675);
  let x_1677 : bool = u_xlatb66;
  let x_1678 : f32 = u_xlat22;
  u_xlat22 = select(x_1678, 1.0f, x_1677);
  let x_1680 : vec3<f32> = vs_TEXCOORD1;
  let x_1683 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1685 : vec3<f32> = (x_1680 + -(x_1683));
  let x_1686 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
  let x_1688 : vec4<f32> = u_xlat3;
  let x_1690 : vec4<f32> = u_xlat3;
  u_xlat66 = dot(vec3<f32>(x_1688.x, x_1688.y, x_1688.z), vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1693 : f32 = u_xlat66;
  let x_1695 : f32 = x_158.x_MainLightShadowParams.z;
  let x_1698 : f32 = x_158.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1693 * x_1695) + x_1698);
  let x_1702 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1702, 0.0f, 1.0f);
  let x_1705 : f32 = u_xlat22;
  u_xlat68 = (-(x_1705) + 1.0f);
  let x_1709 : f32 = u_xlat1.x;
  let x_1710 : f32 = u_xlat68;
  let x_1712 : f32 = u_xlat22;
  u_xlat22 = ((x_1709 * x_1710) + x_1712);
  let x_1714 : f32 = u_xlat22;
  let x_1720 : f32 = x_1718.unity_LightData.z;
  u_xlat22 = (x_1714 * x_1720);
  let x_1722 : f32 = u_xlat22;
  let x_1725 : vec4<f32> = x_27.x_MainLightColor;
  let x_1727 : vec3<f32> = (vec3<f32>(x_1722, x_1722, x_1722) * vec3<f32>(x_1725.x, x_1725.y, x_1725.z));
  let x_1728 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1728.w);
  let x_1730 : vec3<f32> = u_xlat2;
  let x_1732 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat22 = dot(x_1730, vec3<f32>(x_1732.x, x_1732.y, x_1732.z));
  let x_1735 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1735, 0.0f, 1.0f);
  let x_1737 : f32 = u_xlat22;
  let x_1739 : vec4<f32> = u_xlat3;
  let x_1741 : vec3<f32> = (vec3<f32>(x_1737, x_1737, x_1737) * vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
  let x_1742 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1741.x, x_1741.y, x_1741.z, x_1742.w);
  let x_1744 : vec4<f32> = u_xlat1;
  let x_1746 : vec4<f32> = u_xlat3;
  let x_1748 : vec3<f32> = (vec3<f32>(x_1744.y, x_1744.z, x_1744.w) * vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
  let x_1749 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
  let x_1751 : vec4<f32> = u_xlat0;
  let x_1753 : vec4<f32> = u_xlat3;
  let x_1755 : vec3<f32> = (vec3<f32>(x_1751.x, x_1751.x, x_1751.x) * vec3<f32>(x_1753.x, x_1753.y, x_1753.z));
  let x_1756 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1755.x, x_1755.y, x_1755.z, x_1756.w);
  let x_1759 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1761 : f32 = x_1718.unity_LightData.y;
  u_xlat22 = min(x_1759, x_1761);
  let x_1763 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_1763));
  let x_1766 : f32 = u_xlat66;
  let x_1769 : f32 = x_158.x_AdditionalShadowFadeParams.x;
  let x_1772 : f32 = x_158.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1766 * x_1769) + x_1772);
  let x_1774 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1774, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1786 : u32 = u_xlatu_loop_1;
    let x_1787 : u32 = u_xlatu22;
    if ((x_1786 < x_1787)) {
    } else {
      break;
    }
    let x_1790 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1790 >> 2u);
    let x_1793 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1793 & 3u));
    let x_1796 : u32 = u_xlatu68;
    let x_1799 : vec4<f32> = x_1718.unity_LightIndices[bitcast<i32>(x_1796)];
    let x_1809 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1814 : vec4<u32> = indexable[x_1809];
    u_xlat68 = dot(x_1799, bitcast<vec4<f32>>(x_1814));
    let x_1818 : f32 = u_xlat68;
    u_xlati68 = i32(x_1818);
    let x_1820 : vec3<f32> = vs_TEXCOORD1;
    let x_1831 : i32 = u_xlati68;
    let x_1833 : vec4<f32> = x_1830.x_AdditionalLightsPosition[x_1831];
    let x_1836 : i32 = u_xlati68;
    let x_1838 : vec4<f32> = x_1830.x_AdditionalLightsPosition[x_1836];
    let x_1840 : vec3<f32> = ((-(x_1820) * vec3<f32>(x_1833.w, x_1833.w, x_1833.w)) + vec3<f32>(x_1838.x, x_1838.y, x_1838.z));
    let x_1841 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
    let x_1844 : vec4<f32> = u_xlat6;
    let x_1846 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1844.x, x_1844.y, x_1844.z), vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
    let x_1849 : f32 = u_xlat69;
    u_xlat69 = max(x_1849, 0.00006103515625f);
    let x_1853 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1853);
    let x_1855 : f32 = u_xlat70;
    let x_1857 : vec4<f32> = u_xlat6;
    let x_1859 : vec3<f32> = (vec3<f32>(x_1855, x_1855, x_1855) * vec3<f32>(x_1857.x, x_1857.y, x_1857.z));
    let x_1860 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1860.w);
    let x_1862 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1862);
    let x_1864 : f32 = u_xlat69;
    let x_1865 : i32 = u_xlati68;
    let x_1867 : f32 = x_1830.x_AdditionalLightsAttenuation[x_1865].x;
    u_xlat69 = (x_1864 * x_1867);
    let x_1869 : f32 = u_xlat69;
    let x_1871 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1869) * x_1871) + 1.0f);
    let x_1874 : f32 = u_xlat69;
    u_xlat69 = max(x_1874, 0.0f);
    let x_1876 : f32 = u_xlat69;
    let x_1877 : f32 = u_xlat69;
    u_xlat69 = (x_1876 * x_1877);
    let x_1879 : f32 = u_xlat69;
    let x_1880 : f32 = u_xlat70;
    u_xlat69 = (x_1879 * x_1880);
    let x_1882 : i32 = u_xlati68;
    let x_1884 : vec4<f32> = x_1830.x_AdditionalLightsSpotDir[x_1882];
    let x_1886 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1884.x, x_1884.y, x_1884.z), vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
    let x_1889 : f32 = u_xlat70;
    let x_1890 : i32 = u_xlati68;
    let x_1892 : f32 = x_1830.x_AdditionalLightsAttenuation[x_1890].z;
    let x_1894 : i32 = u_xlati68;
    let x_1896 : f32 = x_1830.x_AdditionalLightsAttenuation[x_1894].w;
    u_xlat70 = ((x_1889 * x_1892) + x_1896);
    let x_1898 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1898, 0.0f, 1.0f);
    let x_1900 : f32 = u_xlat70;
    let x_1901 : f32 = u_xlat70;
    u_xlat70 = (x_1900 * x_1901);
    let x_1903 : f32 = u_xlat69;
    let x_1904 : f32 = u_xlat70;
    u_xlat69 = (x_1903 * x_1904);
    let x_1908 : i32 = u_xlati68;
    let x_1910 : f32 = x_158.x_AdditionalShadowParams[x_1908].w;
    u_xlati70 = i32(x_1910);
    let x_1913 : i32 = u_xlati70;
    u_xlatb71 = (x_1913 >= 0i);
    let x_1915 : bool = u_xlatb71;
    if (x_1915) {
      let x_1919 : i32 = u_xlati68;
      let x_1921 : f32 = x_158.x_AdditionalShadowParams[x_1919].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1921, x_1921, x_1921, x_1921))));
      let x_1925 : bool = u_xlatb71;
      if (x_1925) {
        let x_1929 : vec4<f32> = u_xlat6;
        let x_1932 : vec4<f32> = u_xlat6;
        let x_1935 : vec4<bool> = (abs(vec4<f32>(x_1929.z, x_1929.z, x_1929.y, x_1929.z)) >= abs(vec4<f32>(x_1932.x, x_1932.y, x_1932.x, x_1932.x)));
        let x_1937 : vec3<bool> = vec3<bool>(x_1935.x, x_1935.y, x_1935.z);
        let x_1938 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1937.x, x_1937.y, x_1937.z, x_1938.w);
        let x_1941 : bool = u_xlatb7.y;
        let x_1943 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1941 & x_1943);
        let x_1945 : vec4<f32> = u_xlat6;
        let x_1948 : vec4<bool> = (-(vec4<f32>(x_1945.z, x_1945.y, x_1945.z, x_1945.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1949 : vec3<bool> = vec3<bool>(x_1948.x, x_1948.y, x_1948.w);
        let x_1950 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1949.x, x_1949.y, x_1950.z, x_1949.z);
        let x_1953 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1953);
        let x_1958 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1958);
        let x_1963 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1963);
        let x_1966 : bool = u_xlatb7.z;
        if (x_1966) {
          let x_1971 : f32 = u_xlat7.y;
          x_1967 = x_1971;
        } else {
          let x_1973 : f32 = u_xlat72;
          x_1967 = x_1973;
        }
        let x_1974 : f32 = x_1967;
        u_xlat72 = x_1974;
        let x_1976 : bool = u_xlatb71;
        if (x_1976) {
          let x_1981 : f32 = u_xlat7.x;
          x_1977 = x_1981;
        } else {
          let x_1983 : f32 = u_xlat72;
          x_1977 = x_1983;
        }
        let x_1984 : f32 = x_1977;
        u_xlat71 = x_1984;
        let x_1985 : i32 = u_xlati68;
        let x_1987 : f32 = x_158.x_AdditionalShadowParams[x_1985].w;
        u_xlat72 = trunc(x_1987);
        let x_1989 : f32 = u_xlat71;
        let x_1990 : f32 = u_xlat72;
        u_xlat71 = (x_1989 + x_1990);
        let x_1992 : f32 = u_xlat71;
        u_xlati70 = i32(x_1992);
      }
      let x_1994 : i32 = u_xlati70;
      u_xlati70 = (x_1994 << bitcast<u32>(2i));
      let x_1996 : vec3<f32> = vs_TEXCOORD1;
      let x_1999 : i32 = u_xlati70;
      let x_2002 : i32 = u_xlati70;
      let x_2006 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_1999 + 1i) / 4i)][((x_2002 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1996.y, x_1996.y, x_1996.y, x_1996.y) * x_2006);
      let x_2008 : i32 = u_xlati70;
      let x_2010 : i32 = u_xlati70;
      let x_2013 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[(x_2008 / 4i)][(x_2010 % 4i)];
      let x_2014 : vec3<f32> = vs_TEXCOORD1;
      let x_2017 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2013 * vec4<f32>(x_2014.x, x_2014.x, x_2014.x, x_2014.x)) + x_2017);
      let x_2019 : i32 = u_xlati70;
      let x_2022 : i32 = u_xlati70;
      let x_2026 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_2019 + 2i) / 4i)][((x_2022 + 2i) % 4i)];
      let x_2027 : vec3<f32> = vs_TEXCOORD1;
      let x_2030 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2026 * vec4<f32>(x_2027.z, x_2027.z, x_2027.z, x_2027.z)) + x_2030);
      let x_2032 : vec4<f32> = u_xlat7;
      let x_2033 : i32 = u_xlati70;
      let x_2036 : i32 = u_xlati70;
      let x_2040 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_2033 + 3i) / 4i)][((x_2036 + 3i) % 4i)];
      u_xlat7 = (x_2032 + x_2040);
      let x_2042 : vec4<f32> = u_xlat7;
      let x_2044 : vec4<f32> = u_xlat7;
      let x_2046 : vec3<f32> = (vec3<f32>(x_2042.x, x_2042.y, x_2042.z) / vec3<f32>(x_2044.w, x_2044.w, x_2044.w));
      let x_2047 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
      let x_2050 : i32 = u_xlati68;
      let x_2052 : f32 = x_158.x_AdditionalShadowParams[x_2050].y;
      u_xlatb70 = (0.0f < x_2052);
      let x_2054 : bool = u_xlatb70;
      if (x_2054) {
        let x_2057 : i32 = u_xlati68;
        let x_2059 : f32 = x_158.x_AdditionalShadowParams[x_2057].y;
        u_xlatb70 = (1.0f == x_2059);
        let x_2061 : bool = u_xlatb70;
        if (x_2061) {
          let x_2064 : vec4<f32> = u_xlat7;
          let x_2068 : vec4<f32> = x_158.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2064.x, x_2064.y, x_2064.x, x_2064.y) + x_2068);
          let x_2071 : vec4<f32> = u_xlat8;
          let x_2072 : vec2<f32> = vec2<f32>(x_2071.x, x_2071.y);
          let x_2074 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2072.x, x_2072.y, x_2074);
          let x_2082 : vec3<f32> = txVec30;
          let x_2084 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2082.xy, x_2082.z);
          u_xlat9.x = x_2084;
          let x_2087 : vec4<f32> = u_xlat8;
          let x_2088 : vec2<f32> = vec2<f32>(x_2087.z, x_2087.w);
          let x_2090 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2088.x, x_2088.y, x_2090);
          let x_2097 : vec3<f32> = txVec31;
          let x_2099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2097.xy, x_2097.z);
          u_xlat9.y = x_2099;
          let x_2101 : vec4<f32> = u_xlat7;
          let x_2105 : vec4<f32> = x_158.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2101.x, x_2101.y, x_2101.x, x_2101.y) + x_2105);
          let x_2108 : vec4<f32> = u_xlat8;
          let x_2109 : vec2<f32> = vec2<f32>(x_2108.x, x_2108.y);
          let x_2111 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2109.x, x_2109.y, x_2111);
          let x_2118 : vec3<f32> = txVec32;
          let x_2120 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2118.xy, x_2118.z);
          u_xlat9.z = x_2120;
          let x_2123 : vec4<f32> = u_xlat8;
          let x_2124 : vec2<f32> = vec2<f32>(x_2123.z, x_2123.w);
          let x_2126 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2124.x, x_2124.y, x_2126);
          let x_2133 : vec3<f32> = txVec33;
          let x_2135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2133.xy, x_2133.z);
          u_xlat9.w = x_2135;
          let x_2137 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_2137, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2140 : i32 = u_xlati68;
          let x_2142 : f32 = x_158.x_AdditionalShadowParams[x_2140].y;
          u_xlatb71 = (2.0f == x_2142);
          let x_2144 : bool = u_xlatb71;
          if (x_2144) {
            let x_2147 : vec4<f32> = u_xlat7;
            let x_2151 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2154 : vec2<f32> = ((vec2<f32>(x_2147.x, x_2147.y) * vec2<f32>(x_2151.z, x_2151.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2155 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2154.x, x_2154.y, x_2155.z, x_2155.w);
            let x_2157 : vec4<f32> = u_xlat8;
            let x_2159 : vec2<f32> = floor(vec2<f32>(x_2157.x, x_2157.y));
            let x_2160 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2159.x, x_2159.y, x_2160.z, x_2160.w);
            let x_2162 : vec4<f32> = u_xlat7;
            let x_2165 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2168 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2162.x, x_2162.y) * vec2<f32>(x_2165.z, x_2165.w)) + -(vec2<f32>(x_2168.x, x_2168.y)));
            let x_2172 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2172.x, x_2172.x, x_2172.y, x_2172.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2175 : vec4<f32> = u_xlat9;
            let x_2177 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2175.x, x_2175.x, x_2175.z, x_2175.z) * vec4<f32>(x_2177.x, x_2177.x, x_2177.z, x_2177.z));
            let x_2180 : vec4<f32> = u_xlat10;
            let x_2182 : vec2<f32> = (vec2<f32>(x_2180.y, x_2180.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2183 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2182.x, x_2183.y, x_2182.y, x_2183.w);
            let x_2185 : vec4<f32> = u_xlat10;
            let x_2188 : vec2<f32> = u_xlat52;
            let x_2190 : vec2<f32> = ((vec2<f32>(x_2185.x, x_2185.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2188));
            let x_2191 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2190.x, x_2190.y, x_2191.z, x_2191.w);
            let x_2194 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2194) + vec2<f32>(1.0f, 1.0f));
            let x_2197 : vec2<f32> = u_xlat52;
            let x_2198 : vec2<f32> = min(x_2197, vec2<f32>(0.0f, 0.0f));
            let x_2199 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2198.x, x_2198.y, x_2199.z, x_2199.w);
            let x_2201 : vec4<f32> = u_xlat11;
            let x_2204 : vec4<f32> = u_xlat11;
            let x_2207 : vec2<f32> = u_xlat54;
            let x_2208 : vec2<f32> = ((-(vec2<f32>(x_2201.x, x_2201.y)) * vec2<f32>(x_2204.x, x_2204.y)) + x_2207);
            let x_2209 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2208.x, x_2208.y, x_2209.z, x_2209.w);
            let x_2211 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2211, vec2<f32>(0.0f, 0.0f));
            let x_2213 : vec2<f32> = u_xlat52;
            let x_2215 : vec2<f32> = u_xlat52;
            let x_2217 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2213) * x_2215) + vec2<f32>(x_2217.y, x_2217.w));
            let x_2220 : vec4<f32> = u_xlat11;
            let x_2222 : vec2<f32> = (vec2<f32>(x_2220.x, x_2220.y) + vec2<f32>(1.0f, 1.0f));
            let x_2223 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2222.x, x_2222.y, x_2223.z, x_2223.w);
            let x_2225 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2225 + vec2<f32>(1.0f, 1.0f));
            let x_2227 : vec4<f32> = u_xlat10;
            let x_2229 : vec2<f32> = (vec2<f32>(x_2227.x, x_2227.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2230 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2229.x, x_2229.y, x_2230.z, x_2230.w);
            let x_2232 : vec2<f32> = u_xlat54;
            let x_2233 : vec2<f32> = (x_2232 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2234 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2233.x, x_2233.y, x_2234.z, x_2234.w);
            let x_2236 : vec4<f32> = u_xlat11;
            let x_2238 : vec2<f32> = (vec2<f32>(x_2236.x, x_2236.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2239 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2238.x, x_2238.y, x_2239.z, x_2239.w);
            let x_2241 : vec2<f32> = u_xlat52;
            let x_2242 : vec2<f32> = (x_2241 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2243 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2242.x, x_2242.y, x_2243.z, x_2243.w);
            let x_2245 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2245.y, x_2245.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2249 : f32 = u_xlat11.x;
            u_xlat12.z = x_2249;
            let x_2252 : f32 = u_xlat52.x;
            u_xlat12.w = x_2252;
            let x_2255 : f32 = u_xlat13.x;
            u_xlat10.z = x_2255;
            let x_2258 : f32 = u_xlat9.x;
            u_xlat10.w = x_2258;
            let x_2260 : vec4<f32> = u_xlat10;
            let x_2262 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2260.z, x_2260.w, x_2260.x, x_2260.z) + vec4<f32>(x_2262.z, x_2262.w, x_2262.x, x_2262.z));
            let x_2266 : f32 = u_xlat12.y;
            u_xlat11.z = x_2266;
            let x_2269 : f32 = u_xlat52.y;
            u_xlat11.w = x_2269;
            let x_2272 : f32 = u_xlat10.y;
            u_xlat13.z = x_2272;
            let x_2275 : f32 = u_xlat9.z;
            u_xlat13.w = x_2275;
            let x_2277 : vec4<f32> = u_xlat11;
            let x_2279 : vec4<f32> = u_xlat13;
            let x_2281 : vec3<f32> = (vec3<f32>(x_2277.z, x_2277.y, x_2277.w) + vec3<f32>(x_2279.z, x_2279.y, x_2279.w));
            let x_2282 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
            let x_2284 : vec4<f32> = u_xlat10;
            let x_2286 : vec4<f32> = u_xlat14;
            let x_2288 : vec3<f32> = (vec3<f32>(x_2284.x, x_2284.z, x_2284.w) / vec3<f32>(x_2286.z, x_2286.w, x_2286.y));
            let x_2289 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
            let x_2291 : vec4<f32> = u_xlat10;
            let x_2293 : vec3<f32> = (vec3<f32>(x_2291.x, x_2291.y, x_2291.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2294 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2294.w);
            let x_2296 : vec4<f32> = u_xlat13;
            let x_2298 : vec4<f32> = u_xlat9;
            let x_2300 : vec3<f32> = (vec3<f32>(x_2296.z, x_2296.y, x_2296.w) / vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
            let x_2301 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
            let x_2303 : vec4<f32> = u_xlat11;
            let x_2305 : vec3<f32> = (vec3<f32>(x_2303.x, x_2303.y, x_2303.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2306 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
            let x_2308 : vec4<f32> = u_xlat10;
            let x_2311 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2313 : vec3<f32> = (vec3<f32>(x_2308.y, x_2308.x, x_2308.z) * vec3<f32>(x_2311.x, x_2311.x, x_2311.x));
            let x_2314 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
            let x_2316 : vec4<f32> = u_xlat11;
            let x_2319 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2321 : vec3<f32> = (vec3<f32>(x_2316.x, x_2316.y, x_2316.z) * vec3<f32>(x_2319.y, x_2319.y, x_2319.y));
            let x_2322 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2321.x, x_2321.y, x_2321.z, x_2322.w);
            let x_2325 : f32 = u_xlat11.x;
            u_xlat10.w = x_2325;
            let x_2327 : vec4<f32> = u_xlat8;
            let x_2330 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2333 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2327.x, x_2327.y, x_2327.x, x_2327.y) * vec4<f32>(x_2330.x, x_2330.y, x_2330.x, x_2330.y)) + vec4<f32>(x_2333.y, x_2333.w, x_2333.x, x_2333.w));
            let x_2336 : vec4<f32> = u_xlat8;
            let x_2339 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2342 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2336.x, x_2336.y) * vec2<f32>(x_2339.x, x_2339.y)) + vec2<f32>(x_2342.z, x_2342.w));
            let x_2346 : f32 = u_xlat10.y;
            u_xlat11.w = x_2346;
            let x_2348 : vec4<f32> = u_xlat11;
            let x_2349 : vec2<f32> = vec2<f32>(x_2348.y, x_2348.z);
            let x_2350 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2350.x, x_2349.x, x_2350.z, x_2349.y);
            let x_2352 : vec4<f32> = u_xlat8;
            let x_2355 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2358 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2352.x, x_2352.y, x_2352.x, x_2352.y) * vec4<f32>(x_2355.x, x_2355.y, x_2355.x, x_2355.y)) + vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2358.y));
            let x_2361 : vec4<f32> = u_xlat8;
            let x_2364 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2367 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2361.x, x_2361.y, x_2361.x, x_2361.y) * vec4<f32>(x_2364.x, x_2364.y, x_2364.x, x_2364.y)) + vec4<f32>(x_2367.w, x_2367.y, x_2367.w, x_2367.z));
            let x_2370 : vec4<f32> = u_xlat8;
            let x_2373 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2376 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2370.x, x_2370.y, x_2370.x, x_2370.y) * vec4<f32>(x_2373.x, x_2373.y, x_2373.x, x_2373.y)) + vec4<f32>(x_2376.x, x_2376.w, x_2376.z, x_2376.w));
            let x_2379 : vec4<f32> = u_xlat9;
            let x_2381 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2379.x, x_2379.x, x_2379.x, x_2379.y) * vec4<f32>(x_2381.z, x_2381.w, x_2381.y, x_2381.z));
            let x_2384 : vec4<f32> = u_xlat9;
            let x_2386 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2384.y, x_2384.y, x_2384.z, x_2384.z) * x_2386);
            let x_2389 : f32 = u_xlat9.z;
            let x_2391 : f32 = u_xlat14.y;
            u_xlat71 = (x_2389 * x_2391);
            let x_2394 : vec4<f32> = u_xlat12;
            let x_2395 : vec2<f32> = vec2<f32>(x_2394.x, x_2394.y);
            let x_2397 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2395.x, x_2395.y, x_2397);
            let x_2404 : vec3<f32> = txVec34;
            let x_2406 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2404.xy, x_2404.z);
            u_xlat72 = x_2406;
            let x_2408 : vec4<f32> = u_xlat12;
            let x_2409 : vec2<f32> = vec2<f32>(x_2408.z, x_2408.w);
            let x_2411 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2409.x, x_2409.y, x_2411);
            let x_2419 : vec3<f32> = txVec35;
            let x_2421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2419.xy, x_2419.z);
            u_xlat73 = x_2421;
            let x_2422 : f32 = u_xlat73;
            let x_2424 : f32 = u_xlat15.y;
            u_xlat73 = (x_2422 * x_2424);
            let x_2427 : f32 = u_xlat15.x;
            let x_2428 : f32 = u_xlat72;
            let x_2430 : f32 = u_xlat73;
            u_xlat72 = ((x_2427 * x_2428) + x_2430);
            let x_2433 : vec2<f32> = u_xlat52;
            let x_2435 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2433.x, x_2433.y, x_2435);
            let x_2442 : vec3<f32> = txVec36;
            let x_2444 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2442.xy, x_2442.z);
            u_xlat73 = x_2444;
            let x_2446 : f32 = u_xlat15.z;
            let x_2447 : f32 = u_xlat73;
            let x_2449 : f32 = u_xlat72;
            u_xlat72 = ((x_2446 * x_2447) + x_2449);
            let x_2452 : vec4<f32> = u_xlat11;
            let x_2453 : vec2<f32> = vec2<f32>(x_2452.x, x_2452.y);
            let x_2455 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2453.x, x_2453.y, x_2455);
            let x_2462 : vec3<f32> = txVec37;
            let x_2464 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2462.xy, x_2462.z);
            u_xlat73 = x_2464;
            let x_2466 : f32 = u_xlat15.w;
            let x_2467 : f32 = u_xlat73;
            let x_2469 : f32 = u_xlat72;
            u_xlat72 = ((x_2466 * x_2467) + x_2469);
            let x_2472 : vec4<f32> = u_xlat13;
            let x_2473 : vec2<f32> = vec2<f32>(x_2472.x, x_2472.y);
            let x_2475 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2473.x, x_2473.y, x_2475);
            let x_2482 : vec3<f32> = txVec38;
            let x_2484 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2482.xy, x_2482.z);
            u_xlat73 = x_2484;
            let x_2486 : f32 = u_xlat16.x;
            let x_2487 : f32 = u_xlat73;
            let x_2489 : f32 = u_xlat72;
            u_xlat72 = ((x_2486 * x_2487) + x_2489);
            let x_2492 : vec4<f32> = u_xlat13;
            let x_2493 : vec2<f32> = vec2<f32>(x_2492.z, x_2492.w);
            let x_2495 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2493.x, x_2493.y, x_2495);
            let x_2502 : vec3<f32> = txVec39;
            let x_2504 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2502.xy, x_2502.z);
            u_xlat73 = x_2504;
            let x_2506 : f32 = u_xlat16.y;
            let x_2507 : f32 = u_xlat73;
            let x_2509 : f32 = u_xlat72;
            u_xlat72 = ((x_2506 * x_2507) + x_2509);
            let x_2512 : vec4<f32> = u_xlat11;
            let x_2513 : vec2<f32> = vec2<f32>(x_2512.z, x_2512.w);
            let x_2515 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2513.x, x_2513.y, x_2515);
            let x_2522 : vec3<f32> = txVec40;
            let x_2524 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2522.xy, x_2522.z);
            u_xlat73 = x_2524;
            let x_2526 : f32 = u_xlat16.z;
            let x_2527 : f32 = u_xlat73;
            let x_2529 : f32 = u_xlat72;
            u_xlat72 = ((x_2526 * x_2527) + x_2529);
            let x_2532 : vec4<f32> = u_xlat10;
            let x_2533 : vec2<f32> = vec2<f32>(x_2532.x, x_2532.y);
            let x_2535 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2533.x, x_2533.y, x_2535);
            let x_2542 : vec3<f32> = txVec41;
            let x_2544 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2542.xy, x_2542.z);
            u_xlat73 = x_2544;
            let x_2546 : f32 = u_xlat16.w;
            let x_2547 : f32 = u_xlat73;
            let x_2549 : f32 = u_xlat72;
            u_xlat72 = ((x_2546 * x_2547) + x_2549);
            let x_2552 : vec4<f32> = u_xlat10;
            let x_2553 : vec2<f32> = vec2<f32>(x_2552.z, x_2552.w);
            let x_2555 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2553.x, x_2553.y, x_2555);
            let x_2562 : vec3<f32> = txVec42;
            let x_2564 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2562.xy, x_2562.z);
            u_xlat73 = x_2564;
            let x_2565 : f32 = u_xlat71;
            let x_2566 : f32 = u_xlat73;
            let x_2568 : f32 = u_xlat72;
            u_xlat70 = ((x_2565 * x_2566) + x_2568);
          } else {
            let x_2571 : vec4<f32> = u_xlat7;
            let x_2574 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2577 : vec2<f32> = ((vec2<f32>(x_2571.x, x_2571.y) * vec2<f32>(x_2574.z, x_2574.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2578 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2577.x, x_2577.y, x_2578.z, x_2578.w);
            let x_2580 : vec4<f32> = u_xlat8;
            let x_2582 : vec2<f32> = floor(vec2<f32>(x_2580.x, x_2580.y));
            let x_2583 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2582.x, x_2582.y, x_2583.z, x_2583.w);
            let x_2585 : vec4<f32> = u_xlat7;
            let x_2588 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2591 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2585.x, x_2585.y) * vec2<f32>(x_2588.z, x_2588.w)) + -(vec2<f32>(x_2591.x, x_2591.y)));
            let x_2595 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2595.x, x_2595.x, x_2595.y, x_2595.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2598 : vec4<f32> = u_xlat9;
            let x_2600 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2598.x, x_2598.x, x_2598.z, x_2598.z) * vec4<f32>(x_2600.x, x_2600.x, x_2600.z, x_2600.z));
            let x_2603 : vec4<f32> = u_xlat10;
            let x_2605 : vec2<f32> = (vec2<f32>(x_2603.y, x_2603.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2606 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2606.x, x_2605.x, x_2606.z, x_2605.y);
            let x_2608 : vec4<f32> = u_xlat10;
            let x_2611 : vec2<f32> = u_xlat52;
            let x_2613 : vec2<f32> = ((vec2<f32>(x_2608.x, x_2608.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2611));
            let x_2614 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2613.x, x_2614.y, x_2613.y, x_2614.w);
            let x_2616 : vec2<f32> = u_xlat52;
            let x_2618 : vec2<f32> = (-(x_2616) + vec2<f32>(1.0f, 1.0f));
            let x_2619 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2618.x, x_2618.y, x_2619.z, x_2619.w);
            let x_2621 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2621, vec2<f32>(0.0f, 0.0f));
            let x_2623 : vec2<f32> = u_xlat54;
            let x_2625 : vec2<f32> = u_xlat54;
            let x_2627 : vec4<f32> = u_xlat10;
            let x_2629 : vec2<f32> = ((-(x_2623) * x_2625) + vec2<f32>(x_2627.x, x_2627.y));
            let x_2630 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2629.x, x_2629.y, x_2630.z, x_2630.w);
            let x_2632 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2632, vec2<f32>(0.0f, 0.0f));
            let x_2635 : vec2<f32> = u_xlat54;
            let x_2637 : vec2<f32> = u_xlat54;
            let x_2639 : vec4<f32> = u_xlat9;
            let x_2641 : vec2<f32> = ((-(x_2635) * x_2637) + vec2<f32>(x_2639.y, x_2639.w));
            let x_2642 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2641.x, x_2642.y, x_2641.y);
            let x_2644 : vec4<f32> = u_xlat10;
            let x_2646 : vec2<f32> = (vec2<f32>(x_2644.x, x_2644.y) + vec2<f32>(2.0f, 2.0f));
            let x_2647 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2646.x, x_2646.y, x_2647.z, x_2647.w);
            let x_2649 : vec3<f32> = u_xlat31;
            let x_2651 : vec2<f32> = (vec2<f32>(x_2649.x, x_2649.z) + vec2<f32>(2.0f, 2.0f));
            let x_2652 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2652.x, x_2651.x, x_2652.z, x_2651.y);
            let x_2655 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2655 * 0.08163200318813323975f);
            let x_2658 : vec4<f32> = u_xlat9;
            let x_2660 : vec3<f32> = (vec3<f32>(x_2658.z, x_2658.x, x_2658.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2661 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2660.x, x_2660.y, x_2660.z, x_2661.w);
            let x_2663 : vec4<f32> = u_xlat10;
            let x_2665 : vec2<f32> = (vec2<f32>(x_2663.x, x_2663.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2666 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2665.x, x_2665.y, x_2666.z, x_2666.w);
            let x_2669 : f32 = u_xlat13.y;
            u_xlat12.x = x_2669;
            let x_2671 : vec2<f32> = u_xlat52;
            let x_2674 : vec2<f32> = ((vec2<f32>(x_2671.x, x_2671.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2675 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2675.x, x_2674.x, x_2675.z, x_2674.y);
            let x_2677 : vec2<f32> = u_xlat52;
            let x_2680 : vec2<f32> = ((vec2<f32>(x_2677.x, x_2677.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2681 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2680.x, x_2681.y, x_2680.y, x_2681.w);
            let x_2684 : f32 = u_xlat9.x;
            u_xlat10.y = x_2684;
            let x_2687 : f32 = u_xlat11.y;
            u_xlat10.w = x_2687;
            let x_2689 : vec4<f32> = u_xlat10;
            let x_2690 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2689 + x_2690);
            let x_2692 : vec2<f32> = u_xlat52;
            let x_2695 : vec2<f32> = ((vec2<f32>(x_2692.y, x_2692.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2696 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2696.x, x_2695.x, x_2696.z, x_2695.y);
            let x_2698 : vec2<f32> = u_xlat52;
            let x_2701 : vec2<f32> = ((vec2<f32>(x_2698.y, x_2698.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2702 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2701.x, x_2702.y, x_2701.y, x_2702.w);
            let x_2705 : f32 = u_xlat9.y;
            u_xlat11.y = x_2705;
            let x_2707 : vec4<f32> = u_xlat11;
            let x_2708 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2707 + x_2708);
            let x_2710 : vec4<f32> = u_xlat10;
            let x_2711 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2710 / x_2711);
            let x_2713 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2713 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2715 : vec4<f32> = u_xlat11;
            let x_2716 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2715 / x_2716);
            let x_2718 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2718 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2720 : vec4<f32> = u_xlat10;
            let x_2723 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2720.w, x_2720.x, x_2720.y, x_2720.z) * vec4<f32>(x_2723.x, x_2723.x, x_2723.x, x_2723.x));
            let x_2726 : vec4<f32> = u_xlat11;
            let x_2729 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2726.x, x_2726.w, x_2726.y, x_2726.z) * vec4<f32>(x_2729.y, x_2729.y, x_2729.y, x_2729.y));
            let x_2732 : vec4<f32> = u_xlat10;
            let x_2733 : vec3<f32> = vec3<f32>(x_2732.y, x_2732.z, x_2732.w);
            let x_2734 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2733.x, x_2734.y, x_2733.y, x_2733.z);
            let x_2737 : f32 = u_xlat11.x;
            u_xlat13.y = x_2737;
            let x_2739 : vec4<f32> = u_xlat8;
            let x_2742 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2745 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2739.x, x_2739.y, x_2739.x, x_2739.y) * vec4<f32>(x_2742.x, x_2742.y, x_2742.x, x_2742.y)) + vec4<f32>(x_2745.x, x_2745.y, x_2745.z, x_2745.y));
            let x_2748 : vec4<f32> = u_xlat8;
            let x_2751 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2754 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2748.x, x_2748.y) * vec2<f32>(x_2751.x, x_2751.y)) + vec2<f32>(x_2754.w, x_2754.y));
            let x_2758 : f32 = u_xlat13.y;
            u_xlat10.y = x_2758;
            let x_2761 : f32 = u_xlat11.z;
            u_xlat13.y = x_2761;
            let x_2763 : vec4<f32> = u_xlat8;
            let x_2766 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2769 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2763.x, x_2763.y, x_2763.x, x_2763.y) * vec4<f32>(x_2766.x, x_2766.y, x_2766.x, x_2766.y)) + vec4<f32>(x_2769.x, x_2769.y, x_2769.z, x_2769.y));
            let x_2772 : vec4<f32> = u_xlat8;
            let x_2775 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2778 : vec4<f32> = u_xlat13;
            let x_2780 : vec2<f32> = ((vec2<f32>(x_2772.x, x_2772.y) * vec2<f32>(x_2775.x, x_2775.y)) + vec2<f32>(x_2778.w, x_2778.y));
            let x_2781 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2780.x, x_2780.y, x_2781.z, x_2781.w);
            let x_2784 : f32 = u_xlat13.y;
            u_xlat10.z = x_2784;
            let x_2786 : vec4<f32> = u_xlat8;
            let x_2789 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2792 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2786.x, x_2786.y, x_2786.x, x_2786.y) * vec4<f32>(x_2789.x, x_2789.y, x_2789.x, x_2789.y)) + vec4<f32>(x_2792.x, x_2792.y, x_2792.x, x_2792.z));
            let x_2796 : f32 = u_xlat11.w;
            u_xlat13.y = x_2796;
            let x_2798 : vec4<f32> = u_xlat8;
            let x_2801 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2804 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2798.x, x_2798.y, x_2798.x, x_2798.y) * vec4<f32>(x_2801.x, x_2801.y, x_2801.x, x_2801.y)) + vec4<f32>(x_2804.x, x_2804.y, x_2804.z, x_2804.y));
            let x_2808 : vec4<f32> = u_xlat8;
            let x_2811 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2814 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2808.x, x_2808.y) * vec2<f32>(x_2811.x, x_2811.y)) + vec2<f32>(x_2814.w, x_2814.y));
            let x_2818 : f32 = u_xlat13.y;
            u_xlat10.w = x_2818;
            let x_2821 : vec4<f32> = u_xlat8;
            let x_2824 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2827 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2821.x, x_2821.y) * vec2<f32>(x_2824.x, x_2824.y)) + vec2<f32>(x_2827.x, x_2827.w));
            let x_2830 : vec4<f32> = u_xlat13;
            let x_2831 : vec3<f32> = vec3<f32>(x_2830.x, x_2830.z, x_2830.w);
            let x_2832 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2831.x, x_2832.y, x_2831.y, x_2831.z);
            let x_2834 : vec4<f32> = u_xlat8;
            let x_2837 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2840 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2834.x, x_2834.y, x_2834.x, x_2834.y) * vec4<f32>(x_2837.x, x_2837.y, x_2837.x, x_2837.y)) + vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2840.y));
            let x_2844 : vec4<f32> = u_xlat8;
            let x_2847 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2850 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2844.x, x_2844.y) * vec2<f32>(x_2847.x, x_2847.y)) + vec2<f32>(x_2850.w, x_2850.y));
            let x_2854 : f32 = u_xlat10.x;
            u_xlat11.x = x_2854;
            let x_2856 : vec4<f32> = u_xlat8;
            let x_2859 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2862 : vec4<f32> = u_xlat11;
            let x_2864 : vec2<f32> = ((vec2<f32>(x_2856.x, x_2856.y) * vec2<f32>(x_2859.x, x_2859.y)) + vec2<f32>(x_2862.x, x_2862.y));
            let x_2865 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2864.x, x_2864.y, x_2865.z, x_2865.w);
            let x_2868 : vec4<f32> = u_xlat9;
            let x_2870 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2868.x, x_2868.x, x_2868.x, x_2868.x) * x_2870);
            let x_2873 : vec4<f32> = u_xlat9;
            let x_2875 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2873.y, x_2873.y, x_2873.y, x_2873.y) * x_2875);
            let x_2878 : vec4<f32> = u_xlat9;
            let x_2880 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2878.z, x_2878.z, x_2878.z, x_2878.z) * x_2880);
            let x_2882 : vec4<f32> = u_xlat9;
            let x_2884 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2882.w, x_2882.w, x_2882.w, x_2882.w) * x_2884);
            let x_2887 : vec4<f32> = u_xlat14;
            let x_2888 : vec2<f32> = vec2<f32>(x_2887.x, x_2887.y);
            let x_2890 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2888.x, x_2888.y, x_2890);
            let x_2897 : vec3<f32> = txVec43;
            let x_2899 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2897.xy, x_2897.z);
            u_xlat71 = x_2899;
            let x_2901 : vec4<f32> = u_xlat14;
            let x_2902 : vec2<f32> = vec2<f32>(x_2901.z, x_2901.w);
            let x_2904 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2902.x, x_2902.y, x_2904);
            let x_2911 : vec3<f32> = txVec44;
            let x_2913 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2911.xy, x_2911.z);
            u_xlat72 = x_2913;
            let x_2914 : f32 = u_xlat72;
            let x_2916 : f32 = u_xlat19.y;
            u_xlat72 = (x_2914 * x_2916);
            let x_2919 : f32 = u_xlat19.x;
            let x_2920 : f32 = u_xlat71;
            let x_2922 : f32 = u_xlat72;
            u_xlat71 = ((x_2919 * x_2920) + x_2922);
            let x_2925 : vec2<f32> = u_xlat52;
            let x_2927 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2925.x, x_2925.y, x_2927);
            let x_2934 : vec3<f32> = txVec45;
            let x_2936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
            u_xlat72 = x_2936;
            let x_2938 : f32 = u_xlat19.z;
            let x_2939 : f32 = u_xlat72;
            let x_2941 : f32 = u_xlat71;
            u_xlat71 = ((x_2938 * x_2939) + x_2941);
            let x_2944 : vec4<f32> = u_xlat17;
            let x_2945 : vec2<f32> = vec2<f32>(x_2944.x, x_2944.y);
            let x_2947 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2945.x, x_2945.y, x_2947);
            let x_2954 : vec3<f32> = txVec46;
            let x_2956 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2954.xy, x_2954.z);
            u_xlat72 = x_2956;
            let x_2958 : f32 = u_xlat19.w;
            let x_2959 : f32 = u_xlat72;
            let x_2961 : f32 = u_xlat71;
            u_xlat71 = ((x_2958 * x_2959) + x_2961);
            let x_2964 : vec4<f32> = u_xlat15;
            let x_2965 : vec2<f32> = vec2<f32>(x_2964.x, x_2964.y);
            let x_2967 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2965.x, x_2965.y, x_2967);
            let x_2974 : vec3<f32> = txVec47;
            let x_2976 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2974.xy, x_2974.z);
            u_xlat72 = x_2976;
            let x_2978 : f32 = u_xlat20.x;
            let x_2979 : f32 = u_xlat72;
            let x_2981 : f32 = u_xlat71;
            u_xlat71 = ((x_2978 * x_2979) + x_2981);
            let x_2984 : vec4<f32> = u_xlat15;
            let x_2985 : vec2<f32> = vec2<f32>(x_2984.z, x_2984.w);
            let x_2987 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2985.x, x_2985.y, x_2987);
            let x_2994 : vec3<f32> = txVec48;
            let x_2996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2994.xy, x_2994.z);
            u_xlat72 = x_2996;
            let x_2998 : f32 = u_xlat20.y;
            let x_2999 : f32 = u_xlat72;
            let x_3001 : f32 = u_xlat71;
            u_xlat71 = ((x_2998 * x_2999) + x_3001);
            let x_3004 : vec4<f32> = u_xlat16;
            let x_3005 : vec2<f32> = vec2<f32>(x_3004.x, x_3004.y);
            let x_3007 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3005.x, x_3005.y, x_3007);
            let x_3014 : vec3<f32> = txVec49;
            let x_3016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3014.xy, x_3014.z);
            u_xlat72 = x_3016;
            let x_3018 : f32 = u_xlat20.z;
            let x_3019 : f32 = u_xlat72;
            let x_3021 : f32 = u_xlat71;
            u_xlat71 = ((x_3018 * x_3019) + x_3021);
            let x_3024 : vec4<f32> = u_xlat17;
            let x_3025 : vec2<f32> = vec2<f32>(x_3024.z, x_3024.w);
            let x_3027 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3025.x, x_3025.y, x_3027);
            let x_3034 : vec3<f32> = txVec50;
            let x_3036 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3034.xy, x_3034.z);
            u_xlat72 = x_3036;
            let x_3038 : f32 = u_xlat20.w;
            let x_3039 : f32 = u_xlat72;
            let x_3041 : f32 = u_xlat71;
            u_xlat71 = ((x_3038 * x_3039) + x_3041);
            let x_3044 : vec4<f32> = u_xlat18;
            let x_3045 : vec2<f32> = vec2<f32>(x_3044.x, x_3044.y);
            let x_3047 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3045.x, x_3045.y, x_3047);
            let x_3054 : vec3<f32> = txVec51;
            let x_3056 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3054.xy, x_3054.z);
            u_xlat72 = x_3056;
            let x_3058 : f32 = u_xlat21.x;
            let x_3059 : f32 = u_xlat72;
            let x_3061 : f32 = u_xlat71;
            u_xlat71 = ((x_3058 * x_3059) + x_3061);
            let x_3064 : vec4<f32> = u_xlat18;
            let x_3065 : vec2<f32> = vec2<f32>(x_3064.z, x_3064.w);
            let x_3067 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3065.x, x_3065.y, x_3067);
            let x_3074 : vec3<f32> = txVec52;
            let x_3076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3074.xy, x_3074.z);
            u_xlat72 = x_3076;
            let x_3078 : f32 = u_xlat21.y;
            let x_3079 : f32 = u_xlat72;
            let x_3081 : f32 = u_xlat71;
            u_xlat71 = ((x_3078 * x_3079) + x_3081);
            let x_3084 : vec2<f32> = u_xlat32;
            let x_3086 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3084.x, x_3084.y, x_3086);
            let x_3093 : vec3<f32> = txVec53;
            let x_3095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3093.xy, x_3093.z);
            u_xlat72 = x_3095;
            let x_3097 : f32 = u_xlat21.z;
            let x_3098 : f32 = u_xlat72;
            let x_3100 : f32 = u_xlat71;
            u_xlat71 = ((x_3097 * x_3098) + x_3100);
            let x_3103 : vec2<f32> = u_xlat60;
            let x_3105 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3103.x, x_3103.y, x_3105);
            let x_3112 : vec3<f32> = txVec54;
            let x_3114 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3112.xy, x_3112.z);
            u_xlat72 = x_3114;
            let x_3116 : f32 = u_xlat21.w;
            let x_3117 : f32 = u_xlat72;
            let x_3119 : f32 = u_xlat71;
            u_xlat71 = ((x_3116 * x_3117) + x_3119);
            let x_3122 : vec4<f32> = u_xlat13;
            let x_3123 : vec2<f32> = vec2<f32>(x_3122.x, x_3122.y);
            let x_3125 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3123.x, x_3123.y, x_3125);
            let x_3132 : vec3<f32> = txVec55;
            let x_3134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3132.xy, x_3132.z);
            u_xlat72 = x_3134;
            let x_3136 : f32 = u_xlat9.x;
            let x_3137 : f32 = u_xlat72;
            let x_3139 : f32 = u_xlat71;
            u_xlat71 = ((x_3136 * x_3137) + x_3139);
            let x_3142 : vec4<f32> = u_xlat13;
            let x_3143 : vec2<f32> = vec2<f32>(x_3142.z, x_3142.w);
            let x_3145 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
            let x_3152 : vec3<f32> = txVec56;
            let x_3154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
            u_xlat72 = x_3154;
            let x_3156 : f32 = u_xlat9.y;
            let x_3157 : f32 = u_xlat72;
            let x_3159 : f32 = u_xlat71;
            u_xlat71 = ((x_3156 * x_3157) + x_3159);
            let x_3162 : vec2<f32> = u_xlat55;
            let x_3164 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3162.x, x_3162.y, x_3164);
            let x_3171 : vec3<f32> = txVec57;
            let x_3173 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3171.xy, x_3171.z);
            u_xlat72 = x_3173;
            let x_3175 : f32 = u_xlat9.z;
            let x_3176 : f32 = u_xlat72;
            let x_3178 : f32 = u_xlat71;
            u_xlat71 = ((x_3175 * x_3176) + x_3178);
            let x_3181 : vec4<f32> = u_xlat8;
            let x_3182 : vec2<f32> = vec2<f32>(x_3181.x, x_3181.y);
            let x_3184 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3182.x, x_3182.y, x_3184);
            let x_3191 : vec3<f32> = txVec58;
            let x_3193 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3191.xy, x_3191.z);
            u_xlat72 = x_3193;
            let x_3195 : f32 = u_xlat9.w;
            let x_3196 : f32 = u_xlat72;
            let x_3198 : f32 = u_xlat71;
            u_xlat70 = ((x_3195 * x_3196) + x_3198);
          }
        }
      } else {
        let x_3202 : vec4<f32> = u_xlat7;
        let x_3203 : vec2<f32> = vec2<f32>(x_3202.x, x_3202.y);
        let x_3205 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3203.x, x_3203.y, x_3205);
        let x_3212 : vec3<f32> = txVec59;
        let x_3214 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3212.xy, x_3212.z);
        u_xlat70 = x_3214;
      }
      let x_3215 : i32 = u_xlati68;
      let x_3217 : f32 = x_158.x_AdditionalShadowParams[x_3215].x;
      u_xlat71 = (1.0f + -(x_3217));
      let x_3220 : f32 = u_xlat70;
      let x_3221 : i32 = u_xlati68;
      let x_3223 : f32 = x_158.x_AdditionalShadowParams[x_3221].x;
      let x_3225 : f32 = u_xlat71;
      u_xlat70 = ((x_3220 * x_3223) + x_3225);
      let x_3228 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3228);
      let x_3232 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3232 >= 1.0f);
      let x_3234 : bool = u_xlatb71;
      let x_3235 : bool = u_xlatb72;
      u_xlatb71 = (x_3234 | x_3235);
      let x_3237 : bool = u_xlatb71;
      let x_3238 : f32 = u_xlat70;
      u_xlat70 = select(x_3238, 1.0f, x_3237);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3241 : f32 = u_xlat70;
    u_xlat71 = (-(x_3241) + 1.0f);
    let x_3244 : f32 = u_xlat66;
    let x_3245 : f32 = u_xlat71;
    let x_3247 : f32 = u_xlat70;
    u_xlat70 = ((x_3244 * x_3245) + x_3247);
    let x_3249 : f32 = u_xlat69;
    let x_3250 : f32 = u_xlat70;
    u_xlat69 = (x_3249 * x_3250);
    let x_3252 : f32 = u_xlat69;
    let x_3254 : i32 = u_xlati68;
    let x_3256 : vec4<f32> = x_1830.x_AdditionalLightsColor[x_3254];
    let x_3258 : vec3<f32> = (vec3<f32>(x_3252, x_3252, x_3252) * vec3<f32>(x_3256.x, x_3256.y, x_3256.z));
    let x_3259 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3258.x, x_3258.y, x_3258.z, x_3259.w);
    let x_3261 : vec3<f32> = u_xlat2;
    let x_3262 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(x_3261, vec3<f32>(x_3262.x, x_3262.y, x_3262.z));
    let x_3265 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3265, 0.0f, 1.0f);
    let x_3267 : f32 = u_xlat68;
    let x_3269 : vec4<f32> = u_xlat7;
    let x_3271 : vec3<f32> = (vec3<f32>(x_3267, x_3267, x_3267) * vec3<f32>(x_3269.x, x_3269.y, x_3269.z));
    let x_3272 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3271.x, x_3271.y, x_3271.z, x_3272.w);
    let x_3274 : vec4<f32> = u_xlat1;
    let x_3276 : vec4<f32> = u_xlat6;
    let x_3278 : vec3<f32> = (vec3<f32>(x_3274.y, x_3274.z, x_3274.w) * vec3<f32>(x_3276.x, x_3276.y, x_3276.z));
    let x_3279 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3278.x, x_3278.y, x_3278.z, x_3279.w);
    let x_3281 : vec4<f32> = u_xlat6;
    let x_3283 : vec4<f32> = u_xlat0;
    let x_3286 : vec4<f32> = u_xlat5;
    let x_3288 : vec3<f32> = ((vec3<f32>(x_3281.x, x_3281.y, x_3281.z) * vec3<f32>(x_3283.x, x_3283.x, x_3283.x)) + vec3<f32>(x_3286.x, x_3286.y, x_3286.z));
    let x_3289 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3288.x, x_3288.y, x_3288.z, x_3289.w);

    continuing {
      let x_3291 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3291 + bitcast<u32>(1i));
    }
  }
  let x_3293 : vec4<f32> = u_xlat4;
  let x_3295 : vec4<f32> = u_xlat1;
  let x_3298 : vec4<f32> = u_xlat3;
  let x_3300 : vec3<f32> = ((vec3<f32>(x_3293.x, x_3293.y, x_3293.z) * vec3<f32>(x_3295.y, x_3295.z, x_3295.w)) + vec3<f32>(x_3298.x, x_3298.y, x_3298.z));
  let x_3301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3300.x, x_3300.y, x_3300.z, x_3301.w);
  let x_3305 : vec4<f32> = u_xlat5;
  let x_3307 : vec4<f32> = u_xlat1;
  let x_3309 : vec3<f32> = (vec3<f32>(x_3305.x, x_3305.y, x_3305.z) + vec3<f32>(x_3307.x, x_3307.y, x_3307.z));
  let x_3310 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3309.x, x_3309.y, x_3309.z, x_3310.w);
  let x_3313 : f32 = x_41.x_Surface;
  u_xlatb22 = (x_3313 == 1.0f);
  let x_3315 : bool = u_xlatb22;
  let x_3316 : bool = u_xlatb44;
  u_xlatb22 = (x_3315 | x_3316);
  let x_3318 : bool = u_xlatb22;
  if (x_3318) {
    let x_3323 : f32 = u_xlat0.x;
    x_3319 = x_3323;
  } else {
    x_3319 = 1.0f;
  }
  let x_3325 : f32 = x_3319;
  SV_Target0.w = x_3325;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


