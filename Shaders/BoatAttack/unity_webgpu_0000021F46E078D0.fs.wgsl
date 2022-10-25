struct PGlobals {
  x_BlitMipLevel : f32,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearRepeat : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_31 : f32 = x_26.x_BlitMipLevel;
  let x_33 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearRepeat, x_23, x_31);
  u_xlat0 = vec3<f32>(x_33.x, x_33.y, x_33.z);
  let x_37 : vec3<f32> = u_xlat0;
  let x_42 : f32 = dot(x_37, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  SV_Target0 = vec4<f32>(x_42, x_42, x_42, x_42);
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

