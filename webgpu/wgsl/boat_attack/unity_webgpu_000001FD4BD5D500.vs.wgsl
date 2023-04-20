diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4<f32>,
  /* @offset(16) */
  x_FlareData0 : vec4<f32>,
  /* @offset(32) */
  x_FlareData2 : vec4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_VertexIndex : i32;

var<private> u_xlatu0 : vec2<u32>;

var<private> u_xlati4 : i32;

var<private> u_xlat0 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec2<f32>;

@group(1) @binding(1) var<uniform> x_88 : VGlobals;

var<private> u_xlat4 : f32;

var<private> u_xlat6 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_VertexIndex;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_11) & 1u));
  let x_20 : i32 = gl_VertexIndex;
  u_xlatu0.y = (bitcast<u32>(x_20) >> 1u);
  let x_26 : i32 = u_xlati0;
  let x_29 : u32 = u_xlatu0.y;
  u_xlati4 = (-(x_26) + -(bitcast<i32>(x_29)));
  let x_33 : i32 = u_xlati0;
  let x_35 : u32 = u_xlatu0.y;
  u_xlati0 = (x_33 + bitcast<i32>(x_35));
  let x_38 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_38) & 1u);
  let x_48 : u32 = u_xlatu0.x;
  u_xlat0.x = f32(x_48);
  let x_55 : f32 = u_xlat0.x;
  vs_TEXCOORD0.y = (-(x_55) + 1.0f);
  let x_61 : i32 = u_xlati4;
  u_xlati0 = (x_61 + 1i);
  let x_64 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_64) & 1u);
  let x_69 : vec2<u32> = u_xlatu0;
  u_xlat1 = vec2<f32>(vec2<u32>(x_69.y, x_69.x));
  let x_72 : vec2<f32> = u_xlat1;
  u_xlat0 = ((x_72 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_80 : f32 = u_xlat1.x;
  vs_TEXCOORD0.x = (-(x_80) + 1.0f);
  let x_84 : vec2<f32> = u_xlat0;
  let x_92 : vec4<f32> = x_88.x_FlareData2;
  u_xlat0 = (x_84 * vec2<f32>(x_92.z, x_92.w));
  let x_97 : f32 = u_xlat0.y;
  let x_100 : f32 = x_88.x_FlareData0.y;
  u_xlat4 = (x_97 * x_100);
  let x_103 : f32 = u_xlat0.x;
  let x_105 : f32 = x_88.x_FlareData0.x;
  let x_107 : f32 = u_xlat4;
  u_xlat4 = ((x_103 * x_105) + -(x_107));
  let x_110 : vec2<f32> = u_xlat0;
  let x_113 : vec4<f32> = x_88.x_FlareData0;
  u_xlat0.y = dot(vec2<f32>(x_110.y, x_110.x), vec2<f32>(x_113.x, x_113.y));
  let x_120 : f32 = x_88.x_ScaledScreenParams.y;
  let x_122 : f32 = x_88.x_ScaledScreenParams.x;
  u_xlat6 = (x_120 / x_122);
  let x_124 : f32 = u_xlat6;
  let x_125 : f32 = u_xlat4;
  u_xlat0.x = (x_124 * x_125);
  let x_128 : vec2<f32> = u_xlat0;
  let x_130 : vec4<f32> = x_88.x_FlareData2;
  u_xlat0 = (x_128 + vec2<f32>(x_130.x, x_130.y));
  let x_137 : vec2<f32> = u_xlat0;
  let x_139 : vec4<f32> = x_88.x_FlareData0;
  let x_141 : vec2<f32> = (x_137 + vec2<f32>(x_139.z, x_139.w));
  let x_144 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_141.x, x_141.y, x_144.z, x_144.w);
  let x_148 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_148.x, x_148.y, vec2<f32>(1.0f, 1.0f).x, vec2<f32>(1.0f, 1.0f).y);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(vertex_index) gl_VertexIndex_param : u32) -> main_out {
  gl_VertexIndex = bitcast<i32>(gl_VertexIndex_param);
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position);
}


