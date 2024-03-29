diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

var<private> u_xlat0 : f32;

@group(0) @binding(0) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlatb0 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_34);
  u_xlat0 = x_35.x;
  let x_40 : f32 = u_xlat0;
  u_xlatb0 = (x_40 == 0.0f);
  let x_43 : bool = u_xlatb0;
  if (((select(0i, 1i, x_43) * -1i) != 0i)) {
    discard;
  }
  let x_55 : vec3<f32> = vs_TEXCOORD3;
  let x_56 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0 = dot(x_55, x_56);
  let x_58 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_58);
  let x_62 : f32 = u_xlat0;
  let x_64 : vec3<f32> = vs_TEXCOORD3;
  let x_65 : vec3<f32> = (vec3<f32>(x_62, x_62, x_62) * x_64);
  let x_66 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_65.x, x_65.y, x_65.z, x_66.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


