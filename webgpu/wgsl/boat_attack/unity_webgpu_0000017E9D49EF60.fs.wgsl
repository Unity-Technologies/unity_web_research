diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

var<private> u_xlat0 : f32;

@group(0) @binding(0) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlatb0 : bool;

var<private> SV_TARGET0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_32 : f32 = x_25.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, x_22, x_32);
  u_xlat0 = x_34.x;
  let x_39 : f32 = u_xlat0;
  u_xlatb0 = (x_39 == 0.0f);
  let x_42 : bool = u_xlatb0;
  if (((select(0i, 1i, x_42) * -1i) != 0i)) {
    discard;
  }
  SV_TARGET0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}


