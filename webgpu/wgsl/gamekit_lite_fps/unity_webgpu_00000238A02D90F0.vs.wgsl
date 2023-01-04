struct VGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_UVTransform : vec4<f32>,
}

var<private> in_POSITION0 : vec3<f32>;

var<private> u_xlat0 : vec2<f32>;

@group(0) @binding(11) var<uniform> x_41 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : vec3<f32> = in_POSITION0;
  let x_21 : vec2<f32> = vec2<f32>(x_20.x, x_20.y);
  let x_24 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_21.x, x_21.y, x_24.z, x_24.w);
  let x_30 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_30.x, x_30.y, vec2<f32>(0.0f, 1.0f).x, vec2<f32>(0.0f, 1.0f).y);
  let x_34 : vec3<f32> = in_POSITION0;
  u_xlat0 = (vec2<f32>(x_34.x, x_34.y) + vec2<f32>(1.0f, 1.0f));
  let x_38 : vec2<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_UVTransform;
  u_xlat0 = (x_38 * vec2<f32>(x_45.x, x_45.y));
  let x_48 : vec2<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_41.x_UVTransform;
  u_xlat0 = ((x_48 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_53.z, x_53.w));
  let x_58 : vec2<f32> = u_xlat0;
  let x_61 : f32 = x_41.x_RenderViewportScaleFactor;
  vs_TEXCOORD1 = (x_58 * vec2<f32>(x_61, x_61));
  let x_65 : vec2<f32> = u_xlat0;
  vs_TEXCOORD0 = x_65;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0);
}

