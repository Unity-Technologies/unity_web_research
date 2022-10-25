struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(1) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> SV_TARGET0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec4<f32> = vs_INTERP1;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_40.x, x_40.y), x_50);
  u_xlat0 = x_51.w;
  let x_53 : f32 = u_xlat0;
  u_xlat0 = (x_53 + -0.400000006f);
  let x_59 : f32 = u_xlat0;
  u_xlatb0 = (x_59 < 0.0f);
  let x_62 : bool = u_xlatb0;
  if (((select(0i, 1i, x_62) * -1i) != 0i)) {
    discard;
  }
  let x_73 : vec4<f32> = hlslcc_FragCoord;
  SV_TARGET0 = vec4<f32>(x_73.z, x_73.z, x_73.z, x_73.z);
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_INTERP1_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  main_1();
  return main_out(SV_TARGET0);
}

