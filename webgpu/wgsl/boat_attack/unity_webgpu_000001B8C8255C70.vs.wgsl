struct VGlobals {
  x_BlitScaleBias : vec4<f32>,
  x_Metrics : vec4<f32>,
}

var<private> gl_VertexIndex : i32;

@group(1) @binding(1) var<uniform> x_103 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var u_xlatu0 : vec4<u32>;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  param = 0i;
  let x_51 : i32 = gl_VertexIndex;
  param_1 = x_51;
  param_2 = 1i;
  param_3 = 1i;
  let x_54 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlatu0.x = bitcast<u32>(x_54);
  let x_58 : i32 = gl_VertexIndex;
  u_xlatu0.w = (bitcast<u32>(x_58) & 2u);
  let x_69 : vec4<u32> = u_xlatu0;
  let x_72 : vec2<f32> = vec2<f32>(vec2<u32>(x_69.x, x_69.w));
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_80 : vec4<f32> = u_xlat0;
  let x_87 : vec2<f32> = ((vec2<f32>(x_80.x, x_80.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_90 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_87.x, x_87.y, x_90.z, x_90.w);
  let x_94 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_94) + 1.0f);
  let x_99 : vec4<f32> = u_xlat0;
  let x_106 : vec4<f32> = x_103.x_BlitScaleBias;
  let x_110 : vec4<f32> = x_103.x_BlitScaleBias;
  let x_112 : vec2<f32> = ((vec2<f32>(x_99.x, x_99.z) * vec2<f32>(x_106.x, x_106.y)) + vec2<f32>(x_110.z, x_110.w));
  let x_113 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_113.w);
  let x_117 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_117.x, x_117.y, vec2<f32>(1.0f, 1.0f).x, vec2<f32>(1.0f, 1.0f).y);
  let x_121 : vec4<f32> = u_xlat0;
  let x_124 : vec4<f32> = x_103.x_Metrics;
  vs_TEXCOORD1 = (vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_124.z, x_124.w));
  let x_128 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec2<f32>(x_128.x, x_128.y);
  let x_132 : vec4<f32> = x_103.x_Metrics;
  let x_139 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec4<f32>(x_132.x, x_132.x, x_132.y, x_132.y) * vec4<f32>(-0.25f, 1.25f, -0.125f, -0.125f)) + vec4<f32>(x_139.x, x_139.x, x_139.y, x_139.y));
  let x_143 : vec4<f32> = x_103.x_Metrics;
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_143.x, x_143.y, x_143.x, x_143.y) * vec4<f32>(-0.125f, -0.25f, -0.125f, 1.25f)) + vec4<f32>(x_147.x, x_147.y, x_147.x, x_147.y));
  let x_151 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec4<f32>(x_151.x, x_151.z, x_151.y, x_151.w);
  let x_154 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = x_154;
  let x_155 : vec4<f32> = u_xlat0;
  let x_156 : vec2<f32> = vec2<f32>(x_155.y, x_155.w);
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_157.x, x_157.y, x_156.x, x_156.y);
  let x_161 : vec4<f32> = x_103.x_Metrics;
  let x_167 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = ((vec4<f32>(x_161.x, x_161.x, x_161.y, x_161.y) * vec4<f32>(-8.0f, 8.0f, -8.0f, 8.0f)) + x_167);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@builtin(vertex_index) gl_VertexIndex_param : u32) -> main_out {
  gl_VertexIndex = bitcast<i32>(gl_VertexIndex_param);
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

