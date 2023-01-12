struct VGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_UVTransform : vec4<f32>,
  x_PosScaleOffset : vec4<f32>,
}

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_24 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : vec3<f32> = in_POSITION0;
  let x_28 : vec4<f32> = x_24.x_PosScaleOffset;
  let x_32 : vec4<f32> = x_24.x_PosScaleOffset;
  let x_34 : vec2<f32> = ((vec2<f32>(x_20.x, x_20.y) * vec2<f32>(x_28.x, x_28.y)) + vec2<f32>(x_32.z, x_32.w));
  let x_37 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_34.x, x_34.y, x_37.z, x_37.w);
  let x_43 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_43.x, x_43.y, vec2<f32>(0.0f, 1.0f).x, vec2<f32>(0.0f, 1.0f).y);
  let x_47 : vec3<f32> = in_POSITION0;
  u_xlat0 = (vec2<f32>(x_47.x, x_47.y) + vec2<f32>(1.0f, 1.0f));
  let x_51 : vec2<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_24.x_UVTransform;
  u_xlat0 = (x_51 * vec2<f32>(x_54.x, x_54.y));
  let x_57 : vec2<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_24.x_UVTransform;
  u_xlat0 = ((x_57 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_62.z, x_62.w));
  let x_67 : vec2<f32> = u_xlat0;
  let x_70 : f32 = x_24.x_RenderViewportScaleFactor;
  vs_TEXCOORD1 = (x_67 * vec2<f32>(x_70, x_70));
  let x_74 : vec2<f32> = u_xlat0;
  vs_TEXCOORD0 = x_74;
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

