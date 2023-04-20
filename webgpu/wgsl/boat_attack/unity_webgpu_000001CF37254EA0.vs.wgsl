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
}

var<private> u_xlat0 : vec3<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_21 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_59 : VGlobals;

var<private> vs_INTERP2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> vs_INTERP0 : vec4<f32>;

var<private> vs_INTERP1 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP3 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_12.y, x_12.y, x_12.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_31 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_33 : vec3<f32> = in_POSITION0;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_31.x, x_31.y, x_31.z) * vec3<f32>(x_33.x, x_33.x, x_33.x)) + x_36);
  let x_40 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_42 : vec3<f32> = in_POSITION0;
  let x_45 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_40.x, x_40.y, x_40.z) * vec3<f32>(x_42.z, x_42.z, x_42.z)) + x_45);
  let x_47 : vec3<f32> = u_xlat0;
  let x_50 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat0 = (x_47 + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_55 : vec3<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_59.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_55.y, x_55.y, x_55.y, x_55.y) * x_61);
  let x_64 : vec4<f32> = x_59.unity_MatrixVP[0i];
  let x_65 : vec3<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x)) + x_68);
  let x_71 : vec4<f32> = x_59.unity_MatrixVP[2i];
  let x_72 : vec3<f32> = u_xlat0;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_71 * vec4<f32>(x_72.z, x_72.z, x_72.z, x_72.z)) + x_75);
  let x_78 : vec3<f32> = u_xlat0;
  vs_INTERP2 = x_78;
  let x_84 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = x_59.unity_MatrixVP[3i];
  gl_Position = (x_84 + x_86);
  let x_92 : vec4<f32> = in_TANGENT0;
  let x_95 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_92.y, x_92.y, x_92.y) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_99 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_101 : vec4<f32> = in_TANGENT0;
  let x_104 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_99.x, x_99.y, x_99.z) * vec3<f32>(x_101.x, x_101.x, x_101.x)) + x_104);
  let x_107 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_109 : vec4<f32> = in_TANGENT0;
  let x_112 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(x_109.z, x_109.z, x_109.z)) + x_112);
  let x_116 : vec3<f32> = u_xlat0;
  let x_117 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_116, x_117);
  let x_119 : f32 = u_xlat6;
  u_xlat6 = max(x_119, 1.17549435e-38f);
  let x_122 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_122);
  let x_125 : f32 = u_xlat6;
  let x_127 : vec3<f32> = u_xlat0;
  let x_128 : vec3<f32> = (vec3<f32>(x_125, x_125, x_125) * x_127);
  let x_129 : vec4<f32> = vs_INTERP0;
  vs_INTERP0 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_134 : f32 = in_TANGENT0.w;
  vs_INTERP0.w = x_134;
  let x_139 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP1 = x_139;
  let x_141 : vec3<f32> = in_NORMAL0;
  let x_143 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_141, vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_148 : vec3<f32> = in_NORMAL0;
  let x_150 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_148, vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_154 : vec3<f32> = in_NORMAL0;
  let x_156 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_154, vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_160 : vec3<f32> = u_xlat0;
  let x_161 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_160, x_161);
  let x_163 : f32 = u_xlat6;
  u_xlat6 = max(x_163, 1.17549435e-38f);
  let x_165 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_165);
  let x_169 : f32 = u_xlat6;
  let x_171 : vec3<f32> = u_xlat0;
  vs_INTERP3 = (vec3<f32>(x_169, x_169, x_169) * x_171);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_INTERP0_1 : vec4<f32>,
  @location(1)
  vs_INTERP1_1 : vec4<f32>,
  @location(2)
  vs_INTERP3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_INTERP0, vs_INTERP1, vs_INTERP3);
}


