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

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_21 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_69 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> vs_INTERP0 : vec4<f32>;

var<private> vs_INTERP1 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP2 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_29 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_35 : vec3<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_47 : vec3<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = x_69.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_65.y, x_65.y, x_65.y, x_65.y) * x_71);
  let x_74 : vec4<f32> = x_69.unity_MatrixVP[0i];
  let x_75 : vec4<f32> = u_xlat0;
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_74 * vec4<f32>(x_75.x, x_75.x, x_75.x, x_75.x)) + x_78);
  let x_81 : vec4<f32> = x_69.unity_MatrixVP[2i];
  let x_82 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_81 * vec4<f32>(x_82.z, x_82.z, x_82.z, x_82.z)) + x_85);
  let x_92 : vec4<f32> = u_xlat0;
  let x_94 : vec4<f32> = x_69.unity_MatrixVP[3i];
  gl_Position = (x_92 + x_94);
  let x_100 : vec4<f32> = in_TANGENT0;
  let x_103 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_105 : vec3<f32> = (vec3<f32>(x_100.y, x_100.y, x_100.y) * vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_106 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_109 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_111 : vec4<f32> = in_TANGENT0;
  let x_114 : vec4<f32> = u_xlat0;
  let x_116 : vec3<f32> = ((vec3<f32>(x_109.x, x_109.y, x_109.z) * vec3<f32>(x_111.x, x_111.x, x_111.x)) + vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_120 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_122 : vec4<f32> = in_TANGENT0;
  let x_125 : vec4<f32> = u_xlat0;
  let x_127 : vec3<f32> = ((vec3<f32>(x_120.x, x_120.y, x_120.z) * vec3<f32>(x_122.z, x_122.z, x_122.z)) + vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_132 : vec4<f32> = u_xlat0;
  let x_134 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_132.x, x_132.y, x_132.z), vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : f32 = u_xlat6;
  u_xlat6 = max(x_137, 1.17549435e-38f);
  let x_140 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_140);
  let x_143 : f32 = u_xlat6;
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = (vec3<f32>(x_143, x_143, x_143) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = vs_INTERP0;
  vs_INTERP0 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_153 : f32 = in_TANGENT0.w;
  vs_INTERP0.w = x_153;
  let x_158 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP1 = x_158;
  let x_160 : vec3<f32> = in_NORMAL0;
  let x_162 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_160, vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_167 : vec3<f32> = in_NORMAL0;
  let x_169 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_167, vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_173 : vec3<f32> = in_NORMAL0;
  let x_175 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_173, vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_179 : vec4<f32> = u_xlat0;
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : f32 = u_xlat6;
  u_xlat6 = max(x_184, 1.17549435e-38f);
  let x_186 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_186);
  let x_190 : f32 = u_xlat6;
  let x_192 : vec4<f32> = u_xlat0;
  vs_INTERP2 = (vec3<f32>(x_190, x_190, x_190) * vec3<f32>(x_192.x, x_192.y, x_192.z));
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
  vs_INTERP2_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_INTERP0, vs_INTERP1, vs_INTERP2);
}


