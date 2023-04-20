diagnostic(off, derivative_uniformity);

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

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(64) */
  x_ShadowBias : vec4<f32>,
  /* @offset(80) */
  x_LightDirection : vec3<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_21 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_66 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_29 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_47 : vec4<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_69 : vec3<f32> = x_66.x_LightDirection;
  let x_71 : vec4<f32> = x_66.x_ShadowBias;
  let x_74 : vec4<f32> = u_xlat0;
  let x_76 : vec3<f32> = ((x_69 * vec3<f32>(x_71.x, x_71.x, x_71.x)) + vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_82 : vec3<f32> = in_NORMAL0;
  let x_85 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_87 : vec3<f32> = (vec3<f32>(x_82.y, x_82.y, x_82.y) * vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_88 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
  let x_91 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_93 : vec3<f32> = in_NORMAL0;
  let x_96 : vec4<f32> = u_xlat1;
  let x_98 : vec3<f32> = ((vec3<f32>(x_91.x, x_91.y, x_91.z) * vec3<f32>(x_93.x, x_93.x, x_93.x)) + vec3<f32>(x_96.x, x_96.y, x_96.z));
  let x_99 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_98.x, x_98.y, x_98.z, x_99.w);
  let x_102 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_104 : vec3<f32> = in_NORMAL0;
  let x_107 : vec4<f32> = u_xlat1;
  let x_109 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.y, x_102.z) * vec3<f32>(x_104.z, x_104.z, x_104.z)) + vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_114 : vec4<f32> = u_xlat1;
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_114.x, x_114.y, x_114.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat6;
  u_xlat6 = max(x_119, 1.17549435e-38f);
  let x_122 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_122);
  let x_124 : f32 = u_xlat6;
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec3<f32> = (vec3<f32>(x_124, x_124, x_124) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_132 : vec3<f32> = x_66.x_LightDirection;
  let x_133 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(x_132, vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : f32 = u_xlat6;
  u_xlat6 = clamp(x_136, 0.0f, 1.0f);
  let x_140 : f32 = u_xlat6;
  u_xlat6 = (-(x_140) + 1.0f);
  let x_143 : f32 = u_xlat6;
  let x_147 : f32 = x_66.x_ShadowBias.y;
  u_xlat6 = (x_143 * x_147);
  let x_149 : vec4<f32> = u_xlat1;
  let x_151 : f32 = u_xlat6;
  let x_154 : vec4<f32> = u_xlat0;
  let x_156 : vec3<f32> = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151, x_151, x_151)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_159 : vec4<f32> = u_xlat0;
  let x_162 : vec4<f32> = x_66.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_159.y, x_159.y, x_159.y, x_159.y) * x_162);
  let x_165 : vec4<f32> = x_66.unity_MatrixVP[0i];
  let x_166 : vec4<f32> = u_xlat0;
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_165 * vec4<f32>(x_166.x, x_166.x, x_166.x, x_166.x)) + x_169);
  let x_172 : vec4<f32> = x_66.unity_MatrixVP[2i];
  let x_173 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_172 * vec4<f32>(x_173.z, x_173.z, x_173.z, x_173.z)) + x_176);
  let x_178 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = x_66.unity_MatrixVP[3i];
  u_xlat0 = (x_178 + x_180);
  let x_187 : f32 = u_xlat0.z;
  gl_Position.z = min(x_187, 1.0f);
  let x_191 : vec4<f32> = u_xlat0;
  let x_192 : vec3<f32> = vec3<f32>(x_191.x, x_191.y, x_191.w);
  let x_195 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_192.x, x_192.y, x_195.z, x_192.z);
  let x_202 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_202;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}


