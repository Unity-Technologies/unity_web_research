struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

@group(0) @binding(0) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(1) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> SV_TARGET0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_INTERP0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(Texture2D_52571568, samplerTexture2D_52571568, vec2<f32>(x_24.x, x_24.y), x_35);
  u_xlat0 = vec3<f32>(x_36.x, x_36.y, x_36.z);
  let x_40 : vec3<f32> = u_xlat0;
  let x_41 : vec4<f32> = SV_TARGET0;
  SV_TARGET0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  SV_TARGET0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}

