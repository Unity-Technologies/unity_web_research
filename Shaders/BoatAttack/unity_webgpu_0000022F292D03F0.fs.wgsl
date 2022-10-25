struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

struct UnityPerMaterial {
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

@group(0) @binding(0) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(1) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> SV_TARGET0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_65 : UnityPerMaterial;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_INTERP1;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_23.x, x_23.y), x_34);
  u_xlat0 = x_35;
  let x_40 : f32 = u_xlat0.w;
  u_xlat1 = (x_40 + -0.400000006f);
  let x_46 : f32 = u_xlat1;
  u_xlatb1 = (x_46 < 0.0f);
  let x_49 : bool = u_xlatb1;
  if (((select(0i, 1i, x_49) * -1i) != 0i)) {
    discard;
  }
  let x_61 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = x_65.Color_C30C7CA3;
  let x_70 : vec3<f32> = (vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = SV_TARGET0;
  SV_TARGET0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_74 : f32 = u_xlat0.w;
  SV_TARGET0.w = x_74;
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP1 = vs_INTERP1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}

