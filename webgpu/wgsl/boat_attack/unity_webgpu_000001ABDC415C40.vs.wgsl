struct VGlobals {
  x_ScreenParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_RendererColor : vec4<f32>,
  x_Flip : vec2<f32>,
  @size(8)
  padding : u32,
  x_Color : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_18 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : vec2<f32> = x_18.x_Flip;
  let x_24 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) * x_23);
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_24.x, x_24.y, x_25.z, x_25.w);
  let x_28 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_28.y, x_28.y, x_28.y, x_28.y) * x_33);
  let x_37 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_38 : vec4<f32> = u_xlat0;
  let x_41 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_37 * vec4<f32>(x_38.x, x_38.x, x_38.x, x_38.x)) + x_41);
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_46 : vec4<f32> = in_POSITION0;
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_45 * vec4<f32>(x_46.z, x_46.z, x_46.z, x_46.z)) + x_49);
  let x_51 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_51 + x_54);
  let x_56 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_56.y, x_56.y, x_56.y, x_56.y) * x_59);
  let x_62 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_63 : vec4<f32> = u_xlat0;
  let x_66 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_62 * vec4<f32>(x_63.x, x_63.x, x_63.x, x_63.x)) + x_66);
  let x_69 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_70 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_69 * vec4<f32>(x_70.z, x_70.z, x_70.z, x_70.z)) + x_73);
  let x_76 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_77 : vec4<f32> = u_xlat0;
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_76 * vec4<f32>(x_77.w, x_77.w, x_77.w, x_77.w)) + x_80);
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = u_xlat0;
  let x_86 : vec2<f32> = (vec2<f32>(x_82.x, x_82.y) / vec2<f32>(x_84.w, x_84.w));
  let x_87 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_86.x, x_86.y, x_87.z, x_87.w);
  let x_90 : vec4<f32> = x_18.x_ScreenParams;
  let x_94 : vec2<f32> = (vec2<f32>(x_90.x, x_90.y) * vec2<f32>(0.5f, 0.5f));
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_94.x, x_94.y, x_95.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat0;
  let x_99 : vec4<f32> = u_xlat1;
  let x_101 : vec2<f32> = (vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_99.x, x_99.y));
  let x_102 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_101.x, x_101.y, x_102.z, x_102.w);
  let x_104 : vec4<f32> = u_xlat0;
  let x_106 : vec2<f32> = round(vec2<f32>(x_104.x, x_104.y));
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_109 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = u_xlat1;
  let x_113 : vec2<f32> = (vec2<f32>(x_109.x, x_109.y) / vec2<f32>(x_111.x, x_111.y));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_122 : vec4<f32> = u_xlat0;
  let x_124 : vec4<f32> = u_xlat0;
  let x_126 : vec2<f32> = (vec2<f32>(x_122.w, x_122.w) * vec2<f32>(x_124.x, x_124.y));
  let x_129 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_126.x, x_126.y, x_129.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat0;
  let x_132 : vec2<f32> = vec2<f32>(x_131.z, x_131.w);
  let x_134 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_134.x, x_134.y, x_132.x, x_132.y);
  let x_137 : vec4<f32> = in_COLOR0;
  let x_140 : vec4<f32> = x_18.x_Color;
  u_xlat0 = (x_137 * x_140);
  let x_143 : vec4<f32> = u_xlat0;
  let x_145 : vec4<f32> = x_18.x_RendererColor;
  vs_COLOR0 = (x_143 * x_145);
  let x_151 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_151;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0);
}

