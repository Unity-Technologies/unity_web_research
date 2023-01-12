struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_RendererColor : vec4<f32>,
  x_Flip : vec2<f32>,
  @size(8)
  padding : u32,
  x_Color : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

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
  let x_34 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_28.y, x_28.y, x_28.y, x_28.y) * x_34);
  let x_37 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_38 : vec4<f32> = u_xlat0;
  let x_41 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_37 * vec4<f32>(x_38.x, x_38.x, x_38.x, x_38.x)) + x_41);
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_46 : vec4<f32> = in_POSITION0;
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_45 * vec4<f32>(x_46.z, x_46.z, x_46.z, x_46.z)) + x_49);
  let x_51 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_51 + x_53);
  let x_55 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_55.y, x_55.y, x_55.y, x_55.y) * x_58);
  let x_61 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_62 : vec4<f32> = u_xlat0;
  let x_65 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_61 * vec4<f32>(x_62.x, x_62.x, x_62.x, x_62.x)) + x_65);
  let x_68 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_69 : vec4<f32> = u_xlat0;
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_68 * vec4<f32>(x_69.z, x_69.z, x_69.z, x_69.z)) + x_72);
  let x_81 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_82 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = u_xlat1;
  gl_Position = ((x_81 * vec4<f32>(x_82.w, x_82.w, x_82.w, x_82.w)) + x_85);
  let x_90 : vec4<f32> = in_COLOR0;
  let x_93 : vec4<f32> = x_18.x_Color;
  u_xlat0 = (x_90 * x_93);
  let x_96 : vec4<f32> = u_xlat0;
  let x_98 : vec4<f32> = x_18.x_RendererColor;
  vs_COLOR0 = (x_96 * x_98);
  let x_104 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_104;
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

