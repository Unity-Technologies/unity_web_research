var<private> u_xlatu0 : u32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex0 : sampler;

@group(0) @binding(1) var x_MainTex1 : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex1 : sampler;

@group(0) @binding(2) var x_MainTex2 : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex2 : sampler;

@group(0) @binding(3) var x_MainTex3 : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex3 : sampler;

@group(0) @binding(4) var x_MainTex4 : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex4 : sampler;

@group(0) @binding(5) var x_MainTex5 : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainTex5 : sampler;

@group(0) @binding(6) var x_MainTex6 : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainTex6 : sampler;

@group(0) @binding(7) var x_MainTex7 : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainTex7 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_TEXCOORD0.z;
  u_xlatu0 = u32(x_16);
  let x_18 : u32 = u_xlatu0;
  switch(bitcast<i32>(x_18)) {
    case 7i: {
      let x_108 : vec3<f32> = vs_TEXCOORD0;
      let x_110 : vec4<f32> = textureSample(x_MainTex7, sampler_MainTex7, vec2<f32>(x_108.x, x_108.y));
      u_xlat0 = x_110;
    }
    case 6i: {
      let x_99 : vec3<f32> = vs_TEXCOORD0;
      let x_101 : vec4<f32> = textureSample(x_MainTex6, sampler_MainTex6, vec2<f32>(x_99.x, x_99.y));
      u_xlat0 = x_101;
    }
    case 5i: {
      let x_90 : vec3<f32> = vs_TEXCOORD0;
      let x_92 : vec4<f32> = textureSample(x_MainTex5, sampler_MainTex5, vec2<f32>(x_90.x, x_90.y));
      u_xlat0 = x_92;
    }
    case 4i: {
      let x_81 : vec3<f32> = vs_TEXCOORD0;
      let x_83 : vec4<f32> = textureSample(x_MainTex4, sampler_MainTex4, vec2<f32>(x_81.x, x_81.y));
      u_xlat0 = x_83;
    }
    case 3i: {
      let x_72 : vec3<f32> = vs_TEXCOORD0;
      let x_74 : vec4<f32> = textureSample(x_MainTex3, sampler_MainTex3, vec2<f32>(x_72.x, x_72.y));
      u_xlat0 = x_74;
    }
    case 2i: {
      let x_63 : vec3<f32> = vs_TEXCOORD0;
      let x_65 : vec4<f32> = textureSample(x_MainTex2, sampler_MainTex2, vec2<f32>(x_63.x, x_63.y));
      u_xlat0 = x_65;
    }
    case 1i: {
      let x_54 : vec3<f32> = vs_TEXCOORD0;
      let x_56 : vec4<f32> = textureSample(x_MainTex1, sampler_MainTex1, vec2<f32>(x_54.x, x_54.y));
      u_xlat0 = x_56;
    }
    case 0i: {
      let x_45 : vec3<f32> = vs_TEXCOORD0;
      let x_47 : vec4<f32> = textureSample(x_MainTex0, sampler_MainTex0, vec2<f32>(x_45.x, x_45.y));
      u_xlat0 = x_47;
    }
    default: {
      u_xlat0.x = 1.0f;
      u_xlat0.y = 1.0f;
      u_xlat0.z = 1.0f;
      u_xlat0.w = 1.0f;
    }
  }
  let x_125 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = vs_COLOR0;
  SV_Target0 = (x_125 * x_128);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec3<f32>, @location(1) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

