struct PGlobals {
  x_ArraySliceIndex : f32,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d_array<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_14 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_13.x, x_13.y, x_14.z);
  let x_23 : f32 = x_18.x_ArraySliceIndex;
  u_xlat0.z = x_23;
  let x_41 : vec3<f32> = u_xlat0;
  let x_42 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_41.xy, i32(round(x_41.z)));
  SV_Target0 = x_42;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

